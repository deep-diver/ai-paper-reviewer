---
title: "Open-World Skill Discovery from Unsegmented Demonstrations"
summary: "SBD: Self-supervised skill discovery from unsegmented videos!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Peking University",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10684 {{< /keyword >}}
{{< keyword icon="writer" >}} Jingwen Deng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10684" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10684" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10684/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

In open-world environments, agents need to combine basic skills to handle different tasks. However, online videos are long and unsegmented, making it difficult to identify and label skills. Existing methods rely on sequence sampling or human labeling. To address this, the paper introduces Skill Boundary Detection (SBD), an annotation-free temporal video segmentation algorithm. SBD is inspired by human cognitive event segmentation theory. It leverages prediction errors from a pretrained action-prediction model to detect skill boundaries. The assumption is that a prediction error shows a shift in the skill. 



This approach improves the performance of conditioned policies and their hierarchical agents. The method was evaluated in Minecraft, a rich open-world simulator with extensive gameplay videos. The SBD-generated segments improved the average performance of conditioned policies by 63.7% and 52.1% on short-term atomic skill tasks. The corresponding hierarchical agents improved by 11.3% and 20.8% on long-horizon tasks. Overall, the method leverages the diverse YouTube videos to train instruction-following agents.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Skill Boundary Detection (SBD) algorithm segments videos by detecting prediction errors from an action-prediction model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SBD improves performance of conditioned policies and hierarchical agents in Minecraft. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method leverages diverse YouTube videos to train instruction-following agents. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel **self-supervised method for skill discovery** in open-world environments, overcoming limitations of existing segmentation techniques and offering new possibilities for training instruction-following agents from unsegmented videos.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10684/x6.png)

> 🔼 This figure illustrates the four-stage pipeline of the Skill Boundary Detection (SBD) method for skill discovery from unsegmented demonstration videos. Stage I involves pretraining an unconditional Transformer-XL model on unsegmented data to predict future actions. Stage II uses the pretrained model to detect skill boundaries by identifying significant increases in prediction error, which indicate shifts in the skill being executed.  These boundaries segment the long videos into shorter, atomic skill demonstrations. Stage III trains a conditional Transformer-XL model on these segmented demonstrations to learn various atomic skills. Finally, Stage IV employs hierarchical methods, combining vision-language models with the conditional policy, to handle long-horizon instructions and model longer demonstrations.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Pipeline of our method SBD for discovering skills from unsegmented demonstration videos. Stage I: An unconditional Transformer-XL based policy model (Dai et al., 2019; Baker et al., 2022) is pretrained on an unsegmented dataset to predict future actions (labeled by an inverse dynamics model) based on past observations. Stage II: The pretrained unconditional policy will produce a high predicted action loss when encountering uncertain observations (e.g., deciding whether to kill a new sheep) in open worlds. These timesteps should be marked as skill boundaries, indicating the need for additional instructions to control behaviors. We segment the long unsegmented videos into a series of short atomic skill demonstrations. Stage III: We train a conditional Transformer-XL based policy model on the segmented dataset to master a variety of atomic skills. Stage IV: Finally, we use hierarchical methods (a combination of vision-language models and the conditional policy) to model the long demonstration and follow long-horizon instructions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.8">
<tr class="ltx_tr" id="S1.T1.8.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S1.T1.8.9.1" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.9.1.1">
<span class="ltx_p" id="S1.T1.8.9.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.8.9.1.1.1.1" style="font-size:90%;">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S1.T1.8.9.2" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.9.2.1">
<span class="ltx_p" id="S1.T1.8.9.2.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.8.9.2.1.1.1" style="font-size:90%;">Illustration</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S1.T1.8.9.3" style="width:429.3pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.9.3.1">
<span class="ltx_p" id="S1.T1.8.9.3.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.8.9.3.1.1.1" style="font-size:90%;">Type</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.2.2.3" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.3.1">
<span class="ltx_p" id="S1.T1.2.2.3.1.1"><span class="ltx_text" id="S1.T1.2.2.3.1.1.1" style="font-size:90%;">Sequential sampling</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.1.1.1" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="56" id="S1.T1.1.1.1.1.g1" src="x1.png" width="152"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.2.2.2" style="width:429.3pt;padding:0.9pt 0.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S1.T1.2.2.2.1">
<span class="ltx_para ltx_noindent" id="S1.T1.2.2.2.1.p1">
<span class="ltx_p" id="S1.T1.2.2.2.1.p1.1"><span class="ltx_text" id="S1.T1.2.2.2.1.p1.1.1"></span><span class="ltx_text" id="S1.T1.2.2.2.1.p1.1.2" style="font-size:80%;"> </span><span class="ltx_text" id="S1.T1.2.2.2.1.p1.1.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_bottom" id="S1.T1.2.2.2.1.p1.1.3.1">
<span class="ltx_tr" id="S1.T1.2.2.2.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.2.2.2.1.p1.1.3.1.1.1" style="padding:0.9pt 0.5pt;">rule-based</span></span>
</span></span><span class="ltx_text" id="S1.T1.2.2.2.1.p1.1.4"></span><span class="ltx_text" id="S1.T1.2.2.2.1.p1.1.5" style="font-size:80%;"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.4.4.3" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.4.4.3.1">
<span class="ltx_p" id="S1.T1.4.4.3.1.1"><span class="ltx_text" id="S1.T1.4.4.3.1.1.1" style="font-size:90%;">Reward-driven</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.3.3.1" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.3.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="63" id="S1.T1.3.3.1.1.g1" src="x2.png" width="180"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.4.4.2" style="width:429.3pt;padding:0.9pt 0.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S1.T1.4.4.2.1">
<span class="ltx_para ltx_noindent" id="S1.T1.4.4.2.1.p1">
<span class="ltx_p" id="S1.T1.4.4.2.1.p1.1"><span class="ltx_text" id="S1.T1.4.4.2.1.p1.1.1"></span><span class="ltx_text" id="S1.T1.4.4.2.1.p1.1.2" style="font-size:80%;"> </span><span class="ltx_text" id="S1.T1.4.4.2.1.p1.1.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_bottom" id="S1.T1.4.4.2.1.p1.1.3.1">
<span class="ltx_tr" id="S1.T1.4.4.2.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.4.4.2.1.p1.1.3.1.1.1" style="padding:0.9pt 0.5pt;">rule-based</span></span>
</span></span><span class="ltx_text" id="S1.T1.4.4.2.1.p1.1.4"></span><span class="ltx_text" id="S1.T1.4.4.2.1.p1.1.5" style="font-size:80%;"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.6.6.3" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.6.6.3.1">
<span class="ltx_p" id="S1.T1.6.6.3.1.1"><span class="ltx_text" id="S1.T1.6.6.3.1.1.1" style="font-size:90%;">Top-down</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.5.5.1" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.5.5.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="65" id="S1.T1.5.5.1.1.g1" src="x3.png" width="194"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.6.6.2" style="width:429.3pt;padding:0.9pt 0.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S1.T1.6.6.2.1">
<span class="ltx_para ltx_noindent" id="S1.T1.6.6.2.1.p1">
<span class="ltx_p" id="S1.T1.6.6.2.1.p1.1"><span class="ltx_text" id="S1.T1.6.6.2.1.p1.1.1"></span><span class="ltx_text" id="S1.T1.6.6.2.1.p1.1.2" style="font-size:80%;"> </span><span class="ltx_text" id="S1.T1.6.6.2.1.p1.1.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_bottom" id="S1.T1.6.6.2.1.p1.1.3.1">
<span class="ltx_tr" id="S1.T1.6.6.2.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.6.6.2.1.p1.1.3.1.1.1" style="padding:0.9pt 0.5pt;">rule-based</span></span>
</span></span><span class="ltx_text" id="S1.T1.6.6.2.1.p1.1.4"></span><span class="ltx_text" id="S1.T1.6.6.2.1.p1.1.5" style="font-size:80%;"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.7.7.2" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.7.7.2.1">
<span class="ltx_p" id="S1.T1.7.7.2.1.1"><span class="ltx_text" id="S1.T1.7.7.2.1.1.1" style="font-size:90%;">Bottom-up</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.7.7.1" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.7.7.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="80" id="S1.T1.7.7.1.1.g1" src="x4.png" width="138"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S1.T1.7.7.3" style="width:429.3pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.7.7.3.1">
<span class="ltx_p" id="S1.T1.7.7.3.1.1"><span class="ltx_text" id="S1.T1.7.7.3.1.1.1" style="font-size:80%;">rule-based</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_tt" id="S1.T1.8.8.2" style="width:43.4pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.8.2.1">
<span class="ltx_p" id="S1.T1.8.8.2.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.8.8.2.1.1.1" style="font-size:90%;">Ours (SBD)</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_tt" id="S1.T1.8.8.1" style="width:101.2pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.8.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="146" id="S1.T1.8.8.1.1.g1" src="x5.png" width="138"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_tt" id="S1.T1.8.8.3" style="width:429.3pt;padding:0.9pt 0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.8.8.3.1">
<span class="ltx_p" id="S1.T1.8.8.3.1.1"><span class="ltx_text" id="S1.T1.8.8.3.1.1.1" style="font-size:90%;">learning-based</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares different video segmentation methods for skill discovery, highlighting the strengths and weaknesses of each approach.  It contrasts rule-based methods (sequential sampling, reward-driven, top-down, bottom-up) with the proposed learning-based Skill Boundary Detection (SBD) method. The rule-based methods are criticized for their reliance on human-defined rules, limitations in handling various skill lengths and partial observability, high computational costs, and limited skill diversity. In contrast, SBD is presented as a more robust, flexible, and data-driven solution.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons between existing segmentation methods and our method SBD. Existing methods usually rely on human-designed rules, while our method is learning-based. Sequential sampling can result in a single skill spanning different segments or multiple skills located within one segment. Reward-driven methods require additional reward information, which is challenging for human annotators to label. Top-down methods often result in limited skill diversity and high computation costs. Bottom-up methods are limited in fully observable environments and hard in visually partially observable environments.  are visual observations and  are actions.
> </details>





### In-depth insights


#### SBD: EST-Inspired
**SBD, inspired by EST (Event Segmentation Theory), likely segments videos based on prediction errors.** EST posits humans divide experiences into discrete events when perceptual expectation is violated. SBD probably uses a pre-trained model to predict future actions; **high prediction error signals a skill boundary, mirroring EST's event boundary detection.** This approach offers an unsupervised way to segment videos, unlike methods needing manual labels. **SBD's reliance on prediction error makes it suitable for identifying meaningful skill transitions in open-world environments, where skills are diverse and unlabeled.**

#### Minecraft Tested
While the paper doesn't explicitly have a section titled "Minecraft Tested," Minecraft serves as a crucial testbed. The authors utilize Minecraft due to its open-world nature and the availability of extensive gameplay videos. **Minecraft's rich environment allows for the evaluation of skill discovery and transfer learning in complex, partially observable settings.** The evaluation leverages a diverse set of Minecraft skills, testing the ability of the proposed method to segment and learn from unsegmented demonstrations. This includes short-term atomic skills as well as long-horizon programmatic tasks, which highlight the hierarchical agent's capabilities. **The Minecraft environment is used to generate datasets for pre-training, segmentation, and skill acquisition**, providing a holistic evaluation of the proposed Skill Boundary Detection (SBD) method. Ultimately, the choice of Minecraft as a testing ground underscores the paper's focus on real-world applicability and the challenges associated with learning in open-ended environments.

#### No Human Labels
The research emphasizes a shift away from traditional methods that rely on **manual annotation or human-designed rules**. By removing the need for human labels, the proposed techniques aim to **reduce costs and time** associated with data preparation. The self-supervised approach capitalizes on the availability of unlabeled demonstration videos, making it easier to leverage vast amounts of data. The models instead learn directly from the video content using techniques like **skill boundary detection (SBD)** and the predictive loss of pre-trained models. This strategy also makes the model more readily applicable in **dynamic, real-world scenarios** where the cost of labeling grows and labels might be impossible.

#### Improvement ++
The concept of "Improvement ++" implies a significant leap beyond incremental advancements. It suggests **transformative changes**, perhaps driven by novel methodologies or a synergistic combination of existing techniques. This could involve **breaking through performance bottlenecks**, achieving previously unattainable levels of efficiency, or fundamentally altering the problem-solving approach. Such improvements often stem from **rethinking core assumptions**, embracing interdisciplinary perspectives, or leveraging emergent technologies. The "++" signifies not just quantitative gains, but also qualitative enhancements, leading to **new functionalities, greater robustness, or enhanced user experience**. Ultimately, it represents a paradigm shift, pushing the boundaries of what's considered possible within the given domain, and **opening up new avenues for research and innovation**.

#### Action Deviance
**Action deviance** plays a crucial role in identifying skill transitions. It assumes that when an agent switches skills, the actions performed are less probable under the previous skill. This 'surprising' action provides a signal to detect the transition. Even if policy changes occur without surprising actions, it suggests an ambiguous phase, which is inherently difficult to pinpoint. The analysis focuses on recognizing clear skill boundaries characterized by such deviating actions, emphasizing their importance in skill segmentation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10684/extracted/6272025/figures/length_distribution/info_only.png)

> 🔼 The figure shows the length distribution of video segments generated using three different methods: using only external information, using only the predictive loss, and using both. The loss-only method produces a distribution similar to the info-only method, suggesting that the loss-only method also identifies semantically meaningful segments. The combined method's distribution closely resembles that of the loss-only method, indicating that predictive loss is the primary factor in determining the segmentation pattern.
> <details>
> <summary>read the caption</summary>
> (a)    Info only.
> </details>



![](https://arxiv.org/html/2503.10684/extracted/6272025/figures/length_distribution/loss_only.png)

> 🔼 The figure shows the distribution of segment lengths when only the prediction loss is used to identify skill boundaries.  The x-axis represents segment length in frames and the y-axis shows the frequency of segments with that length. The distribution illustrates the frequency of different segment lengths produced by the loss-only method, providing insights into the typical duration of skills detected using this approach.
> <details>
> <summary>read the caption</summary>
> (b)    Loss only.
> </details>



![](https://arxiv.org/html/2503.10684/extracted/6272025/figures/length_distribution/loss+info.png)

> 🔼 This figure shows the length distribution of video segments generated using different methods: using only external information, using only predictive loss, and using both.  The x-axis represents the length of the segments (in frames), and the y-axis shows the frequency of segments of that length. The distributions are compared to show the effect of combining external information and predictive loss on the length and semantic meaningfulness of the identified segments.
> <details>
> <summary>read the caption</summary>
> (c)    Both.
> </details>



![](https://arxiv.org/html/2503.10684/x7.png)

> 🔼 Figure 2 presents a comparative analysis of segment length distributions obtained using different methods for video segmentation.  The 'info-only' method, which utilizes external information, produces segments with lengths that are inherently semantically meaningful.  The similar distribution achieved by the 'loss-only' method—which only uses predictive loss—strongly suggests that the predictive loss effectively captures meaningful boundaries in the video, mirroring the results of the information-rich method.  The combined method, which utilizes both information and loss, shows a distribution most similar to the loss-only method.  This similarity highlights the dominance of predictive loss as the crucial element in learning the segmentation pattern.
> <details>
> <summary>read the caption</summary>
> Figure 2: The length distribution of segments, split by info and loss. The info-only method is intrinsically semantically meaningful, suggesting that the loss-only method also identifies a semantically meaningful segmentation pattern. Furthermore, the similarity between the combined method and the loss-only method indicates that predictive loss is the primary factor in learning the segmentation pattern.
> </details>



![](https://arxiv.org/html/2503.10684/x8.png)

> 🔼 Figure 3 presents example video segments from the Skill Boundary Detection (SBD) method. Each example shows a short video clip representing a single skill, accompanied by five screenshots. The first and last screenshots capture the start and end of the skill, while the middle three screenshots highlight key steps in the skill's progression. The top row shows the 'sleep in bed' skill, while the bottom row illustrates the 'collect grass' skill. More examples can be found in Appendix C.
> <details>
> <summary>read the caption</summary>
> Figure 3: Video Segment Examples. Top: sleep in bed. Bottom: collect grass. Each segment is accompanied by five screenshots. The first and last screenshots represent the initial and final frames of the segment, respectively. The remaining three screenshots are manually selected to best illustrate the skill’s progression. More segments can be found in Appendix C.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.15.15">
<tr class="ltx_tr" id="S3.T2.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.12.12.13" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.12.12.13.1">Method</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.12.12.12.14" style="padding:1pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.1.1.1.1.g1" src="extracted/6272025/figures/icons/furnace.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2.2" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.2.2.2.2.g1" src="extracted/6272025/figures/icons/hunt_sheep.png" width="21"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.3" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.3.3.3.3.g1" src="extracted/6272025/figures/icons/sleep.png" width="26"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.4.4" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.4.4.4.4.g1" src="extracted/6272025/figures/icons/torch.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.5.5.5.5" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="24" id="S3.T2.5.5.5.5.g1" src="extracted/6272025/figures/icons/boat.png" width="35"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.6.6" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.6.6.6.6.g1" src="extracted/6272025/figures/icons/bow.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.7.7.7" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.7.7.7.7.g1" src="extracted/6272025/figures/icons/stone.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.8.8" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.8.8.8.8.g1" src="extracted/6272025/figures/icons/seagrass.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.9.9.9" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.9.9.9.9.g1" src="extracted/6272025/figures/icons/wood.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.10.10.10.10" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.10.10.10.10.g1" src="extracted/6272025/figures/icons/tree.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.11.11.11.11" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.11.11.11.11.g1" src="extracted/6272025/figures/icons/dirt.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.12.12.12.12" style="padding:1pt 3.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T2.12.12.12.12.g1" src="extracted/6272025/figures/icons/grass.png" width="24"/></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.12.12.12.15" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.12.12.15.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.15.16.1.1">VPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.15.15.16.2.1">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.3" style="padding:1pt 3.0pt;">11.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.4" style="padding:1pt 3.0pt;">29.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.5" style="padding:1pt 3.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.6" style="padding:1pt 3.0pt;">22.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.7" style="padding:1pt 3.0pt;">7.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.8" style="padding:1pt 3.0pt;">23.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.9" style="padding:1pt 3.0pt;">77.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.10" style="padding:1pt 3.0pt;">14.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.11" style="padding:1pt 3.0pt;">73.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.12" style="padding:1pt 3.0pt;">33.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.13" style="padding:1pt 3.0pt;">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.16.14" style="padding:1pt 3.0pt;">38.0%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.15.15.16.15" style="padding:1pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.1" rowspan="3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.15.17.1.1">GROOT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.15.15.17.2.1">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.3" style="padding:1pt 3.0pt;">21.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.4" style="padding:1pt 3.0pt;">26.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.5" style="padding:1pt 3.0pt;">100.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.6" style="padding:1pt 3.0pt;">97.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.7" style="padding:1pt 3.0pt;">71.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.8" style="padding:1pt 3.0pt;">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.9" style="padding:1pt 3.0pt;">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.10" style="padding:1pt 3.0pt;">34.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.11" style="padding:1pt 3.0pt;">76.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.12" style="padding:1pt 3.0pt;">19.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.13" style="padding:1pt 3.0pt;">14.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.17.14" style="padding:1pt 3.0pt;">9.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.15.15.17.15" style="padding:1pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.18">
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.15.15.18.1.1">ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.2" style="padding:1pt 3.0pt;">30.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.3" style="padding:1pt 3.0pt;">54.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.4" style="padding:1pt 3.0pt;">100.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.5" style="padding:1pt 3.0pt;">88.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.6" style="padding:1pt 3.0pt;">93.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.7" style="padding:1pt 3.0pt;">80.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.8" style="padding:1pt 3.0pt;">26.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.9" style="padding:1pt 3.0pt;">51.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.10" style="padding:1pt 3.0pt;">90.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.11" style="padding:1pt 3.0pt;">44.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.12" style="padding:1pt 3.0pt;">19.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.18.13" style="padding:1pt 3.0pt;">25.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.15.15.18.14" style="padding:1pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.13.13">
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.1" style="padding:1pt 3.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T2.13.13.13.1.m1.1"><semantics id="S3.T2.13.13.13.1.m1.1a"><mi id="S3.T2.13.13.13.1.m1.1.1" mathvariant="normal" xref="S3.T2.13.13.13.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.13.1.m1.1b"><ci id="S3.T2.13.13.13.1.m1.1.1.cmml" xref="S3.T2.13.13.13.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.13.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.13.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.2" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.2.1" style="color:#00FF00;">+42.9%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.3" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.3.1" style="color:#00FF00;">+107.7%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.4" style="padding:1pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.5" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.5.1" style="color:#FF0000;">-9.3%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.6" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.6.1" style="color:#00FF00;">+30.1%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.7" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.7.1" style="color:#00FF00;">+166.7%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.8" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.8.1" style="color:#00FF00;">+23.3%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.9" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.9.1" style="color:#00FF00;">+50.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.10" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.10.1" style="color:#00FF00;">+18.4%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.11" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.11.1" style="color:#00FF00;">+131.6%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.12" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.12.1" style="color:#00FF00;">+36.1%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.13" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.13.13.13.13.1" style="color:#00FF00;">+166.3%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.13.13.13.14" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.13.13.14.1">+63.7%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.15.15.19.1" rowspan="3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.15.19.1.1">STEVE-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.15.15.19.2.1">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.3" style="padding:1pt 3.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.4" style="padding:1pt 3.0pt;">1.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.5" style="padding:1pt 3.0pt;">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.6" style="padding:1pt 3.0pt;">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.7" style="padding:1pt 3.0pt;">18.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.8" style="padding:1pt 3.0pt;">65.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.9" style="padding:1pt 3.0pt;">96.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.10" style="padding:1pt 3.0pt;">18.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.11" style="padding:1pt 3.0pt;">80.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.12" style="padding:1pt 3.0pt;">57.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.13" style="padding:1pt 3.0pt;">44.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.15.15.19.14" style="padding:1pt 3.0pt;">46.9%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.15.15.19.15" style="padding:1pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.20">
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.15.15.20.1.1">ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.2" style="padding:1pt 3.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.3" style="padding:1pt 3.0pt;">3.1%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.4" style="padding:1pt 3.0pt;">40.6%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.5" style="padding:1pt 3.0pt;">77.1%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.6" style="padding:1pt 3.0pt;">42.7%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.7" style="padding:1pt 3.0pt;">71.9%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.8" style="padding:1pt 3.0pt;">96.9%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.9" style="padding:1pt 3.0pt;">47.9%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.10" style="padding:1pt 3.0pt;">84.4%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.11" style="padding:1pt 3.0pt;">67.7%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.12" style="padding:1pt 3.0pt;">43.8%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.20.13" style="padding:1pt 3.0pt;">71.9%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.15.15.20.14" style="padding:1pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.15">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.14.14.14.1" style="padding:1pt 3.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T2.14.14.14.1.m1.1"><semantics id="S3.T2.14.14.14.1.m1.1a"><mi id="S3.T2.14.14.14.1.m1.1.1" mathvariant="normal" xref="S3.T2.14.14.14.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.14.1.m1.1b"><ci id="S3.T2.14.14.14.1.m1.1.1.cmml" xref="S3.T2.14.14.14.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.14.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.14.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.3" style="padding:1pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.2" style="padding:1pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.15.15.15.2.m1.1"><semantics id="S3.T2.15.15.15.2.m1.1a"><mo id="S3.T2.15.15.15.2.m1.1.1" xref="S3.T2.15.15.15.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.15.2.m1.1b"><minus id="S3.T2.15.15.15.2.m1.1.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.15.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.15.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.4" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.4.1" style="color:#00FF00;">+21.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.5" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.5.1" style="color:#00FF00;">+131.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.6" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.6.1" style="color:#00FF00;">+127.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.7" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.7.1" style="color:#00FF00;">+9.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.8" style="padding:1pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.9" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.9.1" style="color:#00FF00;">+155.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.10" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.10.1" style="color:#00FF00;">+5.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.11" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.11.1" style="color:#00FF00;">+18.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.12" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.12.1" style="color:#FF0000;">-2.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.13" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S3.T2.15.15.15.13.1" style="color:#00FF00;">+53.3%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.15.15.15.14" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.15.15.14.1">+52.1%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of different policies (VPT, GROOT, and STEVE-1) on various Minecraft skill benchmarks.  For each policy, results are shown both for the original model and for a version retrained using the Skill Boundary Detection (SBD) method developed in this paper. Performance is measured by both average success rate (percentage) and average reward (numeric score).  The Minecraft environment's random seed is held constant for each task to ensure fair comparisons between models.  More details about the specific tasks are provided in Section B.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 2: Success rate of different policies on Minecraft skill benchmarks. For VPT (Baker et al., 2022), we report the results of the behavioral cloning version. For GROOT (Cai et al., 2023b) and STEVE-1 (Lifshitz et al., 2023), we report the results of original and our re-trained with SBD, respectively. A value with % indicates the average success rate, while a value without % indicates the average rewards. The seeds for the Minecraft environment are fixed for the corresponding task to make a fair comparison between different models. Details of the tasks are provided in Section B.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.st1.1.1">
<tr class="ltx_tr" id="S3.T3.st1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st1.1.1.2.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.2.2.1" style="font-size:90%;">Wood</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.2.3.1" style="font-size:90%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.2.4.1" style="font-size:90%;">Stone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.2.5.1" style="font-size:90%;">Iron</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.st1.1.1.2.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st1.1.1.2.6.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.st1.1.1.3.1.1" style="font-size:90%;">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.3.2.1" style="font-size:90%;">95%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.3.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.3.4.1" style="font-size:90%;">82%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.3.5.1" style="font-size:90%;">32%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.st1.1.1.3.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.3.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st1.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T3.st1.1.1.4.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.st1.1.1.4.1.1" style="font-size:90%;">ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st1.1.1.4.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.4.2.1" style="font-size:90%;">96%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st1.1.1.4.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.4.3.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st1.1.1.4.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.4.4.1" style="font-size:90%;">90%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st1.1.1.4.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.4.5.1" style="font-size:90%;">35%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.st1.1.1.4.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.4.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.1" style="padding:0.9pt 3.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.st1.1.1.1.1.m1.1"><semantics id="S3.T3.st1.1.1.1.1.m1.1a"><mi id="S3.T3.st1.1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S3.T3.st1.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.st1.1.1.1.1.m1.1b"><ci id="S3.T3.st1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.st1.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.st1.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.st1.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.1.2.1" style="font-size:90%;color:#00FF00;">+1.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.1.3.1" style="font-size:90%;color:#00FF00;">+25.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.1.4.1" style="font-size:90%;color:#00FF00;">+9.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st1.1.1.1.5.1" style="font-size:90%;color:#00FF00;">+9.4%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.st1.1.1.1.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st1.1.1.1.6.1" style="font-size:90%;">+11.3%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of the OmniJARVIS agent, trained using behavior cloning, on a set of long-horizon programmatic tasks in Minecraft.  The agent's performance is compared between using the original sequential sampling method for skill segmentation and the proposed Skill Boundary Detection (SBD) method.  The tasks involve collecting various resources, such as wood, stone, iron, and diamonds, starting from an empty inventory, and the success rate indicates the percentage of successful task completions.
> <details>
> <summary>read the caption</summary>
> (a) OmniJARVIS (behavior cloning)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.st2.1.1">
<tr class="ltx_tr" id="S3.T3.st2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st2.1.1.2.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.2.1" style="font-size:90%;">Wood</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.3.1" style="font-size:90%;">Oak</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.4.1" style="font-size:90%;">Birch</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.5.1" style="font-size:90%;">Stone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.6.1" style="font-size:90%;">Iron</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.7" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.7.1" style="font-size:90%;">Diamond</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.8" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.8.1" style="font-size:90%;">Armor</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.9" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.2.9.1" style="font-size:90%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.st2.1.1.2.10" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st2.1.1.2.10.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.st2.1.1.3.1.1" style="font-size:90%;">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.2.1" style="font-size:90%;">92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.3.1" style="font-size:90%;">89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.4.1" style="font-size:90%;">90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.5.1" style="font-size:90%;">90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.6.1" style="font-size:90%;">33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.7" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.7.1" style="font-size:90%;">8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.8" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.8.1" style="font-size:90%;">12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.9" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.9.1" style="font-size:90%;">39%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.st2.1.1.3.10" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.3.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st2.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.1" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.st2.1.1.4.1.1" style="font-size:90%;">ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.2.1" style="font-size:90%;">97%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.3.1" style="font-size:90%;">95%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.4.1" style="font-size:90%;">94%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.5.1" style="font-size:90%;">91%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.6.1" style="font-size:90%;">35%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.7" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.7.1" style="font-size:90%;">10%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.8" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.8.1" style="font-size:90%;">19%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.9" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.9.1" style="font-size:90%;">62%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.st2.1.1.4.10" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.4.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.st2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.1" style="padding:0.9pt 3.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.st2.1.1.1.1.m1.1"><semantics id="S3.T3.st2.1.1.1.1.m1.1a"><mi id="S3.T3.st2.1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S3.T3.st2.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.st2.1.1.1.1.m1.1b"><ci id="S3.T3.st2.1.1.1.1.m1.1.1.cmml" xref="S3.T3.st2.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.st2.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.st2.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.2" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.2.1" style="font-size:90%;color:#00FF00;">+5.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.3" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.3.1" style="font-size:90%;color:#00FF00;">+6.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.4" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.4.1" style="font-size:90%;color:#00FF00;">+4.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.5" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.5.1" style="font-size:90%;color:#00FF00;">+1.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.6" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.6.1" style="font-size:90%;color:#00FF00;">+6.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.7" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.7.1" style="font-size:90%;color:#00FF00;">+25.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.8" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.8.1" style="font-size:90%;color:#00FF00;">+58.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.9" style="padding:0.9pt 3.0pt;"><span class="ltx_text" id="S3.T3.st2.1.1.1.9.1" style="font-size:90%;color:#00FF00;">+59.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.st2.1.1.1.10" style="padding:0.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.st2.1.1.1.10.1" style="font-size:90%;">+20.8%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of the JARVIS-1 hierarchical agent, using in-context learning, on various long-horizon programmatic tasks in Minecraft.  The results are shown for both the original method and our improved method using the SBD algorithm for segmented video data.  It shows the success rates for each task, broken down by resource type (Wood, Oak, Birch, Stone, Iron, Diamond, Armor, Food), and then an overall average. This allows a comparison of the performance improvement gained by utilizing the SBD method for improved skill segmentation in training.
> <details>
> <summary>read the caption</summary>
> (b) JARVIS-1 (in-context learning)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.12.12">
<tr class="ltx_tr" id="S3.T4.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.12.12.12.13" style="padding-top:1pt;padding-bottom:1pt;">Task</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.1.1.1.1.g1" src="extracted/6272025/figures/icons/furnace.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.2.2.2.2.g1" src="extracted/6272025/figures/icons/hunt_sheep.png" width="21"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.3.3.3.3.g1" src="extracted/6272025/figures/icons/sleep.png" width="26"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.4.4.4.4.g1" src="extracted/6272025/figures/icons/torch.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="24" id="S3.T4.5.5.5.5.g1" src="extracted/6272025/figures/icons/boat.png" width="35"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.6.6.6.6.g1" src="extracted/6272025/figures/icons/bow.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.7.7.7.7" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.7.7.7.7.g1" src="extracted/6272025/figures/icons/stone.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.8.8.8.8" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.8.8.8.8.g1" src="extracted/6272025/figures/icons/seagrass.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.9.9.9.9" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.9.9.9.9.g1" src="extracted/6272025/figures/icons/wood.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.10.10.10.10" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.10.10.10.10.g1" src="extracted/6272025/figures/icons/tree.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.11.11.11.11" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.11.11.11.11.g1" src="extracted/6272025/figures/icons/dirt.png" width="24"/></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.12.12.12.12" style="padding-top:1pt;padding-bottom:1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="24" id="S3.T4.12.12.12.12.g1" src="extracted/6272025/figures/icons/grass.png" width="24"/></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.12.12.12.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.12.14.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.12.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T4.12.12.13.1.1">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.2" style="padding-top:1pt;padding-bottom:1pt;">21.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.3" style="padding-top:1pt;padding-bottom:1pt;">26.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.4" style="padding-top:1pt;padding-bottom:1pt;">100.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.13.5.1">97.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.6" style="padding-top:1pt;padding-bottom:1pt;">71.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.7" style="padding-top:1pt;padding-bottom:1pt;">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.8" style="padding-top:1pt;padding-bottom:1pt;">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.9" style="padding-top:1pt;padding-bottom:1pt;">34.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.10" style="padding-top:1pt;padding-bottom:1pt;">76.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.11" style="padding-top:1pt;padding-bottom:1pt;">19.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.12" style="padding-top:1pt;padding-bottom:1pt;">14.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.13.13" style="padding-top:1pt;padding-bottom:1pt;">9.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.12.12.13.14" style="padding-top:1pt;padding-bottom:1pt;">64.2</td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.12.14">
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T4.12.12.14.1.1">Info</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.2" style="padding-top:1pt;padding-bottom:1pt;">33.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.3" style="padding-top:1pt;padding-bottom:1pt;">52.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.4" style="padding-top:1pt;padding-bottom:1pt;">100.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.5" style="padding-top:1pt;padding-bottom:1pt;">88.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.14.6.1">97.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.7" style="padding-top:1pt;padding-bottom:1pt;">32.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.8" style="padding-top:1pt;padding-bottom:1pt;">23.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.14.9.1">65.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.10" style="padding-top:1pt;padding-bottom:1pt;">92.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.11" style="padding-top:1pt;padding-bottom:1pt;">47.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.12" style="padding-top:1pt;padding-bottom:1pt;">15.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.14.13" style="padding-top:1pt;padding-bottom:1pt;">21.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.12.12.14.14" style="padding-top:1pt;padding-bottom:1pt;">87.4</td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.12.15">
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T4.12.12.15.1.1">Loss</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.15.2.1">44.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.15.3.1">54.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.4" style="padding-top:1pt;padding-bottom:1pt;">100.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.5" style="padding-top:1pt;padding-bottom:1pt;">94.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.6" style="padding-top:1pt;padding-bottom:1pt;">72.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.7" style="padding-top:1pt;padding-bottom:1pt;">46.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.8" style="padding-top:1pt;padding-bottom:1pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.9" style="padding-top:1pt;padding-bottom:1pt;">63.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.15.10.1">95.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.15.11.1">48.0%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.12" style="padding-top:1pt;padding-bottom:1pt;">17.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.12.15.13" style="padding-top:1pt;padding-bottom:1pt;">22.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.12.12.15.14" style="padding-top:1pt;padding-bottom:1pt;">91.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.12.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T4.12.12.16.1.1">Both</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.2" style="padding-top:1pt;padding-bottom:1pt;">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.3.1">54.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.4" style="padding-top:1pt;padding-bottom:1pt;">100.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.5" style="padding-top:1pt;padding-bottom:1pt;">88.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.6" style="padding-top:1pt;padding-bottom:1pt;">93.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.7.1">80.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.8.1">26.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.9" style="padding-top:1pt;padding-bottom:1pt;">51.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.10" style="padding-top:1pt;padding-bottom:1pt;">90.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.11" style="padding-top:1pt;padding-bottom:1pt;">44.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.12.1">19.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.13.1">25.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.12.12.16.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.12.16.14.1">93.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of two hierarchical agents (OmniJARVIS using behavior cloning and JARVIS-1 using in-context learning) performing long-horizon programmatic tasks in Minecraft.  The agents' controllers were trained on datasets segmented using two different methods: the proposed Skill Boundary Detection (SBD) method and the original sequential sampling (SS) method.  The tasks are grouped by the type of item the agent needs to obtain (e.g., wood, stone, iron, diamond).  Each group contains multiple tasks requiring a chain of atomic skills to achieve the goal, starting either from scratch or with an iron pickaxe.  All tasks were tested 30 times to ensure reliability of the results.  The table compares the performance of agents trained with SBD-segmented data against those trained with sequentially sampled data, highlighting the impact of the SBD method on the ability of these agents to successfully complete complex tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Success rate of two agents with their corresponding controllers trained on dataset segmented by our SBD method and the original sequential sampling (SS) method on groups of long programmatic tasks. All tasks are tested 30 times. In each group, the agent is required to obtain a certain type of items from scratch or given an iron pickaxe. For example, the diamond group includes diamond pickaxe, diamond sword, jukebox, etc.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.12">
<tr class="ltx_tr" id="A2.T5.12.13">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T5.12.13.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.13.1.1">
<span class="ltx_p" id="A2.T5.12.13.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.12.13.1.1.1.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T5.12.13.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.13.2.1">
<span class="ltx_p" id="A2.T5.12.13.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.12.13.2.1.1.1">Metric</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T5.12.13.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.13.3.1">
<span class="ltx_p" id="A2.T5.12.13.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.12.13.3.1.1.1">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T5.12.13.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.13.4.1">
<span class="ltx_p" id="A2.T5.12.13.4.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.12.13.4.1.1.1">Text Prompt for STEVE-1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.1.1.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.1.1.1.1.g1" src="extracted/6272025/figures/icons/furnace.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.1.1.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.2.1">
<span class="ltx_p" id="A2.T5.1.1.2.1.1">Craft item cooked mutton</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.1.1.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.3.1">
<span class="ltx_p" id="A2.T5.1.1.3.1.1">Given a furnace and some mutton and coal, craft a cooked mutton.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.1.1.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.4.1">
<span class="ltx_p" id="A2.T5.1.1.4.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.2.2.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.2.2.1.1.g1" src="extracted/6272025/figures/icons/hunt_sheep.png" width="28"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.2.2.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.2.1">
<span class="ltx_p" id="A2.T5.2.2.2.1.1">Kill entity sheep</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.2.2.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.3.1">
<span class="ltx_p" id="A2.T5.2.2.3.1.1">Summon some sheep before the agent, hunt the sheep.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.2.2.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.4.1">
<span class="ltx_p" id="A2.T5.2.2.4.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.3.3.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.3.3.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.3.3.1.1.g1" src="extracted/6272025/figures/icons/sleep.png" width="35"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.3.3.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.3.3.2.1">
<span class="ltx_p" id="A2.T5.3.3.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.2.1.1.1">STEVE-1</span>: Use item white bed. <span class="ltx_text ltx_font_bold" id="A2.T5.3.3.2.1.1.2">GROOT</span>: Sleep in bed properly.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.3.3.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.3.3.3.1">
<span class="ltx_p" id="A2.T5.3.3.3.1.1">Given a white bed, sleep on it.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.3.3.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.3.3.4.1">
<span class="ltx_p" id="A2.T5.3.3.4.1.1">Sleep in bed.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.4.4.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.4.4.1.1.g1" src="extracted/6272025/figures/icons/torch.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.4.4.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.2.1">
<span class="ltx_p" id="A2.T5.4.4.2.1.1">Use item torch</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.4.4.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.3.1">
<span class="ltx_p" id="A2.T5.4.4.3.1.1">Give some torches, use them to light up an area. Time is set at night.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.4.4.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.4.1">
<span class="ltx_p" id="A2.T5.4.4.4.1.1">Use a torch to light up an area.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.5.5.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.5.5.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="32" id="A2.T5.5.5.1.1.g1" src="extracted/6272025/figures/icons/boat.png" width="46"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.5.5.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.5.5.2.1">
<span class="ltx_p" id="A2.T5.5.5.2.1.1">Use item birch boat</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.5.5.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.5.5.3.1">
<span class="ltx_p" id="A2.T5.5.5.3.1.1">Given a birch boat, use it to travel on water. Biome is ocean.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.5.5.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.5.5.4.1">
<span class="ltx_p" id="A2.T5.5.5.4.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.6.6.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.6.6.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.6.6.1.1.g1" src="extracted/6272025/figures/icons/bow.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.6.6.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.6.6.2.1">
<span class="ltx_p" id="A2.T5.6.6.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.6.6.2.1.1.1">STEVE-1</span>: Use item bow. <span class="ltx_text ltx_font_bold" id="A2.T5.6.6.2.1.1.2">GROOT</span>: Use item bow 20%, Shoot in distance 40%, take aim 40%</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.6.6.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.6.6.3.1">
<span class="ltx_p" id="A2.T5.6.6.3.1.1">Given a bow and some arrows, shoot the sheep summoned before the agent.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.6.6.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.6.6.4.1">
<span class="ltx_p" id="A2.T5.6.6.4.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.7.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.7.7.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.7.7.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.7.7.1.1.g1" src="extracted/6272025/figures/icons/stone.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.7.7.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.7.7.2.1">
<span class="ltx_p" id="A2.T5.7.7.2.1.1">Mine block stone (cobblestone, iron, coal, diamond)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.7.7.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.7.7.3.1">
<span class="ltx_p" id="A2.T5.7.7.3.1.1">Given an iron pickaxe, collect stone starting from cave. Night vision is enabled.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.7.7.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.7.7.4.1">
<span class="ltx_p" id="A2.T5.7.7.4.1.1">Collect stone.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.8.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.8.8.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.8.8.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.8.8.1.1.g1" src="extracted/6272025/figures/icons/seagrass.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.8.8.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.8.8.2.1">
<span class="ltx_p" id="A2.T5.8.8.2.1.1">Mine block seagrass (tall seagrass, kelp)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.8.8.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.8.8.3.1">
<span class="ltx_p" id="A2.T5.8.8.3.1.1">Given an iron pickaxe, collect seagrass starting from ocean.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.8.8.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.8.8.4.1">
<span class="ltx_p" id="A2.T5.8.8.4.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.9.9">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.9.9.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.9.9.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.9.9.1.1.g1" src="extracted/6272025/figures/icons/wood.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.9.9.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.9.9.2.1">
<span class="ltx_p" id="A2.T5.9.9.2.1.1">Mine block oak (spruce, birch, jungle, acacia) log</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.9.9.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.9.9.3.1">
<span class="ltx_p" id="A2.T5.9.9.3.1.1">Given an iron pickaxe, collect wood starting from <span class="ltx_text ltx_font_bold" id="A2.T5.9.9.3.1.1.1">forest</span>.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.9.9.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.9.9.4.1">
<span class="ltx_p" id="A2.T5.9.9.4.1.1">Chop a tree.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.10.10">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.10.10.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.10.10.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.10.10.1.1.g1" src="extracted/6272025/figures/icons/tree.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.10.10.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.10.10.2.1">
<span class="ltx_p" id="A2.T5.10.10.2.1.1">Mine block oak (spruce, birch, jungle, acacia) log</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.10.10.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.10.10.3.1">
<span class="ltx_p" id="A2.T5.10.10.3.1.1">Given an iron pickaxe, <span class="ltx_text ltx_font_bold" id="A2.T5.10.10.3.1.1.1">find</span> and collect wood starting from <span class="ltx_text ltx_font_bold" id="A2.T5.10.10.3.1.1.2">plains</span>.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.10.10.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.10.10.4.1">
<span class="ltx_p" id="A2.T5.10.10.4.1.1">Chop a tree.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.11.11">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.11.11.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.11.11.1.1.g1" src="extracted/6272025/figures/icons/dirt.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.11.11.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.2.1">
<span class="ltx_p" id="A2.T5.11.11.2.1.1">Mine block dirt (grass block)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.11.11.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.3.1">
<span class="ltx_p" id="A2.T5.11.11.3.1.1">Given an iron pickaxe, collect dirt starting from plains.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T5.11.11.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.4.1">
<span class="ltx_p" id="A2.T5.11.11.4.1.1">Collect dirt.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.12.12">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T5.12.12.1" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.12.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="32" id="A2.T5.12.12.1.1.g1" src="extracted/6272025/figures/icons/grass.png" width="32"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T5.12.12.2" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.12.2.1">
<span class="ltx_p" id="A2.T5.12.12.2.1.1">Mine block grass (tall grass)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T5.12.12.3" style="width:144.5pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.12.3.1">
<span class="ltx_p" id="A2.T5.12.12.3.1.1">Given an iron pickaxe, collect grass starting from plains.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T5.12.12.4" style="width:72.3pt;padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.12.12.4.1">
<span class="ltx_p" id="A2.T5.12.12.4.1.1">Collect grass.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the Skill Boundary Detection (SBD) method.  It compares the performance of different versions of SBD on Minecraft atomic skill tasks. The variations include using only the loss function for boundary detection, using only external information, combining both, and using sequential sampling as a baseline (represented by '-').  The results demonstrate the contribution of each component to the overall performance of the SBD algorithm.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on the components within SBD. We report the evaluation results on Minecraft atomic skills from the sequential sampling (- in the table) and SBD with different components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_parbox ltx_align_middle" id="A2.T6.2" style="width:216.8pt;">
<tr class="ltx_tr" id="A2.T6.2.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Hyperparameter</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Value</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Learning Rate</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.00004</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.3">
<td class="ltx_td ltx_align_center" id="A2.T6.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">Parallel GPUs</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.3.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.4">
<td class="ltx_td ltx_align_center" id="A2.T6.2.4.1" style="padding-top:1pt;padding-bottom:1pt;">Accumulate Gradient Batches</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.4.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.2.5.1" style="padding-top:1pt;padding-bottom:1pt;">Batch Size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.2.5.2" style="padding-top:1pt;padding-bottom:1pt;">8</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details twelve atomic tasks used to evaluate the GROOT and STEVE-1 models in the 'Early Game Benchmark.'  For each task, it lists the specific metric used for evaluation, a description explaining the task's objective and the required actions, and the text prompt used for the STEVE-1 model (when applicable).  The tasks encompass a range of actions, from basic resource gathering (e.g., collecting wood, stone) to more complex actions requiring tool use (e.g., crafting cooked mutton, using a bow to shoot a sheep). This provides a comprehensive assessment of the models' ability to perform a variety of short, discrete actions within the Minecraft game environment.
> <details>
> <summary>read the caption</summary>
> Table 5: Details of 12 atomic tasks in our early game benchmark for testing GROOT and STEVE-1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_parbox ltx_align_middle" id="A2.T6.3" style="width:216.8pt;">
<tr class="ltx_tr" id="A2.T6.3.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">Hyperparameter</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">Value</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Parallel GPUs</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3">
<td class="ltx_td ltx_align_center" id="A2.T6.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">Accumulate Gradient Batches</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.4">
<td class="ltx_td ltx_align_center" id="A2.T6.3.4.1" style="padding-top:1pt;padding-bottom:1pt;">Batch Size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.4.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.3.5.1" style="padding-top:1pt;padding-bottom:1pt;">n_frames</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.3.5.2" style="padding-top:1pt;padding-bottom:1pt;">100M</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the modified hyperparameters used for training the GROOT and STEVE-1 controllers.  It shows the specific values adjusted for parameters such as learning rate, batch size, and gradient accumulation, distinguishing between the settings for the GROOT and STEVE-1 models. This information is crucial for replicating the experimental setup and understanding the differences in training approaches for these two types of controllers.
> <details>
> <summary>read the caption</summary>
> Table 6: Modified hyperparameters for training controllers. (Left) GROOT. (Right) STEVE-1.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10684/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10684/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}