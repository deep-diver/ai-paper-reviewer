---
title: "VideoWorld: Exploring Knowledge Learning from Unlabeled Videos"
summary: "VideoWorld shows AI can learn complex reasoning and planning skills from unlabeled videos alone, achieving professional-level performance in Go and robotics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09781 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhongwei Ren et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09781" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09781" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09781/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI research heavily relies on text-based models for knowledge learning, neglecting the vast amount of knowledge present in visual data, especially videos.  This paper explores an alternative approach by training a deep generative model, called VideoWorld, solely on unlabeled video data. The model's ability to learn complex concepts such as rules and reasoning is evaluated through video-based Go and robotic control tasks.  The existing methods struggles to learn from pure visual data and usually relies on text or labels or need to use reinforcement learning with rewards which are not always available. 



VideoWorld uses a novel latent dynamics model to efficiently represent visual changes which enhances its knowledge acquisition ability. The results demonstrate that video-only training is sufficient for learning knowledge, including rules, reasoning, and planning.  VideoWorld achieves remarkable success, reaching a professional level in Go and exhibiting strong generalization in robotic control. The model's code and data are open-sourced, furthering the research and development of knowledge acquisition from purely visual data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AI models can learn sophisticated knowledge from only visual data, bypassing the need for text or labels. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Representing visual changes efficiently is crucial for effective knowledge learning in video-based AI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VideoWorld, a novel video generation model, achieves state-of-the-art performance in video-based Go and robotic control tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it challenges the prevailing paradigm of text-based knowledge learning by demonstrating that **deep generative models can acquire complex knowledge solely from visual input**. This opens up new avenues for AI research, particularly in robotics and areas where visual information is primary.  The development of VideoWorld and its open-sourcing facilitates further research and advancements in this exciting field.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/figure1_showv7.png)

> 🔼 The figure illustrates VideoWorld, a novel approach to learning knowledge directly from unlabeled video data.  It contrasts VideoWorld with traditional methods like reinforcement learning (RL), supervised learning (SL), and text-based learning.  The core idea is that VideoWorld learns complex knowledge, including task-specific rules, reasoning, and planning abilities, solely by observing videos.  The figure highlights three key advantages of VideoWorld:  First, its unified visual representation enables better generalization across various tasks and interfaces compared to RL and SL. Second, it significantly reduces the need for manual annotation, a significant advantage over SL and text-based methods. Third, learning directly from video data allows VideoWorld to acquire richer real-world information than methods relying solely on text.
> <details>
> <summary>read the caption</summary>
> Figure 1: VideoWorld explores learning knowledge from unlabeled videos, ranging from task-specific rules to high-level reasoning and planning capabilities. Compared to other learning methods: reinforcement learning (RL), supervised learning (SL) and text-based learning, it offers three advantages: 1) better generalization with unified visual representation for various tasks and interfaces, 2) lower manual annotation burden, and 3) learning richer real-world information than text description.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.7">
<tr class="ltx_tr" id="S5.T1.7.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.7.8.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.7.8.1.1">
<span class="ltx_p" id="S5.T1.7.8.1.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.7.8.1.1.1.1" style="font-size:80%;">Idx</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.7.8.2"><span class="ltx_text" id="S5.T1.7.8.2.1" style="font-size:80%;">Agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.3"><span class="ltx_text" id="S5.T1.7.8.3.1" style="font-size:80%;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.4"><span class="ltx_text" id="S5.T1.7.8.4.1" style="font-size:80%;">w/o Search</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.5"><span class="ltx_text" id="S5.T1.7.8.5.1" style="font-size:80%;">Input</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.6"><span class="ltx_text" id="S5.T1.7.8.6.1" style="font-size:80%;">Legal rate (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.7"><span class="ltx_text" id="S5.T1.7.8.7.1" style="font-size:80%;">Action-Value (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.8"><span class="ltx_text" id="S5.T1.7.8.8.1" style="font-size:80%;">Best Action Acc. (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.8.9"><span class="ltx_text" id="S5.T1.7.8.9.1" style="font-size:80%;">Tournament Elo</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.2.1">
<span class="ltx_p" id="S5.T1.1.1.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.1.1.2.1.1.1" style="font-size:80%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.1.3"><span class="ltx_text" id="S5.T1.1.1.3.1" style="font-size:80%;">KataGO-human-1d</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4"><span class="ltx_text" id="S5.T1.1.1.4.1" style="font-size:80%;">RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.5"><span class="ltx_text" id="S5.T1.1.1.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6"><span class="ltx_text" id="S5.T1.1.1.6.1" style="font-size:80%;">State</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.7"><span class="ltx_text" id="S5.T1.1.1.7.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.8"><span class="ltx_text" id="S5.T1.1.1.8.1" style="font-size:80%;">67.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.9"><span class="ltx_text" id="S5.T1.1.1.9.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1">
<span class="ltx_text" id="S5.T1.1.1.1.1" style="font-size:80%;">2019</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.m1.1.1" mathsize="50%" xref="S5.T1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><csymbol cd="latexml" id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.1.1.1.2" style="font-size:50%;">23</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.2.2.1">
<span class="ltx_p" id="S5.T1.2.2.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.2.2.2.1.1.1" style="font-size:80%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T1.2.2.3"><span class="ltx_text" id="S5.T1.2.2.3.1" style="font-size:80%;">KataGO-human-5d</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.4"><span class="ltx_text" id="S5.T1.2.2.4.1" style="font-size:80%;">RL</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.5"><span class="ltx_text" id="S5.T1.2.2.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.6"><span class="ltx_text" id="S5.T1.2.2.6.1" style="font-size:80%;">State</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.7"><span class="ltx_text" id="S5.T1.2.2.7.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.8"><span class="ltx_text" id="S5.T1.2.2.8.1" style="font-size:80%;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.9"><span class="ltx_text" id="S5.T1.2.2.9.1" style="font-size:80%;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.1">
<span class="ltx_text" id="S5.T1.2.2.1.1" style="font-size:80%;">2253</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.2.2.1.m1.1"><semantics id="S5.T1.2.2.1.m1.1a"><mo id="S5.T1.2.2.1.m1.1.1" mathsize="50%" xref="S5.T1.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.1.m1.1b"><csymbol cd="latexml" id="S5.T1.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.2.2.1.2" style="font-size:50%;">20</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.7.9.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.7.9.1.1">
<span class="ltx_p" id="S5.T1.7.9.1.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.7.9.1.1.1.1" style="font-size:80%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T1.7.9.2"><span class="ltx_text" id="S5.T1.7.9.2.1" style="font-size:80%;color:#BFBFBF;">KataGO-human-9d (Oracle)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.3"><span class="ltx_text" id="S5.T1.7.9.3.1" style="font-size:80%;color:#BFBFBF;">RL</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.4"><span class="ltx_text" id="S5.T1.7.9.4.1" style="font-size:80%;color:#BFBFBF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.5"><span class="ltx_text" id="S5.T1.7.9.5.1" style="font-size:80%;color:#BFBFBF;">State</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.6"><span class="ltx_text" id="S5.T1.7.9.6.1" style="font-size:80%;color:#BFBFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.7"><span class="ltx_text" id="S5.T1.7.9.7.1" style="font-size:80%;color:#BFBFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8"><span class="ltx_text" id="S5.T1.7.9.8.1" style="font-size:80%;color:#BFBFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.9"><span class="ltx_text" id="S5.T1.7.9.9.1" style="font-size:80%;color:#BFBFBF;">2700</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.3.2.1">
<span class="ltx_p" id="S5.T1.3.3.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.3.3.2.1.1.1" style="font-size:80%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.3.3.3"><span class="ltx_text" id="S5.T1.3.3.3.1" style="font-size:80%;">Transformer 300M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.4"><span class="ltx_text" id="S5.T1.3.3.4.1" style="font-size:80%;">SL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5"><span class="ltx_text" id="S5.T1.3.3.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.6"><span class="ltx_text" id="S5.T1.3.3.6.1" style="font-size:80%;">State</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7"><span class="ltx_text" id="S5.T1.3.3.7.1" style="font-size:80%;">99.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.8"><span class="ltx_text" id="S5.T1.3.3.8.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.3.3.9.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.3.3.1.1" style="font-size:80%;">2308</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.3.3.1.m1.1"><semantics id="S5.T1.3.3.1.m1.1a"><mo id="S5.T1.3.3.1.m1.1.1" mathsize="50%" xref="S5.T1.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.1.m1.1b"><csymbol cd="latexml" id="S5.T1.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.3.3.1.2" style="font-size:50%;">21</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.4.4.2.1">
<span class="ltx_p" id="S5.T1.4.4.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.4.4.2.1.1.1" style="font-size:80%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T1.4.4.3"><span class="ltx_text" id="S5.T1.4.4.3.1" style="font-size:80%;">Transformer 300M</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4"><span class="ltx_text" id="S5.T1.4.4.4.1" style="font-size:80%;">SL</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.5"><span class="ltx_text" id="S5.T1.4.4.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6"><span class="ltx_text" id="S5.T1.4.4.6.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7"><span class="ltx_text" id="S5.T1.4.4.7.1" style="font-size:80%;">99.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8"><span class="ltx_text" id="S5.T1.4.4.8.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.9"><span class="ltx_text" id="S5.T1.4.4.9.1" style="font-size:80%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.1">
<span class="ltx_text" id="S5.T1.4.4.1.1" style="font-size:80%;">1998</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.4.4.1.m1.1"><semantics id="S5.T1.4.4.1.m1.1a"><mo id="S5.T1.4.4.1.m1.1.1" mathsize="50%" xref="S5.T1.4.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.1.m1.1b"><csymbol cd="latexml" id="S5.T1.4.4.1.m1.1.1.cmml" xref="S5.T1.4.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.4.4.1.2" style="font-size:50%;">38</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.5.5.2.1">
<span class="ltx_p" id="S5.T1.5.5.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.5.5.2.1.1.1" style="font-size:80%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.5.3"><span class="ltx_text" id="S5.T1.5.5.3.1" style="font-size:80%;">VideoWorld 50M (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.4"><span class="ltx_text" id="S5.T1.5.5.4.1" style="font-size:80%;">SL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.5"><span class="ltx_text" id="S5.T1.5.5.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.6"><span class="ltx_text" id="S5.T1.5.5.6.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.7"><span class="ltx_text" id="S5.T1.5.5.7.1" style="font-size:80%;">99.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.8"><span class="ltx_text" id="S5.T1.5.5.8.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.9"><span class="ltx_text" id="S5.T1.5.5.9.1" style="font-size:80%;">80.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.1">
<span class="ltx_text" id="S5.T1.5.5.1.1" style="font-size:80%;">2093</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.5.5.1.m1.1"><semantics id="S5.T1.5.5.1.m1.1a"><mo id="S5.T1.5.5.1.m1.1.1" mathsize="50%" xref="S5.T1.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.1.m1.1b"><csymbol cd="latexml" id="S5.T1.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.5.5.1.2" style="font-size:50%;">25</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.6.6.2.1">
<span class="ltx_p" id="S5.T1.6.6.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.6.6.2.1.1.1" style="font-size:80%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T1.6.6.3"><span class="ltx_text" id="S5.T1.6.6.3.1" style="font-size:80%;">VideoWorld 150M (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.4"><span class="ltx_text" id="S5.T1.6.6.4.1" style="font-size:80%;">SL</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.5"><span class="ltx_text" id="S5.T1.6.6.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6"><span class="ltx_text" id="S5.T1.6.6.6.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.7"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.7.1" style="font-size:80%;">99.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.8.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9"><span class="ltx_text" id="S5.T1.6.6.9.1" style="font-size:80%;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.1">
<span class="ltx_text" id="S5.T1.6.6.1.1" style="font-size:80%;">2218</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.6.6.1.m1.1"><semantics id="S5.T1.6.6.1.m1.1a"><mo id="S5.T1.6.6.1.m1.1.1" mathsize="50%" xref="S5.T1.6.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.1.m1.1b"><csymbol cd="latexml" id="S5.T1.6.6.1.m1.1.1.cmml" xref="S5.T1.6.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.6.6.1.2" style="font-size:50%;">23</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.7.7.2.1">
<span class="ltx_p" id="S5.T1.7.7.2.1.1" style="width:2.8pt;"><span class="ltx_text" id="S5.T1.7.7.2.1.1.1" style="font-size:80%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.7.7.3"><span class="ltx_text" id="S5.T1.7.7.3.1" style="font-size:80%;">VideoWorld 300M (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.4"><span class="ltx_text" id="S5.T1.7.7.4.1" style="font-size:80%;">SL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.5"><span class="ltx_text" id="S5.T1.7.7.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.6"><span class="ltx_text" id="S5.T1.7.7.6.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.7"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.7.1" style="font-size:80%;">99.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.8"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.1" style="font-size:80%;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.9"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.9.1" style="font-size:80%;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.1.1" style="font-size:80%;">2317<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.7.7.1.1.m1.1"><semantics id="S5.T1.7.7.1.1.m1.1a"><mo id="S5.T1.7.7.1.1.m1.1.1" mathsize="63%" xref="S5.T1.7.7.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.1.1.m1.1b"><csymbol cd="latexml" id="S5.T1.7.7.1.1.m1.1.1.cmml" xref="S5.T1.7.7.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.7.7.1.1.1" style="font-size:63%;">25</span></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different models on the Video-GoBench benchmark, a purely visual Go game environment.  The models are evaluated against three versions of the KataGo engine (trained to match human skill levels of 1-dan, 5-dan, and 9-dan) and against a model trained using only the state information (not video).  The performance metrics reported are the legal move rate (percentage of legal moves made), action-value (average score for moves made, using KataGo-9d as a reference), best action accuracy (percentage of moves matching KataGo-9d's best choice), and tournament Elo rating (relative skill level based on pairwise comparisons). The KataGo-human-9d model serves as an oracle, representing the highest level of human performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison on Video-GoBench. KataGO-human-9d represents the highest human level and serve as the Oracle for best actions.
> </details>





### In-depth insights


#### Visual Knowledge
The concept of "Visual Knowledge" in AI research is fascinating and complex.  It explores how AI systems can acquire and utilize knowledge directly from visual data, **without relying on textual descriptions or pre-defined labels**. This approach is crucial because a significant portion of real-world information exists in visual form, inaccessible to text-based models.  **VideoWorld's innovative methodology** addresses this by training a generative model on unlabeled videos, enabling it to learn rules, reasoning, and even planning capabilities. This demonstrates the richness of visual information for knowledge acquisition and the potential to overcome limitations of text-dependent AI. **A critical factor** identified is the effective representation of visual change over time, as simply processing raw video frames is insufficient for efficient learning.  The model's successful performance in complex tasks like Go and robotic control underlines the power of this paradigm and the immense potential of directly leveraging the vast, unlabeled repository of visual data available.  Further research into efficient visual representation methods and scaling up this approach will likely unlock further breakthroughs in AI's capacity for visual learning and understanding.

#### LDM's Role
The Latent Dynamics Model (LDM) plays a crucial role in VideoWorld by **efficiently representing the temporal dynamics of visual changes** in videos.  Unlike simply encoding raw video frames, which can be inefficient and lead to redundant information, the LDM compresses multi-step visual changes into compact latent codes. This not only enhances learning efficiency but also allows the model to better capture and reason about complex visual information crucial for tasks involving multi-step planning and decision-making, such as Go and robotic manipulation. The LDM's design and implementation showcase the significance of focusing on representing relevant visual changes instead of redundant visual data for effective knowledge learning.  The results clearly demonstrate the **significant performance improvement** achieved by incorporating the LDM, highlighting its importance in enabling VideoWorld to reach advanced levels in Go and robotic tasks. **Integrating the LDM with an auto-regressive transformer further enhances the model's ability to learn complex knowledge** solely from visual data. The LDM's impact on VideoWorld's success underscores the importance of efficient and effective visual representation for knowledge acquisition in AI.

#### VideoWorld's Power
**VideoWorld demonstrates remarkable capabilities in learning complex knowledge solely from unlabeled video data.**  Unlike text-based models, it leverages the next-token prediction paradigm on raw video, acquiring rules, reasoning, and planning abilities.  Its success in Go, achieving a 5-dan professional level, showcases its ability to understand intricate rules and strategies.  Further, its performance on robotic control tasks, approaching that of oracle models in CALVIN and RLBench, reveals strong generalization across environments.  **VideoWorld's strength lies in its ability to learn from purely visual information, opening new avenues for AI that surpasses traditional methods relying on explicit labels or rewards.** The Latent Dynamics Model (LDM) significantly boosts its efficiency by compactly representing visual changes, making it more adept at handling long-term, complex tasks.  **This innovative approach offers a promising path towards creating truly general AI agents capable of learning sophisticated knowledge through observation, mirroring the learning processes of biological organisms.**

#### Benchmarking
The benchmarking section of a research paper is crucial for evaluating the performance of a proposed model or algorithm.  A robust benchmarking strategy should involve multiple, relevant datasets to demonstrate generalizability beyond specific test cases.  It's essential to compare against established state-of-the-art baselines and to employ a variety of metrics that capture different aspects of performance.  **Quantitative metrics** are vital, such as accuracy, precision, and recall, alongside qualitative analyses that offer a deeper understanding.  The paper should transparently explain experimental setups, ensuring reproducibility.  Furthermore, **a thorough discussion of results** is key, highlighting both strengths and limitations of the model in relation to benchmarks.  This includes analyzing scenarios where the model excels or underperforms, offering insights into its capabilities and potential for future improvement. **Clearly articulated conclusions** summarizing the benchmarking findings and their implications for the broader research area are essential.

#### Future Works
Future research directions stemming from this work on knowledge learning from unlabeled videos could **explore more complex and diverse tasks**.  The current benchmarks (Go and robotics) provide valuable insights, but expanding to other domains, such as visual reasoning in natural scenes or multi-agent interactions, would demonstrate broader capabilities.  **Improving the visual representation and incorporating temporal dynamics** is also crucial.  While the Latent Dynamics Model (LDM) shows promise, further refinement and exploration of different architectural choices could lead to even more efficient and effective knowledge acquisition.  It would be beneficial to conduct **extensive scalability studies** using larger video datasets and more powerful computing resources to better understand the model's limitations and potential.  Furthermore, investigating **methods for interpretability** is important; understanding how the model reasons and makes decisions from visual input alone is key to building trust and facilitating further development.  Finally, it will be imperative to **explore the implications** of knowledge acquisition from purely visual data within ethical and societal considerations. This includes researching bias detection and mitigation techniques to ensure the fairness and robustness of future models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/rep_space_v3.png)

> 🔼 The figure compares three different approaches to predicting the next move in a game of Go: using only the game state, using raw video, and using video enhanced with latent codes to represent future visual changes.  The graph shows that using video with latent dynamics improves learning efficiency.  The 'Action-Value' metric represents the quality of each move prediction.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of prediction targets. “State”, “Video” and “Video w/ LDM” refer to three different prediction targets: a state sequence (e.g., labeled positions of moves in Go), a raw video sequence, and a video sequence augmented with latent codes representing future visual changes (this approach is adopted by VideoWorld). “Action-Value” denotes the score for each move in the game, with details provided in Sec. 4.2. By combining rich video information with a compact representation of visual changes, VideoWorld enables more effective learning.
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/overview_v6.png)

> 🔼 Figure 3 illustrates the architecture of VideoWorld, a novel video generation model designed for knowledge learning from unlabeled videos. The left panel shows the overall architecture, which comprises a VQ-VAE (Vector Quantized Variational Autoencoder) for encoding video frames into discrete tokens, and an autoregressive transformer for predicting the next token (or next frame) based on the previous tokens. The right panel focuses on the Latent Dynamics Model (LDM), a key component of VideoWorld. The LDM efficiently handles long-range dependencies in video sequences by first compressing the visual changes from each frame to its subsequent H frames into a set of latent codes and then seamlessly integrating these codes with the next token prediction paradigm of the autoregressive transformer. This two-stage process enhances both efficiency and effectiveness of the video generation and knowledge acquisition in VideoWorld.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the proposed VideoWorld model architecture. (Left) Overall architecture. (Right) The proposed latent dynamics model (LDM). First, LDM compresses the visual changes from each frame to its subsequent H𝐻Hitalic_H frames into a set of latent codes. Then, an auto-regressive transformer seamlessly integrates the output of LDM with the next token prediction paradigm.
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/umap_v4.png)

> 🔼 This figure visualizes the latent codes learned by the Latent Dynamics Model (LDM) during training on Go and robotic manipulation tasks.  The left panel shows UMAP projections of latent codes from the Go game, where each point represents a latent code generated by the LDM before quantization. Odd steps correspond to white player moves and even steps to black player moves. Black moves in steps 2, 4, and 6 are highlighted to demonstrate common patterns for new black moves. These patterns are further clarified with additional color and lines on the board. The right panel shows UMAP projections of latent codes from the robotic arm's movement in the CALVIN dataset. Here, each point represents a latent code, and the points are color-coded according to the magnitude of displacement along the X, Y, and Z axes at intervals of 1, 5, and 10 frames. Purple and red colors indicate the maximum displacement in opposite directions.
> <details>
> <summary>read the caption</summary>
> Figure 4: UMAP projection [34] of the learned latent code on the Go (Left) and CALVIN (right) training set. Each point represents the continuous (pre-quantization) latent code generated by the LDM. In Go examples, odd steps represent white’s moves, and even steps represent black’s moves. We visualize the latent codes of black moves in steps 2/4/6. The legend shows examples of common patterns learned for new black moves. For clarity, these moves are highlighted on the board with added colors and lines to indicate new patterns. On the right, we visualize the latent codes of the robotic arm’s movement along the X/Y/Z axes at intervals of 1, 5, and 10 frames. Points are color-coded by displacement range, with purple and red indicating the maximum displacement in opposite directions along each axis.
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/umap_test_v5.png)

> 🔼 This figure demonstrates a game of Go between the VideoWorld model and KataGO.  The VideoWorld model plays as black. The visualization uses UMAP to project the latent codes generated by the model's Latent Dynamics Model (LDM). The colors of the new stones placed on the Go board correspond to the colors of the projected latent codes, showing how the model's internal representation (latent codes) relates to its actions in the game. The clustering of the latent codes suggests that the model is not just reacting to the immediate game state but also considering future possibilities, demonstrating forward planning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of playing against KataGO and UMAP projection [34] of the predicted latent code. Our model plays as black. The generated latent code is visualized through the LDM decoder and new stones in the visualization are marked with colors to match the legend. The visualization serves as a probe, indicating that the model shows signs of forward planning.
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/umap_calvin.png)

> 🔼 This figure shows the comparison of prediction targets. It compares three different prediction targets: a state sequence (e.g., labeled positions of moves in Go), a raw video sequence, and a video sequence augmented with latent codes representing future visual changes. The x-axis represents the number of seen samples and the y-axis represents the Action-Value. It demonstrates that VideoWorld, by combining rich video information with a compact representation of visual changes, achieves superior training efficiency compared to using only state or video information.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/supp_vis_cap.png)

> 🔼 This figure shows the results of an ablation study on the compression length of the latent dynamics model (LDM) in the CALVIN environment.  The x-axis represents different compression lengths (H), indicating how many future frames are compressed into a latent code. The y-axis shows the task success rate for three robotic manipulation tasks: Push, Open/Close, and Turn On/Off. The baseline represents the performance without LDM. Different compression lengths were tested, revealing the optimal H value for each task that balances compression and information retention for effective learning.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/supp_vis_sac.png)

> 🔼 The figure shows the results of intervening latent codes with different indices.  It demonstrates the impact of altering latent codes at different time steps on the model's performance. By replacing latent codes with random tokens, the experiment shows how altering earlier codes (those representing immediate next steps) has a greater effect than altering later codes. This highlights the importance of the causal relationships and temporal ordering of information within the latent code sequence for effective reasoning and task completion.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/supp_vis_calvin_3.png)

> 🔼 The figure shows the ablation study of different codebook sizes in the latent dynamics model (LDM) on the performance of Go and CALVIN tasks.  The results demonstrate how different codebook sizes (729, 15625, 64000, and 262144) impact the model's ability to learn and achieve high accuracy in both Go and CALVIN tasks, showcasing the importance of selecting an appropriate codebook size for effective knowledge acquisition.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/supp_vis_rlbench.png)

> 🔼 This ablation study investigates the impact of the data source on the performance of the VideoWorld model.  It compares the model's performance using only human-generated Go data, only KataGo-generated data, and a combination of both. The results demonstrate how different data sources affect the model's ability to learn and perform the game, highlighting the role of data quality and diversity in knowledge acquisition.
> <details>
> <summary>read the caption</summary>
> (e)
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/state_count.png)

> 🔼 This figure visualizes the latent codes generated by the Latent Dynamics Model (LDM) during inference for robotic manipulation tasks.  The UMAP projection shows how these latent codes (9 codes representing 9 future time steps, H=9) cluster based on the task being performed.  Each point in the UMAP plot represents a latent code, and the color indicates the specific task.  The images on the right side show the model's actions. Yellow-background images depict the actual robotic arm movements during inference. Green-background images show the model's predictions of the next frames while it was training, illustrating its planning ability.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of robotic manipulation and UMAP projection of the predicted latent code during inference. Latent codes are visualized through the LDM decoder. The UMAP projection illustrates the 9 predicted latent codes (i.e. H=9𝐻9H=9italic_H = 9) across different tasks, with each point color-coded by task type. Visualizations with a yellow background show the model’s actual robotic arm control during inference, while those with a green background represent the model’s next-frame predictions during training.
> </details>



![](https://arxiv.org/html/2501.09781/extracted/6136615/figures/rep.png)

> 🔼 This figure shows the UMAP projection of the learned latent codes on the Go (left) and CALVIN (right) training sets. Each point represents the continuous (pre-quantization) latent code generated by the LDM.  The Go visualizations show odd steps representing white's moves and even steps representing black's moves.  The legend shows examples of common patterns learned for new black moves; these are highlighted on the board with colors and lines. The CALVIN visualizations show the latent codes of robotic arm movements along the X, Y, and Z axes at different frame intervals. Points are color-coded by displacement range, with purple and red indicating maximum displacement in opposite directions.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.2.2">
<tr class="ltx_tr" id="S5.T2.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.2.2.3.1" rowspan="2"><span class="ltx_text" id="S5.T2.2.2.3.1.1" style="font-size:80%;">Agents</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.2.3.2" rowspan="2"><span class="ltx_text" id="S5.T2.2.2.3.2.1" style="font-size:80%;">Input/Ouput</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.2.2.3.3"><span class="ltx_text" id="S5.T2.2.2.3.3.1" style="font-size:80%;">Task Success Rate (%)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.4.1"><span class="ltx_text" id="S5.T2.2.2.4.1.1" style="font-size:80%;">Push</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.4.2"><span class="ltx_text" id="S5.T2.2.2.4.2.1" style="font-size:80%;">Open/Close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.4.3"><span class="ltx_text" id="S5.T2.2.2.4.3.1" style="font-size:80%;">Turn on/off</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.5.1">
<span class="ltx_text" id="S5.T2.2.2.5.1.1" style="font-size:80%;">MCIL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.2.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09781v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S5.T2.2.2.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.5.2"><span class="ltx_text" id="S5.T2.2.2.5.2.1" style="font-size:80%;">Video/Lab. Action</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.5.3"><span class="ltx_text" id="S5.T2.2.2.5.3.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.5.4"><span class="ltx_text" id="S5.T2.2.2.5.4.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.5.5"><span class="ltx_text" id="S5.T2.2.2.5.5.1" style="font-size:80%;">41.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.6">
<td class="ltx_td ltx_align_left" id="S5.T2.2.2.6.1">
<span class="ltx_text" id="S5.T2.2.2.6.1.1" style="font-size:80%;">HULC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.2.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09781v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S5.T2.2.2.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2"><span class="ltx_text" id="S5.T2.2.2.6.2.1" style="font-size:80%;">Video/Lab. Action</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.3"><span class="ltx_text" id="S5.T2.2.2.6.3.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.4"><span class="ltx_text" id="S5.T2.2.2.6.4.1" style="font-size:80%;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.5"><span class="ltx_text" id="S5.T2.2.2.6.5.1" style="font-size:80%;">85.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.7">
<td class="ltx_td ltx_align_left" id="S5.T2.2.2.7.1"><span class="ltx_text" id="S5.T2.2.2.7.1.1" style="font-size:80%;color:#BFBFBF;">Transformer (Oracle)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.2"><span class="ltx_text" id="S5.T2.2.2.7.2.1" style="font-size:80%;color:#BFBFBF;">Video/Lab. Action</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3"><span class="ltx_text" id="S5.T2.2.2.7.3.1" style="font-size:80%;color:#BFBFBF;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.4"><span class="ltx_text" id="S5.T2.2.2.7.4.1" style="font-size:80%;color:#BFBFBF;">95.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.5"><span class="ltx_text" id="S5.T2.2.2.7.5.1" style="font-size:80%;color:#BFBFBF;">96.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.8">
<td class="ltx_td ltx_align_left" id="S5.T2.2.2.8.1"><span class="ltx_text" id="S5.T2.2.2.8.1.1" style="font-size:80%;">Transformer</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.2"><span class="ltx_text" id="S5.T2.2.2.8.2.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.3"><span class="ltx_text" id="S5.T2.2.2.8.3.1" style="font-size:80%;">17.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4"><span class="ltx_text" id="S5.T2.2.2.8.4.1" style="font-size:80%;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.5"><span class="ltx_text" id="S5.T2.2.2.8.5.1" style="font-size:80%;">19.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.9.1"><span class="ltx_text" id="S5.T2.2.2.9.1.1" style="font-size:80%;">VideoWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.9.2"><span class="ltx_text" id="S5.T2.2.2.9.2.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.9.3"><span class="ltx_text" id="S5.T2.2.2.9.3.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.9.4"><span class="ltx_text" id="S5.T2.2.2.9.4.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.9.5"><span class="ltx_text" id="S5.T2.2.2.9.5.1" style="font-size:80%;">72.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.1.1">
<span class="ltx_text" id="S5.T2.1.1.1.1.1" style="font-size:80%;">VideoWorld (+10k data)</span><sup class="ltx_sup" id="S5.T2.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S5.T2.1.1.1.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.2"><span class="ltx_text" id="S5.T2.1.1.1.2.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.3"><span class="ltx_text" id="S5.T2.1.1.1.3.1" style="font-size:80%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.4"><span class="ltx_text" id="S5.T2.1.1.1.4.1" style="font-size:80%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.5"><span class="ltx_text" id="S5.T2.1.1.1.5.1" style="font-size:80%;">79.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.2.2.2.1">
<span class="ltx_text" id="S5.T2.2.2.2.1.1" style="font-size:80%;">VideoWorld (+30k data)</span><sup class="ltx_sup" id="S5.T2.2.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S5.T2.2.2.2.1.2.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.2"><span class="ltx_text" id="S5.T2.2.2.2.2.1" style="font-size:80%;">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.3"><span class="ltx_text" id="S5.T2.2.2.2.3.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.4"><span class="ltx_text" id="S5.T2.2.2.2.4.1" style="font-size:80%;">91.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.5"><span class="ltx_text" id="S5.T2.2.2.2.5.1" style="font-size:80%;">93.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different models' performance on the CALVIN benchmark, a robotic manipulation task.  The benchmark evaluates the ability of models to perform three tasks: Push Blocks, Open/Close Drawer, and Turn On/Off Light. The table compares a baseline model (MCIL), a state-of-the-art model (HULC), a Transformer model trained with labelled data (Oracle), and the VideoWorld model at varying training data sizes. The 'Input/Output' column specifies whether the models use video input and labelled action output (Lab), or only video input.  The success rate for each task is given as a percentage for each model. The table highlights that VideoWorld, trained solely on unlabeled video data, performs comparably to models trained with labelled data, demonstrating its ability to learn complex tasks from visual data alone.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison on CALVIN benchmark. “Lab.” means annotated labels. All models have 300M parameters. † and ‡ denote using an additional 10k and 30k CALVIN trajectories for training, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.2.1">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.2.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T3.2.1.1.1.1" style="font-size:80%;">Agents</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T3.2.1.1.2"><span class="ltx_text" id="S5.T3.2.1.1.2.1" style="font-size:80%;">CALVIN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.2.1.1.3"><span class="ltx_text" id="S5.T3.2.1.1.3.1" style="font-size:80%;">RLBench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1"><span class="ltx_text" id="S5.T3.2.1.2.1.1" style="font-size:80%;">Push</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.2"><span class="ltx_text" id="S5.T3.2.1.2.2.1" style="font-size:80%;">Open/Close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.3"><span class="ltx_text" id="S5.T3.2.1.2.3.1" style="font-size:80%;">Turn on/off</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.4"><span class="ltx_text" id="S5.T3.2.1.2.4.1" style="font-size:80%;">Microwave</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.5"><span class="ltx_text" id="S5.T3.2.1.2.5.1" style="font-size:80%;">Fridge</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.2.1.3.1"><span class="ltx_text" id="S5.T3.2.1.3.1.1" style="font-size:80%;color:#BFBFBF;">Transformer (Oracle)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.2"><span class="ltx_text" id="S5.T3.2.1.3.2.1" style="font-size:80%;color:#BFBFBF;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.3"><span class="ltx_text" id="S5.T3.2.1.3.3.1" style="font-size:80%;color:#BFBFBF;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.4"><span class="ltx_text" id="S5.T3.2.1.3.4.1" style="font-size:80%;color:#BFBFBF;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.5"><span class="ltx_text" id="S5.T3.2.1.3.5.1" style="font-size:80%;color:#BFBFBF;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.6"><span class="ltx_text" id="S5.T3.2.1.3.6.1" style="font-size:80%;color:#BFBFBF;">69.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.2.1.4.1"><span class="ltx_text" id="S5.T3.2.1.4.1.1" style="font-size:80%;">Transformer</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.2"><span class="ltx_text" id="S5.T3.2.1.4.2.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.3"><span class="ltx_text" id="S5.T3.2.1.4.3.1" style="font-size:80%;">13.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.4"><span class="ltx_text" id="S5.T3.2.1.4.4.1" style="font-size:80%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.5"><span class="ltx_text" id="S5.T3.2.1.4.5.1" style="font-size:80%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.6"><span class="ltx_text" id="S5.T3.2.1.4.6.1" style="font-size:80%;">10.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.2.1.5.1"><span class="ltx_text" id="S5.T3.2.1.5.1.1" style="font-size:80%;">VideoWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.2"><span class="ltx_text" id="S5.T3.2.1.5.2.1" style="font-size:80%;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.3"><span class="ltx_text" id="S5.T3.2.1.5.3.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.4"><span class="ltx_text" id="S5.T3.2.1.5.4.1" style="font-size:80%;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.5"><span class="ltx_text" id="S5.T3.2.1.5.5.1" style="font-size:80%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.6"><span class="ltx_text" id="S5.T3.2.1.5.6.1" style="font-size:80%;">62.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a joint training experiment on two robotic manipulation benchmarks: CALVIN and RLBench.  It compares the performance of a VideoWorld model trained only on visual data to an oracle model (Transformer) trained with ground truth action labels.  The table shows success rates (percentage of successful task completions) for three distinct tasks across both benchmarks: Push, Open/Close, and Turn on/off in CALVIN; and Close Microwave and Close Fridge in RLBench.  The comparison highlights the VideoWorld model's ability to achieve promising results despite lacking ground truth action labels, demonstrating its capacity for knowledge acquisition from visual inputs alone.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of joint training on CALVIN and RLBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_minipage ltx_align_middle" id="S5.F6.sf1.1.1.1" style="width:125.7pt;">
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf1.1.1.1.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.1.1.1" style="font-size:80%;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.1.1.1.2"></span> <span class="ltx_text" id="S5.F6.sf1.1.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.F6.sf1.1.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.F6.sf1.1.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf1.1.1.1.1.1.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Compression</span></span>
<span class="ltx_tr" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">length <math alttext="H" class="ltx_Math" display="inline" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1a"><mi id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1.1" xref="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="S5.F6.sf1.1.1.1.1.1.1.1.1.1.1.m1.1d">italic_H</annotation></semantics></math></span></span>
</span></span> <span class="ltx_text" id="S5.F6.sf1.1.1.1.1.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.F6.sf1.1.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.1.2.1" style="font-size:80%;">Go</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.2">
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.2.1.1" style="font-size:80%;">Act-Value</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.2.2.1" style="font-size:80%;">Act-Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.F6.sf1.1.1.1.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.3.1.1" style="font-size:80%;">baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf1.1.1.1.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.3.2.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf1.1.1.1.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.3.3.1" style="font-size:80%;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf1.1.1.1.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.4.1.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.4.2.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.4.3.1" style="font-size:80%;">77.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf1.1.1.1.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.5.1.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf1.1.1.1.5.2.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf1.1.1.1.5.3.1" style="font-size:80%;">80.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf1.1.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf1.1.1.1.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf1.1.1.1.6.1.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf1.1.1.1.6.2.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf1.1.1.1.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf1.1.1.1.6.3.1" style="font-size:80%;">80.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation studies and analysis on the VideoWorld model (50M parameter version).  It shows the impact of different design choices on model performance, including varying compression lengths for the latent dynamics model (LDM) in Go and CALVIN environments, experimenting with different codebook sizes in the LDM, and analyzing the effect of different data sources (human vs. KataGo).  The results demonstrate the influence of these choices on both action value and accuracy metrics.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations and analysis. We conduct all experiments based on our 50M model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="S5.F6.sf2.1.1.1" style="width:143.1pt;">
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf2.1.1.1.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.1.1.1" style="font-size:80%;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.1.1.1.2"></span> <span class="ltx_text" id="S5.F6.sf2.1.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.F6.sf2.1.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.F6.sf2.1.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf2.1.1.1.1.1.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Compression</span></span>
<span class="ltx_tr" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">length <math alttext="H" class="ltx_Math" display="inline" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1a"><mi id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1.1" xref="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="S5.F6.sf2.1.1.1.1.1.1.1.1.1.1.m1.1d">italic_H</annotation></semantics></math></span></span>
</span></span> <span class="ltx_text" id="S5.F6.sf2.1.1.1.1.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.F6.sf2.1.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.1.2.1" style="font-size:80%;">CALVIN</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.2">
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.2.1.1" style="font-size:80%;">Push</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.2.2.1" style="font-size:80%;">Open/Close</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.2.3.1" style="font-size:80%;">Turn On/Off</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.F6.sf2.1.1.1.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.3.1.1" style="font-size:80%;">baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf2.1.1.1.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.3.2.1" style="font-size:80%;">12.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf2.1.1.1.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.3.3.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf2.1.1.1.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.3.4.1" style="font-size:80%;">15.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf2.1.1.1.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.4.1.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.4.2.1" style="font-size:80%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.4.3.1" style="font-size:80%;">53.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.4.4.1" style="font-size:80%;">67.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf2.1.1.1.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.5.1.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf2.1.1.1.5.2.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf2.1.1.1.5.3.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf2.1.1.1.5.4.1" style="font-size:80%;">69.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf2.1.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf2.1.1.1.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf2.1.1.1.6.1.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf2.1.1.1.6.2.1" style="font-size:80%;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf2.1.1.1.6.3.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf2.1.1.1.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf2.1.1.1.6.4.1" style="font-size:80%;">69.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results, focusing on the impact of using only latent codes for prediction, without including the video frames.  It compares the performance of a 50M parameter model on Go and CALVIN tasks when predicting only latent codes versus predicting both latent codes and video frames, highlighting the contribution of latent codes to model performance. The metrics used are Action-Value and Action Accuracy, demonstrating how the model's ability to predict and utilize the latent codes translates to overall task performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Latent code prediction only with 50M parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="S5.F6.sf3.2" style="width:125.7pt;">
<tr class="ltx_tr" id="S5.F6.sf3.2.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf3.2.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.1.1.1" style="font-size:80%;"><span class="ltx_text" id="S5.F6.sf3.2.1.1.1.1"></span> <span class="ltx_text" id="S5.F6.sf3.2.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.F6.sf3.2.1.1.1.2.1">
<span class="ltx_tr" id="S5.F6.sf3.2.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf3.2.1.1.1.2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Code</span></span>
<span class="ltx_tr" id="S5.F6.sf3.2.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.sf3.2.1.1.1.2.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Index</span></span>
</span></span> <span class="ltx_text" id="S5.F6.sf3.2.1.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.F6.sf3.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.1.2.1" style="font-size:80%;">Go</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.2">
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.2.1.1" style="font-size:80%;">Act-Value</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.2.2.1" style="font-size:80%;">Act-Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.F6.sf3.2.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.3.1.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf3.2.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf3.2.3.2.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.sf3.2.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.sf3.2.3.3.1" style="font-size:80%;">80.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf3.2.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.4.1.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.4.2.1" style="font-size:80%;">46.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.4.3.1" style="font-size:80%;">42.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf3.2.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.5.1.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.5.2.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.5.3.1" style="font-size:80%;">76.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf3.2.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.6.1.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf3.2.6.2.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.F6.sf3.2.6.3.1" style="font-size:80%;">80.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.sf3.2.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.F6.sf3.2.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.7.1.1" style="font-size:80%;">All</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.7.2.1" style="font-size:80%;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.sf3.2.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.F6.sf3.2.7.3.1" style="font-size:80%;">43.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training both the latent dynamics model (LDM) and the autoregressive transformer.  It lists the optimizer, learning rate, weight decay, momentum, batch size, learning rate schedule, warmup iterations, maximum iterations, augmentations, training loss type, and the target for training (reconstruction or next token prediction).  Separate configurations are provided for the LDM and the transformer.
> <details>
> <summary>read the caption</summary>
> Table A.1: Training configurations for the latent dynamics model (LDM) and auto-regressive (AR) transformer.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09781/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09781/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}