---
title: "TokenHSI: Unified Synthesis of Physical Human-Scene Interactions through Task Tokenization"
summary: "TokenHSI: Unified Transformer for Physical Human-Scene Interactions through Task Tokenization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19901 {{< /keyword >}}
{{< keyword icon="writer" >}} Liang Pan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19901" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19901" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19901/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for Human-Scene Interactions (HSI) often use separate controllers for specific tasks, limiting their ability to handle complex tasks requiring multiple skills. Existing unified controllers also struggle with dynamic scenarios and adapting to novel scenes, constraining their adaptability.



This paper introduces a single, unified, transformer-based policy called **TokenHSI** capable of multi-skill unification and flexible adaptation. It models the humanoid proprioception as a separate shared token combined with distinct task tokens via a masking mechanism. The framework can adapt to new tasks by training additional task tokenizers. Experiments demonstrate significantly improved versatility, adaptability, and extensibility in various HSI tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TokenHSI is a novel transformer-based controller integrating versatile HSI skills. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The approach allows flexible and efficient adaptation to novel HSI tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A dedicated tokenizer is proposed to encode proprioception, facilitating multi-task training and policy adaptation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it presents a novel framework **TokenHSI** for synthesizing human-scene interactions. The method's **versatility, adaptability, and extensibility** improve the way of modeling and learning HSI tasks. It opens new avenues for creating more realistic and interactive virtual environments, impacting fields such as computer animation, robotics, and embodied AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19901/x2.png)

> 🔼 TokenHSI is a unified model that allows physics-based characters to perform a wide variety of human-scene interaction (HSI) tasks.  The model uses task tokenization to integrate multiple foundational HSI skills into a single transformer network.  This design enables seamless integration and flexible adaptation of learned skills to novel and complex tasks including skill composition (combining multiple skills), handling variations in object and terrain shapes, and completing long-horizon tasks (tasks requiring a sequence of actions over an extended period).
> <details>
> <summary>read the caption</summary>
> Figure 1: Introducing TokenHSI, a unified model that enables physics-based characters to perform diverse human-scene interaction tasks. It excels at seamlessly unifying multiple foundational HSI skills within a single transformer network and flexibly adapting learned skills to challenging new tasks, including skill composition, object/terrain shape variation, and long-horizon task completion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.28.28">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.28.28.29.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T1.28.28.29.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.28.28.29.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T1.28.28.29.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.28.28.29.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.28.28.29.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.28.28.29.1.3.1">Success Rate (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.28.28.29.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.28.28.29.1.4.1">Error (cm)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.2.2.2.3" rowspan="3"><span class="ltx_text" id="S4.T1.2.2.2.3.1">Follow</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.2.2.2.4"><span class="ltx_text" id="S4.T1.2.2.2.4.1" style="font-size:90%;">Specialist</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1">98.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">±</annotation></semantics></math>0.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1" style="background-color:#E9E9E9;">6.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.3.3.3.1"><span class="ltx_text" id="S4.T1.3.3.3.1.1" style="font-size:90%;">Ours (w/o <math alttext="\mathbb{T}^{prop}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.1.m1.1"><semantics id="S4.T1.3.3.3.1.1.m1.1a"><msup id="S4.T1.3.3.3.1.1.m1.1.1" xref="S4.T1.3.3.3.1.1.m1.1.1.cmml"><mi id="S4.T1.3.3.3.1.1.m1.1.1.2" xref="S4.T1.3.3.3.1.1.m1.1.1.2.cmml">𝕋</mi><mrow id="S4.T1.3.3.3.1.1.m1.1.1.3" xref="S4.T1.3.3.3.1.1.m1.1.1.3.cmml"><mi id="S4.T1.3.3.3.1.1.m1.1.1.3.2" xref="S4.T1.3.3.3.1.1.m1.1.1.3.2.cmml">p</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.3.1" xref="S4.T1.3.3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.3.3" xref="S4.T1.3.3.3.1.1.m1.1.1.3.3.cmml">r</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.3.1a" xref="S4.T1.3.3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.3.4" xref="S4.T1.3.3.3.1.1.m1.1.1.3.4.cmml">o</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.3.1b" xref="S4.T1.3.3.3.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.3.5" xref="S4.T1.3.3.3.1.1.m1.1.1.3.5.cmml">p</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.1.m1.1b"><apply id="S4.T1.3.3.3.1.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.1.1.m1.1.1.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1">superscript</csymbol><ci id="S4.T1.3.3.3.1.1.m1.1.1.2.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.2">𝕋</ci><apply id="S4.T1.3.3.3.1.1.m1.1.1.3.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3"><times id="S4.T1.3.3.3.1.1.m1.1.1.3.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3.1"></times><ci id="S4.T1.3.3.3.1.1.m1.1.1.3.2.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3.2">𝑝</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.3.3.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3.3">𝑟</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.3.4.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3.4">𝑜</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.3.5.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3.5">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.1.m1.1c">\mathbb{T}^{prop}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.1.m1.1d">blackboard_T start_POSTSUPERSCRIPT italic_p italic_r italic_o italic_p end_POSTSUPERSCRIPT</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.2">99.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.4.4.4.2.m1.1"><semantics id="S4.T1.4.4.4.2.m1.1a"><mo id="S4.T1.4.4.4.2.m1.1.1" xref="S4.T1.4.4.4.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.2.m1.1b"><csymbol cd="latexml" id="S4.T1.4.4.4.2.m1.1.1.cmml" xref="S4.T1.4.4.4.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.2.m1.1d">±</annotation></semantics></math>0.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.3">9.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.5.5.5.3.m1.1"><semantics id="S4.T1.5.5.5.3.m1.1a"><mo id="S4.T1.5.5.5.3.m1.1.1" xref="S4.T1.5.5.5.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.3.m1.1b"><csymbol cd="latexml" id="S4.T1.5.5.5.3.m1.1.1.cmml" xref="S4.T1.5.5.5.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.3.m1.1d">±</annotation></semantics></math>0.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.3"><span class="ltx_text" id="S4.T1.7.7.7.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.1.1" style="background-color:#E9E9E9;">99.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.1.m1.1"><semantics id="S4.T1.6.6.6.1.1.m1.1a"><mo id="S4.T1.6.6.6.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.6.6.6.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.6.1.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.2">9.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.7.7.7.2.m1.1"><semantics id="S4.T1.7.7.7.2.m1.1a"><mo id="S4.T1.7.7.7.2.m1.1.1" xref="S4.T1.7.7.7.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.2.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.7.2.m1.1.1.cmml" xref="S4.T1.7.7.7.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.2.m1.1d">±</annotation></semantics></math>0.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.9.9.9.3" rowspan="3"><span class="ltx_text" id="S4.T1.9.9.9.3.1">Sit</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.9.9.9.4"><span class="ltx_text" id="S4.T1.9.9.9.4.1" style="font-size:90%;">Specialist</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.1">98.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.8.8.8.1.m1.1"><semantics id="S4.T1.8.8.8.1.m1.1a"><mo id="S4.T1.8.8.8.1.m1.1.1" xref="S4.T1.8.8.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.1.m1.1d">±</annotation></semantics></math>2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.9.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.9.2.1" style="background-color:#E9E9E9;">5.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.9.9.9.2.1.m1.1"><semantics id="S4.T1.9.9.9.2.1.m1.1a"><mo id="S4.T1.9.9.9.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.9.9.9.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.9.9.9.2.1.m1.1.1.cmml" xref="S4.T1.9.9.9.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.2.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.10.10.10.1"><span class="ltx_text" id="S4.T1.10.10.10.1.1" style="font-size:90%;">Ours (w/o <math alttext="\mathbb{T}^{prop}" class="ltx_Math" display="inline" id="S4.T1.10.10.10.1.1.m1.1"><semantics id="S4.T1.10.10.10.1.1.m1.1a"><msup id="S4.T1.10.10.10.1.1.m1.1.1" xref="S4.T1.10.10.10.1.1.m1.1.1.cmml"><mi id="S4.T1.10.10.10.1.1.m1.1.1.2" xref="S4.T1.10.10.10.1.1.m1.1.1.2.cmml">𝕋</mi><mrow id="S4.T1.10.10.10.1.1.m1.1.1.3" xref="S4.T1.10.10.10.1.1.m1.1.1.3.cmml"><mi id="S4.T1.10.10.10.1.1.m1.1.1.3.2" xref="S4.T1.10.10.10.1.1.m1.1.1.3.2.cmml">p</mi><mo id="S4.T1.10.10.10.1.1.m1.1.1.3.1" xref="S4.T1.10.10.10.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.10.10.10.1.1.m1.1.1.3.3" xref="S4.T1.10.10.10.1.1.m1.1.1.3.3.cmml">r</mi><mo id="S4.T1.10.10.10.1.1.m1.1.1.3.1a" xref="S4.T1.10.10.10.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.10.10.10.1.1.m1.1.1.3.4" xref="S4.T1.10.10.10.1.1.m1.1.1.3.4.cmml">o</mi><mo id="S4.T1.10.10.10.1.1.m1.1.1.3.1b" xref="S4.T1.10.10.10.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.10.10.10.1.1.m1.1.1.3.5" xref="S4.T1.10.10.10.1.1.m1.1.1.3.5.cmml">p</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.1.1.m1.1b"><apply id="S4.T1.10.10.10.1.1.m1.1.1.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.10.10.10.1.1.m1.1.1.1.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1">superscript</csymbol><ci id="S4.T1.10.10.10.1.1.m1.1.1.2.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.2">𝕋</ci><apply id="S4.T1.10.10.10.1.1.m1.1.1.3.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3"><times id="S4.T1.10.10.10.1.1.m1.1.1.3.1.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3.1"></times><ci id="S4.T1.10.10.10.1.1.m1.1.1.3.2.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3.2">𝑝</ci><ci id="S4.T1.10.10.10.1.1.m1.1.1.3.3.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3.3">𝑟</ci><ci id="S4.T1.10.10.10.1.1.m1.1.1.3.4.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3.4">𝑜</ci><ci id="S4.T1.10.10.10.1.1.m1.1.1.3.5.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1.3.5">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.1.1.m1.1c">\mathbb{T}^{prop}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.1.1.m1.1d">blackboard_T start_POSTSUPERSCRIPT italic_p italic_r italic_o italic_p end_POSTSUPERSCRIPT</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.11.2">98.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.11.11.11.2.m1.1"><semantics id="S4.T1.11.11.11.2.m1.1a"><mo id="S4.T1.11.11.11.2.m1.1.1" xref="S4.T1.11.11.11.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.2.m1.1b"><csymbol cd="latexml" id="S4.T1.11.11.11.2.m1.1.1.cmml" xref="S4.T1.11.11.11.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.2.m1.1d">±</annotation></semantics></math>0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.3">5.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.12.12.12.3.m1.1"><semantics id="S4.T1.12.12.12.3.m1.1a"><mo id="S4.T1.12.12.12.3.m1.1.1" xref="S4.T1.12.12.12.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.3.m1.1b"><csymbol cd="latexml" id="S4.T1.12.12.12.3.m1.1.1.cmml" xref="S4.T1.12.12.12.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.3.m1.1d">±</annotation></semantics></math>0.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.14.14.14.3"><span class="ltx_text" id="S4.T1.14.14.14.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.13.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.13.13.13.1.1" style="background-color:#E9E9E9;">99.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.1.m1.1"><semantics id="S4.T1.13.13.13.1.1.m1.1a"><mo id="S4.T1.13.13.13.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.13.13.13.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.13.13.13.1.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.1.m1.1d">±</annotation></semantics></math>0.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.14.2">5.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.14.14.14.2.m1.1"><semantics id="S4.T1.14.14.14.2.m1.1a"><mo id="S4.T1.14.14.14.2.m1.1.1" xref="S4.T1.14.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.2.m1.1b"><csymbol cd="latexml" id="S4.T1.14.14.14.2.m1.1.1.cmml" xref="S4.T1.14.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.2.m1.1d">±</annotation></semantics></math>0.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.16.16.16.3" rowspan="3"><span class="ltx_text" id="S4.T1.16.16.16.3.1">Climb</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.16.16.16.4"><span class="ltx_text" id="S4.T1.16.16.16.4.1" style="font-size:90%;">Specialist</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.15.15.15.1">99.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.15.15.15.1.m1.1"><semantics id="S4.T1.15.15.15.1.m1.1a"><mo id="S4.T1.15.15.15.1.m1.1.1" xref="S4.T1.15.15.15.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.1.m1.1b"><csymbol cd="latexml" id="S4.T1.15.15.15.1.m1.1.1.cmml" xref="S4.T1.15.15.15.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.1.m1.1d">±</annotation></semantics></math>0.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.16.16.16.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.16.16.2.1" style="background-color:#E9E9E9;">2.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.16.16.16.2.1.m1.1"><semantics id="S4.T1.16.16.16.2.1.m1.1a"><mo id="S4.T1.16.16.16.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.16.16.16.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.16.16.16.2.1.m1.1.1.cmml" xref="S4.T1.16.16.16.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.2.1.m1.1d">±</annotation></semantics></math>0.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.19.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.17.17.17.1"><span class="ltx_text" id="S4.T1.17.17.17.1.1" style="font-size:90%;">Ours (w/o <math alttext="\mathbb{T}^{prop}" class="ltx_Math" display="inline" id="S4.T1.17.17.17.1.1.m1.1"><semantics id="S4.T1.17.17.17.1.1.m1.1a"><msup id="S4.T1.17.17.17.1.1.m1.1.1" xref="S4.T1.17.17.17.1.1.m1.1.1.cmml"><mi id="S4.T1.17.17.17.1.1.m1.1.1.2" xref="S4.T1.17.17.17.1.1.m1.1.1.2.cmml">𝕋</mi><mrow id="S4.T1.17.17.17.1.1.m1.1.1.3" xref="S4.T1.17.17.17.1.1.m1.1.1.3.cmml"><mi id="S4.T1.17.17.17.1.1.m1.1.1.3.2" xref="S4.T1.17.17.17.1.1.m1.1.1.3.2.cmml">p</mi><mo id="S4.T1.17.17.17.1.1.m1.1.1.3.1" xref="S4.T1.17.17.17.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.17.17.17.1.1.m1.1.1.3.3" xref="S4.T1.17.17.17.1.1.m1.1.1.3.3.cmml">r</mi><mo id="S4.T1.17.17.17.1.1.m1.1.1.3.1a" xref="S4.T1.17.17.17.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.17.17.17.1.1.m1.1.1.3.4" xref="S4.T1.17.17.17.1.1.m1.1.1.3.4.cmml">o</mi><mo id="S4.T1.17.17.17.1.1.m1.1.1.3.1b" xref="S4.T1.17.17.17.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.17.17.17.1.1.m1.1.1.3.5" xref="S4.T1.17.17.17.1.1.m1.1.1.3.5.cmml">p</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.1.1.m1.1b"><apply id="S4.T1.17.17.17.1.1.m1.1.1.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.17.17.17.1.1.m1.1.1.1.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1">superscript</csymbol><ci id="S4.T1.17.17.17.1.1.m1.1.1.2.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.2">𝕋</ci><apply id="S4.T1.17.17.17.1.1.m1.1.1.3.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3"><times id="S4.T1.17.17.17.1.1.m1.1.1.3.1.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3.1"></times><ci id="S4.T1.17.17.17.1.1.m1.1.1.3.2.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3.2">𝑝</ci><ci id="S4.T1.17.17.17.1.1.m1.1.1.3.3.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3.3">𝑟</ci><ci id="S4.T1.17.17.17.1.1.m1.1.1.3.4.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3.4">𝑜</ci><ci id="S4.T1.17.17.17.1.1.m1.1.1.3.5.cmml" xref="S4.T1.17.17.17.1.1.m1.1.1.3.5">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.1.1.m1.1c">\mathbb{T}^{prop}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.1.1.m1.1d">blackboard_T start_POSTSUPERSCRIPT italic_p italic_r italic_o italic_p end_POSTSUPERSCRIPT</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.2">99.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.18.18.18.2.m1.1"><semantics id="S4.T1.18.18.18.2.m1.1a"><mo id="S4.T1.18.18.18.2.m1.1.1" xref="S4.T1.18.18.18.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.2.m1.1b"><csymbol cd="latexml" id="S4.T1.18.18.18.2.m1.1.1.cmml" xref="S4.T1.18.18.18.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.2.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.19.3">3.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.19.19.19.3.m1.1"><semantics id="S4.T1.19.19.19.3.m1.1a"><mo id="S4.T1.19.19.19.3.m1.1.1" xref="S4.T1.19.19.19.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.3.m1.1b"><csymbol cd="latexml" id="S4.T1.19.19.19.3.m1.1.1.cmml" xref="S4.T1.19.19.19.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.3.m1.1d">±</annotation></semantics></math>0.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.21.21.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.21.21.21.3"><span class="ltx_text" id="S4.T1.21.21.21.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.20.20.20.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.20.1.1" style="background-color:#E9E9E9;">99.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.20.20.20.1.1.m1.1"><semantics id="S4.T1.20.20.20.1.1.m1.1a"><mo id="S4.T1.20.20.20.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.20.20.20.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.20.20.20.1.1.m1.1.1.cmml" xref="S4.T1.20.20.20.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.1.1.m1.1d">±</annotation></semantics></math>0.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.21.21.2">2.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.21.21.21.2.m1.1"><semantics id="S4.T1.21.21.21.2.m1.1a"><mo id="S4.T1.21.21.21.2.m1.1.1" xref="S4.T1.21.21.21.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.2.m1.1b"><csymbol cd="latexml" id="S4.T1.21.21.21.2.m1.1.1.cmml" xref="S4.T1.21.21.21.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.2.m1.1d">±</annotation></semantics></math>0.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.23.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.23.23.23.3" rowspan="3"><span class="ltx_text" id="S4.T1.23.23.23.3.1">Carry</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.23.23.23.4"><span class="ltx_text" id="S4.T1.23.23.23.4.1" style="font-size:90%;">Specialist</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.22.22.22.1">83.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.22.22.22.1.m1.1"><semantics id="S4.T1.22.22.22.1.m1.1a"><mo id="S4.T1.22.22.22.1.m1.1.1" xref="S4.T1.22.22.22.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.22.1.m1.1b"><csymbol cd="latexml" id="S4.T1.22.22.22.1.m1.1.1.cmml" xref="S4.T1.22.22.22.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.22.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.22.1.m1.1d">±</annotation></semantics></math>5.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.23.23.23.2">5.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.23.23.23.2.m1.1"><semantics id="S4.T1.23.23.23.2.m1.1a"><mo id="S4.T1.23.23.23.2.m1.1.1" xref="S4.T1.23.23.23.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.2.m1.1b"><csymbol cd="latexml" id="S4.T1.23.23.23.2.m1.1.1.cmml" xref="S4.T1.23.23.23.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.2.m1.1d">±</annotation></semantics></math>0.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.24.24.24.1"><span class="ltx_text" id="S4.T1.24.24.24.1.1" style="font-size:90%;">Ours (w/o <math alttext="\mathbb{T}^{prop}" class="ltx_Math" display="inline" id="S4.T1.24.24.24.1.1.m1.1"><semantics id="S4.T1.24.24.24.1.1.m1.1a"><msup id="S4.T1.24.24.24.1.1.m1.1.1" xref="S4.T1.24.24.24.1.1.m1.1.1.cmml"><mi id="S4.T1.24.24.24.1.1.m1.1.1.2" xref="S4.T1.24.24.24.1.1.m1.1.1.2.cmml">𝕋</mi><mrow id="S4.T1.24.24.24.1.1.m1.1.1.3" xref="S4.T1.24.24.24.1.1.m1.1.1.3.cmml"><mi id="S4.T1.24.24.24.1.1.m1.1.1.3.2" xref="S4.T1.24.24.24.1.1.m1.1.1.3.2.cmml">p</mi><mo id="S4.T1.24.24.24.1.1.m1.1.1.3.1" xref="S4.T1.24.24.24.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.24.24.24.1.1.m1.1.1.3.3" xref="S4.T1.24.24.24.1.1.m1.1.1.3.3.cmml">r</mi><mo id="S4.T1.24.24.24.1.1.m1.1.1.3.1a" xref="S4.T1.24.24.24.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.24.24.24.1.1.m1.1.1.3.4" xref="S4.T1.24.24.24.1.1.m1.1.1.3.4.cmml">o</mi><mo id="S4.T1.24.24.24.1.1.m1.1.1.3.1b" xref="S4.T1.24.24.24.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.24.24.24.1.1.m1.1.1.3.5" xref="S4.T1.24.24.24.1.1.m1.1.1.3.5.cmml">p</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.24.1.1.m1.1b"><apply id="S4.T1.24.24.24.1.1.m1.1.1.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.24.24.24.1.1.m1.1.1.1.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1">superscript</csymbol><ci id="S4.T1.24.24.24.1.1.m1.1.1.2.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.2">𝕋</ci><apply id="S4.T1.24.24.24.1.1.m1.1.1.3.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3"><times id="S4.T1.24.24.24.1.1.m1.1.1.3.1.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3.1"></times><ci id="S4.T1.24.24.24.1.1.m1.1.1.3.2.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3.2">𝑝</ci><ci id="S4.T1.24.24.24.1.1.m1.1.1.3.3.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3.3">𝑟</ci><ci id="S4.T1.24.24.24.1.1.m1.1.1.3.4.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3.4">𝑜</ci><ci id="S4.T1.24.24.24.1.1.m1.1.1.3.5.cmml" xref="S4.T1.24.24.24.1.1.m1.1.1.3.5">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.24.1.1.m1.1c">\mathbb{T}^{prop}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.24.1.1.m1.1d">blackboard_T start_POSTSUPERSCRIPT italic_p italic_r italic_o italic_p end_POSTSUPERSCRIPT</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.25.25.25.2">90.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.25.25.25.2.m1.1"><semantics id="S4.T1.25.25.25.2.m1.1a"><mo id="S4.T1.25.25.25.2.m1.1.1" xref="S4.T1.25.25.25.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.25.2.m1.1b"><csymbol cd="latexml" id="S4.T1.25.25.25.2.m1.1.1.cmml" xref="S4.T1.25.25.25.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.25.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.25.2.m1.1d">±</annotation></semantics></math>3.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.26.26.3">6.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.26.26.26.3.m1.1"><semantics id="S4.T1.26.26.26.3.m1.1a"><mo id="S4.T1.26.26.26.3.m1.1.1" xref="S4.T1.26.26.26.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.26.3.m1.1b"><csymbol cd="latexml" id="S4.T1.26.26.26.3.m1.1.1.cmml" xref="S4.T1.26.26.26.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.26.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.26.3.m1.1d">±</annotation></semantics></math>0.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.28.28.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.28.28.28.3"><span class="ltx_text" id="S4.T1.28.28.28.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.27.27.27.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.27.27.27.1.1" style="background-color:#E9E9E9;">92.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.27.27.27.1.1.m1.1"><semantics id="S4.T1.27.27.27.1.1.m1.1a"><mo id="S4.T1.27.27.27.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.27.27.27.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.27.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.27.27.27.1.1.m1.1.1.cmml" xref="S4.T1.27.27.27.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.27.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.27.1.1.m1.1d">±</annotation></semantics></math>6.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.28.28.28.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T1.28.28.28.2.1" style="background-color:#E9E9E9;">4.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.28.28.28.2.1.m1.1"><semantics id="S4.T1.28.28.28.2.1.m1.1a"><mo id="S4.T1.28.28.28.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T1.28.28.28.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.28.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.28.28.28.2.1.m1.1.1.cmml" xref="S4.T1.28.28.28.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.28.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.28.2.1.m1.1d">±</annotation></semantics></math>0.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the performance of a unified multi-task policy versus specialist policies trained for individual tasks.  The comparison is made across four fundamental Human-Scene Interaction (HSI) skills: following a path, sitting down, climbing, and carrying an object. The success rate and error (in centimeters) are reported for each skill and method, with values presented as mean ± standard deviation (std). This allows for a direct comparison of the unified approach's ability to learn multiple skills simultaneously versus the performance achieved by models trained individually for each specific task.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison between our unified multi-task policy and specialist policies across four foundational HSI skills. Values are reported in the format of mean±plus-or-minus\pm±std.
> </details>





### In-depth insights


#### Tokenized HSI
The concept of "Tokenized HSI" appears to be central to the paper, suggesting a method where **Human-Scene Interactions (HSI) are represented and processed using tokens**. This likely involves discretizing the state space of the character and the scene into tokens that a transformer-based model can understand. The approach could involve separate tokens for proprioception and task-specific goals. This enables a **unified model** that can handle diverse HSI tasks. **Tokenization** may offer advantages in terms of **modularity and transferability**, allowing the model to adapt to new tasks by simply adding or modifying task-specific tokens. It facilitates knowledge sharing and generalization across different skills, as well as adaptation to novel tasks, object variations, and complex environments by training new tokenizers. **Effective token design is key**.

#### Unified Control
**Unified control** in HSI is a pivotal yet challenging area. The goal is to create a single controller adept at diverse interactions, moving beyond task-specific solutions. This controller should manage varied skills (like sitting, carrying) and adapt to new environments, bridging the gap between simulated and real-world agent capabilities. Key hurdles include designing architectures that unify multiple skills, handling dynamic environments requiring manipulation, and ensuring the transferability of learned skills to novel scenarios efficiently. Addressing these challenges could revolutionize simulated character interactions, enabling more versatile and adaptable AI agents. This requires a shift towards models that can not only execute individual tasks but also coordinate them seamlessly, opening new avenues for complex, realistic simulations.

#### Task Tokenization
While the term "Task Tokenization" isn't explicitly present as a heading, the paper revolves around a similar concept: representing various HSI tasks as distinct, modular units or 'tokens' within a unified framework. **The core idea is to encode both the humanoid's proprioception and task-specific information into separate tokens**, enabling the model to process them in a shared latent space. This approach fosters knowledge transfer across different skills, allowing the network to learn more efficiently and generalize better. **The masking mechanism** in the transformer architecture plays a crucial role, selectively combining the proprioception token with the appropriate task token to guide the character's actions. This design facilitates multi-task training and flexible adaptation to new scenarios by adding task specific tokens. **The effectiveness of this tokenization strategy** is demonstrated through experiments involving skill composition, object/terrain shape variation, and long-horizon task completion, showcasing the model's ability to seamlessly integrate diverse skills and adapt to novel situations.

#### Adaptation's Key
The concept of 'Adaptation's Key' in a research paper context likely refers to the critical elements enabling a model or system to adjust and perform well in new, unseen environments or tasks. A key aspect involves the **generalization capability of learned features**, allowing the system to apply prior knowledge effectively. Efficient adaptation often hinges on **modular design**, where specific components can be modified or added without retraining the entire system. Crucially, 'Adaptation's Key' involves a balance between **stability and plasticity**, ensuring the model retains previously acquired skills while adapting to new demands.  Another component can be the **identification of invariant features** that remain consistent across different scenarios, allowing the model to focus on adapting to the changing aspects of the environment. Effective **meta-learning strategies** can also play a significant role, enabling the system to learn how to learn and adapt more quickly. Finally, the method to **effectively encode proprioception** helps policy to make more flexible adaption. 

#### Limits & Future
Looking at the work, some limitations involve reliance on **engineered reward functions**, a common hurdle in RL. Future work could explore methods leveraging human data or internet knowledge to reduce reliance on them. Also, **the current long-horizon task completion is not fully autonomous**. A next step would be a system where the simulated humanoids can complete complex, long-term tasks in realistic settings without external assistance, an open and interesting direction to explore. This suggests a future where **reward engineering is minimized** through imitation or learning from readily available data, and where the agent exhibits a higher degree of autonomy and planning capability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19901/x3.png)

> 🔼 TokenHSI's architecture is a two-stage process.  The first stage focuses on foundational skill learning where a unified transformer network learns diverse human-scene interaction (HSI) skills through multi-task training.  The second stage involves policy adaptation where these learned skills are flexibly adapted to handle more challenging HSI tasks. This adaptation is efficient as it only requires training lightweight components: new task tokenizers (for example,  Tnew),  and adapter layers (ξA) which are added to the action head. The existing tokenizer for proprioception (Tprop) and encoder (ϕ) are reused and kept frozen.
> <details>
> <summary>read the caption</summary>
> Figure 2: TokenHSI consists of two stages: (left) foundational skill learning and (right) policy adaptation. Through multi-task policy training, the proposed framework learns versatile interaction skills in a single transformer network. Theses learned skills can be flexibly adapted to more challenging HSI tasks by training the lightweight modules, e.g., 𝕋n⁢e⁢wsuperscript𝕋𝑛𝑒𝑤\mathbb{T}^{new}blackboard_T start_POSTSUPERSCRIPT italic_n italic_e italic_w end_POSTSUPERSCRIPT, 𝕋csuperscript𝕋𝑐\mathbb{T}^{c}blackboard_T start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT, and ξ𝔸={ξ0𝔸,ξ1𝔸}superscript𝜉𝔸subscriptsuperscript𝜉𝔸0subscriptsuperscript𝜉𝔸1\xi^{\mathbb{A}}=\{\xi^{\mathbb{A}}_{0},\xi^{\mathbb{A}}_{1}\}italic_ξ start_POSTSUPERSCRIPT blackboard_A end_POSTSUPERSCRIPT = { italic_ξ start_POSTSUPERSCRIPT blackboard_A end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_ξ start_POSTSUPERSCRIPT blackboard_A end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT }.
> </details>



![](https://arxiv.org/html/2503.19901/)

> 🔼 Figure 3 presents a comparison of training efficiency across different methods for skill composition tasks.  The learning curves show the success rate (or a related metric reflecting task performance) over the number of training iterations. Four methods are compared: TokenHSI, a model trained from scratch (Scratch), the original CML method, and an improved version of CML (CML Dual).  The shaded regions around each curve indicate the standard deviation of results across three separate runs, each initialized with different random seeds, providing a measure of variability and confidence in the results. This helps to illustrate how quickly each method learns to perform the skill composition tasks and the relative stability of each approach's performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Learning curves comparing the efficiency on skill composition tasks using TokenHSI, policies trained from scratch [79], CML [108], and its improved version CML (dual). Colored regions denote mean values ±plus-or-minus\pm± a standard deviation based on 3333 models initialized with different random seeds.
> </details>



![](https://arxiv.org/html/2503.19901/x5.png)

> 🔼 This figure showcases the adaptability of the TokenHSI model.  It demonstrates how foundational skills (learned in a simpler setting) are successfully generalized to more complex and diverse human-scene interaction tasks through the process of policy adaptation.  The six subfigures illustrate examples of skill composition (combining multiple skills), object shape variation (adapting to differently-shaped objects), terrain shape variation (navigating uneven terrain), and long-horizon task completion (executing a sequence of tasks). Each subfigure visually presents a physics-based character performing the specified challenging interaction successfully.
> <details>
> <summary>read the caption</summary>
> Figure 4: Through policy adaptation, TokenHSI can generalize learned foundational skills to more challenging scene interaction tasks.
> </details>



![](https://arxiv.org/html/2503.19901/x6.png)

> 🔼 Figure 5 presents a comparison of training efficiency across three different methods for adapting a pre-trained box-carrying policy to handle novel object shapes (chairs and tables).  The learning curves illustrate how quickly each method achieves high success rates.  The methods compared are: TokenHSI (the proposed method), full fine-tuning of the pre-trained policy (a common approach which requires retraining the entire model), and AdaptNet [109] (a state-of-the-art policy adaptation method). The x-axis represents the number of training iterations, and the y-axis represents the success rate. The figure demonstrates TokenHSI's superior efficiency in adapting to new object shapes compared to the other two methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Learning curves comparing the efficiency on object shape variation tasks using TokenHSI, full fine-tuning of pre-trained policies, and AdaptNet [109].
> </details>



![](https://arxiv.org/html/2503.19901/x7.png)

> 🔼 Figure 6 presents learning curves that compare the training efficiency of three different methods for adapting a physics-based character controller to handle terrain with varying shapes.  The three methods are TokenHSI, Scratch [79] (a method that trains a new policy from scratch), and AdaptNet [109] (a method that incrementally adapts a pre-trained policy). The curves show the success rate achieved by each method over a range of training iterations.  Importantly, the figure also includes results for TokenHSI where the adapter layers (a component designed to improve efficiency of adaptation) have been removed, demonstrating their contribution to the model's overall performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Learning curves comparing the efficiency on terrain shape variation tasks using TokenHSI, Scratch [79], and AdaptNet [109]. We ablate the adapter layers during training.
> </details>



![](https://arxiv.org/html/2503.19901/x8.png)

> 🔼 This figure demonstrates the capability of the TokenHSI model to perform a complex, long-horizon task involving multiple skills.  Subfigure (a) shows the execution of the task using only pre-trained skills, highlighting potential limitations due to the lack of adaptation to the specific environment and task complexities. Subfigure (b) shows the improved performance after policy adaptation, where TokenHSI successfully executes the task sequentially and seamlessly transitions between skills.  This showcases the model's ability to adapt to novel scenarios and handle complex tasks that involve integrating multiple skills in a dynamic and coordinated manner.
> <details>
> <summary>read the caption</summary>
> Figure 7: Long-horizon task completion by sequentially executing (a) pre-trained skills and (b) adapted skills by our approach.
> </details>



![](https://arxiv.org/html/2503.19901/x9.png)

> 🔼 This figure showcases three variations of a simulated character model used in the paper's experiments.  Model (a) is based on the AMP model.  The authors improved upon this design in two ways, resulting in models (b) and (c). Model (b) is optimized for tasks performed on flat ground, while model (c) is specifically designed for tasks involving stairs or uneven terrain, reflecting differences in foot geometry and collision detection capabilities necessary for realistic interaction with stairs.
> <details>
> <summary>read the caption</summary>
> Figure A: Different simulated character models. Building on (a) AMP’s model, we devise two improved versions: (b) and (c), which are used for tasks on flat ground and tasks on stairs terrain, respectively.
> </details>



![](https://arxiv.org/html/2503.19901/x10.png)

> 🔼 Figure B shows the learning curves for a long-horizon task, comparing three different approaches: TokenHSI, Scratch [79], and Finetune.  The x-axis represents the number of training iterations, while the y-axis indicates the number of completed sub-tasks within the long-horizon task.  The plot illustrates the training efficiency of each method. TokenHSI demonstrates faster convergence and achieves a higher number of completed subtasks compared to the other two approaches. This highlights the effectiveness of TokenHSI in learning complex, multi-stage tasks efficiently.
> <details>
> <summary>read the caption</summary>
> Figure B: Learning curves comparing the efficiency on long-horizon task completion using TokenHSI, Scratch [79], and iterative fine-tuning of multiple pre-trained specialist policies, namely Finetune.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.31.31">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.31.31.32.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.31.31.32.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.32.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.31.31.32.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.32.1.2.1">Follow + Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.31.31.32.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.32.1.3.1">Sit + Carry</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.31.31.32.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.32.1.4.1">Climb + Carry</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.31.31.33.2">
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.33.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.1.1" style="font-size:90%;">Succ. (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.31.31.33.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.2.1" style="font-size:90%;">Err. (cm)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.33.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.3.1" style="font-size:90%;">Succ. (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.31.31.33.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.4.1" style="font-size:90%;">Err. (cm)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.33.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.5.1" style="font-size:90%;">Succ. (%)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.33.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.33.2.6.1" style="font-size:90%;">Err. (cm)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.6.6.6.7">Scratch <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">98.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">±</annotation></semantics></math>0.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.2.2.2.2">12.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">±</annotation></semantics></math>0.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3">82.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">±</annotation></semantics></math>5.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.4.4.4.4">5.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" xref="S4.T2.4.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><csymbol cd="latexml" id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">±</annotation></semantics></math>0.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.5">26.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" xref="S4.T2.5.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><csymbol cd="latexml" id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">±</annotation></semantics></math>37.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.6.6">5.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" xref="S4.T2.6.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><csymbol cd="latexml" id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">±</annotation></semantics></math>4.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.12.12.12.7">CML <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib108" title=""><span class="ltx_text" style="font-size:90%;">108</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.1">97.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.1.m1.1.1" xref="S4.T2.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">±</annotation></semantics></math>0.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.2.1" style="background-color:#E9E9E9;">9.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.8.8.8.2.1.m1.1"><semantics id="S4.T2.8.8.8.2.1.m1.1a"><mo id="S4.T2.8.8.8.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.8.8.8.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.2.1.m1.1b"><csymbol cd="latexml" id="S4.T2.8.8.8.2.1.m1.1.1.cmml" xref="S4.T2.8.8.8.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.2.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.3" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.3.1" style="background-color:#E9E9E9;">96.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.9.9.9.3.1.m1.1"><semantics id="S4.T2.9.9.9.3.1.m1.1a"><mo id="S4.T2.9.9.9.3.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.9.9.9.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.3.1.m1.1b"><csymbol cd="latexml" id="S4.T2.9.9.9.3.1.m1.1.1.cmml" xref="S4.T2.9.9.9.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.3.1.m1.1d">±</annotation></semantics></math>0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.4">6.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.10.10.10.4.m1.1"><semantics id="S4.T2.10.10.10.4.m1.1a"><mo id="S4.T2.10.10.10.4.m1.1.1" xref="S4.T2.10.10.10.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.4.m1.1b"><csymbol cd="latexml" id="S4.T2.10.10.10.4.m1.1.1.cmml" xref="S4.T2.10.10.10.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.4.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.5">68.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.11.11.11.5.m1.1"><semantics id="S4.T2.11.11.11.5.m1.1a"><mo id="S4.T2.11.11.11.5.m1.1.1" xref="S4.T2.11.11.11.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.5.m1.1b"><csymbol cd="latexml" id="S4.T2.11.11.11.5.m1.1.1.cmml" xref="S4.T2.11.11.11.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.5.m1.1d">±</annotation></semantics></math>21.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.6">4.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.12.12.12.6.m1.1"><semantics id="S4.T2.12.12.12.6.m1.1a"><mo id="S4.T2.12.12.12.6.m1.1.1" xref="S4.T2.12.12.12.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.6.m1.1b"><csymbol cd="latexml" id="S4.T2.12.12.12.6.m1.1.1.cmml" xref="S4.T2.12.12.12.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.6.m1.1d">±</annotation></semantics></math>0.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.18.18.18.7">CML (dual)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.1">99.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.13.13.13.1.m1.1"><semantics id="S4.T2.13.13.13.1.m1.1a"><mo id="S4.T2.13.13.13.1.m1.1.1" xref="S4.T2.13.13.13.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.1.m1.1b"><csymbol cd="latexml" id="S4.T2.13.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.1.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.14.14.2">10.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.14.14.14.2.m1.1"><semantics id="S4.T2.14.14.14.2.m1.1a"><mo id="S4.T2.14.14.14.2.m1.1.1" xref="S4.T2.14.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.2.m1.1b"><csymbol cd="latexml" id="S4.T2.14.14.14.2.m1.1.1.cmml" xref="S4.T2.14.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.2.m1.1d">±</annotation></semantics></math>0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.3">94.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.15.15.15.3.m1.1"><semantics id="S4.T2.15.15.15.3.m1.1a"><mo id="S4.T2.15.15.15.3.m1.1.1" xref="S4.T2.15.15.15.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.3.m1.1b"><csymbol cd="latexml" id="S4.T2.15.15.15.3.m1.1.1.cmml" xref="S4.T2.15.15.15.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.3.m1.1d">±</annotation></semantics></math>2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.4">5.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.16.16.16.4.m1.1"><semantics id="S4.T2.16.16.16.4.m1.1a"><mo id="S4.T2.16.16.16.4.m1.1.1" xref="S4.T2.16.16.16.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.4.m1.1b"><csymbol cd="latexml" id="S4.T2.16.16.16.4.m1.1.1.cmml" xref="S4.T2.16.16.16.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.4.m1.1d">±</annotation></semantics></math>0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.5">51.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.17.17.17.5.m1.1"><semantics id="S4.T2.17.17.17.5.m1.1a"><mo id="S4.T2.17.17.17.5.m1.1.1" xref="S4.T2.17.17.17.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.5.m1.1b"><csymbol cd="latexml" id="S4.T2.17.17.17.5.m1.1.1.cmml" xref="S4.T2.17.17.17.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.5.m1.1d">±</annotation></semantics></math>40.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.18.6">9.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.18.18.18.6.m1.1"><semantics id="S4.T2.18.18.18.6.m1.1a"><mo id="S4.T2.18.18.18.6.m1.1.1" xref="S4.T2.18.18.18.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.6.m1.1b"><csymbol cd="latexml" id="S4.T2.18.18.18.6.m1.1.1.cmml" xref="S4.T2.18.18.18.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.6.m1.1d">±</annotation></semantics></math>7.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.19.19.19.1">Ours (w/o <math alttext="\mathbb{T}^{prop}" class="ltx_Math" display="inline" id="S4.T2.19.19.19.1.m1.1"><semantics id="S4.T2.19.19.19.1.m1.1a"><msup id="S4.T2.19.19.19.1.m1.1.1" xref="S4.T2.19.19.19.1.m1.1.1.cmml"><mi id="S4.T2.19.19.19.1.m1.1.1.2" xref="S4.T2.19.19.19.1.m1.1.1.2.cmml">𝕋</mi><mrow id="S4.T2.19.19.19.1.m1.1.1.3" xref="S4.T2.19.19.19.1.m1.1.1.3.cmml"><mi id="S4.T2.19.19.19.1.m1.1.1.3.2" xref="S4.T2.19.19.19.1.m1.1.1.3.2.cmml">p</mi><mo id="S4.T2.19.19.19.1.m1.1.1.3.1" xref="S4.T2.19.19.19.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T2.19.19.19.1.m1.1.1.3.3" xref="S4.T2.19.19.19.1.m1.1.1.3.3.cmml">r</mi><mo id="S4.T2.19.19.19.1.m1.1.1.3.1a" xref="S4.T2.19.19.19.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T2.19.19.19.1.m1.1.1.3.4" xref="S4.T2.19.19.19.1.m1.1.1.3.4.cmml">o</mi><mo id="S4.T2.19.19.19.1.m1.1.1.3.1b" xref="S4.T2.19.19.19.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T2.19.19.19.1.m1.1.1.3.5" xref="S4.T2.19.19.19.1.m1.1.1.3.5.cmml">p</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.1.m1.1b"><apply id="S4.T2.19.19.19.1.m1.1.1.cmml" xref="S4.T2.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.19.19.19.1.m1.1.1.1.cmml" xref="S4.T2.19.19.19.1.m1.1.1">superscript</csymbol><ci id="S4.T2.19.19.19.1.m1.1.1.2.cmml" xref="S4.T2.19.19.19.1.m1.1.1.2">𝕋</ci><apply id="S4.T2.19.19.19.1.m1.1.1.3.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3"><times id="S4.T2.19.19.19.1.m1.1.1.3.1.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3.1"></times><ci id="S4.T2.19.19.19.1.m1.1.1.3.2.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3.2">𝑝</ci><ci id="S4.T2.19.19.19.1.m1.1.1.3.3.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3.3">𝑟</ci><ci id="S4.T2.19.19.19.1.m1.1.1.3.4.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3.4">𝑜</ci><ci id="S4.T2.19.19.19.1.m1.1.1.3.5.cmml" xref="S4.T2.19.19.19.1.m1.1.1.3.5">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.1.m1.1c">\mathbb{T}^{prop}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.1.m1.1d">blackboard_T start_POSTSUPERSCRIPT italic_p italic_r italic_o italic_p end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.20.20.20.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.20.20.20.2.1" style="background-color:#E9E9E9;">99.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.20.20.20.2.1.m1.1"><semantics id="S4.T2.20.20.20.2.1.m1.1a"><mo id="S4.T2.20.20.20.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.20.20.20.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.2.1.m1.1b"><csymbol cd="latexml" id="S4.T2.20.20.20.2.1.m1.1.1.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.2.1.m1.1d">±</annotation></semantics></math>0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.3">11.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.21.21.21.3.m1.1"><semantics id="S4.T2.21.21.21.3.m1.1a"><mo id="S4.T2.21.21.21.3.m1.1.1" xref="S4.T2.21.21.21.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.3.m1.1b"><csymbol cd="latexml" id="S4.T2.21.21.21.3.m1.1.1.cmml" xref="S4.T2.21.21.21.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.3.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.22.22.22.4">82.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.22.22.22.4.m1.1"><semantics id="S4.T2.22.22.22.4.m1.1a"><mo id="S4.T2.22.22.22.4.m1.1.1" xref="S4.T2.22.22.22.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.4.m1.1b"><csymbol cd="latexml" id="S4.T2.22.22.22.4.m1.1.1.cmml" xref="S4.T2.22.22.22.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.4.m1.1d">±</annotation></semantics></math>4.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.23.23.23.5">6.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.23.23.23.5.m1.1"><semantics id="S4.T2.23.23.23.5.m1.1a"><mo id="S4.T2.23.23.23.5.m1.1.1" xref="S4.T2.23.23.23.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.5.m1.1b"><csymbol cd="latexml" id="S4.T2.23.23.23.5.m1.1.1.cmml" xref="S4.T2.23.23.23.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.5.m1.1d">±</annotation></semantics></math>0.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.24.24.24.6">81.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.24.24.24.6.m1.1"><semantics id="S4.T2.24.24.24.6.m1.1a"><mo id="S4.T2.24.24.24.6.m1.1.1" xref="S4.T2.24.24.24.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.6.m1.1b"><csymbol cd="latexml" id="S4.T2.24.24.24.6.m1.1.1.cmml" xref="S4.T2.24.24.24.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.6.m1.1d">±</annotation></semantics></math>9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.7">5.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.25.25.25.7.m1.1"><semantics id="S4.T2.25.25.25.7.m1.1a"><mo id="S4.T2.25.25.25.7.m1.1.1" xref="S4.T2.25.25.25.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.7.m1.1b"><csymbol cd="latexml" id="S4.T2.25.25.25.7.m1.1.1.cmml" xref="S4.T2.25.25.25.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.7.m1.1d">±</annotation></semantics></math>0.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.31.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.31.31.31.7">Ours</th>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.1">99.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.26.26.26.1.m1.1"><semantics id="S4.T2.26.26.26.1.m1.1a"><mo id="S4.T2.26.26.26.1.m1.1.1" xref="S4.T2.26.26.26.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.26.1.m1.1b"><csymbol cd="latexml" id="S4.T2.26.26.26.1.m1.1.1.cmml" xref="S4.T2.26.26.26.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.26.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.26.1.m1.1d">±</annotation></semantics></math>0.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.27.27.27.2">10.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.27.27.27.2.m1.1"><semantics id="S4.T2.27.27.27.2.m1.1a"><mo id="S4.T2.27.27.27.2.m1.1.1" xref="S4.T2.27.27.27.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.27.2.m1.1b"><csymbol cd="latexml" id="S4.T2.27.27.27.2.m1.1.1.cmml" xref="S4.T2.27.27.27.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.27.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.27.2.m1.1d">±</annotation></semantics></math>0.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.28.3">96.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.28.28.28.3.m1.1"><semantics id="S4.T2.28.28.28.3.m1.1a"><mo id="S4.T2.28.28.28.3.m1.1.1" xref="S4.T2.28.28.28.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.28.3.m1.1b"><csymbol cd="latexml" id="S4.T2.28.28.28.3.m1.1.1.cmml" xref="S4.T2.28.28.28.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.28.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.28.3.m1.1d">±</annotation></semantics></math>1.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.4" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.29.29.29.4.1" style="background-color:#E9E9E9;">5.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.29.29.29.4.1.m1.1"><semantics id="S4.T2.29.29.29.4.1.m1.1a"><mo id="S4.T2.29.29.29.4.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.29.29.29.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.29.4.1.m1.1b"><csymbol cd="latexml" id="S4.T2.29.29.29.4.1.m1.1.1.cmml" xref="S4.T2.29.29.29.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.29.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.29.4.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.5" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.30.30.30.5.1" style="background-color:#E9E9E9;">99.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.30.30.30.5.1.m1.1"><semantics id="S4.T2.30.30.30.5.1.m1.1a"><mo id="S4.T2.30.30.30.5.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.30.30.30.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.30.5.1.m1.1b"><csymbol cd="latexml" id="S4.T2.30.30.30.5.1.m1.1.1.cmml" xref="S4.T2.30.30.30.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.30.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.30.5.1.m1.1d">±</annotation></semantics></math>0.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.31.6" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T2.31.31.31.6.1" style="background-color:#E9E9E9;">3.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.31.31.31.6.1.m1.1"><semantics id="S4.T2.31.31.31.6.1.m1.1a"><mo id="S4.T2.31.31.31.6.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T2.31.31.31.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.31.31.31.6.1.m1.1b"><csymbol cd="latexml" id="S4.T2.31.31.31.6.1.m1.1.1.cmml" xref="S4.T2.31.31.31.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.31.31.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.31.31.6.1.m1.1d">±</annotation></semantics></math>0.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for performing skill composition tasks in human-scene interaction.  It compares the success rates and errors of three different skill combinations: Follow + Carry, Sit + Carry, and Climb + Carry.  The methods compared include a specialist policy (trained only on that specific task), the proposed TokenHSI method, and two versions of the CML method, one with single and one with dual specialists.  The results show how TokenHSI achieves high success rates and low errors even on complex tasks, demonstrating its efficiency and effectiveness in skill composition compared to existing approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results across skill composition tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T3.12.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.13.1.1.1">Object</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T3.12.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.13.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.12.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.13.1.3.1">Success Rate (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.12.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.13.1.4.1">Error (cm)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.2.2.2.3" rowspan="3"><span class="ltx_text" id="S4.T3.2.2.2.3.1">Chair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.2.2.2.4"><span class="ltx_text" id="S4.T3.2.2.2.4.1" style="font-size:90%;">Finetune</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">87.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">±</annotation></semantics></math>0.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">6.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">±</annotation></semantics></math>0.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.4.4.3"><span class="ltx_text" id="S4.T3.4.4.4.3.1" style="font-size:90%;">AdaptNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib109" title=""><span class="ltx_text" style="font-size:90%;">109</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.1">84.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">±</annotation></semantics></math>3.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.2">6.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.4.4.4.2.m1.1"><semantics id="S4.T3.4.4.4.2.m1.1a"><mo id="S4.T3.4.4.4.2.m1.1.1" xref="S4.T3.4.4.4.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.2.m1.1b"><csymbol cd="latexml" id="S4.T3.4.4.4.2.m1.1.1.cmml" xref="S4.T3.4.4.4.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.2.m1.1d">±</annotation></semantics></math>0.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.6.6.3"><span class="ltx_text" id="S4.T3.6.6.6.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.1.1" style="background-color:#E9E9E9;">88.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.1.m1.1"><semantics id="S4.T3.5.5.5.1.1.m1.1a"><mo id="S4.T3.5.5.5.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T3.5.5.5.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.1.m1.1b"><csymbol cd="latexml" id="S4.T3.5.5.5.1.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.1.m1.1d">±</annotation></semantics></math>3.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.2.1" style="background-color:#E9E9E9;">5.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.6.6.6.2.1.m1.1"><semantics id="S4.T3.6.6.6.2.1.m1.1a"><mo id="S4.T3.6.6.6.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T3.6.6.6.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.2.1.m1.1b"><csymbol cd="latexml" id="S4.T3.6.6.6.2.1.m1.1.1.cmml" xref="S4.T3.6.6.6.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.2.1.m1.1d">±</annotation></semantics></math>0.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.8.8.8.3" rowspan="3"><span class="ltx_text" id="S4.T3.8.8.8.3.1">Table</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.8.8.8.4"><span class="ltx_text" id="S4.T3.8.8.8.4.1" style="font-size:90%;">Finetune</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7.1">83.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">±</annotation></semantics></math>1.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.8.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.2.1" style="background-color:#E9E9E9;">6.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.1.m1.1"><semantics id="S4.T3.8.8.8.2.1.m1.1a"><mo id="S4.T3.8.8.8.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T3.8.8.8.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.1.m1.1b"><csymbol cd="latexml" id="S4.T3.8.8.8.2.1.m1.1.1.cmml" xref="S4.T3.8.8.8.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.1.m1.1d">±</annotation></semantics></math>0.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.10.10.10.3"><span class="ltx_text" id="S4.T3.10.10.10.3.1" style="font-size:90%;">AdaptNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib109" title=""><span class="ltx_text" style="font-size:90%;">109</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.1">82.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mo id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><csymbol cd="latexml" id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">±</annotation></semantics></math>3.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.2">6.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.m1.1"><semantics id="S4.T3.10.10.10.2.m1.1a"><mo id="S4.T3.10.10.10.2.m1.1.1" xref="S4.T3.10.10.10.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.m1.1b"><csymbol cd="latexml" id="S4.T3.10.10.10.2.m1.1.1.cmml" xref="S4.T3.10.10.10.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.m1.1d">±</annotation></semantics></math>0.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.12.12.3"><span class="ltx_text" id="S4.T3.12.12.12.3.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.1.1" style="background-color:#E9E9E9;">83.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.11.11.11.1.1.m1.1"><semantics id="S4.T3.11.11.11.1.1.m1.1a"><mo id="S4.T3.11.11.11.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T3.11.11.11.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.1.1.m1.1b"><csymbol cd="latexml" id="S4.T3.11.11.11.1.1.m1.1.1.cmml" xref="S4.T3.11.11.11.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.1.1.m1.1d">±</annotation></semantics></math>1.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.2">6.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.12.12.12.2.m1.1"><semantics id="S4.T3.12.12.12.2.m1.1a"><mo id="S4.T3.12.12.12.2.m1.1.1" xref="S4.T3.12.12.12.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.2.m1.1b"><csymbol cd="latexml" id="S4.T3.12.12.12.2.m1.1.1.cmml" xref="S4.T3.12.12.12.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.2.m1.1d">±</annotation></semantics></math>0.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for adapting a physics-based character controller to handle variations in object shape during human-scene interaction tasks.  It shows the success rate and error achieved by three different approaches:  a method that fully fine-tunes a pre-trained model ('Finetune'), AdaptNet (a state-of-the-art model for policy adaptation), and the proposed TokenHSI method. The results are presented for two different object types: chairs and tables. The metrics assess the ability of each method to successfully carry a box to a target location while adapting to the new object geometries. This comparison demonstrates the generalization capacity of each controller in scenarios with varying object shapes.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results across object shape variation tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.14.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T4.14.14.15.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.15.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="2" id="S4.T4.14.14.15.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.15.1.2.1">Follow</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T4.14.14.15.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.15.1.3.1">Carry</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.14.14.16.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.14.14.16.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.16.2.1.1" style="font-size:90%;">Succ. (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T4.14.14.16.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.16.2.2.1" style="font-size:90%;">Err. (cm)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.14.14.16.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.16.2.3.1" style="font-size:90%;">Succ. (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.14.14.16.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.16.2.4.1" style="font-size:90%;">Err. (cm)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.2.2.2.3">Scratch <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">93.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">±</annotation></semantics></math>0.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.2.2.2.2">14.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.5">–</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.6.6.6.5">AdaptNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19901v1#bib.bib109" title=""><span class="ltx_text" style="font-size:90%;">109</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.1">92.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.1.m1.1.1" xref="S4.T4.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">±</annotation></semantics></math>0.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.2">12.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.4.4.4.2.m1.1"><semantics id="S4.T4.4.4.4.2.m1.1a"><mo id="S4.T4.4.4.4.2.m1.1.1" xref="S4.T4.4.4.4.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.2.m1.1b"><csymbol cd="latexml" id="S4.T4.4.4.4.2.m1.1.1.cmml" xref="S4.T4.4.4.4.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.2.m1.1d">±</annotation></semantics></math>0.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.3">63.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.5.5.5.3.m1.1"><semantics id="S4.T4.5.5.5.3.m1.1a"><mo id="S4.T4.5.5.5.3.m1.1.1" xref="S4.T4.5.5.5.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.3.m1.1b"><csymbol cd="latexml" id="S4.T4.5.5.5.3.m1.1.1.cmml" xref="S4.T4.5.5.5.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.3.m1.1d">±</annotation></semantics></math>0.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.4">5.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.6.6.6.4.m1.1"><semantics id="S4.T4.6.6.6.4.m1.1a"><mo id="S4.T4.6.6.6.4.m1.1.1" xref="S4.T4.6.6.6.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.4.m1.1b"><csymbol cd="latexml" id="S4.T4.6.6.6.4.m1.1.1.cmml" xref="S4.T4.6.6.6.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.4.m1.1d">±</annotation></semantics></math>0.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.10.10.10.5">Ours (w/o adapters)</th>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.1">63.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><mo id="S4.T4.7.7.7.1.m1.1.1" xref="S4.T4.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T4.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">±</annotation></semantics></math>1.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.8.8.2">22.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.8.8.8.2.m1.1"><semantics id="S4.T4.8.8.8.2.m1.1a"><mo id="S4.T4.8.8.8.2.m1.1.1" xref="S4.T4.8.8.8.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.2.m1.1b"><csymbol cd="latexml" id="S4.T4.8.8.8.2.m1.1.1.cmml" xref="S4.T4.8.8.8.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.2.m1.1d">±</annotation></semantics></math>0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.3">10.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.9.9.9.3.m1.1"><semantics id="S4.T4.9.9.9.3.m1.1a"><mo id="S4.T4.9.9.9.3.m1.1.1" xref="S4.T4.9.9.9.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.3.m1.1b"><csymbol cd="latexml" id="S4.T4.9.9.9.3.m1.1.1.cmml" xref="S4.T4.9.9.9.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.3.m1.1d">±</annotation></semantics></math>1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.4">7.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.10.10.10.4.m1.1"><semantics id="S4.T4.10.10.10.4.m1.1a"><mo id="S4.T4.10.10.10.4.m1.1.1" xref="S4.T4.10.10.10.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.4.m1.1b"><csymbol cd="latexml" id="S4.T4.10.10.10.4.m1.1.1.cmml" xref="S4.T4.10.10.10.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.4.m1.1d">±</annotation></semantics></math>0.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.14.14.14.5">Ours</th>
<td class="ltx_td ltx_align_center" id="S4.T4.11.11.11.1" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T4.11.11.11.1.1" style="background-color:#E9E9E9;">96.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.11.11.11.1.1.m1.1"><semantics id="S4.T4.11.11.11.1.1.m1.1a"><mo id="S4.T4.11.11.11.1.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T4.11.11.11.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.1.1.m1.1b"><csymbol cd="latexml" id="S4.T4.11.11.11.1.1.m1.1.1.cmml" xref="S4.T4.11.11.11.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.1.1.m1.1d">±</annotation></semantics></math>0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.12.12.12.2" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T4.12.12.12.2.1" style="background-color:#E9E9E9;">11.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.12.12.12.2.1.m1.1"><semantics id="S4.T4.12.12.12.2.1.m1.1a"><mo id="S4.T4.12.12.12.2.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T4.12.12.12.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.12.2.1.m1.1b"><csymbol cd="latexml" id="S4.T4.12.12.12.2.1.m1.1.1.cmml" xref="S4.T4.12.12.12.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.12.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.12.2.1.m1.1d">±</annotation></semantics></math>0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.13.3" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.13.3.1" style="background-color:#E9E9E9;">74.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.13.13.13.3.1.m1.1"><semantics id="S4.T4.13.13.13.3.1.m1.1a"><mo id="S4.T4.13.13.13.3.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T4.13.13.13.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.13.13.13.3.1.m1.1b"><csymbol cd="latexml" id="S4.T4.13.13.13.3.1.m1.1.1.cmml" xref="S4.T4.13.13.13.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.13.13.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.13.13.3.1.m1.1d">±</annotation></semantics></math>2.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.14.14.14.4" style="background-color:#E9E9E9;"><span class="ltx_text ltx_font_bold" id="S4.T4.14.14.14.4.1" style="background-color:#E9E9E9;">5.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.14.14.14.4.1.m1.1"><semantics id="S4.T4.14.14.14.4.1.m1.1a"><mo id="S4.T4.14.14.14.4.1.m1.1.1" mathbackground="#E9E9E9" xref="S4.T4.14.14.14.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.14.14.14.4.1.m1.1b"><csymbol cd="latexml" id="S4.T4.14.14.14.4.1.m1.1.1.cmml" xref="S4.T4.14.14.14.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.14.14.14.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.14.14.14.4.1.m1.1d">±</annotation></semantics></math>0.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for adapting character control policies to handle terrain variations.  It shows the success rate and error (in centimeters) for the 'Follow' and 'Carry' tasks across different terrain types, comparing the proposed method (TokenHSI) against the baseline methods of Scratch and AdaptNet.  The results highlight TokenHSI's effectiveness in adapting to more challenging scenarios with greater success and lower error compared to the baselines, illustrating the robustness and efficiency of its policy adaptation technique.  The 'Ours (w/o adapters)' row shows results without the adapter layers used in TokenHSI's policy adaptation.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results across terrain shape variation tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.1.1" style="font-size:144%;">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.2.1" style="font-size:144%;">Num. of</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S2.T1.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.3.1" style="font-size:144%;">Num. of Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="5" id="S2.T1.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.4.1" style="font-size:144%;">Reference Motion Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.5.1" style="font-size:144%;">Epis. Len. (s)</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S2.T1.4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.6.1" style="font-size:144%;">Early Termination Condition</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.1.1" style="font-size:144%;">Task Tokens</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.2.1" style="font-size:80%;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.3.1" style="font-size:80%;">Test</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.4.1" style="font-size:80%;">Loco</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.5.1" style="font-size:80%;">Stair</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.6.1" style="font-size:80%;">Climb</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.7.1" style="font-size:80%;">Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.8.1" style="font-size:80%;">Sit</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.9.1" style="font-size:80%;">Char. Fall</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.10.1" style="font-size:80%;">Obj. Fall</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.11.1" style="font-size:80%;">Path Dist.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.2.12.1" style="font-size:80%;">IET</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.4.1.3.3.1"><span class="ltx_text" id="S2.T1.4.1.3.3.1.1" style="font-size:144%;">Follow</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.4.1.3.3.2"><span class="ltx_text" id="S2.T1.4.1.3.3.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.1.3.3.3"><span class="ltx_text" id="S2.T1.4.1.3.3.3.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.4.1.3.3.4"><span class="ltx_text" id="S2.T1.4.1.3.3.4.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.1.3.3.5"><span class="ltx_text" id="S2.T1.4.1.3.3.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.4.1.3.3.6"></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.4.1.3.3.7"></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.4.1.3.3.8"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S2.T1.4.1.3.3.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.4.1.3.3.10"><span class="ltx_text" id="S2.T1.4.1.3.3.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.1.3.3.11"><span class="ltx_text" id="S2.T1.4.1.3.3.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.4.1.3.3.12"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.1.3.3.13"><span class="ltx_text" id="S2.T1.4.1.3.3.13.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.4.1.3.3.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.4.4.1"><span class="ltx_text" id="S2.T1.4.1.4.4.1.1" style="font-size:144%;">Sit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.4.4.2"><span class="ltx_text" id="S2.T1.4.1.4.4.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.4.4.3"><span class="ltx_text" id="S2.T1.4.1.4.4.3.1" style="font-size:144%;">49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.4.4.4"><span class="ltx_text" id="S2.T1.4.1.4.4.4.1" style="font-size:144%;">26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.4.4.5"><span class="ltx_text" id="S2.T1.4.1.4.4.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.4.4.6"></td>
<td class="ltx_td" id="S2.T1.4.1.4.4.7"></td>
<td class="ltx_td" id="S2.T1.4.1.4.4.8"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.4.4.9"><span class="ltx_text" id="S2.T1.4.1.4.4.9.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.4.4.10"><span class="ltx_text" id="S2.T1.4.1.4.4.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.4.4.11"><span class="ltx_text" id="S2.T1.4.1.4.4.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.4.4.12"></td>
<td class="ltx_td" id="S2.T1.4.1.4.4.13"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.4.4.14"><span class="ltx_text" id="S2.T1.4.1.4.4.14.1" style="font-size:144%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.5.5.1"><span class="ltx_text" id="S2.T1.4.1.5.5.1.1" style="font-size:144%;">Climb</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.5.5.2"><span class="ltx_text" id="S2.T1.4.1.5.5.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.5.5.3"><span class="ltx_text" id="S2.T1.4.1.5.5.3.1" style="font-size:144%;">38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.5.5.4"><span class="ltx_text" id="S2.T1.4.1.5.5.4.1" style="font-size:144%;">26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.5.5.5"><span class="ltx_text" id="S2.T1.4.1.5.5.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.5.5.6"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.5.5.7"><span class="ltx_text" id="S2.T1.4.1.5.5.7.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.5.5.8"></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.5.5.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.5.5.10"><span class="ltx_text" id="S2.T1.4.1.5.5.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.5.5.11"><span class="ltx_text" id="S2.T1.4.1.5.5.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.5.5.12"></td>
<td class="ltx_td" id="S2.T1.4.1.5.5.13"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.5.5.14"><span class="ltx_text" id="S2.T1.4.1.5.5.14.1" style="font-size:144%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.6.6.1"><span class="ltx_text" id="S2.T1.4.1.6.6.1.1" style="font-size:144%;">Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.6.6.2"><span class="ltx_text" id="S2.T1.4.1.6.6.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.6.6.3"><span class="ltx_text" id="S2.T1.4.1.6.6.3.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.6.6.4"><span class="ltx_text" id="S2.T1.4.1.6.6.4.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.6.6.5"><span class="ltx_text" id="S2.T1.4.1.6.6.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.6.6.6"></td>
<td class="ltx_td" id="S2.T1.4.1.6.6.7"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.6.6.8"><span class="ltx_text" id="S2.T1.4.1.6.6.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.6.6.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.6.6.10"><span class="ltx_text" id="S2.T1.4.1.6.6.10.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.6.6.11"><span class="ltx_text" id="S2.T1.4.1.6.6.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.6.6.12"></td>
<td class="ltx_td" id="S2.T1.4.1.6.6.13"></td>
<td class="ltx_td" id="S2.T1.4.1.6.6.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.4.1.7.7.1"><span class="ltx_text" id="S2.T1.4.1.7.7.1.1" style="font-size:144%;">Follow + Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.7.7.2"><span class="ltx_text" id="S2.T1.4.1.7.7.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.3"><span class="ltx_text" id="S2.T1.4.1.7.7.3.1" style="font-size:144%;">/ + 5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.7.7.4"><span class="ltx_text" id="S2.T1.4.1.7.7.4.1" style="font-size:144%;">/ + 9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.5"><span class="ltx_text" id="S2.T1.4.1.7.7.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.7.7.6"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.7.7.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.8"><span class="ltx_text" id="S2.T1.4.1.7.7.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T1.4.1.7.7.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.7.7.10"><span class="ltx_text" id="S2.T1.4.1.7.7.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.11"><span class="ltx_text" id="S2.T1.4.1.7.7.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.12"><span class="ltx_text" id="S2.T1.4.1.7.7.12.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.7.7.13"><span class="ltx_text" id="S2.T1.4.1.7.7.13.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.7.7.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.8.8.1"><span class="ltx_text" id="S2.T1.4.1.8.8.1.1" style="font-size:144%;">Sit + Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.8.8.2"><span class="ltx_text" id="S2.T1.4.1.8.8.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.3"><span class="ltx_text" id="S2.T1.4.1.8.8.3.1" style="font-size:144%;">49 + 5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.8.8.4"><span class="ltx_text" id="S2.T1.4.1.8.8.4.1" style="font-size:144%;">26 + 9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.5"><span class="ltx_text" id="S2.T1.4.1.8.8.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.8.8.6"></td>
<td class="ltx_td" id="S2.T1.4.1.8.8.7"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.8"><span class="ltx_text" id="S2.T1.4.1.8.8.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.8.8.9"><span class="ltx_text" id="S2.T1.4.1.8.8.9.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.8.8.10"><span class="ltx_text" id="S2.T1.4.1.8.8.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.11"><span class="ltx_text" id="S2.T1.4.1.8.8.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.12"><span class="ltx_text" id="S2.T1.4.1.8.8.12.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.8.8.13"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.8.8.14"><span class="ltx_text" id="S2.T1.4.1.8.8.14.1" style="font-size:144%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.9.9.1"><span class="ltx_text" id="S2.T1.4.1.9.9.1.1" style="font-size:144%;">Climb + Carry</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.9.9.2"><span class="ltx_text" id="S2.T1.4.1.9.9.2.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.3"><span class="ltx_text" id="S2.T1.4.1.9.9.3.1" style="font-size:144%;">38 + 5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.9.9.4"><span class="ltx_text" id="S2.T1.4.1.9.9.4.1" style="font-size:144%;">26 + 9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.5"><span class="ltx_text" id="S2.T1.4.1.9.9.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.9.9.6"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.7"><span class="ltx_text" id="S2.T1.4.1.9.9.7.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.8"><span class="ltx_text" id="S2.T1.4.1.9.9.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.9.9.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.9.9.10"><span class="ltx_text" id="S2.T1.4.1.9.9.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.11"><span class="ltx_text" id="S2.T1.4.1.9.9.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.12"><span class="ltx_text" id="S2.T1.4.1.9.9.12.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.9.9.13"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.9.9.14"><span class="ltx_text" id="S2.T1.4.1.9.9.14.1" style="font-size:144%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.4.1.10.10.1"><span class="ltx_text" id="S2.T1.4.1.10.10.1.1" style="font-size:144%;">Obj. Shap. Var. (Chair)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.10.10.2"><span class="ltx_text" id="S2.T1.4.1.10.10.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.10.10.3"><span class="ltx_text" id="S2.T1.4.1.10.10.3.1" style="font-size:144%;">63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.10.10.4"><span class="ltx_text" id="S2.T1.4.1.10.10.4.1" style="font-size:144%;">27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.10.10.5"><span class="ltx_text" id="S2.T1.4.1.10.10.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.10.10.6"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.10.10.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.10.10.8"><span class="ltx_text" id="S2.T1.4.1.10.10.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T1.4.1.10.10.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.10.10.10"><span class="ltx_text" id="S2.T1.4.1.10.10.10.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.10.10.11"><span class="ltx_text" id="S2.T1.4.1.10.10.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.10.10.12"><span class="ltx_text" id="S2.T1.4.1.10.10.12.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.10.10.13"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.10.10.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.11.11.1"><span class="ltx_text" id="S2.T1.4.1.11.11.1.1" style="font-size:144%;">Obj. Shap. Var. (Table)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.11.11.2"><span class="ltx_text" id="S2.T1.4.1.11.11.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.11.11.3"><span class="ltx_text" id="S2.T1.4.1.11.11.3.1" style="font-size:144%;">21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.11.11.4"><span class="ltx_text" id="S2.T1.4.1.11.11.4.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.11.11.5"><span class="ltx_text" id="S2.T1.4.1.11.11.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.11.11.6"></td>
<td class="ltx_td" id="S2.T1.4.1.11.11.7"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.11.11.8"><span class="ltx_text" id="S2.T1.4.1.11.11.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.11.11.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.11.11.10"><span class="ltx_text" id="S2.T1.4.1.11.11.10.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.11.11.11"><span class="ltx_text" id="S2.T1.4.1.11.11.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.11.11.12"><span class="ltx_text" id="S2.T1.4.1.11.11.12.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.11.11.13"></td>
<td class="ltx_td" id="S2.T1.4.1.11.11.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.12.12.1"><span class="ltx_text" id="S2.T1.4.1.12.12.1.1" style="font-size:144%;">Terr. Shap. Var. (Follow)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.12.12.2"><span class="ltx_text" id="S2.T1.4.1.12.12.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.12.12.3"><span class="ltx_text" id="S2.T1.4.1.12.12.3.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.12.12.4"><span class="ltx_text" id="S2.T1.4.1.12.12.4.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.12.12.5"><span class="ltx_text" id="S2.T1.4.1.12.12.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.12.12.6"><span class="ltx_text" id="S2.T1.4.1.12.12.6.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.12.12.7"></td>
<td class="ltx_td" id="S2.T1.4.1.12.12.8"></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.12.12.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.12.12.10"><span class="ltx_text" id="S2.T1.4.1.12.12.10.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.12.12.11"><span class="ltx_text" id="S2.T1.4.1.12.12.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.12.12.12"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.12.12.13"><span class="ltx_text" id="S2.T1.4.1.12.12.13.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.12.12.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.4.1.13.13.1"><span class="ltx_text" id="S2.T1.4.1.13.13.1.1" style="font-size:144%;">Terr. Shap. Var. (Carry)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.13.13.2"><span class="ltx_text" id="S2.T1.4.1.13.13.2.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.13.13.3"><span class="ltx_text" id="S2.T1.4.1.13.13.3.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.13.13.4"><span class="ltx_text" id="S2.T1.4.1.13.13.4.1" style="font-size:144%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.13.13.5"><span class="ltx_text" id="S2.T1.4.1.13.13.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.13.13.6"><span class="ltx_text" id="S2.T1.4.1.13.13.6.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.13.13.7"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.13.13.8"><span class="ltx_text" id="S2.T1.4.1.13.13.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S2.T1.4.1.13.13.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.1.13.13.10"><span class="ltx_text" id="S2.T1.4.1.13.13.10.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.1.13.13.11"><span class="ltx_text" id="S2.T1.4.1.13.13.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td" id="S2.T1.4.1.13.13.12"></td>
<td class="ltx_td" id="S2.T1.4.1.13.13.13"></td>
<td class="ltx_td" id="S2.T1.4.1.13.13.14"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.4.1.14.14.1"><span class="ltx_text" id="S2.T1.4.1.14.14.1.1" style="font-size:144%;">Long-horizon Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.14.14.2"><span class="ltx_text" id="S2.T1.4.1.14.14.2.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.3"><span class="ltx_text" id="S2.T1.4.1.14.14.3.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.14.14.4"><span class="ltx_text" id="S2.T1.4.1.14.14.4.1" style="font-size:144%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.5"><span class="ltx_text" id="S2.T1.4.1.14.14.5.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.14.14.6"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.7"><span class="ltx_text" id="S2.T1.4.1.14.14.7.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.8"><span class="ltx_text" id="S2.T1.4.1.14.14.8.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.14.14.9"><span class="ltx_text" id="S2.T1.4.1.14.14.9.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.4.1.14.14.10"><span class="ltx_text" id="S2.T1.4.1.14.14.10.1" style="font-size:144%;">40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.11"><span class="ltx_text" id="S2.T1.4.1.14.14.11.1" style="font-size:144%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.14.14.12"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.4.1.14.14.13"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.1.14.14.14"><span class="ltx_text" id="S2.T1.4.1.14.14.14.1" style="font-size:144%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A provides a comprehensive overview of the twelve tasks used in the study. For each task, it details key settings such as the number of task tokens, the datasets used for reference motion and objects, the length of each episode, and the early termination conditions.  Early termination conditions include character falls, object falls, exceeding path distance, and interaction early termination (IET).  A '/' indicates that a particular setting isn't applicable to a given task.
> <details>
> <summary>read the caption</summary>
> Table A: The overview of all 12121212 tasks implemented in this paper. Key settings for each task are summarized, including the number of task tokens, the construction of reference motion and object datasets, the episode length, and early termination conditions. The available termination conditions contain character fall, object fall, path distance, and interaction early termination (IET). A slash (/) indicates that the specific configuration is not applicable.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19901/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19901/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}