---
title: "GameFactory: Creating New Games with Generative Interactive Videos"
summary: "GameFactory uses AI to generate entirely new games within diverse, open-domain scenes by learning action controls from a small dataset and transferring them to pre-trained video models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-01-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.08325 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiwen Yu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.08325" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.08325" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.08325/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for generating game videos struggle with scene generalization, limiting their application to existing games with fixed styles and scenes. Existing video-based game generation methods often fail to address the critical challenge of scene generalization, hindering their applicability. This research introduces GameFactory, a novel framework that leverages pre-trained video diffusion models and a multi-phase training strategy to overcome this limitation. 

GameFactory addresses the scene generalization challenge by decoupling game style learning from action control. This allows the model to learn action control from a small-scale game dataset and transfer this ability to open-domain videos, enabling the creation of new games in diverse and dynamic environments. It also introduces GF-Minecraft, a high-quality action-annotated video dataset and extends its framework to enable autoregressive action-controllable game video generation, resulting in unlimited-length interactive game videos. The proposed approach demonstrates the effectiveness of the framework in producing diverse and controllable game videos, pushing the boundaries of AI-driven game generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GameFactory enables the creation of entirely new games within open-domain scenes, addressing the limitations of existing game-specific approaches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework uses a multi-phase training strategy to decouple game style learning from action control, enhancing generalization and achieving action controllability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} GameFactory supports autoregressive action-controllable game video generation, enabling the production of unlimited-length interactive game videos. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces a novel framework, GameFactory, for creating new games using generative interactive videos.**  This addresses the crucial challenge of scene generalization in game video generation, a significant limitation of existing methods. The research also introduces a new dataset and techniques for controllable and autoregressive video generation, paving the way for more realistic and engaging AI-driven games. Its open-domain generalizability extends beyond gaming to other fields like robotics and autonomous driving.

------
#### Visual Insights



![](https://arxiv.org/html/2501.08325/x3.png)

> 🔼 GameFactory is a framework that uses pre-trained video models to generate new games.  It learns action controls from a small Minecraft dataset and applies them to open-domain videos. This allows for the creation of games in various, realistic settings. The figure shows four examples of this, demonstrating action control (indicated by yellow buttons for key presses and arrows for mouse movements) in diverse generated scenes.
> <details>
> <summary>read the caption</summary>
> Figure 1: We propose GameFactory, a framework that leverages the powerful generative capabilities of pre-trained video models for the creation of new games. By learning action control from a small-scale first-person Minecraft dataset, this framework can transfer these control abilities to open-domain videos, ultimately allowing the creation of new games within open-domain scenes. As illustrated in (1)-(4), GameFactory supports action control across diverse, newly generated scenes in open domains, paving the way for the development of entirely new game experiences. The yellow buttons indicate pressed keys, and the arrows represent the direction of mouse movements.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S3.T1.9.10.1.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.10.1.1.1" style="font-size:80%;">Control Module</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T1.9.10.1.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.10.1.2.1" style="font-size:80%;">Only-Key</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T1.9.10.1.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.10.1.3.1" style="font-size:80%;">Mouse-Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T1.9.10.1.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.10.1.4.1" style="font-size:80%;">Mouse-Large</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="S3.T1.9.9.10" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.9.10.1" style="font-size:80%;">Key</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S3.T1.9.9.11" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.9.11.1" style="font-size:80%;">Mouse</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.1.1.1" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.1.1.1.1" style="font-size:80%;">Flow-MSE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.2.2.2" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:80%;">CLIP-Sim</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S3.T1.3.3.3" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.3.3.3.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.4.4.4" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.4.4.4.1" style="font-size:80%;">Flow-MSE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.5.5.5" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.5.5.5.1" style="font-size:80%;">CLIP-Sim</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S3.T1.6.6.6" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.6.6.6.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.7.7.7" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.7.7.7.1" style="font-size:80%;">Flow-MSE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.8.8.8" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.8.8.8.1" style="font-size:80%;">CLIP-Sim</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.9.9.9" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="S3.T1.9.9.9.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.m1.1a"><mo id="S3.T1.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.m1.1b"><ci id="S3.T1.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.9.11.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.11.1.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.1.1" style="font-size:80%;">Cross Attention</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.9.11.1.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.2.1" style="font-size:80%;">Cross Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.3.1" style="font-size:80%;">8.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.11.1.4.1" style="font-size:80%;">0.3313</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.11.1.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.5.1" style="font-size:80%;">107.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.6.1" style="font-size:80%;">20.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.7" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.7.1" style="font-size:80%;">0.3137</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.11.1.8" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.11.1.8.1" style="font-size:80%;">125.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.9" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.9.1" style="font-size:80%;">325.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.10" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.10.1" style="font-size:80%;">0.3103</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.11.1.11" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.11.1.11.1" style="font-size:80%;">167.37</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.12.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.9.12.2.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.1.1" style="font-size:80%;">Concat</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.12.2.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.2.1" style="font-size:80%;">Concat</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.3.1" style="font-size:80%;">22.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.4.1" style="font-size:80%;">0.3277</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.2.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.12.2.5.1" style="font-size:80%;">103.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.6.1" style="font-size:80%;">19.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.7" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.7.1" style="font-size:80%;">0.3159</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.2.8" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.8.1" style="font-size:80%;">133.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.9" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.9.1" style="font-size:80%;">258.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.10" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.12.2.10.1" style="font-size:80%;">0.3123</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.2.11" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.12.2.11.1" style="font-size:80%;">145.74</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.13.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.9.13.3.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.1.1" style="font-size:80%;">Cross Attention</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.9.13.3.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.2.1" style="font-size:80%;">Concat</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.3.1" style="font-size:80%;">7.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.13.3.4.1" style="font-size:80%;">0.3292</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.13.3.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.13.3.5.1" style="font-size:80%;">105.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.6.1" style="font-size:80%;">18.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.7" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.7.1" style="font-size:80%;">0.3184</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.13.3.8" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.13.3.8.1" style="font-size:80%;">127.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.9" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.9.1" style="font-size:80%;">249.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.10" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S3.T1.9.13.3.10.1" style="font-size:80%;">0.3107</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.13.3.11" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.9.13.3.11.1" style="font-size:80%;">139.91</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an ablation study comparing different action control mechanisms within a video generation model for game creation.  The study investigates the effectiveness of two primary methods for integrating action information: cross-attention and concatenation.  Results are shown using three metrics: Flow-MSE (measures the quality of the generated videos' movement compared to a reference video); CLIP-Sim (measures the semantic similarity between the generated video and a text description); and FID (Fréchet Inception Distance, a metric for assessing the quality of generated images).  The table helps determine which method (cross-attention or concatenation) is better suited for different types of game actions: discrete actions (like key presses) versus continuous actions (like mouse movements). The findings show that cross-attention is superior for discrete actions, while concatenation performs better for continuous actions.  This informs the optimal design of the action control module.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of the ablation study on action control mechanisms. The findings indicate that an optimal approach for the action control module is to use cross-attention for discrete action control and concatenation for continuous action control.
> </details>





### In-depth insights


#### Generative Game AI
Generative Game AI represents a significant advancement in game development, automating content creation and potentially revolutionizing the industry.  **Game engines are evolving from manually crafted experiences to AI-driven systems capable of generating diverse game worlds and assets.** This shift promises reduced development costs and timelines.  However, challenges remain, notably in **scene generalization**, where current models often struggle to create new game environments beyond those seen during training.  The paper's GameFactory addresses this by leveraging pre-trained video diffusion models, enhancing generalization capabilities.  A key contribution is the introduction of a novel training strategy that decouples game style from action control. This is critical for preventing the model from overfitting to a specific style while still retaining controllability.  **Further research should focus on refining scene generalization**, potentially by exploring larger and more diverse training datasets and improved methods of action control.  **The long-term implications of Generative Game AI are vast**, envisioning a future where games are continuously generated and personalized to player preferences, leading to richer and more dynamic gaming experiences.

#### Action Control
The concept of 'Action Control' within the context of AI-driven game generation is crucial, focusing on how user inputs translate into game events.  The paper highlights the challenge of achieving robust action control while maintaining scene generalization.  A key innovation is the **multi-phase training strategy**, decoupling style learning from action control. This approach leverages pre-trained models for scene generation and fine-tunes a dedicated action control module on a smaller, action-annotated dataset, like GF-Minecraft. This two-stage process prevents the model from overfitting to a specific game style, thus enabling control across diverse and open-domain environments.  Furthermore, the paper explores different control mechanisms—**cross-attention** for discrete actions (keyboard) and **concatenation** for continuous actions (mouse)—to effectively handle varied input modalities. The resulting framework allows for the generation of open-domain, action-controllable game videos, showing significant potential for revolutionizing game development by automating content creation and reducing manual workload.

#### Scene Generalization
Scene generalization in game video generation is a crucial challenge addressed by GameFactory.  Existing methods often fail to generalize beyond specific games due to overfitting on limited datasets. **GameFactory tackles this by leveraging pre-trained video generation models**, which have learned rich scene representations from vast amounts of open-domain data. This approach allows for the generation of diverse and novel game scenes without extensive manual annotation.  **A multi-phase training strategy is key**, separating style learning from action control.  Initially, the model learns game-specific style using LoRA (Low-Rank Adaptation), and subsequently the action control module is trained while keeping the style parameters frozen.  This effectively decouples style from action, allowing the generated scenes to retain open-domain flexibility while exhibiting precise action control.  Furthermore, **autoregressive generation extends the framework to produce arbitrarily long, continuous game videos**, overcoming the limitation of fixed-length outputs found in existing models.  The resulting system provides scene generalization beyond any single game, enabling diverse and realistic game creation, opening vast possibilities for AI-driven game development.

#### Multi-Phase Training
The multi-phase training strategy is a core innovation in the GameFactory framework, designed to address the challenge of scene generalization in game video generation.  **Decoupling style learning from action control is key**; the initial phase fine-tunes a pre-trained model using a small, action-annotated dataset (GF-Minecraft) via Low-Rank Adaptation (LoRA) to acquire game-specific stylistic features without affecting its open-domain capabilities.  Subsequently, with stylistic aspects frozen, a separate action control module is trained, focusing solely on learning action control.  This decoupling prevents the model from overly specializing to the Minecraft style, promoting better generalization to novel, open-domain scenarios. The final phase utilizes the trained action control module independently, leveraging the pre-trained model's open-domain priors, thus achieving both action controllability and scene generalization.  **This approach elegantly separates stylistic and functional aspects of game generation**, creating a more versatile and adaptable system for generating diverse, action-controllable game videos across different visual contexts.

#### Future Directions
Future research should prioritize enhancing the **generalizability** of GameFactory.  While the current model demonstrates impressive scene generalization capabilities, further investigation into extending its applicability beyond Minecraft and racing game scenarios is crucial. This requires exploring diverse game types and creating more comprehensive datasets that capture a wider range of action inputs and environmental interactions.  A key challenge lies in developing robust control methods for increasingly complex and nuanced gameplay situations. Research should also focus on **improving the efficiency** of the autoregressive video generation, potentially through exploring more efficient architectures or training strategies. **Addressing the computational cost** associated with generating long, high-quality videos is essential for practical applications.  Finally, future work should investigate the integration of more sophisticated game elements such as physics engines, realistic character interactions, and complex storylines to create truly immersive and compelling game experiences.  Exploring innovative methods for integrating player feedback and adaptive game difficulty would further enhance the user experience.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.08325/x4.png)

> 🔼 GameFactory uses a pre-trained large video generation model to create new games. The model's open-domain generative capabilities are shown in the upper blue section.  The lower green section illustrates how a smaller action control module, trained on a small game dataset, is added to control the generation process, allowing creation of new games within various scenes. This demonstrates the transfer of action control abilities from a known dataset to open-domain videos, resulting in novel game experiences.
> <details>
> <summary>read the caption</summary>
> Figure 2: A schematic of our GameFactory creating new games based on pre-trained large video generation models. The upper blue section shows the generative capabilities of the pre-trained model in an open-domain, while the lower green section demonstrates how the action control module, learned from a small amount of game data, can be plugged in to create new games.
> </details>



![](https://arxiv.org/html/2501.08325/x5.png)

> 🔼 Figure 3 illustrates how the action control module is integrated into a video diffusion model for generating action-controlled videos.  Panel (a) shows the module's placement within the transformer blocks of the video diffusion model. Panel (b) details the different control mechanisms used for continuous mouse movements and discrete keyboard inputs; a key difference is that continuous signals are concatenated with latent video features while discrete signals use a cross-attention mechanism. Panel (c) addresses a problem caused by temporal compression of the input video.  Because the video is compressed, the number of latent features is not equal to the number of actions.  A grouping mechanism with a sliding window is used to align the features and actions so they can be correctly fused.
> <details>
> <summary>read the caption</summary>
> Figure 3:  (a) Integration of Action Control Module into transformer blocks of the video diffusion model. (b) Different control mechanisms for continuous mouse signals and discrete keyboard signals (detailed analysis in Sec 3.3). (c) Due to temporal compression (compression ratio r=4𝑟4r=4italic_r = 4), the number of latent features differs from the number of actions, causing granularity mismatch during fusion. Grouping aligns these sequences for fusion. Additionally, the i𝑖iitalic_i-th latent feature can fuse with action groups within a previous window (window size w=3𝑤3w=3italic_w = 3), accounting for delayed action effects (e.g., ‘jump’ key affects several subsequent frames).
> </details>



![](https://arxiv.org/html/2501.08325/x6.png)

> 🔼 The figure shows that fine-tuning a pre-trained video generation model directly on Minecraft data results in the generated videos inheriting the blocky style of Minecraft. This creates a problem because the goal is to generate videos in various styles and not just the Minecraft style.  To address this issue, the authors propose a multi-phase training approach that separates learning the game's style from learning action control. This allows the model to generalize to new scenes and styles while maintaining the ability to respond to user actions.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Style bias in video game generation. The model tuned on Minecraft data inherits its distinctive pixelated block style, creating a domain gap from the original parameters. This motivates decoupling action control learning from data style learning through specialized training strategies.
> </details>



![](https://arxiv.org/html/2501.08325/x7.png)

> 🔼 This figure illustrates the multi-phase training strategy employed in GameFactory. Phase #0 involves pretraining a video generation model on a large, open-domain dataset.  Phase #1 fine-tunes this model using LoRA (Low-Rank Adaptation) on game-specific video data to learn the style of the target game without affecting the action control. Phase #2 focuses exclusively on training the action control module while keeping the pre-trained model and LoRA parameters frozen. This decoupling ensures style-independent action control.  Finally, Phase #3 demonstrates the system's ability to generate action-controlled videos in open domains, leveraging the generalized action control from Phase #2 and the open-domain scene generation capabilities from Phase #0.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Phase #0: pretraining a video generation model on open-domain data. Phase #1: finetuning with LoRA for game video data. Phase #2: training the action control module while fixing other parameters. Phase #3: inference for action-controlled open-domain generation. To decouple style learning from action control, Phase #1 learns game-specific style while Phase #2 focuses on style-independent action control. This design preserves the open-domain capabilities from Phase #0, enabling generalization in Phase #3.
> </details>



![](https://arxiv.org/html/2501.08325/x8.png)

> 🔼 Figure 6 illustrates the autoregressive video generation process.  In the training stage (a), a sequence of video frames (from 0 to N) is used, with a random subset (k frames) serving as conditioning.  The model learns to predict the noise in the remaining (N-k) frames. Only the noise prediction loss for these frames contributes to the training objective. The inference stage (b) leverages this learned ability to generate longer videos iteratively.  Starting with k+1 initial frames, the model predicts the next N-k frames, appends them to the initial sequence, and then uses the most recent k+1 frames to predict further frames, continuing this process until the desired video length is achieved. This allows for the creation of arbitrarily long videos.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Illustration of autoregressive video generation. The frames from index 00 to k𝑘kitalic_k serve as conditional frames, while the remaining N−k𝑁𝑘N-kitalic_N - italic_k frames are for prediction, with k𝑘kitalic_k randomly selected. (a) Training stage: Loss computation and optimization focus only on the noise of predicted frames. (b) Inference stage: The model iteratively selects the latest k+1𝑘1k+1italic_k + 1 frames as conditions to generate N−k𝑁𝑘N-kitalic_N - italic_k new frames, enabling autoregressive generation.
> </details>



![](https://arxiv.org/html/2501.08325/x9.png)

> 🔼 This figure showcases the model's ability to control actions within the Minecraft game environment.  The model successfully learned fundamental atomic actions, such as moving forward, backward, left, and right, using the WASD keys, as well as controlling the camera's yaw and pitch using the mouse.  Importantly, the model can combine these basic actions to perform more complex movements. The text under each video frame provides a descriptive label explaining the action, rather than being a text prompt used to generate the video.
> <details>
> <summary>read the caption</summary>
> Figure 7: Demonstration of action control capabilities in the Minecraft domain. The model has successfully learned basic atomic actions (WASD keys) and mouse-based yaw and pitch controls. Additionally, it can combine these atomic actions to execute more complex movements. Note that the text below each video frame is a descriptive label of the content, not a text prompt provided to the model.
> </details>



![](https://arxiv.org/html/2501.08325/x10.png)

> 🔼 Figure 8 showcases the model's ability to handle collisions, a frequent event in Minecraft navigation.  The figure displays two example videos demonstrating the model's response to encountering obstacles: one where the agent stops upon hitting a wall, and another where it stops when encountering an obstacle. Importantly, the text under each video frame serves only as a descriptive label; it was not given to the model as a prompt.
> <details>
> <summary>read the caption</summary>
> Figure 8: Demonstration of the learned response to collision, one of the most common interactions in Minecraft navigation. Note that the text below each video frame is a descriptive label of the content, not a text prompt provided to the model.
> </details>



![](https://arxiv.org/html/2501.08325/x11.png)

> 🔼 The figure showcases the model's ability to generalize to a new game type, a racing game, using knowledge learned from the Minecraft domain.  It highlights that the 'yaw' control (rotation around the vertical axis), learned in Minecraft, seamlessly transfers to steering control in the racing game.  Conversely, actions not directly related to steering, such as moving backward, left, or right, and adjustments to the pitch angle (rotation around the horizontal axis), are automatically reduced or eliminated in the racing game context. This demonstrates that the model effectively distinguishes and transfers relevant skills while suppressing irrelevant ones.
> <details>
> <summary>read the caption</summary>
> Figure 9: Our model demonstrates the ability to generalize to a different game type, a racing game. Interestingly, the yaw control learned in Minecraft seamlessly transfers to steering control in the racing game, while unrelated actions, such as moving backward, left, or right, and pitch angle adjustments, automatically diminish.
> </details>



![](https://arxiv.org/html/2501.08325/x12.png)

> 🔼 This figure shows an example from the GF-Minecraft dataset.  A video clip from the game is presented along with its corresponding textual annotation. The annotation uses natural language to describe the scene's visual elements, including the terrain, plants, and other objects (such as a zombie-like figure). Key words used in the description are highlighted in red and boldface for emphasis. This demonstrates how the dataset includes both video data and associated textual descriptions, which are used to train the model in understanding and generating game scenes with associated descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 10: An example of video clip annotation, where words describing scenes and objects are highlighted in red and bolded.
> </details>



![](https://arxiv.org/html/2501.08325/x13.png)

> 🔼 This figure compares the performance of cross-attention and concatenation methods in handling discrete key inputs for action control.  The results show that cross-attention is significantly better at correctly responding to key presses than concatenation. In some cases, the concatenation method fails entirely to register the key presses, while cross-attention consistently reflects the intended actions. The yellow buttons in the images represent the keys pressed during the actions.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative comparison of key input control performance. It can be observed that cross-attention significantly outperforms concatenation in handling discrete key input signals, while concatenation may fail to respond to the key input. The yellow buttons indicate pressed keys.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_tt" id="A1.T2.9.10.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.9.10.1.1.1">Behavior</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T2.9.10.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.9.10.1.2.1">Control Signal</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T2.9.10.1.3"><span class="ltx_text ltx_font_bold" id="A1.T2.9.10.1.3.1">Action Interface</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.1.1.2">forward</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.3">W key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.1">Interface<sub class="ltx_sub" id="A1.T2.1.1.1.1">1</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.2.2.2">back</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.2.2.3">S key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.2.2.1">Interface<sub class="ltx_sub" id="A1.T2.2.2.1.1">1</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.3.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.3.3.2">left</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.3.3.3">A key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.3.3.1">Interface<sub class="ltx_sub" id="A1.T2.3.3.1.1">2</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.4.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.4.4.2">right</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.4.4.3">D key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.4.4.1">Interface<sub class="ltx_sub" id="A1.T2.4.4.1.1">2</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.5.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.5.5.2">jump</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.5.5.3">space key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.5.5.1">Interface<sub class="ltx_sub" id="A1.T2.5.5.1.1">3</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.6.6.2">sneak</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.6.6.3">shift key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.6.6.1">Interface<sub class="ltx_sub" id="A1.T2.6.6.1.1">3</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.7.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.7.7.2">sprint</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.7.7.3">ctrl key</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.7.7.1">Interface<sub class="ltx_sub" id="A1.T2.7.7.1.1">3</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.8.8.2">vertical perspective movement</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.8.8.3">mouse movement(yaw)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.8.8.1">Interface<sub class="ltx_sub" id="A1.T2.8.8.1.1">4</sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_l ltx_border_r ltx_border_t" id="A1.T2.9.9.2">horizontal perspective movement</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T2.9.9.3">mouse movement(pitch)</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T2.9.9.1">Interface<sub class="ltx_sub" id="A1.T2.9.9.1.1">5</sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 details the action space used in the GF-Minecraft dataset for training the video generation model.  It lists various behaviors (e.g., moving forward, backward, jumping), their corresponding control signals (key presses or mouse movements), and the MineDojo interface responsible for translating those signals into actions within the Minecraft game environment. This clarifies how the different input types were handled and categorized for training.
> <details>
> <summary>read the caption</summary>
> Table 2: Details of Action Space. The term Control Signal refers to the raw input signals utilized for training purposes, while the Action Interface represents the corresponding interface in the MineDojo platform that maps these input signals to actionable commands.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T3.4.4.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.4.5.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T3.4.4.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.4.6.1" style="font-size:80%;">Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.1.1.1" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="A2.T3.1.1.1.1" style="font-size:80%;">Flow-MSE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T3.1.1.1.m1.1"><semantics id="A2.T3.1.1.1.m1.1a"><mo id="A2.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="A2.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T3.1.1.1.m1.1b"><ci id="A2.T3.1.1.1.m1.1.1.cmml" xref="A2.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.2.2.2" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="A2.T3.2.2.2.1" style="font-size:80%;">Domain-Sim</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T3.2.2.2.m1.1"><semantics id="A2.T3.2.2.2.m1.1a"><mo id="A2.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="A2.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T3.2.2.2.m1.1b"><ci id="A2.T3.2.2.2.m1.1.1.cmml" xref="A2.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.3.3.3" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="A2.T3.3.3.3.1" style="font-size:80%;">CLIP-Sim</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T3.3.3.3.m1.1"><semantics id="A2.T3.3.3.3.m1.1a"><mo id="A2.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="A2.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T3.3.3.3.m1.1b"><ci id="A2.T3.3.3.3.m1.1.1.cmml" xref="A2.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.4.4.4" style="padding-left:2.6pt;padding-right:2.6pt;">
<span class="ltx_text" id="A2.T3.4.4.4.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T3.4.4.4.m1.1"><semantics id="A2.T3.4.4.4.m1.1a"><mo id="A2.T3.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="A2.T3.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T3.4.4.4.m1.1b"><ci id="A2.T3.4.4.4.m1.1.1.cmml" xref="A2.T3.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T3.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T3.4.5.1.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.5.1.1.1" style="font-size:80%;">Multi-Phase Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T3.4.5.1.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.5.1.2.1" style="font-size:80%;">Minecraft</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.5.1.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.4.5.1.3.1" style="font-size:80%;">43.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.5.1.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.5.1.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.5.1.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.5.1.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.5.1.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.5.1.6.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T3.4.6.2.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.6.2.1.1" style="font-size:80%;">Multi-Phase Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.6.2.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.6.2.2.1" style="font-size:80%;">Open-Domain</span></th>
<td class="ltx_td ltx_align_center" id="A2.T3.4.6.2.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.6.2.3.1" style="font-size:80%;">54.13</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.6.2.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.4.6.2.4.1" style="font-size:80%;">0.7565</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.6.2.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.4.6.2.5.1" style="font-size:80%;">0.3181</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.6.2.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.4.6.2.6.1" style="font-size:80%;">121.18</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A2.T3.4.7.3.1" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.1.1" style="font-size:80%;">One-Phase Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T3.4.7.3.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.2.1" style="font-size:80%;">Open-Domain</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.4.7.3.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.3.1" style="font-size:80%;">76.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.4.7.3.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.4.1" style="font-size:80%;">0.7345</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.4.7.3.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.5.1" style="font-size:80%;">0.3111</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.4.7.3.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="A2.T3.4.7.3.6.1" style="font-size:80%;">167.79</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of scene generalization capabilities between different training strategies for a video generation model.  It shows the results on two datasets: Minecraft and an open-domain dataset. Metrics include Flow-MSE (optical flow mean squared error, assessing action-following ability), Domain-Sim (semantic similarity between generated and original videos), CLIP-Sim (semantic similarity using CLIP embeddings), and FID (Fréchet Inception Distance, measuring the visual quality). The comparison is between a multi-phase training approach (separating style and action control learning) and a single-phase method, allowing assessment of the effectiveness of the proposed multi-phase training for generalization to unseen scenes.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results of evaluation on scene generalization.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.08325/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08325/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}