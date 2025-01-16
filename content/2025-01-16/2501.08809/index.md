---
title: "XMusic: Towards a Generalized and Controllable Symbolic Music Generation Framework"
summary: "XMusic: A new framework generates high-quality, emotionally controllable symbolic music from various prompts (images, videos, text, tags, humming)."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Music Generation", "🏢 Tencent AI Lab",]
showSummary: true
date: 2025-01-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.08809 {{< /keyword >}}
{{< keyword icon="writer" >}} Sida Tian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.08809" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.08809" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.08809/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI music generation struggles with controlling musical emotions and ensuring high-quality output.  This research tackles these challenges by introducing XMusic, a novel framework for symbolic music generation.  Existing methods often lack flexibility in input types and struggle with consistent output quality. 



XMusic uses a two-part system.  The first, XProjector, translates diverse input prompts (images, video, text, etc.) into symbolic musical elements such as genre, emotion, rhythm, and notes.  The second part, XComposer, generates music based on these elements using a transformer network, and a selector identifies the highest-quality results via multi-task learning. The framework also includes XMIDI, a large, high-quality dataset to train the system, demonstrating **significant improvements** over current state-of-the-art methods in both objective and subjective evaluations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} XMusic, a generalized and controllable symbolic music generation framework, is proposed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} XMusic utilizes multi-modal prompts (images, videos, text, tags, and humming) and a novel projection space to generate high-quality symbolic music. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} XMIDI, a large-scale symbolic music dataset with 108,023 MIDI files annotated with precise emotion and genre labels, is created. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical gap in AI-generated music: **controllability and quality**.  It introduces a novel framework and dataset that will likely **advance research** in symbolic music generation, enabling the creation of more sophisticated and emotionally expressive music. The multi-modal approach and the large-scale dataset also provide valuable resources for researchers in related areas.  This work could **spur innovations** in interactive music systems, virtual reality, and game design.

------
#### Visual Insights



![](https://arxiv.org/html/2501.08809/x1.png)

> 🔼 XMusic is a symbolic music generation framework with two main components: XProjector and XComposer.  XProjector takes multi-modal inputs (images, videos, text, tags, humming) and translates them into symbolic musical elements like emotion, genre, rhythm, and notes. These elements act as control signals for XComposer. XComposer consists of a Generator, which produces music based on these control signals, and a Selector, which uses a multi-task learning approach (quality, emotion, and genre assessment) to select the highest-quality output. The Generator is trained on a large dataset, XMIDI, that includes emotion and genre labels.
> <details>
> <summary>read the caption</summary>
> Figure 1: The architectural overview of our XMusic framework. It contains two essential components: XProjector and XComposer. XProjector parses various input prompts into specific symbolic music elements. These elements then serve as control signals, guiding the music generation process within the Generator of XComposer. Additionally, XComposer includes a Selector that evaluates and identifies high-quality generated music. The Generator is trained on our large-scale dataset, XMIDI, which includes precise emotion and genre labels.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.1.1">Input Prompt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.2.1">Analyzed Content</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.3.1">Activated Elements</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2">video</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.3">emotion, rhythm</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1"><math alttext="\{\mathcal{P}^{E},\mathcal{P}^{R}\}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.2"><semantics id="S3.T1.1.1.1.1.m1.2a"><mrow id="S3.T1.1.1.1.1.m1.2.2.2" xref="S3.T1.1.1.1.1.m1.2.2.3.cmml"><mo id="S3.T1.1.1.1.1.m1.2.2.2.3" stretchy="false" xref="S3.T1.1.1.1.1.m1.2.2.3.cmml">{</mo><msup id="S3.T1.1.1.1.1.m1.1.1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.1.1.1.1.m1.1.1.1.1.2" xref="S3.T1.1.1.1.1.m1.1.1.1.1.2.cmml">𝒫</mi><mi id="S3.T1.1.1.1.1.m1.1.1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.1.1.3.cmml">E</mi></msup><mo id="S3.T1.1.1.1.1.m1.2.2.2.4" xref="S3.T1.1.1.1.1.m1.2.2.3.cmml">,</mo><msup id="S3.T1.1.1.1.1.m1.2.2.2.2" xref="S3.T1.1.1.1.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.1.1.1.1.m1.2.2.2.2.2" xref="S3.T1.1.1.1.1.m1.2.2.2.2.2.cmml">𝒫</mi><mi id="S3.T1.1.1.1.1.m1.2.2.2.2.3" xref="S3.T1.1.1.1.1.m1.2.2.2.2.3.cmml">R</mi></msup><mo id="S3.T1.1.1.1.1.m1.2.2.2.5" stretchy="false" xref="S3.T1.1.1.1.1.m1.2.2.3.cmml">}</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.2b"><set id="S3.T1.1.1.1.1.m1.2.2.3.cmml" xref="S3.T1.1.1.1.1.m1.2.2.2"><apply id="S3.T1.1.1.1.1.m1.1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1.1">superscript</csymbol><ci id="S3.T1.1.1.1.1.m1.1.1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1.1.2">𝒫</ci><ci id="S3.T1.1.1.1.1.m1.1.1.1.1.3.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1.1.3">𝐸</ci></apply><apply id="S3.T1.1.1.1.1.m1.2.2.2.2.cmml" xref="S3.T1.1.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.m1.2.2.2.2.1.cmml" xref="S3.T1.1.1.1.1.m1.2.2.2.2">superscript</csymbol><ci id="S3.T1.1.1.1.1.m1.2.2.2.2.2.cmml" xref="S3.T1.1.1.1.1.m1.2.2.2.2.2">𝒫</ci><ci id="S3.T1.1.1.1.1.m1.2.2.2.2.3.cmml" xref="S3.T1.1.1.1.1.m1.2.2.2.2.3">𝑅</ci></apply></set></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.2c">\{\mathcal{P}^{E},\mathcal{P}^{R}\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.2d">{ caligraphic_P start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT , caligraphic_P start_POSTSUPERSCRIPT italic_R end_POSTSUPERSCRIPT }</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2">image</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.3">emotion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.1"><math alttext="\{\mathcal{P}^{E}\}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.1.m1.1a"><mrow id="S3.T1.2.2.2.1.m1.1.1.1" xref="S3.T1.2.2.2.1.m1.1.1.2.cmml"><mo id="S3.T1.2.2.2.1.m1.1.1.1.2" stretchy="false" xref="S3.T1.2.2.2.1.m1.1.1.2.cmml">{</mo><msup id="S3.T1.2.2.2.1.m1.1.1.1.1" xref="S3.T1.2.2.2.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.2.2.2.1.m1.1.1.1.1.2" xref="S3.T1.2.2.2.1.m1.1.1.1.1.2.cmml">𝒫</mi><mi id="S3.T1.2.2.2.1.m1.1.1.1.1.3" xref="S3.T1.2.2.2.1.m1.1.1.1.1.3.cmml">E</mi></msup><mo id="S3.T1.2.2.2.1.m1.1.1.1.3" stretchy="false" xref="S3.T1.2.2.2.1.m1.1.1.2.cmml">}</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.m1.1b"><set id="S3.T1.2.2.2.1.m1.1.1.2.cmml" xref="S3.T1.2.2.2.1.m1.1.1.1"><apply id="S3.T1.2.2.2.1.m1.1.1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.2.1.m1.1.1.1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1.1.1">superscript</csymbol><ci id="S3.T1.2.2.2.1.m1.1.1.1.1.2.cmml" xref="S3.T1.2.2.2.1.m1.1.1.1.1.2">𝒫</ci><ci id="S3.T1.2.2.2.1.m1.1.1.1.1.3.cmml" xref="S3.T1.2.2.2.1.m1.1.1.1.1.3">𝐸</ci></apply></set></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.m1.1c">\{\mathcal{P}^{E}\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.m1.1d">{ caligraphic_P start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT }</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.2">text</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.3">emotion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.1"><math alttext="\{\mathcal{P}^{E}\}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mrow id="S3.T1.3.3.3.1.m1.1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.2.cmml"><mo id="S3.T1.3.3.3.1.m1.1.1.1.2" stretchy="false" xref="S3.T1.3.3.3.1.m1.1.1.2.cmml">{</mo><msup id="S3.T1.3.3.3.1.m1.1.1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.3.3.3.1.m1.1.1.1.1.2" xref="S3.T1.3.3.3.1.m1.1.1.1.1.2.cmml">𝒫</mi><mi id="S3.T1.3.3.3.1.m1.1.1.1.1.3" xref="S3.T1.3.3.3.1.m1.1.1.1.1.3.cmml">E</mi></msup><mo id="S3.T1.3.3.3.1.m1.1.1.1.3" stretchy="false" xref="S3.T1.3.3.3.1.m1.1.1.2.cmml">}</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><set id="S3.T1.3.3.3.1.m1.1.1.2.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1"><apply id="S3.T1.3.3.3.1.m1.1.1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.3.3.3.1.m1.1.1.1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1.1">superscript</csymbol><ci id="S3.T1.3.3.3.1.m1.1.1.1.1.2.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1.1.2">𝒫</ci><ci id="S3.T1.3.3.3.1.m1.1.1.1.1.3.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1.1.3">𝐸</ci></apply></set></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">\{\mathcal{P}^{E}\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">{ caligraphic_P start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT }</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.2">tag</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.3">emotion / genre</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.1"><math alttext="\{\mathcal{P}^{E}\}/\{\mathcal{P}^{G}\}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.2"><semantics id="S3.T1.4.4.4.1.m1.2a"><mrow id="S3.T1.4.4.4.1.m1.2.2" xref="S3.T1.4.4.4.1.m1.2.2.cmml"><mrow id="S3.T1.4.4.4.1.m1.1.1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.1.2.cmml"><mo id="S3.T1.4.4.4.1.m1.1.1.1.1.2" stretchy="false" xref="S3.T1.4.4.4.1.m1.1.1.1.2.cmml">{</mo><msup id="S3.T1.4.4.4.1.m1.1.1.1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.4.4.4.1.m1.1.1.1.1.1.2" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1.2.cmml">𝒫</mi><mi id="S3.T1.4.4.4.1.m1.1.1.1.1.1.3" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1.3.cmml">E</mi></msup><mo id="S3.T1.4.4.4.1.m1.1.1.1.1.3" stretchy="false" xref="S3.T1.4.4.4.1.m1.1.1.1.2.cmml">}</mo></mrow><mo id="S3.T1.4.4.4.1.m1.2.2.3" xref="S3.T1.4.4.4.1.m1.2.2.3.cmml">/</mo><mrow id="S3.T1.4.4.4.1.m1.2.2.2.1" xref="S3.T1.4.4.4.1.m1.2.2.2.2.cmml"><mo id="S3.T1.4.4.4.1.m1.2.2.2.1.2" stretchy="false" xref="S3.T1.4.4.4.1.m1.2.2.2.2.cmml">{</mo><msup id="S3.T1.4.4.4.1.m1.2.2.2.1.1" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.4.4.4.1.m1.2.2.2.1.1.2" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1.2.cmml">𝒫</mi><mi id="S3.T1.4.4.4.1.m1.2.2.2.1.1.3" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1.3.cmml">G</mi></msup><mo id="S3.T1.4.4.4.1.m1.2.2.2.1.3" stretchy="false" xref="S3.T1.4.4.4.1.m1.2.2.2.2.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.2b"><apply id="S3.T1.4.4.4.1.m1.2.2.cmml" xref="S3.T1.4.4.4.1.m1.2.2"><divide id="S3.T1.4.4.4.1.m1.2.2.3.cmml" xref="S3.T1.4.4.4.1.m1.2.2.3"></divide><set id="S3.T1.4.4.4.1.m1.1.1.1.2.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1"><apply id="S3.T1.4.4.4.1.m1.1.1.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.m1.1.1.1.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1">superscript</csymbol><ci id="S3.T1.4.4.4.1.m1.1.1.1.1.1.2.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1.2">𝒫</ci><ci id="S3.T1.4.4.4.1.m1.1.1.1.1.1.3.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1.1.3">𝐸</ci></apply></set><set id="S3.T1.4.4.4.1.m1.2.2.2.2.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.1"><apply id="S3.T1.4.4.4.1.m1.2.2.2.1.1.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.m1.2.2.2.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1">superscript</csymbol><ci id="S3.T1.4.4.4.1.m1.2.2.2.1.1.2.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1.2">𝒫</ci><ci id="S3.T1.4.4.4.1.m1.2.2.2.1.1.3.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.1.1.3">𝐺</ci></apply></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.2c">\{\mathcal{P}^{E}\}/\{\mathcal{P}^{G}\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.2d">{ caligraphic_P start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT } / { caligraphic_P start_POSTSUPERSCRIPT italic_G end_POSTSUPERSCRIPT }</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.2">humming</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.3">notes, rhythm</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.1"><math alttext="\{\mathcal{P}^{R},\mathcal{P}^{N}\}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.2"><semantics id="S3.T1.5.5.5.1.m1.2a"><mrow id="S3.T1.5.5.5.1.m1.2.2.2" xref="S3.T1.5.5.5.1.m1.2.2.3.cmml"><mo id="S3.T1.5.5.5.1.m1.2.2.2.3" stretchy="false" xref="S3.T1.5.5.5.1.m1.2.2.3.cmml">{</mo><msup id="S3.T1.5.5.5.1.m1.1.1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.5.5.5.1.m1.1.1.1.1.2" xref="S3.T1.5.5.5.1.m1.1.1.1.1.2.cmml">𝒫</mi><mi id="S3.T1.5.5.5.1.m1.1.1.1.1.3" xref="S3.T1.5.5.5.1.m1.1.1.1.1.3.cmml">R</mi></msup><mo id="S3.T1.5.5.5.1.m1.2.2.2.4" xref="S3.T1.5.5.5.1.m1.2.2.3.cmml">,</mo><msup id="S3.T1.5.5.5.1.m1.2.2.2.2" xref="S3.T1.5.5.5.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.5.5.5.1.m1.2.2.2.2.2" xref="S3.T1.5.5.5.1.m1.2.2.2.2.2.cmml">𝒫</mi><mi id="S3.T1.5.5.5.1.m1.2.2.2.2.3" xref="S3.T1.5.5.5.1.m1.2.2.2.2.3.cmml">N</mi></msup><mo id="S3.T1.5.5.5.1.m1.2.2.2.5" stretchy="false" xref="S3.T1.5.5.5.1.m1.2.2.3.cmml">}</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.2b"><set id="S3.T1.5.5.5.1.m1.2.2.3.cmml" xref="S3.T1.5.5.5.1.m1.2.2.2"><apply id="S3.T1.5.5.5.1.m1.1.1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.m1.1.1.1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1.1">superscript</csymbol><ci id="S3.T1.5.5.5.1.m1.1.1.1.1.2.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1.1.2">𝒫</ci><ci id="S3.T1.5.5.5.1.m1.1.1.1.1.3.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1.1.3">𝑅</ci></apply><apply id="S3.T1.5.5.5.1.m1.2.2.2.2.cmml" xref="S3.T1.5.5.5.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.m1.2.2.2.2.1.cmml" xref="S3.T1.5.5.5.1.m1.2.2.2.2">superscript</csymbol><ci id="S3.T1.5.5.5.1.m1.2.2.2.2.2.cmml" xref="S3.T1.5.5.5.1.m1.2.2.2.2.2">𝒫</ci><ci id="S3.T1.5.5.5.1.m1.2.2.2.2.3.cmml" xref="S3.T1.5.5.5.1.m1.2.2.2.2.3">𝑁</ci></apply></set></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.2c">\{\mathcal{P}^{R},\mathcal{P}^{N}\}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.2d">{ caligraphic_P start_POSTSUPERSCRIPT italic_R end_POSTSUPERSCRIPT , caligraphic_P start_POSTSUPERSCRIPT italic_N end_POSTSUPERSCRIPT }</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the correlation between different types of input prompts (video, image, text, tag, humming) and the corresponding symbolic music elements that are activated in the XProjector module.  For each prompt type, the table specifies which symbolic music elements (emotions, rhythms, notes) are primarily influenced and subsequently used to guide the music generation process. This illustrates how XMusic handles the multi-modal input and translates it into a unified representation suitable for music generation.
> <details>
> <summary>read the caption</summary>
> TABLE I: Mapping table of the input prompts and the activated elements.
> </details>





### In-depth insights


#### XMusic Framework
The XMusic framework presents a novel approach to symbolic music generation, emphasizing **generalization and controllability**.  It cleverly integrates a multi-modal prompt parser (XProjector) to handle diverse inputs (images, text, humming, etc.), transforming them into a unified symbolic music representation.  This representation, enhanced from previous work, allows for **fine-grained control** over various musical elements (emotion, genre, rhythm). The framework's XComposer further refines the generation process, employing a generator and selector for high-quality output and efficient filtering. The inclusion of a large-scale, annotated dataset (XMIDI) significantly contributes to its success.  The **multi-task learning** approach in the Selector ensures high-quality results, showcasing a significant leap forward in AI-generated music.

#### Multimodal Prompt Parsing
The concept of "Multimodal Prompt Parsing" in the context of AI music generation is crucial. It tackles the challenge of translating diverse input types—images, text, audio, etc.—into a unified representation understandable by the music generation model.  **The core innovation lies in creating a "projection space" that maps heterogeneous data onto common musical elements like emotion, genre, rhythm, and notes.** This approach elegantly solves the problem of incompatible data formats.  For example, temporal information from a video is projected onto rhythm elements, while emotional cues from images are mapped to emotional attributes.  This unified representation allows the model to generate music that coherently integrates all aspects of the user prompt.  **A significant aspect is the method's versatility,** enabling flexible and nuanced control over the generated music. The system's ability to understand and combine disparate inputs reflects an advanced understanding of multimodal fusion, going beyond simplistic concatenation.

#### Symbolic Music Representation
The choice of symbolic music representation significantly impacts the model's ability to generate high-quality and controllable music.  **MIDI-like representations**, encoding music as a sequence of events, are popular but struggle with rhythm modeling.  **Image-like representations**, using matrices like piano rolls, offer advantages for capturing harmonic information but lack the temporal expressiveness of MIDI.  The paper's proposed representation improves upon existing methods by incorporating **enhanced Compound Words**, adding crucial tokens for instrument specification, emotional control (genre and emotion tags), and finer rhythmic details (beat density and strength).  This hybrid approach aims to combine the benefits of both MIDI-like and image-like approaches while addressing their respective limitations, ultimately enabling more nuanced and precise control over music generation.

#### XMIDI Dataset
The creation of the XMIDI dataset is a **significant contribution** to the field of AI-generated music.  Its size (108,023 MIDI files) is **unprecedented**, dwarfing previous datasets and providing a much-needed resource for training robust music generation models. The **precise emotion and genre annotations** are crucial, enabling researchers to train models capable of generating music with specific emotional and stylistic characteristics.  The dataset's public availability is commendable, fostering broader collaboration and advancement in the field. However, further investigation into the dataset's **potential biases** and the **annotation methodology's reliability** would enhance its value and provide a deeper understanding of its strengths and limitations.

#### Future Directions
Future research should prioritize **expanding the XMusic framework to encompass a wider array of input modalities**, such as human motion capture data, depth information, and more nuanced textual descriptions.  This would enhance the system's versatility and allow for a more fine-grained control over the generated music's emotional and stylistic characteristics.  Additionally, **improving the XMIDI dataset** by incorporating more diverse musical genres, instruments, and emotional expressions is crucial. A larger and more representative dataset would significantly enhance the model's ability to generalize to unseen musical styles and prompts. Furthermore,  investigating methods to improve the **interpretability and explainability of the model's decisions** is essential.  Understanding how the model processes different types of inputs and generates specific musical features would contribute significantly to its wider acceptance and application. Lastly, exploring techniques for **real-time generation and interactive music composition** would greatly extend the potential applications of XMusic, from composing adaptive soundtracks for videos to enabling collaborative music creation in real-time.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.08809/x2.png)

> 🔼 Figure 2 illustrates the XMusic framework, a system for generating high-quality symbolic music from various prompts.  Panel (a) shows the diverse input types: images, videos, text, tags, and humming.  The XProjector component (b) processes these prompts, translating them into symbolic music elements (emotions, genres, rhythms, and notes) within a common 'Projection Space'.  Next, the XComposer component's Generator (c) uses these elements to generate the actual music, employing a Transformer Decoder to create sequential musical representations. Finally, the Selector (d) assesses the generated music's quality via a multi-task learning process incorporating emotion recognition, genre recognition, and overall quality evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the proposed XMusic, which supports flexible (a) X-Prompts to guide the generation of high-quality symbolic music. The XProjector analyzes these prompts, mapping them to symbolic music elements within the (b) Projection Space. Subsequently, the (c) Generator of XComposer transforms these symbolic music elements into token sequences based on our enhanced representation. It employs a Transformer Decoder as the generative model to predict successive events iteratively, thereby creating complete musical compositions. Finally, the (d) Selector of XComposer utilizes a Transformer Encoder to encode the complete token sequences and employs a multi-task learning scheme to evaluate the quality of the generated music.
> </details>



![](https://arxiv.org/html/2501.08809/x3.png)

> 🔼 Figure 3 illustrates the differences between our proposed symbolic music representation and the Compound Word (CP) representation introduced in a previous work [10].  The core enhancement in our representation is the inclusion of new token types (shown in dotted boxes) which provide explicit control over musical elements, namely: genre, emotion, and instrument type. These additional tokens improve the model's ability to generate diverse and controlled symbolic music. The addition of the 'Tag' token, encapsulating 'Emotion' and 'Genre', allows for high-level semantic control over style and emotional expression. The 'Instrument' token, further divided into 'Program', facilitates the creation of multi-track compositions. The improvements to the 'Rhythm' token allows more precise control over rhythmic elements, namely 'density' and 'strength'.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison between our representation and Compound Word (CP)  [10] representation. The dotted boxes represent our new tokens in comparison with those of the CP representation.
> </details>



![](https://arxiv.org/html/2501.08809/x4.png)

> 🔼 Figure 4 presents a visual summary of the XMIDI dataset's key statistical properties. It consists of three subfigures: (a) illustrates the distribution of the 11 emotion classes, showing the relative frequency of each emotion in the dataset.  (b) shows the distribution of the 6 genre classes, similarly displaying their proportions.  (c) illustrates the distribution of music lengths across the dataset, indicating the frequency of different song durations. This figure provides a concise overview of the dataset's characteristics in terms of emotional variety, musical genres and song lengths.
> <details>
> <summary>read the caption</summary>
> Figure 4: Data statistics of our XMIDI dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.24.24">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.24.24.25.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.24.24.25.1.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.24.24.25.1.1.1">Token Type</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.24.24.25.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.24.24.25.1.2.1">Vocabulary Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.24.24.25.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.24.24.25.1.3.1">Embedding Size</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.24.24.26.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.24.24.26.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T2.24.24.26.2.1.1">CP</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.24.24.26.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.24.24.26.2.2.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.24.24.26.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T2.24.24.26.2.3.1">CP</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.24.24.26.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.24.24.26.2.4.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.2.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">[</annotation></semantics></math>instrument<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m2.1"><semantics id="S3.T2.2.2.2.2.m2.1a"><mo id="S3.T2.2.2.2.2.m2.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m2.1b"><ci id="S3.T2.2.2.2.2.m2.1.1.cmml" xref="S3.T2.2.2.2.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">17 (+1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.4.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.4.4.4.2.1">\hdashline</span><math alttext="[" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.m1.1"><semantics id="S3.T2.3.3.3.1.m1.1a"><mo id="S3.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.m1.1b"><ci id="S3.T2.3.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.m1.1d">[</annotation></semantics></math>tempo<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.4.4.4.2.m2.1"><semantics id="S3.T2.4.4.4.2.m2.1a"><mo id="S3.T2.4.4.4.2.m2.1.1" stretchy="false" xref="S3.T2.4.4.4.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.2.m2.1b"><ci id="S3.T2.4.4.4.2.m2.1.1.cmml" xref="S3.T2.4.4.4.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">58 (+2)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">65 (+2)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.6.6.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.5.5.5.1.m1.1"><semantics id="S3.T2.5.5.5.1.m1.1a"><mo id="S3.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.1.m1.1b"><ci id="S3.T2.5.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.5.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.1.m1.1d">[</annotation></semantics></math>position/bar<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.6.6.6.2.m2.1"><semantics id="S3.T2.6.6.6.2.m2.1a"><mo id="S3.T2.6.6.6.2.m2.1.1" stretchy="false" xref="S3.T2.6.6.6.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.2.m2.1b"><ci id="S3.T2.6.6.6.2.m2.1.1.cmml" xref="S3.T2.6.6.6.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">17 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">33 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.7.7.7.1.m1.1"><semantics id="S3.T2.7.7.7.1.m1.1a"><mo id="S3.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.1.m1.1b"><ci id="S3.T2.7.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.7.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.1.m1.1d">[</annotation></semantics></math>chord<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.8.8.8.2.m2.1"><semantics id="S3.T2.8.8.8.2.m2.1a"><mo id="S3.T2.8.8.8.2.m2.1.1" stretchy="false" xref="S3.T2.8.8.8.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.2.m2.1b"><ci id="S3.T2.8.8.8.2.m2.1.1.cmml" xref="S3.T2.8.8.8.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">133 (+2)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">133 (+2)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.10.10.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.10.10.10.2.1">\hdashline</span><math alttext="[" class="ltx_Math" display="inline" id="S3.T2.9.9.9.1.m1.1"><semantics id="S3.T2.9.9.9.1.m1.1a"><mo id="S3.T2.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T2.9.9.9.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.1.m1.1b"><ci id="S3.T2.9.9.9.1.m1.1.1.cmml" xref="S3.T2.9.9.9.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.1.m1.1d">[</annotation></semantics></math>pitch<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.10.10.10.2.m2.1"><semantics id="S3.T2.10.10.10.2.m2.1a"><mo id="S3.T2.10.10.10.2.m2.1.1" stretchy="false" xref="S3.T2.10.10.10.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.2.m2.1b"><ci id="S3.T2.10.10.10.2.m2.1.1.cmml" xref="S3.T2.10.10.10.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">86 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">256 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.12.12.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.11.11.11.1.m1.1"><semantics id="S3.T2.11.11.11.1.m1.1a"><mo id="S3.T2.11.11.11.1.m1.1.1" stretchy="false" xref="S3.T2.11.11.11.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.11.1.m1.1b"><ci id="S3.T2.11.11.11.1.m1.1.1.cmml" xref="S3.T2.11.11.11.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.11.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.11.1.m1.1d">[</annotation></semantics></math>duration<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.12.12.12.2.m2.1"><semantics id="S3.T2.12.12.12.2.m2.1a"><mo id="S3.T2.12.12.12.2.m2.1.1" stretchy="false" xref="S3.T2.12.12.12.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.12.2.m2.1b"><ci id="S3.T2.12.12.12.2.m2.1.1.cmml" xref="S3.T2.12.12.12.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.12.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.12.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.12.12.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">17 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.12.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">32 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.12.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.12.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
</tr>
<tr class="ltx_tr" id="S3.T2.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.14.14.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.13.13.13.1.m1.1"><semantics id="S3.T2.13.13.13.1.m1.1a"><mo id="S3.T2.13.13.13.1.m1.1.1" stretchy="false" xref="S3.T2.13.13.13.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.13.1.m1.1b"><ci id="S3.T2.13.13.13.1.m1.1.1.cmml" xref="S3.T2.13.13.13.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.13.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.13.1.m1.1d">[</annotation></semantics></math>velocity<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.14.14.14.2.m2.1"><semantics id="S3.T2.14.14.14.2.m2.1a"><mo id="S3.T2.14.14.14.2.m2.1.1" stretchy="false" xref="S3.T2.14.14.14.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.14.2.m2.1b"><ci id="S3.T2.14.14.14.2.m2.1.1.cmml" xref="S3.T2.14.14.14.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.14.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.14.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.14.14.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">24 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.14.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">44 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.14.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.14.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.16.16.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.16.16.16.2.1">\hdashline</span><math alttext="[" class="ltx_Math" display="inline" id="S3.T2.15.15.15.1.m1.1"><semantics id="S3.T2.15.15.15.1.m1.1a"><mo id="S3.T2.15.15.15.1.m1.1.1" stretchy="false" xref="S3.T2.15.15.15.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.15.1.m1.1b"><ci id="S3.T2.15.15.15.1.m1.1.1.cmml" xref="S3.T2.15.15.15.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.15.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.15.1.m1.1d">[</annotation></semantics></math>family<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.16.16.16.2.m2.1"><semantics id="S3.T2.16.16.16.2.m2.1a"><mo id="S3.T2.16.16.16.2.m2.1.1" stretchy="false" xref="S3.T2.16.16.16.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.16.2.m2.1b"><ci id="S3.T2.16.16.16.2.m2.1.1.cmml" xref="S3.T2.16.16.16.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.16.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.16.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.18.18.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.18.18.18.2.1">\hdashline</span><math alttext="[" class="ltx_Math" display="inline" id="S3.T2.17.17.17.1.m1.1"><semantics id="S3.T2.17.17.17.1.m1.1a"><mo id="S3.T2.17.17.17.1.m1.1.1" stretchy="false" xref="S3.T2.17.17.17.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.17.17.17.1.m1.1b"><ci id="S3.T2.17.17.17.1.m1.1.1.cmml" xref="S3.T2.17.17.17.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.17.17.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.17.17.1.m1.1d">[</annotation></semantics></math>density<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.18.18.18.2.m2.1"><semantics id="S3.T2.18.18.18.2.m2.1a"><mo id="S3.T2.18.18.18.2.m2.1.1" stretchy="false" xref="S3.T2.18.18.18.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.18.18.18.2.m2.1b"><ci id="S3.T2.18.18.18.2.m2.1.1.cmml" xref="S3.T2.18.18.18.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.18.18.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.18.18.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">33 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">128</td>
</tr>
<tr class="ltx_tr" id="S3.T2.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.20.20.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.19.19.19.1.m1.1"><semantics id="S3.T2.19.19.19.1.m1.1a"><mo id="S3.T2.19.19.19.1.m1.1.1" stretchy="false" xref="S3.T2.19.19.19.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.19.19.19.1.m1.1b"><ci id="S3.T2.19.19.19.1.m1.1.1.cmml" xref="S3.T2.19.19.19.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.19.19.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.19.19.1.m1.1d">[</annotation></semantics></math>strength<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.20.20.20.2.m2.1"><semantics id="S3.T2.20.20.20.2.m2.1a"><mo id="S3.T2.20.20.20.2.m2.1.1" stretchy="false" xref="S3.T2.20.20.20.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.20.20.20.2.m2.1b"><ci id="S3.T2.20.20.20.2.m2.1.1.cmml" xref="S3.T2.20.20.20.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.20.20.20.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.20.20.20.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.20.20.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.20.20.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">37 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.20.20.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.20.20.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">128</td>
</tr>
<tr class="ltx_tr" id="S3.T2.22.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.22.22.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.22.22.22.2.1">\hdashline</span><math alttext="[" class="ltx_Math" display="inline" id="S3.T2.21.21.21.1.m1.1"><semantics id="S3.T2.21.21.21.1.m1.1a"><mo id="S3.T2.21.21.21.1.m1.1.1" stretchy="false" xref="S3.T2.21.21.21.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.21.21.21.1.m1.1b"><ci id="S3.T2.21.21.21.1.m1.1.1.cmml" xref="S3.T2.21.21.21.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.21.21.21.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.21.21.21.1.m1.1d">[</annotation></semantics></math>emotion<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.22.22.22.2.m2.1"><semantics id="S3.T2.22.22.22.2.m2.1a"><mo id="S3.T2.22.22.22.2.m2.1.1" stretchy="false" xref="S3.T2.22.22.22.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.22.22.22.2.m2.1b"><ci id="S3.T2.22.22.22.2.m2.1.1.cmml" xref="S3.T2.22.22.22.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.22.22.22.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.22.22.22.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.22.22.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.22.22.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">11 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.22.22.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.22.22.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.24.24.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="[" class="ltx_Math" display="inline" id="S3.T2.23.23.23.1.m1.1"><semantics id="S3.T2.23.23.23.1.m1.1a"><mo id="S3.T2.23.23.23.1.m1.1.1" stretchy="false" xref="S3.T2.23.23.23.1.m1.1.1.cmml">[</mo><annotation-xml encoding="MathML-Content" id="S3.T2.23.23.23.1.m1.1b"><ci id="S3.T2.23.23.23.1.m1.1.1.cmml" xref="S3.T2.23.23.23.1.m1.1.1">[</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.23.23.23.1.m1.1c">[</annotation><annotation encoding="application/x-llamapun" id="S3.T2.23.23.23.1.m1.1d">[</annotation></semantics></math>genre<math alttext="]" class="ltx_Math" display="inline" id="S3.T2.24.24.24.2.m2.1"><semantics id="S3.T2.24.24.24.2.m2.1a"><mo id="S3.T2.24.24.24.2.m2.1.1" stretchy="false" xref="S3.T2.24.24.24.2.m2.1.1.cmml">]</mo><annotation-xml encoding="MathML-Content" id="S3.T2.24.24.24.2.m2.1b"><ci id="S3.T2.24.24.24.2.m2.1.1.cmml" xref="S3.T2.24.24.24.2.m2.1.1">]</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.24.24.24.2.m2.1c">]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.24.24.24.2.m2.1d">]</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.24.24.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.24.24.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6 (+1)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.24.24.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.24.24.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.24.24.27.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.24.24.27.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S3.T2.24.24.27.3.1.1">\hdashline</span>total</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.24.24.27.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">338 (+8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.24.24.27.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">672 (+13)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.24.24.27.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.24.24.27.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific implementation choices made in the design of the symbolic music representation used in the XMusic model. It compares the vocabulary size, embedding size, and token types in the proposed representation with those used in the Compound Word (CP) model from a previous work.  This allows the reader to better understand the differences in the approach and scale of these two models.
> <details>
> <summary>read the caption</summary>
> TABLE II: Comparison of the implementation details between the CP and our proposed representation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.2.1">Emotion Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.3.1">Genre Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.4.1">Size (Songs)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.4.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.1.1">MIREX-like <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib55" title="">55</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.1.2">5 classes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.1.3">multiple</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.1.4">193</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.3.2">
<td class="ltx_td ltx_align_center" id="S3.T3.4.3.2.1">VGMIDI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib56" title="">56</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.3.2.2">valence</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.3.2.3">video game</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.3.2.4">95</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4.3">
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.3.1">EMOPIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.3.2">Russell’s 4Q</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.3.3">pop</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.3.4">387</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.5.4">
<td class="ltx_td ltx_align_center" id="S3.T3.4.5.4.1">ELMG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib12" title="">12</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.5.4.2">2 classes</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.5.4.3">multiple</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.5.4.4">11,528</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.6.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.4.6.5.1"><span class="ltx_text ltx_font_bold" id="S3.T3.4.6.5.1.1">XMIDI (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.4.6.5.2">11 classes</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.4.6.5.3">6 classes</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.4.6.5.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.6.5.4.1">108,023</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the characteristics of several existing datasets of emotion-labeled MIDI files with the new XMIDI dataset introduced in this paper.  It shows the number of emotion classes, genre types (or whether genre information is included at all), and the total number of MIDI files included in each dataset.  This comparison highlights the scale and comprehensiveness of the XMIDI dataset relative to prior work, particularly its significantly larger size and more detailed annotation (e.g., 11 emotion classes vs. fewer in others).
> <details>
> <summary>read the caption</summary>
> TABLE III: Comparison between existing emotion-labeled MIDI datasets and the proposed XMIDI dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T4.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.3.3.3.4"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">PCE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">GS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1">EBR <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.4.1.1" rowspan="3"><span class="ltx_text" id="S4.T4.3.3.4.1.1.1">(a) Unconditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.4.1.2">CP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.1.3">2.6025</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.1.4">0.9990</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.1.5">0.0273</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.3.5.2.1">EMOPIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.2.2">2.6756</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.2.3">0.9989</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.2.4">0.1197</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.3.6.3.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.3.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.3.2.1">2.5174</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.3.3.1">0.9992</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.3.4.1">0.0045</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.3.3.7.4.1" rowspan="2"><span class="ltx_text" id="S4.T4.3.3.7.4.1.1">(b) Video-conditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.7.4.2">CMT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib19" title="">19</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.7.4.3">2.7290</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.7.4.4">0.6698</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.7.4.5">0.0321</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.3.8.5.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.8.5.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.2.1">2.6161</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.8.5.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.3.1">0.9983</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.8.5.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.4.1">0.0078</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an objective comparison of XMusic with state-of-the-art symbolic music generation methods across three key metrics: Pitch Class Histogram Entropy (PCE), Grooving Pattern Similarity (GS), and Empty Beat Rate (EBR). Lower PCE and EBR scores indicate better tonality and rhythm, while a higher GS score suggests stronger rhythmic structure.  The table is divided into two sections: unconditioned and video-conditioned methods, showcasing XMusic's superior performance in both scenarios.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Objective comparison with state-of-the-art symbolic music generation methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T5.5.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.3.1">Richness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.4.1">Correctness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.5.1">Structuredness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.6.1">Emotion-Matching</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.7.1">Rhythm-Matching</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.8.1">Overall Rank</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T5.5.1.2.1.1.1">(a) Unconditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.2.1.2">CP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.3">2.2323</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.4">2.1161</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.5">2.0871</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.2.1.8">2.1452</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.3.2.1">EMOPIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.2">2.2387</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.3">2.4807</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.4">2.3452</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.3.2.7">2.3549</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.4.3.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.4.3.2.1">1.5290</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.4.3.3.1">1.4032</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.4.3.4.1">1.5677</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.4.3.7.1">1.5000</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.5.4.1" rowspan="2"><span class="ltx_text" id="S4.T5.5.1.5.4.1.1">(b) Video-conditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.5.4.2">CMT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib19" title="">19</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.3">1.7129</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.4">1.7484</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.5">1.6742</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.6">1.6452</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.7">1.6807</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.5.4.8">1.6923</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.6.5.1"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.2.1">1.2871</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.3.1">1.2516</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.4.1">1.3258</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.5.1">1.3548</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.6.1">1.3194</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.5.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.5.7.1">1.3077</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.7.6.1" rowspan="3"><span class="ltx_text" id="S4.T5.5.1.7.6.1.1">(c) Text-conditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.7.6.2">BART-base <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib62" title="">62</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.3">2.3871</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.4">2.4806</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.5">2.2226</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.6">2.6258</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.7.6.8">2.4290</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.8.7.1">GPT-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib22" title="">22</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.2">2.1355</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.3">2.0065</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.4">2.1903</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.5">1.8613</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.8.7.7">2.0484</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.9.8.1"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.2"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.2.1">1.4774</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.3.1">1.5129</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.4.1">1.5871</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.5.1">1.5129</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.9.8.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.9.8.7.1">1.5226</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.5.1.10.9.1" rowspan="2"><span class="ltx_text" id="S4.T5.5.1.10.9.1.1">(d) Image-conditioned</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.10.9.2">Synesthesia <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib63" title="">63</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.3">1.5548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.4">1.8065</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.5">1.7484</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.6">1.7936</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.10.9.8">1.7258</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.5.1.11.10.1"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.1.1">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.2"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.2.1">1.4452</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.3"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.3.1">1.1935</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.4.1">1.2516</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.5.1">1.2064</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.11.10.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.11.10.7.1">1.2742</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a subjective evaluation comparing the performance of different symbolic music generation methods.  Three state-of-the-art methods and the proposed XMusic framework are compared across four categories of music generation (unconditioned, video-conditioned, text-conditioned, and image-conditioned), with human participants rating the generated music samples based on metrics such as richness, correctness, structuredness, emotion matching, and rhythm matching.  The average ranking for each method within each category provides a comprehensive comparison of their overall quality and strengths across different generation paradigms.
> <details>
> <summary>read the caption</summary>
> TABLE V: Subjective comparison with state-of-the-art symbolic music generation methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.4.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.5.1.1.1">Classes</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.4.4.5.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.5.1.2.1">EMOPIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.4.4.5.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.5.1.3.1">XMusic (Ours)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.1.1">Positive Valence (PV) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.2">38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.3.1">76%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.2.2.2.1">Negative Valence (NV) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mo id="S4.T6.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><ci id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.2">38%</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.3.1">70%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.3.3.3.1">Positive Arousal (PA) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><ci id="S4.T6.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.3.2">39%</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.3.1">66%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T6.4.4.4.1">Negative Arousal (NA) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.1.m1.1"><semantics id="S4.T6.4.4.4.1.m1.1a"><mo id="S4.T6.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T6.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.1.m1.1b"><ci id="S4.T6.4.4.4.1.m1.1.1.cmml" xref="S4.T6.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.4.4.2">51%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.4.3.1">84%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a subjective comparison of XMusic with the state-of-the-art emotion-conditioned symbolic music generation method, EMOPIA.  It shows the percentage of correctly classified music pieces based on four emotion categories: Positive Valence (PV), Negative Valence (NV), Positive Arousal (PA), and Negative Arousal (NA).  These categories are derived from a combination of EMOPIA's emotion quadrants and XMusic's more granular emotion labels, allowing for a more meaningful comparison despite the difference in granularity.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Subjective comparison with state-of-the-art emotion-conditioned symbolic music generation method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.6.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T7.6.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T7.6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.2.1" style="color:#0000FF;">Setting</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.3.1" style="color:#0000FF;">Richness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.4.1" style="color:#0000FF;">Correctness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.5.1" style="color:#0000FF;">Structuredness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.6.1" style="color:#0000FF;">Emotion-Matching</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.7.1" style="color:#0000FF;">Rhythm-Matching</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.6.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.1.1.8.1" style="color:#0000FF;">Overall Rank</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.2.2.1" rowspan="2"><span class="ltx_text" id="S4.T7.6.1.2.2.1.1" style="color:#0000FF;">(a) Selector</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.2.2.2"><span class="ltx_text" id="S4.T7.6.1.2.2.2.1" style="color:#0000FF;">without (✗) Selector</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.3"><span class="ltx_text" id="S4.T7.6.1.2.2.3.1" style="color:#0000FF;">1.5957</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.4"><span class="ltx_text" id="S4.T7.6.1.2.2.4.1" style="color:#0000FF;">1.5878</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.5"><span class="ltx_text" id="S4.T7.6.1.2.2.5.1" style="color:#0000FF;">1.5484</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.6"><span class="ltx_text" id="S4.T7.6.1.2.2.6.1" style="color:#0000FF;">1.5348</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.7"><span class="ltx_text" id="S4.T7.6.1.2.2.7.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.2.2.8"><span class="ltx_text" id="S4.T7.6.1.2.2.8.1" style="color:#0000FF;">1.5667</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.3.3.1"><span class="ltx_text" id="S4.T7.6.1.3.3.1.1" style="color:#0000FF;">with (✓) Selector</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.3.3.2.1" style="color:#0000FF;">1.4043</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.3.3.3.1" style="color:#0000FF;">1.4122</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.3.3.4.1" style="color:#0000FF;">1.4516</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.3.3.5.1" style="color:#0000FF;">1.4652</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.6"><span class="ltx_text" id="S4.T7.6.1.3.3.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.3.3.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.3.3.7.1" style="color:#0000FF;">1.4333</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.4.4.1" rowspan="3"><span class="ltx_text" id="S4.T7.6.1.4.4.1.1" style="color:#0000FF;">(b) Emotion Control</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.4.4.2"><span class="ltx_text" id="S4.T7.6.1.4.4.2.1" style="color:#0000FF;">No control</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.3"><span class="ltx_text" id="S4.T7.6.1.4.4.3.1" style="color:#0000FF;">2.2097</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.4"><span class="ltx_text" id="S4.T7.6.1.4.4.4.1" style="color:#0000FF;">2.2903</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.5"><span class="ltx_text" id="S4.T7.6.1.4.4.5.1" style="color:#0000FF;">2.2000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.6"><span class="ltx_text" id="S4.T7.6.1.4.4.6.1" style="color:#0000FF;">2.3548</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.7"><span class="ltx_text" id="S4.T7.6.1.4.4.7.1" style="color:#0000FF;">2.3000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.4.4.8"><span class="ltx_text" id="S4.T7.6.1.4.4.8.1" style="color:#0000FF;">2.2710</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.5.5.1"><span class="ltx_text" id="S4.T7.6.1.5.5.1.1" style="color:#0000FF;">Music-level</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.2"><span class="ltx_text" id="S4.T7.6.1.5.5.2.1" style="color:#0000FF;">2.0839</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.3"><span class="ltx_text" id="S4.T7.6.1.5.5.3.1" style="color:#0000FF;">2.0065</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.4"><span class="ltx_text" id="S4.T7.6.1.5.5.4.1" style="color:#0000FF;">2.2000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.5"><span class="ltx_text" id="S4.T7.6.1.5.5.5.1" style="color:#0000FF;">2.1129</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.6"><span class="ltx_text" id="S4.T7.6.1.5.5.6.1" style="color:#0000FF;">2.1484</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.5.5.7"><span class="ltx_text" id="S4.T7.6.1.5.5.7.1" style="color:#0000FF;">2.1103</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.6.6.1"><span class="ltx_text" id="S4.T7.6.1.6.6.1.1" style="color:#0000FF;">Bar-level</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.2.1" style="color:#0000FF;">1.7064</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.3.1" style="color:#0000FF;">1.7032</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.4.1" style="color:#0000FF;">1.6000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.5.1" style="color:#0000FF;">1.5323</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.6.1" style="color:#0000FF;">1.5516</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.6.6.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.6.6.7.1" style="color:#0000FF;">1.6187</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.7.7.1" rowspan="4"><span class="ltx_text" id="S4.T7.6.1.7.7.1.1" style="color:#0000FF;">(c) Music Representation</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.7.7.2">
<span class="ltx_text" id="S4.T7.6.1.7.7.2.1" style="color:#0000FF;">CP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.6.1.7.7.2.2.1" style="color:#0000FF;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a><span class="ltx_text" id="S4.T7.6.1.7.7.2.3.2" style="color:#0000FF;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.3"><span class="ltx_text" id="S4.T7.6.1.7.7.3.1" style="color:#0000FF;">3.2323</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.4"><span class="ltx_text" id="S4.T7.6.1.7.7.4.1" style="color:#0000FF;">3.2942</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.5"><span class="ltx_text" id="S4.T7.6.1.7.7.5.1" style="color:#0000FF;">3.7844</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.6"><span class="ltx_text" id="S4.T7.6.1.7.7.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.7"><span class="ltx_text" id="S4.T7.6.1.7.7.7.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.7.7.8"><span class="ltx_text" id="S4.T7.6.1.7.7.8.1" style="color:#0000FF;">3.4370</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.8.8.1"><span class="ltx_text" id="S4.T7.6.1.8.8.1.1" style="color:#0000FF;">CP+Tag</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.2"><span class="ltx_text" id="S4.T7.6.1.8.8.2.1" style="color:#0000FF;">2.8179</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.3"><span class="ltx_text" id="S4.T7.6.1.8.8.3.1" style="color:#0000FF;">2.9640</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.4"><span class="ltx_text" id="S4.T7.6.1.8.8.4.1" style="color:#0000FF;">2.5991</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.5"><span class="ltx_text" id="S4.T7.6.1.8.8.5.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.6"><span class="ltx_text" id="S4.T7.6.1.8.8.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.8.8.7"><span class="ltx_text" id="S4.T7.6.1.8.8.7.1" style="color:#0000FF;">2.7937</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.9.9.1"><span class="ltx_text" id="S4.T7.6.1.9.9.1.1" style="color:#0000FF;">CP+Tag+Instr</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.2"><span class="ltx_text" id="S4.T7.6.1.9.9.2.1" style="color:#0000FF;">2.4308</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.3"><span class="ltx_text" id="S4.T7.6.1.9.9.3.1" style="color:#0000FF;">2.1195</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.4"><span class="ltx_text" id="S4.T7.6.1.9.9.4.1" style="color:#0000FF;">2.1022</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.5"><span class="ltx_text" id="S4.T7.6.1.9.9.5.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.6"><span class="ltx_text" id="S4.T7.6.1.9.9.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.9.9.7"><span class="ltx_text" id="S4.T7.6.1.9.9.7.1" style="color:#0000FF;">2.2175</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.10.10.1"><span class="ltx_text" id="S4.T7.6.1.10.10.1.1" style="color:#0000FF;">CP+Tag+Instr+Rhythm (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.10.10.2.1" style="color:#0000FF;">1.5190</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.10.10.3.1" style="color:#0000FF;">1.6223</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.10.10.4.1" style="color:#0000FF;">1.5143</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.5"><span class="ltx_text" id="S4.T7.6.1.10.10.5.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.6"><span class="ltx_text" id="S4.T7.6.1.10.10.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.10.10.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.10.10.7.1" style="color:#0000FF;">1.5519</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T7.6.1.11.11.1" rowspan="3"><span class="ltx_text" id="S4.T7.6.1.11.11.1.1" style="color:#0000FF;">(d) Data Sampling</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.6.1.11.11.2"><span class="ltx_text" id="S4.T7.6.1.11.11.2.1" style="color:#0000FF;">Undersampling</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.3"><span class="ltx_text" id="S4.T7.6.1.11.11.3.1" style="color:#0000FF;">2.3813</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.4"><span class="ltx_text" id="S4.T7.6.1.11.11.4.1" style="color:#0000FF;">2.4746</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.5"><span class="ltx_text" id="S4.T7.6.1.11.11.5.1" style="color:#0000FF;">2.1271</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.6"><span class="ltx_text" id="S4.T7.6.1.11.11.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.7"><span class="ltx_text" id="S4.T7.6.1.11.11.7.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.1.11.11.8"><span class="ltx_text" id="S4.T7.6.1.11.11.8.1" style="color:#0000FF;">2.3277</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.6.1.12.12.1"><span class="ltx_text" id="S4.T7.6.1.12.12.1.1" style="color:#0000FF;">Oversampling</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.2"><span class="ltx_text" id="S4.T7.6.1.12.12.2.1" style="color:#0000FF;">2.2069</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.3"><span class="ltx_text" id="S4.T7.6.1.12.12.3.1" style="color:#0000FF;">2.0604</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.4"><span class="ltx_text" id="S4.T7.6.1.12.12.4.1" style="color:#0000FF;">2.3667</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.5"><span class="ltx_text" id="S4.T7.6.1.12.12.5.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.6"><span class="ltx_text" id="S4.T7.6.1.12.12.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.6.1.12.12.7"><span class="ltx_text" id="S4.T7.6.1.12.12.7.1" style="color:#0000FF;">2.2113</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T7.6.1.13.13.1"><span class="ltx_text" id="S4.T7.6.1.13.13.1.1" style="color:#0000FF;">Original XMIDI</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.13.13.2.1" style="color:#0000FF;">1.4118</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.13.13.3.1" style="color:#0000FF;">1.4650</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.13.13.4.1" style="color:#0000FF;">1.5062</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.5"><span class="ltx_text" id="S4.T7.6.1.13.13.5.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.6"><span class="ltx_text" id="S4.T7.6.1.13.13.6.1" style="color:#0000FF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.1.13.13.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.1.13.13.7.1" style="color:#0000FF;">1.4610</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the XMusic model.  It systematically removes or modifies different components of the model to assess their individual contributions to overall performance.  Specifically, it examines the impact of the Selector, emotion control level (music-level vs. bar-level), music representation (comparing different token schemes), and data sampling strategies (undersampling and oversampling) on the subjective and objective evaluation metrics.  The subjective metrics used include Richness, Correctness, Structuredness, Emotion-Matching, Rhythm-Matching, and Overall Rank, all based on human evaluations. The table provides a detailed quantitative analysis of how each modification affects the performance, allowing for a better understanding of the key components within the XMusic framework.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Ablation analysis.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T8.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T8.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T8.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.1.1" style="color:#0000FF;">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T8.6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.2.1" style="color:#0000FF;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.3.1" style="color:#0000FF;">Richness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.4.1" style="color:#0000FF;">Correctness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.5.1" style="color:#0000FF;">Structuredness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.6.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.1.1.6.1" style="color:#0000FF;">Overall Rank</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T8.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.6.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T8.6.1.2.1.1.1" style="color:#0000FF;"><span class="ltx_text ltx_font_italic" id="S4.T8.6.1.2.1.1.1.1">AILabs1k7</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.6.1.2.1.2">
<span class="ltx_text" id="S4.T8.6.1.2.1.2.1" style="color:#0000FF;">CP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.6.1.2.1.2.2.1" style="color:#0000FF;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a><span class="ltx_text" id="S4.T8.6.1.2.1.2.3.2" style="color:#0000FF;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.2.1.3"><span class="ltx_text" id="S4.T8.6.1.2.1.3.1" style="color:#0000FF;">2.1521</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.2.1.4"><span class="ltx_text" id="S4.T8.6.1.2.1.4.1" style="color:#0000FF;">2.1053</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.2.1.5"><span class="ltx_text" id="S4.T8.6.1.2.1.5.1" style="color:#0000FF;">2.0276</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.2.1.6"><span class="ltx_text" id="S4.T8.6.1.2.1.6.1" style="color:#0000FF;">2.0950</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T8.6.1.3.2.1">
<span class="ltx_text" id="S4.T8.6.1.3.2.1.1" style="color:#0000FF;">EMOPIA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.6.1.3.2.1.2.1" style="color:#0000FF;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a><span class="ltx_text" id="S4.T8.6.1.3.2.1.3.2" style="color:#0000FF;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.3.2.2"><span class="ltx_text" id="S4.T8.6.1.3.2.2.1" style="color:#0000FF;">2.2567</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.3.2.3"><span class="ltx_text" id="S4.T8.6.1.3.2.3.1" style="color:#0000FF;">2.2318</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.3.2.4"><span class="ltx_text" id="S4.T8.6.1.3.2.4.1" style="color:#0000FF;">2.2382</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.3.2.5"><span class="ltx_text" id="S4.T8.6.1.3.2.5.1" style="color:#0000FF;">2.2422</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T8.6.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.4.3.1.1" style="color:#0000FF;">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.4.3.2.1" style="color:#0000FF;">1.5912</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.4.3.3.1" style="color:#0000FF;">1.6629</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.4.3.4"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.4.3.4.1" style="color:#0000FF;">1.7342</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.4.3.5.1" style="color:#0000FF;">1.6628</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.6.1.5.4.1"><span class="ltx_text" id="S4.T8.6.1.5.4.1.1" style="color:#0000FF;"><span class="ltx_text ltx_font_italic" id="S4.T8.6.1.5.4.1.1.1">AILabs1k7</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.6.1.5.4.2">
<span class="ltx_text" id="S4.T8.6.1.5.4.2.1" style="color:#0000FF;">CP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.6.1.5.4.2.2.1" style="color:#0000FF;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib10" title="">10</a><span class="ltx_text" id="S4.T8.6.1.5.4.2.3.2" style="color:#0000FF;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.5.4.3"><span class="ltx_text" id="S4.T8.6.1.5.4.3.1" style="color:#0000FF;">2.1016</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.5.4.4"><span class="ltx_text" id="S4.T8.6.1.5.4.4.1" style="color:#0000FF;">2.0651</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.5.4.5"><span class="ltx_text" id="S4.T8.6.1.5.4.5.1" style="color:#0000FF;">2.0177</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.6.1.5.4.6"><span class="ltx_text" id="S4.T8.6.1.5.4.6.1" style="color:#0000FF;">2.0615</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T8.6.1.6.5.1" rowspan="2"><span class="ltx_text" id="S4.T8.6.1.6.5.1.1" style="color:#0000FF;">+<span class="ltx_text ltx_font_italic" id="S4.T8.6.1.6.5.1.1.1">EMOPIA</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T8.6.1.6.5.2">
<span class="ltx_text" id="S4.T8.6.1.6.5.2.1" style="color:#0000FF;">EMOPIA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.6.1.6.5.2.2.1" style="color:#0000FF;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.08809v1#bib.bib11" title="">11</a><span class="ltx_text" id="S4.T8.6.1.6.5.2.3.2" style="color:#0000FF;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.6.5.3"><span class="ltx_text" id="S4.T8.6.1.6.5.3.1" style="color:#0000FF;">2.2607</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.6.5.4"><span class="ltx_text" id="S4.T8.6.1.6.5.4.1" style="color:#0000FF;">2.1889</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.6.5.5"><span class="ltx_text" id="S4.T8.6.1.6.5.5.1" style="color:#0000FF;">2.2956</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.1.6.5.6"><span class="ltx_text" id="S4.T8.6.1.6.5.6.1" style="color:#0000FF;">2.2484</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T8.6.1.7.6.1"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.7.6.1.1" style="color:#0000FF;">XMusic (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.6.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.7.6.2.1" style="color:#0000FF;">1.6377</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.6.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.7.6.3.1" style="color:#0000FF;">1.7460</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.6.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.7.6.4.1" style="color:#0000FF;">1.6867</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.6.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T8.6.1.7.6.5.1" style="color:#0000FF;">1.6901</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table VIII presents a comparison of the performance of XMusic against state-of-the-art symbolic music generation methods on publicly available datasets.  Specifically, it shows a subjective evaluation of the quality of music generated by XMusic compared to CP [10] and EMOPIA [11] across different metrics such as Richness, Correctness, and Structuredness. The evaluation was conducted on two datasets: AILabs1k7 and EMOPIA.
> <details>
> <summary>read the caption</summary>
> TABLE VIII: Comparison with state-of-the-art symbolic music generation methods on public datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T9.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T9.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T9.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.4.1" style="color:#0000FF;">Setting</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.1.1" style="color:#0000FF;">PCE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T9.1.1.1.1.1.m1.1"><semantics id="S4.T9.1.1.1.1.1.m1.1a"><mo id="S4.T9.1.1.1.1.1.m1.1.1" mathcolor="#0000FF" stretchy="false" xref="S4.T9.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T9.1.1.1.1.1.m1.1b"><ci id="S4.T9.1.1.1.1.1.m1.1.1.cmml" xref="S4.T9.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T9.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T9.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T9.2.2.2.2.1" style="color:#0000FF;">GS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T9.2.2.2.2.1.m1.1"><semantics id="S4.T9.2.2.2.2.1.m1.1a"><mo id="S4.T9.2.2.2.2.1.m1.1.1" mathcolor="#0000FF" stretchy="false" xref="S4.T9.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T9.2.2.2.2.1.m1.1b"><ci id="S4.T9.2.2.2.2.1.m1.1.1.cmml" xref="S4.T9.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T9.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T9.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.3.1" style="color:#0000FF;">EBR <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T9.3.3.3.3.1.m1.1"><semantics id="S4.T9.3.3.3.3.1.m1.1a"><mo id="S4.T9.3.3.3.3.1.m1.1.1" mathcolor="#0000FF" stretchy="false" xref="S4.T9.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T9.3.3.3.3.1.m1.1b"><ci id="S4.T9.3.3.3.3.1.m1.1.1.cmml" xref="S4.T9.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T9.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T9.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T9.3.3.4.1.1"><span class="ltx_text" id="S4.T9.3.3.4.1.1.1" style="color:#0000FF;">w/o (✗) Selector</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.3.3.4.1.2"><span class="ltx_text" id="S4.T9.3.3.4.1.2.1" style="color:#0000FF;">2.5806</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.3.3.4.1.3"><span class="ltx_text" id="S4.T9.3.3.4.1.3.1" style="color:#0000FF;">0.9991</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.3.3.4.1.4"><span class="ltx_text" id="S4.T9.3.3.4.1.4.1" style="color:#0000FF;">0.0097</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T9.3.3.5.2.1"><span class="ltx_text" id="S4.T9.3.3.5.2.1.1" style="color:#0000FF;">with (✓) Selector</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.3.3.5.2.2"><span class="ltx_text" id="S4.T9.3.3.5.2.2.1" style="color:#0000FF;">2.5083</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.3.3.5.2.3"><span class="ltx_text" id="S4.T9.3.3.5.2.3.1" style="color:#0000FF;">0.9994</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.3.3.5.2.4"><span class="ltx_text" id="S4.T9.3.3.5.2.4.1" style="color:#0000FF;">0.0042</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of the proposed Selector on the overall performance of the XMusic model.  It compares the objective metrics (PCE, GS, EBR) achieved by the XMusic model with and without the Selector. This demonstrates the effectiveness of the Selector in enhancing the quality of generated symbolic music.
> <details>
> <summary>read the caption</summary>
> TABLE IX: Objective ablation study on the proposed Selector.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T10.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T10.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T10.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T10.6.1.1.1.1" style="color:#0000FF;">Classification Head</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T10.6.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.6.1.1.2.1" style="color:#0000FF;">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T10.6.2.2.1.1" style="color:#0000FF;">Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T10.6.2.2.2.1" style="color:#0000FF;">Emotion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T10.6.2.2.3.1" style="color:#0000FF;">Genre</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.6.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.3.3.1"><span class="ltx_text" id="S4.T10.6.3.3.1.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.3.3.2"><span class="ltx_text" id="S4.T10.6.3.3.2.1" style="color:#0000FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.3.3.3"><span class="ltx_text" id="S4.T10.6.3.3.3.1" style="color:#0000FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.3.3.4"><span class="ltx_text" id="S4.T10.6.3.3.4.1" style="color:#0000FF;">83.2%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.6.4.4">
<td class="ltx_td ltx_align_center" id="S4.T10.6.4.4.1"><span class="ltx_text" id="S4.T10.6.4.4.1.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.6.4.4.2"><span class="ltx_text" id="S4.T10.6.4.4.2.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.6.4.4.3"><span class="ltx_text" id="S4.T10.6.4.4.3.1" style="color:#0000FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.6.4.4.4"><span class="ltx_text" id="S4.T10.6.4.4.4.1" style="color:#0000FF;">90.1%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.6.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.6.5.5.1"><span class="ltx_text" id="S4.T10.6.5.5.1.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.6.5.5.2"><span class="ltx_text" id="S4.T10.6.5.5.2.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.6.5.5.3"><span class="ltx_text" id="S4.T10.6.5.5.3.1" style="color:#0000FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.6.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T10.6.5.5.4.1" style="color:#0000FF;">94.8%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of the multi-task learning scheme on the Selector component of the XMusic model.  It shows how the accuracy of the quality assessment task changes when different combinations of sub-tasks (quality, emotion, and genre recognition) are included in the training process. This demonstrates the contribution of each sub-task to the overall performance of the Selector in identifying high-quality music.
> <details>
> <summary>read the caption</summary>
> TABLE X: Ablation study on the multi-task learning scheme of the Selector.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T11.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T11.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T11.5.1.1.1"><math alttext="(\lambda_{1},\lambda_{2})" class="ltx_Math" display="inline" id="S4.T11.5.1.1.1.m1.2"><semantics id="S4.T11.5.1.1.1.m1.2a"><mrow id="S4.T11.5.1.1.1.m1.2.2.2" xref="S4.T11.5.1.1.1.m1.2.2.3.cmml"><mo id="S4.T11.5.1.1.1.m1.2.2.2.3" mathcolor="#0000FF" stretchy="false" xref="S4.T11.5.1.1.1.m1.2.2.3.cmml">(</mo><msub id="S4.T11.5.1.1.1.m1.1.1.1.1" xref="S4.T11.5.1.1.1.m1.1.1.1.1.cmml"><mi id="S4.T11.5.1.1.1.m1.1.1.1.1.2" mathcolor="#0000FF" xref="S4.T11.5.1.1.1.m1.1.1.1.1.2.cmml">λ</mi><mn id="S4.T11.5.1.1.1.m1.1.1.1.1.3" mathcolor="#0000FF" xref="S4.T11.5.1.1.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="S4.T11.5.1.1.1.m1.2.2.2.4" mathcolor="#0000FF" xref="S4.T11.5.1.1.1.m1.2.2.3.cmml">,</mo><msub id="S4.T11.5.1.1.1.m1.2.2.2.2" xref="S4.T11.5.1.1.1.m1.2.2.2.2.cmml"><mi id="S4.T11.5.1.1.1.m1.2.2.2.2.2" mathcolor="#0000FF" xref="S4.T11.5.1.1.1.m1.2.2.2.2.2.cmml">λ</mi><mn id="S4.T11.5.1.1.1.m1.2.2.2.2.3" mathcolor="#0000FF" xref="S4.T11.5.1.1.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="S4.T11.5.1.1.1.m1.2.2.2.5" mathcolor="#0000FF" stretchy="false" xref="S4.T11.5.1.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T11.5.1.1.1.m1.2b"><interval closure="open" id="S4.T11.5.1.1.1.m1.2.2.3.cmml" xref="S4.T11.5.1.1.1.m1.2.2.2"><apply id="S4.T11.5.1.1.1.m1.1.1.1.1.cmml" xref="S4.T11.5.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T11.5.1.1.1.m1.1.1.1.1.1.cmml" xref="S4.T11.5.1.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S4.T11.5.1.1.1.m1.1.1.1.1.2.cmml" xref="S4.T11.5.1.1.1.m1.1.1.1.1.2">𝜆</ci><cn id="S4.T11.5.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S4.T11.5.1.1.1.m1.1.1.1.1.3">1</cn></apply><apply id="S4.T11.5.1.1.1.m1.2.2.2.2.cmml" xref="S4.T11.5.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S4.T11.5.1.1.1.m1.2.2.2.2.1.cmml" xref="S4.T11.5.1.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S4.T11.5.1.1.1.m1.2.2.2.2.2.cmml" xref="S4.T11.5.1.1.1.m1.2.2.2.2.2">𝜆</ci><cn id="S4.T11.5.1.1.1.m1.2.2.2.2.3.cmml" type="integer" xref="S4.T11.5.1.1.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S4.T11.5.1.1.1.m1.2c">(\lambda_{1},\lambda_{2})</annotation><annotation encoding="application/x-llamapun" id="S4.T11.5.1.1.1.m1.2d">( italic_λ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.2"><span class="ltx_text" id="S4.T11.5.1.1.2.1" style="color:#0000FF;">(0,1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.3"><span class="ltx_text" id="S4.T11.5.1.1.3.1" style="color:#0000FF;">(1,0)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.4"><span class="ltx_text" id="S4.T11.5.1.1.4.1" style="color:#0000FF;">(1,1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.5"><span class="ltx_text" id="S4.T11.5.1.1.5.1" style="color:#0000FF;">(1,2)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.6"><span class="ltx_text" id="S4.T11.5.1.1.6.1" style="color:#0000FF;">(1,3)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.7"><span class="ltx_text" id="S4.T11.5.1.1.7.1" style="color:#0000FF;">(2,1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.5.1.1.8"><span class="ltx_text" id="S4.T11.5.1.1.8.1" style="color:#0000FF;">(3,1)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T11.5.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T11.5.1.2.1.1.1" style="color:#0000FF;">Accuracy (%)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.2"><span class="ltx_text" id="S4.T11.5.1.2.1.2.1" style="color:#0000FF;">80.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.3"><span class="ltx_text" id="S4.T11.5.1.2.1.3.1" style="color:#0000FF;">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.4"><span class="ltx_text" id="S4.T11.5.1.2.1.4.1" style="color:#0000FF;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T11.5.1.2.1.5.1" style="color:#0000FF;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.6"><span class="ltx_text" id="S4.T11.5.1.2.1.6.1" style="color:#0000FF;">84.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.7"><span class="ltx_text" id="S4.T11.5.1.2.1.7.1" style="color:#0000FF;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T11.5.1.2.1.8"><span class="ltx_text" id="S4.T11.5.1.2.1.8.1" style="color:#0000FF;">81.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different weighting factors (λ1 and λ2) on the accuracy of image emotion recognition.  The study varied the weights assigned to two different models used for emotion classification (ResNet and CLIP) in the XProjector component of the XMusic system. The table shows how changes in these weights affect the overall accuracy of image emotion recognition, providing insights into the relative contributions of each model.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Ablation analysis on the weighting factors λ1subscript𝜆1\lambda_{1}italic_λ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT and λ2subscript𝜆2\lambda_{2}italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT of image emotion recognition task.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.08809/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08809/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}