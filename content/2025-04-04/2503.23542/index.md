---
title: "Whisper-LM: Improving ASR Models with Language Models for Low-Resource Languages"
summary: "Whisper-LM improves ASR models for low-resource languages by integrating language models, significantly reducing word error rate."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Speech Recognition", "🏢 University of Basque Country",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23542 {{< /keyword >}}
{{< keyword icon="writer" >}} Xabier de Zuazo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23542" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23542" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23542/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Automatic Speech Recognition (ASR) has improved via multilingual models like Whisper, but struggles with nuances of low-resource languages. This paper tackles this issue by integrating traditional and novel language models into fine-tuned Whisper models, rigorously evaluating them across datasets and parameters to improve performance. The goal is **bridging the gap** between phonetic encoding and syntactic structures to improve out-of-distribution robustness.



The study integrates language models not via prompting but by merging internal scores at inference, mitigating domain shifts, and introducing a metric (ERER) for performance scaling from in- to out-of-distribution scenarios. Results show n-gram and large language models **substantially improve OOD performance**, also scrutinizing evaluation parameters affecting ASR results. Key is demonstrating enhanced accuracy and robustness in low-resource languages with weakly supervised acoustic ASR systems, offering insights into deep learning-based models with traditional language models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Integrating language models with fine-tuned Whisper models significantly improves ASR accuracy, especially for low-resource languages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Both n-gram and large language models enhance ASR robustness, with LLMs offering more consistent gains across diverse linguistic contexts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Careful selection of evaluation parameters is crucial for accurately assessing ASR model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research matters because it **boosts ASR for under-represented languages**, making tech more inclusive. It **shows how combining classic and new language models improves accuracy** and robustness. Also, it **spotlights key ASR settings** often overlooked and needed for fair comparisons, thus **advancing future ASR** research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23542/x5.png)

> 🔼 This figure shows the distribution of audio data (measured in hours) used for training the Whisper ASR model across different phases: pre-training, fine-tuning, and evaluation.  It visually represents the relative amount of data used in each phase for four different languages: Basque (eu), Galician (gl), Catalan (ca), and Spanish (es). The pre-training data consists of a massive multilingual corpus, while the fine-tuning and evaluation sets are smaller, language-specific datasets. The visual representation helps to understand the data resources available for each language and the relative emphasis placed on each training phase.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distribution of dataset hours across different training phases.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.1.1">Model Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.2.1">Learning Rate</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.3.1">Batch Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.4.1">Eval Batch Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.6.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.5.1">Gradient Acc.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.6.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.6.1">Steps</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.2">Tiny</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.1"><math alttext="3.75\cdot 10^{-5}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><mn id="S3.T1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.m1.1.1.2.cmml">3.75</mn><mo id="S3.T1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.1.1.1.m1.1.1.1.cmml">⋅</mo><msup id="S3.T1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.m1.1.1.3.cmml"><mn id="S3.T1.1.1.1.m1.1.1.3.2" xref="S3.T1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.1.1.1.m1.1.1.3.3" xref="S3.T1.1.1.1.m1.1.1.3.3.cmml"><mo id="S3.T1.1.1.1.m1.1.1.3.3a" xref="S3.T1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.1.1.1.m1.1.1.3.3.2" xref="S3.T1.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><ci id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1.1">⋅</ci><cn id="S3.T1.1.1.1.m1.1.1.2.cmml" type="float" xref="S3.T1.1.1.1.m1.1.1.2">3.75</cn><apply id="S3.T1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3.2">10</cn><apply id="S3.T1.1.1.1.m1.1.1.3.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3"><minus id="S3.T1.1.1.1.m1.1.1.3.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3"></minus><cn id="S3.T1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">3.75\cdot 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">3.75 ⋅ 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.3">256</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.4">128</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.5">1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.6">5,000</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.2.2">Base</th>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.1"><math alttext="2.5\cdot 10^{-5}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mrow id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml"><mn id="S3.T1.2.2.1.m1.1.1.2" xref="S3.T1.2.2.1.m1.1.1.2.cmml">2.5</mn><mo id="S3.T1.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.2.2.1.m1.1.1.1.cmml">⋅</mo><msup id="S3.T1.2.2.1.m1.1.1.3" xref="S3.T1.2.2.1.m1.1.1.3.cmml"><mn id="S3.T1.2.2.1.m1.1.1.3.2" xref="S3.T1.2.2.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.2.2.1.m1.1.1.3.3" xref="S3.T1.2.2.1.m1.1.1.3.3.cmml"><mo id="S3.T1.2.2.1.m1.1.1.3.3a" xref="S3.T1.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.2.2.1.m1.1.1.3.3.2" xref="S3.T1.2.2.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><apply id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1"><ci id="S3.T1.2.2.1.m1.1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1.1">⋅</ci><cn id="S3.T1.2.2.1.m1.1.1.2.cmml" type="float" xref="S3.T1.2.2.1.m1.1.1.2">2.5</cn><apply id="S3.T1.2.2.1.m1.1.1.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.2.2.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.2.2.1.m1.1.1.3.2">10</cn><apply id="S3.T1.2.2.1.m1.1.1.3.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3"><minus id="S3.T1.2.2.1.m1.1.1.3.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3"></minus><cn id="S3.T1.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.2.2.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">2.5\cdot 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">2.5 ⋅ 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.3">128</td>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.4">64</td>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.5">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.6">5,000</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.3.2">Small</th>
<td class="ltx_td ltx_align_right" id="S3.T1.3.3.1"><math alttext="1\cdot 10^{-5}" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mrow id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml"><mn id="S3.T1.3.3.1.m1.1.1.2" xref="S3.T1.3.3.1.m1.1.1.2.cmml">1</mn><mo id="S3.T1.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.1.m1.1.1.1.cmml">⋅</mo><msup id="S3.T1.3.3.1.m1.1.1.3" xref="S3.T1.3.3.1.m1.1.1.3.cmml"><mn id="S3.T1.3.3.1.m1.1.1.3.2" xref="S3.T1.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.3.3.1.m1.1.1.3.3" xref="S3.T1.3.3.1.m1.1.1.3.3.cmml"><mo id="S3.T1.3.3.1.m1.1.1.3.3a" xref="S3.T1.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.3.3.1.m1.1.1.3.3.2" xref="S3.T1.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><apply id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1"><ci id="S3.T1.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1.1">⋅</ci><cn id="S3.T1.3.3.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.3.3.1.m1.1.1.2">1</cn><apply id="S3.T1.3.3.1.m1.1.1.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.3.3.1.m1.1.1.3.2">10</cn><apply id="S3.T1.3.3.1.m1.1.1.3.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3"><minus id="S3.T1.3.3.1.m1.1.1.3.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3"></minus><cn id="S3.T1.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">1\cdot 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">1 ⋅ 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.3.3">64</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.3.4">32</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.3.5">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.3.6">5,000</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.4.2">Medium</th>
<td class="ltx_td ltx_align_right" id="S3.T1.4.4.1"><math alttext="1\cdot 10^{-5}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><mrow id="S3.T1.4.4.1.m1.1.1" xref="S3.T1.4.4.1.m1.1.1.cmml"><mn id="S3.T1.4.4.1.m1.1.1.2" xref="S3.T1.4.4.1.m1.1.1.2.cmml">1</mn><mo id="S3.T1.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.4.4.1.m1.1.1.1.cmml">⋅</mo><msup id="S3.T1.4.4.1.m1.1.1.3" xref="S3.T1.4.4.1.m1.1.1.3.cmml"><mn id="S3.T1.4.4.1.m1.1.1.3.2" xref="S3.T1.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.4.4.1.m1.1.1.3.3" xref="S3.T1.4.4.1.m1.1.1.3.3.cmml"><mo id="S3.T1.4.4.1.m1.1.1.3.3a" xref="S3.T1.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.4.4.1.m1.1.1.3.3.2" xref="S3.T1.4.4.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><apply id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1"><ci id="S3.T1.4.4.1.m1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1">⋅</ci><cn id="S3.T1.4.4.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.2">1</cn><apply id="S3.T1.4.4.1.m1.1.1.3.cmml" xref="S3.T1.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.1.1.3.1.cmml" xref="S3.T1.4.4.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.3.2">10</cn><apply id="S3.T1.4.4.1.m1.1.1.3.3.cmml" xref="S3.T1.4.4.1.m1.1.1.3.3"><minus id="S3.T1.4.4.1.m1.1.1.3.3.1.cmml" xref="S3.T1.4.4.1.m1.1.1.3.3"></minus><cn id="S3.T1.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">1\cdot 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">1 ⋅ 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S3.T1.4.4.3">64</td>
<td class="ltx_td ltx_align_right" id="S3.T1.4.4.4">32</td>
<td class="ltx_td ltx_align_right" id="S3.T1.4.4.5">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.4.4.6">10,000</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T1.5.5.2">Large-V1..V3</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T1.5.5.1"><math alttext="1\cdot 10^{-5}" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mrow id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml"><mn id="S3.T1.5.5.1.m1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.2.cmml">1</mn><mo id="S3.T1.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.5.5.1.m1.1.1.1.cmml">⋅</mo><msup id="S3.T1.5.5.1.m1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.3.cmml"><mn id="S3.T1.5.5.1.m1.1.1.3.2" xref="S3.T1.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.5.5.1.m1.1.1.3.3" xref="S3.T1.5.5.1.m1.1.1.3.3.cmml"><mo id="S3.T1.5.5.1.m1.1.1.3.3a" xref="S3.T1.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.5.5.1.m1.1.1.3.3.2" xref="S3.T1.5.5.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><apply id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1"><ci id="S3.T1.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1">⋅</ci><cn id="S3.T1.5.5.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.2">1</cn><apply id="S3.T1.5.5.1.m1.1.1.3.cmml" xref="S3.T1.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.3.2">10</cn><apply id="S3.T1.5.5.1.m1.1.1.3.3.cmml" xref="S3.T1.5.5.1.m1.1.1.3.3"><minus id="S3.T1.5.5.1.m1.1.1.3.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.3.3"></minus><cn id="S3.T1.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">1\cdot 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">1 ⋅ 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T1.5.5.3">32</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T1.5.5.4">16</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T1.5.5.5">2</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T1.5.5.6">20,000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters used during the fine-tuning process of the Whisper models.  It shows the learning rate, batch size, evaluation batch size, gradient accumulation steps, and total training steps used for each of the different Whisper model sizes (Tiny, Base, Small, Medium, Large-V1, Large-V2, Large-V3). These hyperparameters were chosen based on the original Whisper fine-tuning scripts, with adjustments made to optimize performance while maintaining efficient training times for low-resource languages.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of fine-tuning hyperparameters for the vanilla Whisper models.
> </details>





### In-depth insights


#### LM Integration
From the context, **Language Model (LM) integration** is a key strategy for improving Automatic Speech Recognition (ASR), especially in low-resource languages. It compensates for the Whisper model's shortcomings in capturing the nuances of these languages. LMs, both traditional n-gram models and larger language models (LLMs), bridge the gap between the acoustic features learned by Whisper and the linguistic features of the input language. **Integration improves accuracy and robustness**, especially with LLMs providing more stable enhancements across varied testing conditions than n-gram LMs. The choice of LM and its parameters, like weighting factors, are essential to model performance; this decision depends on the linguistic resources and the model size.

#### Low-Res ASR Boost
**Low-resource ASR systems often suffer from poor performance** due to limited training data. Approaches to boost these systems often involve leveraging external resources or advanced techniques. **Transfer learning** from high-resource languages is common, but its effectiveness depends on the linguistic similarity. **Data augmentation** techniques, such as adding noise or synthesizing new data, can increase the training set size, but may introduce artifacts. Integrating **language models** can provide crucial contextual information, helping to correct acoustic model errors. These models can be traditional n-grams or more sophisticated neural networks. Further improvement can be achieved through **multilingual training**, enabling cross-lingual knowledge sharing. Finally, the performance relies on careful **parameter tuning** and evaluation across diverse datasets to ensure generalization.

#### Robustness Focus
The paper tackles robustness in ASR through various methods. **Integrating language models isn't just about closing the linguistic gap, but also improving out-of-distribution (OOD) robustness.** The models often perform worse on unseen, real-world data. The paper addresses this by merging internal scores at inference, augmenting Whisper's outputs with an external language prior, which mitigates domain-shift issues. Additionally, they propose the Effective Robustness of Relative Error Reduction (ERER) metric, quantifying how consistently performance scales from in-distribution to OOD scenarios. Experiments show n-gram and large language models can substantially improve OOD performance. It highlights the importance of evaluating model configurations (evaluation time), as these parameters influence ASR results. The evaluation focuses on various evaluation options on ASR performance (Whisper vanilla models). The experiment examines how changing specific parameters affects WER by disabling them from the default configuration. The goal is to improve performance across diverse linguistic environments ensuring the Whisper decoder's knowledge, is complemented by specific linguistic statistical knowledge. **This ensures LLM integration leads to stability across various testing scenarios.**

#### Whisper Adapt
Considering a hypothetical 'Whisper Adapt' heading, one might explore techniques for adapting the Whisper model to specific tasks or languages. This could involve fine-tuning the existing model with new datasets. **Low-resource languages could especially benefit from specialized adaptation**. Transfer learning approaches, leveraging related languages with abundant data, could be useful. One might also investigate methods for knowledge distillation, where a smaller, more efficient model is trained to mimic the behavior of the larger Whisper model. Furthermore, architectural modifications could tailor Whisper to particular domains. **Adapting the tokenization scheme to suit specific linguistic nuances** might also prove beneficial. Efficient adaptation strategies are crucial for deploying Whisper in diverse real-world scenarios.

#### Eval Parameter
Evaluation parameters critically influence ASR model performance, yet are often overlooked. This research underscores the importance of rigorously evaluating their impact, particularly in challenging linguistic environments. **Beam size**, controlling decoding hypotheses, and **diacritics handling** significantly alter reported results. Disabling beam search impacts precision, while ignoring diacritics affects language homogenization. **Timestamps**, irrelevant to transcription accuracy, surprisingly show variable impact, depending on dataset conditions, while language specifications have the largest impact. The study advocates for **careful parameter selection**, demonstrating how deviations from optimal configurations inflate word error rates, emphasizing the need for consistent, well-considered evaluation methodologies to ensure reliability in ASR deployment across diverse linguistic contexts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23542/x6.png)

> 🔼 This figure shows the effective robustness of relative error reduction (RER) across different Whisper model sizes.  Effective robustness, in this context, measures how consistently a model's performance scales from in-distribution (ID) to out-of-distribution (OOD) scenarios.  The graph likely displays the ERER values for each model size (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3), calculated as the difference between OOD and ID RER values.  Higher ERER indicates more consistent performance across ID and OOD conditions, signifying greater robustness.  The plot probably shows that while fine-tuning (FT) alone might offer high performance on ID data, its robustness decreases with larger model sizes. Integrating either n-gram language models (FT+LM) or large language models (FT+LLM) appears to improve robustness, with LLMs potentially providing more consistent performance gains across model sizes.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effective robustness of RER by model size.
> </details>



![](https://arxiv.org/html/2503.23542/x7.png)

> 🔼 This figure shows the effective robustness of relative error reduction (RER) for different languages.  Effective robustness, in this context, measures how consistently a model's performance scales from in-distribution (ID) to out-of-distribution (OOD) scenarios.  The chart compares the performance of models fine-tuned (FT), fine-tuned with n-gram language models (FT+LM), and fine-tuned with large language models (FT+LLM). The y-axis represents the ERER score, reflecting the difference between OOD and ID relative error reduction, where a higher score indicates better robustness. Each bar shows the average ERER and standard deviation for each method within each language. This visual representation helps to assess the relative robustness of the different language model integration approaches across various languages and highlights any language-specific differences in the effectiveness of these methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Effective robustness of RER by language.
> </details>



![](https://arxiv.org/html/2503.23542/x8.png)

> 🔼 Figure 4 analyzes the impact of various evaluation parameters on Word Error Rate (WER) across different Whisper model sizes.  It presents the average Relative Error Reduction (RER) for each parameter change, compared to a baseline configuration (beam size 5, diacritics removed, timestamps excluded, language specified, temperature 0.0). Negative RER values signify performance degradation compared to the baseline. The figure helps determine which parameters significantly influence WER and model size.
> <details>
> <summary>read the caption</summary>
> Figure 4: The averaged RER across different model sizes to study the impact of various evaluation parameters on the WER. Negative values indicate performance decreases when changing from our selected baseline.
> </details>



![](https://arxiv.org/html/2503.23542/x9.png)

> 🔼 This figure visualizes the results of hyperparameter optimization for integrating n-gram language models into the Whisper ASR system. Each point represents a trial during the optimization process, with its position on the graph determined by the chosen values for the alpha (α) and beta (β) parameters. Alpha scales the contribution of the language model's score, while beta scales the sentence length's effect.  The opacity of each point corresponds to the model's performance (WER), with more opaque points indicating better performance (lower WER).  The plot shows how different languages require different hyperparameter settings for optimal performance. Lower-resource languages exhibit greater variability in effective parameter values, indicated by a wider spread of points in the plot, while higher-resource languages show a more concentrated cluster of optimal parameter values.
> <details>
> <summary>read the caption</summary>
> Figure 5: LM optimization trials with better scores being more opaque.
> </details>



![](https://arxiv.org/html/2503.23542/x10.png)

> 🔼 This figure visualizes the results of hyperparameter optimization for integrating Large Language Models (LLMs) with the Whisper speech recognition system. Each point represents a trial during the optimization process, with the x-axis showing the weighting parameter 'alpha' and the y-axis showing the weighting parameter 'beta'.  The opacity of each point corresponds to its performance; more opaque points indicate lower Word Error Rate (WER), signifying better performance.  The different colored points represent different languages (Basque, Galician, Catalan, Spanish). The visualization helps to understand how the optimal weighting parameters for LLM integration vary across different languages.
> <details>
> <summary>read the caption</summary>
> Figure 6: LLM optimization trials with better scores being more opaque.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Short Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Split</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">Recordings</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1">Hours</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1.2">CV13</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1.3">Basque</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.2.1.4">train+validation</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.5">17,509</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.6">25.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.2.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.2.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.2.3">Galician</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.3.2.4">train+validation</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.2.5">17,348</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.2.6">23.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.3.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.3.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.3.3">Catalan</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.4.3.4">train+validation</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.4.3.5">1,063,345</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.4.3.6">1,643.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.5.4.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.5.4.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.5.4.3">Spanish</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.5.4.4">train+validation</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.5.4.5">296,037</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.5.4.6">434.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.6.5.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.6.5.2">CV13</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.6.5.3">Basque</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.6.5.4">test</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.6.5.5">6,591</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.6.5.6">10.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.7.6.1">AhoMyTTS</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.7.6.2">AhoMyTTS</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.7.6.3">Basque</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.7.6.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.7.6.5">590</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.7.6.6">0.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T2.1.8.7.1">OpenSLR-76</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.8.7.2">SLR76</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.8.7.3">Basque</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.8.7.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.8.7.5">7,136</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.8.7.6">13.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<td class="ltx_td ltx_align_left" id="S4.T2.1.9.8.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.9.8.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.9.8.3">Galician</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.9.8.4">test</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.9.8.5">6,546</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.9.8.6">9.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.10.9.1">FLEURS</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.10.9.2">Fleurs</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.10.9.3">Galician</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.10.9.4">all</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.10.9.5">3,497</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.10.9.6">10.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.10">
<td class="ltx_td ltx_align_left" id="S4.T2.1.11.10.1">OpenSLR-77</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.11.10.2">SLR77</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.11.10.3">Galician</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.11.10.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.11.10.5">5,587</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.11.10.6">10.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12.11">
<td class="ltx_td ltx_align_left" id="S4.T2.1.12.11.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.12.11.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.12.11.3">Catalan</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.12.11.4">test</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.12.11.5">16,380</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.12.11.6">28.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13.12">
<td class="ltx_td ltx_align_left" id="S4.T2.1.13.12.1">FLEURS</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.13.12.2">Fleurs</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.13.12.3">Catalan</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.13.12.4">all</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.13.12.5">3,644</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.13.12.6">11.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14.13">
<td class="ltx_td ltx_align_left" id="S4.T2.1.14.13.1">OpenSLR-69</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.14.13.2">SLR69</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.14.13.3">Catalan</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.14.13.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.14.13.5">4,240</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.14.13.6">9.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15.14">
<td class="ltx_td ltx_align_left" id="S4.T2.1.15.14.1">Common Voice 13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.15.14.2">CV13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.15.14.3">Spanish</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.15.14.4">test</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.15.14.5">15,708</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.15.14.6">26.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16.15">
<td class="ltx_td ltx_align_left" id="S4.T2.1.16.15.1">FLEURS</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.16.15.2">Fleurs</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.16.15.3">Spanish</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.16.15.4">all</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.16.15.5">4,112</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.16.15.6">13.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.17.16">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.1.17.16.1">Multilingual LibriSpeech (MLS)</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.1.17.16.2">MLS</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.1.17.16.3">Spanish</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T2.1.17.16.4">test</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S4.T2.1.17.16.5">2,385</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S4.T2.1.17.16.6">10.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents details of the datasets employed in the study. The top half lists the datasets used for fine-tuning the Whisper models for four languages: Basque, Galician, Catalan, and Spanish.  It shows the dataset name, language, split type (train+validation or test), the number of recordings, and the total duration in hours. The bottom half of the table shows the datasets utilized for evaluating the performance of the fine-tuned models.  This includes the same dataset name, language, split, number of recordings, and the total duration in hours.  These evaluation datasets represent both in-distribution (ID) and out-of-distribution (OOD) datasets, to thoroughly assess model generalization capabilities. The AhoMyTTS dataset, used for evaluating Basque, is particularly noted as being a non-public dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Details of the datasets used for fine-tuning (top) and evaluation (bottom).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.11.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T3.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.11.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.11.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T3.11.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.11.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.11.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.11.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.3">+69%<sup class="ltx_sup" id="S5.T3.11.2.1.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.4.1">+73%<sup class="ltx_sup" id="S5.T3.11.2.1.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.5.1">+75%<sup class="ltx_sup" id="S5.T3.11.2.1.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.6.1">+76%<sup class="ltx_sup" id="S5.T3.11.2.1.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.7.1">+76%<sup class="ltx_sup" id="S5.T3.11.2.1.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.7.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.8.1">+74%<sup class="ltx_sup" id="S5.T3.11.2.1.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.8.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.2.1.9"><span class="ltx_text ltx_font_bold" id="S5.T3.11.2.1.9.1">+73%<sup class="ltx_sup" id="S5.T3.11.2.1.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.2.1.9.1.1.1">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.3">+56%<sup class="ltx_sup" id="S5.T3.11.3.2.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.4">+64%<sup class="ltx_sup" id="S5.T3.11.3.2.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.5">+66%<sup class="ltx_sup" id="S5.T3.11.3.2.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.6">+68%<sup class="ltx_sup" id="S5.T3.11.3.2.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.7">+65%<sup class="ltx_sup" id="S5.T3.11.3.2.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.8">+64%<sup class="ltx_sup" id="S5.T3.11.3.2.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.3.2.9">+64%<sup class="ltx_sup" id="S5.T3.11.3.2.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.11.4.3.3.1">+73%<sup class="ltx_sup" id="S5.T3.11.4.3.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.4.3.3.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.4">+71%<sup class="ltx_sup" id="S5.T3.11.4.3.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.5">+65%<sup class="ltx_sup" id="S5.T3.11.4.3.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.6">+69%<sup class="ltx_sup" id="S5.T3.11.4.3.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.7">+71%<sup class="ltx_sup" id="S5.T3.11.4.3.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.8">+70%<sup class="ltx_sup" id="S5.T3.11.4.3.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.4.3.9">+59%<sup class="ltx_sup" id="S5.T3.11.4.3.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.3">+40%<sup class="ltx_sup" id="S5.T3.11.5.4.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.4">+35%<sup class="ltx_sup" id="S5.T3.11.5.4.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.5">+23%<sup class="ltx_sup" id="S5.T3.11.5.4.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.6">+23%<sup class="ltx_sup" id="S5.T3.11.5.4.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.7">+19%<sup class="ltx_sup" id="S5.T3.11.5.4.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.8">+14%<sup class="ltx_sup" id="S5.T3.11.5.4.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.5.4.9"><span class="ltx_text" id="S5.T3.11.5.4.9.1" style="color:#FF0000;">-2%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.11.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.11.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.3.1">+61%<sup class="ltx_sup" id="S5.T3.11.6.5.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.3.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.4.1">+66%<sup class="ltx_sup" id="S5.T3.11.6.5.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.5.1">+66%<sup class="ltx_sup" id="S5.T3.11.6.5.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.6"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.6.1">+68%<sup class="ltx_sup" id="S5.T3.11.6.5.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.7"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.7.1">+64%<sup class="ltx_sup" id="S5.T3.11.6.5.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.7.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.8"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.8.1">+60%<sup class="ltx_sup" id="S5.T3.11.6.5.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.8.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.11.6.5.9"><span class="ltx_text ltx_font_bold" id="S5.T3.11.6.5.9.1">+62%<sup class="ltx_sup" id="S5.T3.11.6.5.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.11.6.5.9.1.1.1">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.3">+59%<sup class="ltx_sup" id="S5.T3.11.7.6.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.4">+63%<sup class="ltx_sup" id="S5.T3.11.7.6.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.5">+62%<sup class="ltx_sup" id="S5.T3.11.7.6.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.6">+62%<sup class="ltx_sup" id="S5.T3.11.7.6.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.7">+60%<sup class="ltx_sup" id="S5.T3.11.7.6.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.8">+58%<sup class="ltx_sup" id="S5.T3.11.7.6.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.7.6.9">+58%<sup class="ltx_sup" id="S5.T3.11.7.6.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.3">+43%<sup class="ltx_sup" id="S5.T3.11.8.7.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.4">+48%<sup class="ltx_sup" id="S5.T3.11.8.7.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.5">+47%<sup class="ltx_sup" id="S5.T3.11.8.7.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.6">+41%<sup class="ltx_sup" id="S5.T3.11.8.7.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.7">+29%<sup class="ltx_sup" id="S5.T3.11.8.7.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.8">+25%<sup class="ltx_sup" id="S5.T3.11.8.7.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.8.7.9">+14%<sup class="ltx_sup" id="S5.T3.11.8.7.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.3">+46%<sup class="ltx_sup" id="S5.T3.11.9.8.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.4">+55%<sup class="ltx_sup" id="S5.T3.11.9.8.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.5">+50%<sup class="ltx_sup" id="S5.T3.11.9.8.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.6">+52%<sup class="ltx_sup" id="S5.T3.11.9.8.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.7">+46%<sup class="ltx_sup" id="S5.T3.11.9.8.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.8">+48%<sup class="ltx_sup" id="S5.T3.11.9.8.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.9.8.9">+49%<sup class="ltx_sup" id="S5.T3.11.9.8.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.3">+48%<sup class="ltx_sup" id="S5.T3.11.10.9.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.4">+39%<sup class="ltx_sup" id="S5.T3.11.10.9.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.5">+11%<sup class="ltx_sup" id="S5.T3.11.10.9.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.6">0%<sup class="ltx_sup" id="S5.T3.11.10.9.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.7"><span class="ltx_text" id="S5.T3.11.10.9.7.1" style="color:#FF0000;">-10%</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.8"><span class="ltx_text" id="S5.T3.11.10.9.8.1" style="color:#FF0000;">-24%<sup class="ltx_sup" id="S5.T3.11.10.9.8.1.1"><span class="ltx_text" id="S5.T3.11.10.9.8.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.10.9.9"><span class="ltx_text" id="S5.T3.11.10.9.9.1" style="color:#FF0000;">-48%<sup class="ltx_sup" id="S5.T3.11.10.9.9.1.1"><span class="ltx_text" id="S5.T3.11.10.9.9.1.1.1" style="color:#000000;">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.3">+57%<sup class="ltx_sup" id="S5.T3.11.11.10.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.4">+50%<sup class="ltx_sup" id="S5.T3.11.11.10.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.5">+32%<sup class="ltx_sup" id="S5.T3.11.11.10.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.6">+32%<sup class="ltx_sup" id="S5.T3.11.11.10.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.7">+28%<sup class="ltx_sup" id="S5.T3.11.11.10.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.8">+21%<sup class="ltx_sup" id="S5.T3.11.11.10.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.10.9">+8%<sup class="ltx_sup" id="S5.T3.11.11.10.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.11.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.11.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.3"><span class="ltx_text" id="S5.T3.11.12.11.3.1" style="color:#FF0000;">-1%<sup class="ltx_sup" id="S5.T3.11.12.11.3.1.1"><span class="ltx_text" id="S5.T3.11.12.11.3.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.4"><span class="ltx_text" id="S5.T3.11.12.11.4.1" style="color:#FF0000;">-6%<sup class="ltx_sup" id="S5.T3.11.12.11.4.1.1"><span class="ltx_text" id="S5.T3.11.12.11.4.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.5"><span class="ltx_text" id="S5.T3.11.12.11.5.1" style="color:#FF0000;">-17%<sup class="ltx_sup" id="S5.T3.11.12.11.5.1.1"><span class="ltx_text" id="S5.T3.11.12.11.5.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.6"><span class="ltx_text" id="S5.T3.11.12.11.6.1" style="color:#FF0000;">-9%<sup class="ltx_sup" id="S5.T3.11.12.11.6.1.1"><span class="ltx_text" id="S5.T3.11.12.11.6.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.7"><span class="ltx_text" id="S5.T3.11.12.11.7.1" style="color:#FF0000;">-15%<sup class="ltx_sup" id="S5.T3.11.12.11.7.1.1"><span class="ltx_text" id="S5.T3.11.12.11.7.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.8"><span class="ltx_text" id="S5.T3.11.12.11.8.1" style="color:#FF0000;">-10%<sup class="ltx_sup" id="S5.T3.11.12.11.8.1.1"><span class="ltx_text" id="S5.T3.11.12.11.8.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.12.11.9"><span class="ltx_text" id="S5.T3.11.12.11.9.1" style="color:#FF0000;">-12%<sup class="ltx_sup" id="S5.T3.11.12.11.9.1.1"><span class="ltx_text" id="S5.T3.11.12.11.9.1.1.1" style="color:#000000;">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T3.11.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T3.11.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.3"><span class="ltx_text" id="S5.T3.11.13.12.3.1" style="color:#FF0000;">-11%<sup class="ltx_sup" id="S5.T3.11.13.12.3.1.1"><span class="ltx_text" id="S5.T3.11.13.12.3.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.4"><span class="ltx_text" id="S5.T3.11.13.12.4.1" style="color:#FF0000;">-14%<sup class="ltx_sup" id="S5.T3.11.13.12.4.1.1"><span class="ltx_text" id="S5.T3.11.13.12.4.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.5"><span class="ltx_text" id="S5.T3.11.13.12.5.1" style="color:#FF0000;">-11%<sup class="ltx_sup" id="S5.T3.11.13.12.5.1.1"><span class="ltx_text" id="S5.T3.11.13.12.5.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.6"><span class="ltx_text" id="S5.T3.11.13.12.6.1" style="color:#FF0000;">-16%<sup class="ltx_sup" id="S5.T3.11.13.12.6.1.1"><span class="ltx_text" id="S5.T3.11.13.12.6.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.7"><span class="ltx_text" id="S5.T3.11.13.12.7.1" style="color:#FF0000;">-12%<sup class="ltx_sup" id="S5.T3.11.13.12.7.1.1"><span class="ltx_text" id="S5.T3.11.13.12.7.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.8"><span class="ltx_text" id="S5.T3.11.13.12.8.1" style="color:#FF0000;">-31%<sup class="ltx_sup" id="S5.T3.11.13.12.8.1.1"><span class="ltx_text" id="S5.T3.11.13.12.8.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T3.11.13.12.9"><span class="ltx_text" id="S5.T3.11.13.12.9.1" style="color:#FF0000;">-40%<sup class="ltx_sup" id="S5.T3.11.13.12.9.1.1"><span class="ltx_text" id="S5.T3.11.13.12.9.1.1.1" style="color:#000000;">c</span></sup></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the relative error reduction achieved by fine-tuning Whisper models compared to their vanilla (untrained) counterparts.  It shows the improvement in WER (Word Error Rate) for four languages (Basque, Galician, Catalan, and Spanish) across various datasets.  The datasets are categorized into in-distribution (ID) and out-of-distribution (OOD) sets, reflecting how well the model generalizes to unseen data.  The highest improvements are highlighted in bold, while negative values (worse performance than vanilla) are shown in red.  Significance levels (p-values) are indicated using superscripts:  'a' for p<0.05, 'b' for p<0.01, and 'c' for p<0.001, with no superscript indicating no statistical significance.
> <details>
> <summary>read the caption</summary>
> Table 3: The relative error reduction for fine-tuned models compared to vanilla models, with ID datasets listed at the top and OOD datasets at the bottom. Values indicating the highest improvements are marked in bold, and negative reductions are highlighted in red. Significance levels are indicated as follows: p⁢a<0.05𝑝a0.05p\textsuperscript{a}<0.05italic_p < 0.05, p⁢b<0.01𝑝b0.01p\textsuperscript{b}<0.01italic_p < 0.01, p⁢c<0.001𝑝c0.001p\textsuperscript{c}<0.001italic_p < 0.001, no-superscript meaning no significance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.11.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T4.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.11.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.11.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T4.11.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.11.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.11.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.11.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.3.1">+37%<sup class="ltx_sup" id="S5.T4.11.2.1.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.3.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.4.1">+45%<sup class="ltx_sup" id="S5.T4.11.2.1.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.5.1">+50%<sup class="ltx_sup" id="S5.T4.11.2.1.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.6.1">+50%<sup class="ltx_sup" id="S5.T4.11.2.1.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.7"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.7.1">+49%<sup class="ltx_sup" id="S5.T4.11.2.1.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.7.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.8"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.8.1">+48%<sup class="ltx_sup" id="S5.T4.11.2.1.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.8.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.2.1.9"><span class="ltx_text ltx_font_bold" id="S5.T4.11.2.1.9.1">+51%<sup class="ltx_sup" id="S5.T4.11.2.1.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.2.1.9.1.1.1">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.3">+32%<sup class="ltx_sup" id="S5.T4.11.3.2.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.4">+39%<sup class="ltx_sup" id="S5.T4.11.3.2.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.5">+40%<sup class="ltx_sup" id="S5.T4.11.3.2.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.6">+39%<sup class="ltx_sup" id="S5.T4.11.3.2.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.7">+35%<sup class="ltx_sup" id="S5.T4.11.3.2.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.8">+33%<sup class="ltx_sup" id="S5.T4.11.3.2.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.3.2.9">+38%<sup class="ltx_sup" id="S5.T4.11.3.2.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.3">+14%<sup class="ltx_sup" id="S5.T4.11.4.3.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.4">+14%<sup class="ltx_sup" id="S5.T4.11.4.3.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.5">+11%<sup class="ltx_sup" id="S5.T4.11.4.3.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.6">0%<sup class="ltx_sup" id="S5.T4.11.4.3.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.7">+4%<sup class="ltx_sup" id="S5.T4.11.4.3.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.8">+7%<sup class="ltx_sup" id="S5.T4.11.4.3.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.4.3.9">+7%<sup class="ltx_sup" id="S5.T4.11.4.3.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.3">+22%<sup class="ltx_sup" id="S5.T4.11.5.4.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.4">+24%<sup class="ltx_sup" id="S5.T4.11.5.4.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.5">+25%<sup class="ltx_sup" id="S5.T4.11.5.4.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.6">+23%<sup class="ltx_sup" id="S5.T4.11.5.4.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.7">+19%<sup class="ltx_sup" id="S5.T4.11.5.4.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.8">+19%<sup class="ltx_sup" id="S5.T4.11.5.4.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.5.4.9">+18%<sup class="ltx_sup" id="S5.T4.11.5.4.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.11.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.11.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.3">+9%<sup class="ltx_sup" id="S5.T4.11.6.5.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.4.1">+29%<sup class="ltx_sup" id="S5.T4.11.6.5.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.5"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.5.1">+23%<sup class="ltx_sup" id="S5.T4.11.6.5.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.6"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.6.1">+34%<sup class="ltx_sup" id="S5.T4.11.6.5.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.7"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.7.1">+30%<sup class="ltx_sup" id="S5.T4.11.6.5.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.7.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.8"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.8.1">+31%<sup class="ltx_sup" id="S5.T4.11.6.5.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.8.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.11.6.5.9"><span class="ltx_text ltx_font_bold" id="S5.T4.11.6.5.9.1">+30%<sup class="ltx_sup" id="S5.T4.11.6.5.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.6.5.9.1.1.1">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.3"><span class="ltx_text ltx_font_bold" id="S5.T4.11.7.6.3.1">+21%<sup class="ltx_sup" id="S5.T4.11.7.6.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.11.7.6.3.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.4">+22%<sup class="ltx_sup" id="S5.T4.11.7.6.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.5">+22%<sup class="ltx_sup" id="S5.T4.11.7.6.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.6">+22%<sup class="ltx_sup" id="S5.T4.11.7.6.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.7">+20%<sup class="ltx_sup" id="S5.T4.11.7.6.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.8">+20%<sup class="ltx_sup" id="S5.T4.11.7.6.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.7.6.9">+23%<sup class="ltx_sup" id="S5.T4.11.7.6.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.3">+14%<sup class="ltx_sup" id="S5.T4.11.8.7.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.4">+15%<sup class="ltx_sup" id="S5.T4.11.8.7.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.5">+8%<sup class="ltx_sup" id="S5.T4.11.8.7.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.6"><span class="ltx_text" id="S5.T4.11.8.7.6.1" style="color:#FF0000;">-3%<sup class="ltx_sup" id="S5.T4.11.8.7.6.1.1"><span class="ltx_text" id="S5.T4.11.8.7.6.1.1.1" style="color:#000000;">a</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.7"><span class="ltx_text" id="S5.T4.11.8.7.7.1" style="color:#FF0000;">-2%<sup class="ltx_sup" id="S5.T4.11.8.7.7.1.1"><span class="ltx_text" id="S5.T4.11.8.7.7.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.8"><span class="ltx_text" id="S5.T4.11.8.7.8.1" style="color:#FF0000;">-1%<sup class="ltx_sup" id="S5.T4.11.8.7.8.1.1"><span class="ltx_text" id="S5.T4.11.8.7.8.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.8.7.9"><span class="ltx_text" id="S5.T4.11.8.7.9.1" style="color:#FF0000;">-4%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.3">+21%<sup class="ltx_sup" id="S5.T4.11.9.8.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.4">+20%<sup class="ltx_sup" id="S5.T4.11.9.8.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.5">+20%<sup class="ltx_sup" id="S5.T4.11.9.8.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.6">+16%<sup class="ltx_sup" id="S5.T4.11.9.8.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.7">+16%<sup class="ltx_sup" id="S5.T4.11.9.8.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.8">+15%<sup class="ltx_sup" id="S5.T4.11.9.8.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.9.8.9">+14%<sup class="ltx_sup" id="S5.T4.11.9.8.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.3">+13%<sup class="ltx_sup" id="S5.T4.11.10.9.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.4">+12%<sup class="ltx_sup" id="S5.T4.11.10.9.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.5">+12%<sup class="ltx_sup" id="S5.T4.11.10.9.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.6">+5%<sup class="ltx_sup" id="S5.T4.11.10.9.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.7"><span class="ltx_text" id="S5.T4.11.10.9.7.1" style="color:#FF0000;">-1%<sup class="ltx_sup" id="S5.T4.11.10.9.7.1.1"><span class="ltx_text" id="S5.T4.11.10.9.7.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.8">+1%<sup class="ltx_sup" id="S5.T4.11.10.9.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.10.9.9">+7%<sup class="ltx_sup" id="S5.T4.11.10.9.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.3">+19%<sup class="ltx_sup" id="S5.T4.11.11.10.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.4">+18%<sup class="ltx_sup" id="S5.T4.11.11.10.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.5">+19%<sup class="ltx_sup" id="S5.T4.11.11.10.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.6">+13%<sup class="ltx_sup" id="S5.T4.11.11.10.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.7">+13%<sup class="ltx_sup" id="S5.T4.11.11.10.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.8">+13%<sup class="ltx_sup" id="S5.T4.11.11.10.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.11.10.9">+12%<sup class="ltx_sup" id="S5.T4.11.11.10.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.11.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.11.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.3">+7%<sup class="ltx_sup" id="S5.T4.11.12.11.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.4">+5%<sup class="ltx_sup" id="S5.T4.11.12.11.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.5"><span class="ltx_text" id="S5.T4.11.12.11.5.1" style="color:#FF0000;">-8%</span></td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.6">+1%<sup class="ltx_sup" id="S5.T4.11.12.11.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.7">0%<sup class="ltx_sup" id="S5.T4.11.12.11.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.8">0%<sup class="ltx_sup" id="S5.T4.11.12.11.8.1">b</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T4.11.12.11.9"><span class="ltx_text" id="S5.T4.11.12.11.9.1" style="color:#FF0000;">-1%<sup class="ltx_sup" id="S5.T4.11.12.11.9.1.1"><span class="ltx_text" id="S5.T4.11.12.11.9.1.1.1" style="color:#000000;">b</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.11.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T4.11.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T4.11.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.3">+4%<sup class="ltx_sup" id="S5.T4.11.13.12.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.4">+9%<sup class="ltx_sup" id="S5.T4.11.13.12.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.5"><span class="ltx_text" id="S5.T4.11.13.12.5.1" style="color:#FF0000;">-2%<sup class="ltx_sup" id="S5.T4.11.13.12.5.1.1"><span class="ltx_text" id="S5.T4.11.13.12.5.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.6"><span class="ltx_text" id="S5.T4.11.13.12.6.1" style="color:#FF0000;">-9%<sup class="ltx_sup" id="S5.T4.11.13.12.6.1.1"><span class="ltx_text" id="S5.T4.11.13.12.6.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.7"><span class="ltx_text" id="S5.T4.11.13.12.7.1" style="color:#FF0000;">-5%<sup class="ltx_sup" id="S5.T4.11.13.12.7.1.1"><span class="ltx_text" id="S5.T4.11.13.12.7.1.1.1" style="color:#000000;">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.8"><span class="ltx_text" id="S5.T4.11.13.12.8.1" style="color:#FF0000;">-17%</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T4.11.13.12.9"><span class="ltx_text" id="S5.T4.11.13.12.9.1" style="color:#FF0000;">-10%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the relative improvement in Word Error Rate (WER) achieved by adding a 5-gram language model to already fine-tuned Whisper ASR models.  The improvements are calculated relative to the WER of the fine-tuned models without the language model, offering a clear view of the additional gains from language model integration.  The table is organized with in-distribution (ID) datasets at the top and out-of-distribution (OOD) datasets at the bottom, for each of four languages.  The highest WER improvements are highlighted in bold, while negative values (worse performance) are shown in red.  Statistical significance (p-values) are indicated for each improvement: superscript 'a' denotes p<0.05, 'b' denotes p<0.01, and 'c' denotes p<0.001; the absence of a superscript means that the improvement is not statistically significant.
> <details>
> <summary>read the caption</summary>
> Table 4: The relative error reduction for fine-tuned models with a 5-gram language model compared with the previous fine-tuned results without the language model. ID datasets are listed at the top, and OOD datasets are listed at the bottom. Values indicating the highest improvements are marked in bold, and negative reductions are highlighted in red. Significance levels are indicated as follows: p⁢a<0.05𝑝a0.05p\textsuperscript{a}<0.05italic_p < 0.05, p⁢b<0.01𝑝b0.01p\textsuperscript{b}<0.01italic_p < 0.01, p⁢c<0.001𝑝c0.001p\textsuperscript{c}<0.001italic_p < 0.001, no-superscript meaning no significance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.11.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T5.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.11.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.11.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T5.11.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.11.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.11.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.11.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.3.1">+18%<sup class="ltx_sup" id="S5.T5.11.2.1.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.3.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.4.1">+20%<sup class="ltx_sup" id="S5.T5.11.2.1.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.5.1">+23%<sup class="ltx_sup" id="S5.T5.11.2.1.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.6.1">+19%<sup class="ltx_sup" id="S5.T5.11.2.1.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.7"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.7.1">+16%<sup class="ltx_sup" id="S5.T5.11.2.1.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.7.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.8"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.8.1">+16%<sup class="ltx_sup" id="S5.T5.11.2.1.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.8.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.2.1.9"><span class="ltx_text ltx_font_bold" id="S5.T5.11.2.1.9.1">+16%<sup class="ltx_sup" id="S5.T5.11.2.1.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.2.1.9.1.1.1">c</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.3">+8%<sup class="ltx_sup" id="S5.T5.11.3.2.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.4">+9%<sup class="ltx_sup" id="S5.T5.11.3.2.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.5">+7%<sup class="ltx_sup" id="S5.T5.11.3.2.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.6">+6%<sup class="ltx_sup" id="S5.T5.11.3.2.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.7">+1%<sup class="ltx_sup" id="S5.T5.11.3.2.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.8">+3%<sup class="ltx_sup" id="S5.T5.11.3.2.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.3.2.9">+4%<sup class="ltx_sup" id="S5.T5.11.3.2.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.3">+6%<sup class="ltx_sup" id="S5.T5.11.4.3.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.4">+6%<sup class="ltx_sup" id="S5.T5.11.4.3.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.5">+5%<sup class="ltx_sup" id="S5.T5.11.4.3.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.4.3.6.1">+1%</span><sup class="ltx_sup" id="S5.T5.11.4.3.6.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.7">+3%<sup class="ltx_sup" id="S5.T5.11.4.3.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.8">+4%<sup class="ltx_sup" id="S5.T5.11.4.3.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.4.3.9">+3%<sup class="ltx_sup" id="S5.T5.11.4.3.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.3">+7%<sup class="ltx_sup" id="S5.T5.11.5.4.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.4">+8%<sup class="ltx_sup" id="S5.T5.11.5.4.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.5">+6%<sup class="ltx_sup" id="S5.T5.11.5.4.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.6">+6%<sup class="ltx_sup" id="S5.T5.11.5.4.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.7">+5%<sup class="ltx_sup" id="S5.T5.11.5.4.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.8">+4%<sup class="ltx_sup" id="S5.T5.11.5.4.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.5.4.9">+4%<sup class="ltx_sup" id="S5.T5.11.5.4.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.11.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.11.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.3">
<span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T5.11.6.5.3.1">+18%</span><sup class="ltx_sup" id="S5.T5.11.6.5.3.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.4"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.4.1">+17%<sup class="ltx_sup" id="S5.T5.11.6.5.4.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.4.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.5"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.5.1">+19%<sup class="ltx_sup" id="S5.T5.11.6.5.5.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.5.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.6"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.6.1">+17%<sup class="ltx_sup" id="S5.T5.11.6.5.6.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.6.1.1.1">c</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.7"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.7.1">+16%<sup class="ltx_sup" id="S5.T5.11.6.5.7.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.7.1.1.1">b</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.8"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.8.1">+16%<sup class="ltx_sup" id="S5.T5.11.6.5.8.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.8.1.1.1">b</span></sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.11.6.5.9"><span class="ltx_text ltx_font_bold" id="S5.T5.11.6.5.9.1">+15%<sup class="ltx_sup" id="S5.T5.11.6.5.9.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.11.6.5.9.1.1.1">a</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.3">+15%<sup class="ltx_sup" id="S5.T5.11.7.6.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.4">+15%<sup class="ltx_sup" id="S5.T5.11.7.6.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.5">+15%<sup class="ltx_sup" id="S5.T5.11.7.6.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.6">+12%<sup class="ltx_sup" id="S5.T5.11.7.6.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.7">+11%<sup class="ltx_sup" id="S5.T5.11.7.6.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.8">+11%<sup class="ltx_sup" id="S5.T5.11.7.6.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.7.6.9">+11%<sup class="ltx_sup" id="S5.T5.11.7.6.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.3">+9%<sup class="ltx_sup" id="S5.T5.11.8.7.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.4">+8%<sup class="ltx_sup" id="S5.T5.11.8.7.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.5">+7%<sup class="ltx_sup" id="S5.T5.11.8.7.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.8.7.6.1">+5%</span><sup class="ltx_sup" id="S5.T5.11.8.7.6.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.8.7.7.1">+4%</span><sup class="ltx_sup" id="S5.T5.11.8.7.7.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.8.7.8.1">+3%</span><sup class="ltx_sup" id="S5.T5.11.8.7.8.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.8.7.9">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.8.7.9.1">+2%</span><sup class="ltx_sup" id="S5.T5.11.8.7.9.2">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.3">+9%<sup class="ltx_sup" id="S5.T5.11.9.8.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.4">+8%<sup class="ltx_sup" id="S5.T5.11.9.8.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.5">+7%<sup class="ltx_sup" id="S5.T5.11.9.8.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.6">+4%<sup class="ltx_sup" id="S5.T5.11.9.8.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.7">+5%<sup class="ltx_sup" id="S5.T5.11.9.8.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.8">+4%<sup class="ltx_sup" id="S5.T5.11.9.8.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.9.8.9">+7%<sup class="ltx_sup" id="S5.T5.11.9.8.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.3">+9%<sup class="ltx_sup" id="S5.T5.11.10.9.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.4">+9%<sup class="ltx_sup" id="S5.T5.11.10.9.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.5">+7%<sup class="ltx_sup" id="S5.T5.11.10.9.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.6">+5%<sup class="ltx_sup" id="S5.T5.11.10.9.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.10.9.7.1">+4%</span><sup class="ltx_sup" id="S5.T5.11.10.9.7.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.10.9.8.1">+5%</span><sup class="ltx_sup" id="S5.T5.11.10.9.8.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.10.9.9">+4%<sup class="ltx_sup" id="S5.T5.11.10.9.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.3">+8%<sup class="ltx_sup" id="S5.T5.11.11.10.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.4">+10%<sup class="ltx_sup" id="S5.T5.11.11.10.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.5">+8%<sup class="ltx_sup" id="S5.T5.11.11.10.5.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.6">+5%<sup class="ltx_sup" id="S5.T5.11.11.10.6.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.7">+4%<sup class="ltx_sup" id="S5.T5.11.11.10.7.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.8">+7%<sup class="ltx_sup" id="S5.T5.11.11.10.8.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.11.10.9">+4%<sup class="ltx_sup" id="S5.T5.11.11.10.9.1">c</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.11.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.11.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.3">+4%<sup class="ltx_sup" id="S5.T5.11.12.11.3.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.4">+4%<sup class="ltx_sup" id="S5.T5.11.12.11.4.1">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.12.11.5.1">+2%</span><sup class="ltx_sup" id="S5.T5.11.12.11.5.2">b</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.12.11.6.1">+1%</span><sup class="ltx_sup" id="S5.T5.11.12.11.6.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.12.11.7.1">+2%</span><sup class="ltx_sup" id="S5.T5.11.12.11.7.2">c</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.12.11.8.1">+1%</span><sup class="ltx_sup" id="S5.T5.11.12.11.8.2">a</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T5.11.12.11.9">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.12.11.9.1">0%</span><sup class="ltx_sup" id="S5.T5.11.12.11.9.2">b</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T5.11.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T5.11.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.3.1">+8%</span><sup class="ltx_sup" id="S5.T5.11.13.12.3.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.4.1">+12%</span><sup class="ltx_sup" id="S5.T5.11.13.12.4.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.5.1">+9%</span><sup class="ltx_sup" id="S5.T5.11.13.12.5.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.6.1">+3%</span><sup class="ltx_sup" id="S5.T5.11.13.12.6.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.7.1">+8%</span><sup class="ltx_sup" id="S5.T5.11.13.12.7.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.8.1">+7%</span><sup class="ltx_sup" id="S5.T5.11.13.12.8.2">c</sup>
</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T5.11.13.12.9">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.11.13.12.9.1">+2%</span><sup class="ltx_sup" id="S5.T5.11.13.12.9.2">c</sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the relative error reduction achieved by integrating large language models (LLMs) with fine-tuned Whisper models.  It compares the performance improvement against a baseline of fine-tuned models without any language model integration. The table shows results for both in-distribution (ID) and out-of-distribution (OOD) datasets, highlighting the improvements made by the addition of LLMs.  The best improvements are indicated in bold. Underlined values represent cases where LLM integration provided better performance than n-gram language model integration (from a previous part of the study).  Statistical significance of the improvements is indicated using superscripts: a for p<0.05, b for p<0.01, and c for p<0.001.  The absence of a superscript indicates that the improvement was not statistically significant.
> <details>
> <summary>read the caption</summary>
> Table 5: The relative error reduction for fine-tuned models with a large language model compared with the fine-tuned results without any language model. ID datasets are listed at the top, and OOD datasets are listed at the bottom. Values indicating the biggest improvements are marked in bold, and values that improved over 5-gram LM results are underlined. Significance levels are indicated as follows: p⁢a<0.05𝑝a0.05p\textsuperscript{a}<0.05italic_p < 0.05, p⁢b<0.01𝑝b0.01p\textsuperscript{b}<0.01italic_p < 0.01, p⁢c<0.001𝑝c0.001p\textsuperscript{c}<0.001italic_p < 0.001, no-superscript meaning no significance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.3.1">LM Corpus</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.4.1">LLM Corpus</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.1.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.2.1.3">79.82%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.2.1.4">36.34%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.3.2.3">79.04%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.3.2.4">36.40%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.4.3.3">7.39%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.4.3.4">17.53%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.5.4.3">77.09%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.5.4.4">83.87%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.1.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.6.5.3">13.39%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.6.5.4">11.19%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.7.6.3">0.25%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.7.6.4">0.27%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.8.7.3">0.00%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.8.7.4">0.00%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.9.8.3">0.88%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.9.8.4">0.81%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.10.9.3">0.00%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.10.9.4">0.00%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.11.10.3">0.33%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.11.10.4">0.92%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="S5.T6.1.12.11.3">0.00%</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.12.11.4">0.00%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T6.1.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T6.1.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T6.1.13.12.3">0.00%</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S5.T6.1.13.12.4">4.23%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a corpora leakage analysis, assessing the overlap between sentences from the evaluation datasets and the training corpora used for both n-gram and large language models.  It quantifies the extent of potential data leakage, which is crucial for ensuring the integrity and reliability of the evaluation results. High overlap may indicate data leakage, potentially biasing the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Percentage of sentences from evaluation datasets found in the training corpora of n-gram and large language models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T7.1.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.3">97.93</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.4">92.86</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.5">71.72</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.6">58.27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.7">50.84</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.8">43.20</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.2.1.9">38.85</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.3">51.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.4">46.31</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.5">29.37</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.6">20.31</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.7">17.84</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.8">15.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.3.2.9">12.46</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.3">52.94</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.4">41.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.5">25.22</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.6">17.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.7">15.98</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.8">14.94</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.4.3.9">13.67</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.3">27.69</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.4">18.39</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.5">9.70</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.6">6.38</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.7">5.81</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.8">5.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.5.4.9">4.38</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T7.1.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.3">91.65</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.4">84.91</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.5">67.66</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.6">56.81</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.7">48.20</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.8">41.16</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.1.6.5.9">36.67</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.3">93.55</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.4">91.82</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.5">72.59</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.6">61.72</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.7">55.01</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.8">48.87</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.7.6.9">45.92</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.3">48.04</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.4">40.53</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.5">24.94</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.6">16.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.7">14.87</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.8">12.41</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.8.7.9">10.06</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.3">52.12</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.4">46.75</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.5">31.76</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.6">24.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.7">21.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.8">19.77</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.9.8.9">17.20</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.3">40.74</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.4">27.68</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.5">14.20</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.6">8.57</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.7">7.42</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.8">6.18</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.10.9.9">5.68</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.3">41.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.4">29.95</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.5">16.21</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.6">10.38</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.7">9.09</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.8">7.90</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.11.10.9">7.86</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.3">27.70</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.4">22.02</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.5">17.46</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.6">15.78</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.7">15.44</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.8">15.15</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.12.11.9">15.01</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T7.1.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T7.1.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.3">17.33</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.4">11.45</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.5">6.58</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.6">4.62</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.7">4.34</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.8">3.71</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T7.1.13.12.9">2.92</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rate (WER) for the four languages evaluated (Basque, Galician, Catalan, and Spanish) across seven different Whisper model sizes (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3).  The WER values show the performance of the original, unmodified Whisper models, providing a baseline for comparison with the fine-tuned and language model integrated results presented in subsequent tables.  Lower WER values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 7: WER scores for Whisper vanilla models without any modifications or fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.1.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.3">30.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.4">24.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.5">17.72</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.6">14.03</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.7">12.11</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.8">11.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.2.1.9">10.52</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.3">22.69</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.4">16.71</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.5">9.94</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.6">6.44</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.7">6.27</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.8">5.50</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.3.2.9">4.55</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.3">14.55</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.4">11.85</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.5">8.78</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.6">5.40</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.7">4.69</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.8">4.52</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.4.3.9">5.56</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.3">16.61</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.4">11.90</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.5">7.32</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.6">4.92</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.7">4.69</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.8">4.43</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.5.4.9">4.46</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.1.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.3">35.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.4">29.17</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.5">23.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.6">18.22</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.7">17.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.8">16.62</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T8.1.6.5.9">13.96</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.3">38.55</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.4">34.36</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.5">27.51</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.6">23.19</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.7">22.15</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.8">20.54</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.7.6.9">19.14</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.3">27.41</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.4">21.00</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.5">13.24</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.6">9.68</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.7">10.60</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.8">9.26</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.8.7.9">8.61</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.3">27.96</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.4">21.06</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.5">15.75</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.6">11.55</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.7">11.50</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.8">10.37</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.9.8.9">8.81</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.3">21.32</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.4">16.81</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.5">12.68</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.6">8.58</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.7">8.16</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.8">7.69</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.10.9.9">8.38</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.3">17.63</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.4">15.04</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.5">11.04</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.6">7.01</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.7">6.55</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.8">6.26</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.11.10.9">7.20</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.3">28.02</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.4">23.26</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.5">20.41</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.6">17.25</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.7">17.69</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.8">16.61</td>
<td class="ltx_td ltx_align_right" id="A1.T8.1.12.11.9">16.87</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T8.1.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T8.1.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.3">19.25</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.4">13.04</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.5">7.28</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.6">5.34</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.7">4.86</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.8">4.87</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T8.1.13.12.9">4.08</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rates (WER) achieved by fine-tuned Whisper models across various languages and datasets.  It shows the WER for each of seven different model sizes (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) across four languages (Basque, Galician, Catalan, Spanish).  The WERs are given for both in-distribution (ID) and out-of-distribution (OOD) datasets to demonstrate the generalization capabilities of the fine-tuned models. Lower WER values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 8: WER scores of fine-tuned models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.1.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.3">18.99</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.4">13.70</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.5">8.84</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.6">7.07</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.7">6.17</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.8">5.88</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.1.9">5.15</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.3">15.34</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.4">10.16</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.5">5.97</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.6">3.90</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.7">4.05</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.8">3.68</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.2.9">2.80</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.3">12.54</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.4">10.18</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.5">7.77</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.6">5.41</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.7">4.49</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.8">4.19</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.3.9">5.16</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.3">12.94</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.4">8.99</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.5">5.50</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.6">3.77</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.7">3.78</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.8">3.57</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.4.9">3.67</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.1.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.3">32.38</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.4">20.69</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.5">17.77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.6">12.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.7">12.35</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.8">11.49</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.6.5.9">9.74</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.3">30.59</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.4">26.76</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.5">21.38</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.6">18.01</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.7">17.66</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.8">16.43</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.6.9">14.83</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.3">23.59</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.4">17.94</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.5">12.21</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.6">9.95</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.7">10.82</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.8">9.38</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.7.9">8.94</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.3">22.20</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.4">16.79</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.5">12.62</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.6">9.69</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.7">9.70</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.8">8.80</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.8.9">7.59</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.3">18.56</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.4">14.82</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.5">11.21</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.6">8.13</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.7">8.23</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.8">7.65</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.9.9">7.83</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.3">14.35</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.4">12.38</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.5">8.96</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.6">6.09</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.7">5.71</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.8">5.45</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.10.9">6.32</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.3">25.93</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.4">22.14</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.5">22.01</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.6">17.15</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.7">17.76</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.8">16.67</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.11.9">17.01</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T9.1.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T9.1.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.3">18.50</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.4">11.81</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.5">7.44</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.6">5.81</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.7">5.09</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.8">5.69</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T9.1.13.12.9">4.49</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rate (WER) achieved by integrating n-gram language models with the fine-tuned Whisper models.  It displays WER scores for four languages (Basque, Galician, Catalan, and Spanish) across seven different model sizes (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3). The WER values show the performance improvement after adding n-gram language models to the already fine-tuned Whisper models.  Lower WER values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 9: WER scores of fine-tuned models with the n-gram language model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.2.1.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.1.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.3">24.73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.4">19.96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.5">13.60</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.6">11.40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.7">10.15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.8">9.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.2.1.9">8.87</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.3.2.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.3">20.77</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.4">15.20</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.5">9.24</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.6">6.08</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.7">6.21</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.8">5.31</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.3.2.9">4.37</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.4.3.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.3">13.70</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.4">11.14</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.5">8.37</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.6">5.34</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.7">4.55</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.8">4.35</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.4.3.9">5.38</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.5.4.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.3">15.41</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.4">10.98</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.5">6.89</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.6">4.65</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.7">4.48</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.8">4.26</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.5.4.9">4.30</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.6.5.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.1.6.5.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.3">29.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.4">24.14</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.5">18.77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.6">15.18</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.7">14.85</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.8">14.02</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T10.1.6.5.9">11.84</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.7.6.1">Basque</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.7.6.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.3">32.77</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.4">29.25</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.5">23.27</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.6">20.51</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.7">19.68</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.8">18.29</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.7.6.9">17.01</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.8.7.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.8.7.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.3">25.01</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.4">19.25</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.5">12.27</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.6">9.21</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.7">10.16</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.8">8.97</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.8.7.9">8.40</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.9.8.1">Galician</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.9.8.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.3">25.58</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.4">19.41</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.5">14.62</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.6">11.07</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.7">10.97</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.8">9.91</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.9.8.9">8.20</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.10.9.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.3">19.39</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.4">15.30</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.5">11.85</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.6">8.15</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.7">7.82</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.8">7.29</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.10.9.9">8.02</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.11.10.1">Catalan</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.11.10.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.3">16.24</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.4">13.51</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.5">10.14</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.6">6.67</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.7">6.26</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.8">5.85</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.11.10.9">6.92</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.12.11.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.3">26.89</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.4">22.32</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.5">19.99</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.6">17.03</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.7">17.34</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.8">16.45</td>
<td class="ltx_td ltx_align_right" id="A1.T10.1.12.11.9">16.81</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T10.1.13.12.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T10.1.13.12.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.3">17.71</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.4">11.51</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.5">6.60</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.6">5.20</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.7">4.49</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.8">4.54</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T10.1.13.12.9">3.98</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rate (WER) achieved by fine-tuned Whisper models after integrating large language models (LLMs). It shows WER scores for various models (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) across different languages (Basque, Galician, Catalan, Spanish) and datasets (Common Voice, AhoMyTTS, OpenSLR, FLEURS, MLS), comparing the performance with and without the LLM.
> <details>
> <summary>read the caption</summary>
> Table 10: WER scores of fine-tuned models with the large language model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T11.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T11.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T11.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T11.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.3.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T11.3.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T11.3.2.1.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T11.3.2.1.2">CV13</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.3">+16%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.4">+20%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.5">+23%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.6">+22%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.7">+22%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.8">+20%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T11.3.2.1.9">+25%</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.3.3.2.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T11.3.3.2.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.3">+6%</td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.4">+5%</td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.5">+1%</td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.6"><span class="ltx_text" id="A1.T11.3.3.2.6.1" style="color:#FF0000;">-3%</span></td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.7"><span class="ltx_text" id="A1.T11.3.3.2.7.1" style="color:#FF0000;">-4%</span></td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.8"><span class="ltx_text" id="A1.T11.3.3.2.8.1" style="color:#FF0000;">-1%</span></td>
<td class="ltx_td ltx_align_right" id="A1.T11.3.3.2.9"><span class="ltx_text" id="A1.T11.3.3.2.9.1" style="color:#FF0000;">-7%</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T11.3.4.3.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T11.3.4.3.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.3">+9%</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.4">+3%</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.5"><span class="ltx_text" id="A1.T11.3.4.3.5.1" style="color:#FF0000;">-16%</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.6"><span class="ltx_text" id="A1.T11.3.4.3.6.1" style="color:#FF0000;">-63%</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.7"><span class="ltx_text" id="A1.T11.3.4.3.7.1" style="color:#FF0000;">-52%</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.8"><span class="ltx_text" id="A1.T11.3.4.3.8.1" style="color:#FF0000;">-29%</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T11.3.4.3.9"><span class="ltx_text" id="A1.T11.3.4.3.9.1" style="color:#FF0000;">-47%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the relative improvement in word error rate (WER) achieved by integrating a 5-gram language model with vanilla (un-tuned) Spanish Whisper models of various sizes.  The WER of the vanilla model serves as the baseline.  Positive values indicate WER reduction (improvement), while negative values (shown in red) indicate WER increases (degradation) after language model integration.
> <details>
> <summary>read the caption</summary>
> Table 11: The relative error reduction for vanilla Spanish models with a 5-gram language model compared with the original vanilla results without the language model. Negative reductions are highlighted in red.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T12.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T12.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T12.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T12.1.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.1.2.1.1.1">Spanish</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T12.1.2.1.2"><span class="ltx_text ltx_font_italic" id="A1.T12.1.2.1.2.1">CV13</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.3">23.35</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.4">14.63</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.5">7.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.6">4.96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.7">4.53</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.8">4.14</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T12.1.2.1.9">3.30</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.3.2.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T12.1.3.2.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.3">26.08</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.4">20.92</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.5">17.35</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.6">16.29</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.7">16.04</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.8">15.24</td>
<td class="ltx_td ltx_align_right" id="A1.T12.1.3.2.9">16.04</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T12.1.4.3.1">Spanish</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T12.1.4.3.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.3">15.85</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.4">11.16</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.5">7.61</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.6">7.54</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.7">6.58</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.8">4.80</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T12.1.4.3.9">4.28</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents Word Error Rate (WER) scores for Spanish language models.  These are the vanilla (untuned) Whisper models that have been integrated with an n-gram language model. The WER scores are shown for various model sizes (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) and different datasets (Common Voice 13, Fleurs, MLS). Lower WER scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 12: WER scores of vanilla with the n-gram language model for Spanish.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T13.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T13.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T13.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T13.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T13.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T13.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T13.1.2.1.2"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.2.1">CV13</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.3"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.3.1">97.93</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.4"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.4.1">92.86</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.5"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.5.1">71.72</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.6"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.6.1">58.27</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.7"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.7.1">50.84</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.8"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.8.1">43.20</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.2.1.9"><span class="ltx_text ltx_font_italic" id="A1.T13.1.2.1.9.1">38.85</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.3.2.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.3">105.52</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.4">98.45</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.5">83.90</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.6">65.70</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.7">57.92</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.8">50.29</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.3.2.9">42.98</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.4.3.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.3">98.03</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.4">92.93</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.5">71.83</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.6">58.32</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.7">50.93</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.8">43.26</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.4.3.9">38.90</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.5.4.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.3">101.67</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.4">98.75</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.5">71.72</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.6">58.09</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.7">50.47</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.8">43.44</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.5.4.9">39.10</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.6.5.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.6.5.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.3">136.73</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.4">116.79</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.5">112.40</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.6">93.08</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.7">72.92</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.8">68.22</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.6.5.9">41.67</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.7.6.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.7.6.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.3">105.31</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.4">96.03</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.5">72.17</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.6">58.30</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.7">50.82</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.8">43.21</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.7.6.9">38.87</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.8.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T13.1.8.7.2"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.2.1">AhoMyTTS</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.3"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.3.1">91.65</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.4"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.4.1">84.91</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.5"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.5.1">67.66</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.6"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.6.1">56.81</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.7"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.7.1">48.20</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.8"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.8.1">41.16</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.8.7.9"><span class="ltx_text ltx_font_italic" id="A1.T13.1.8.7.9.1">36.67</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.9.8.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.9.8.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.3">103.68</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.4">92.90</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.5">73.78</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.6">64.11</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.7">54.78</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.8">45.27</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.9.8.9">39.59</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.10.9.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.10.9.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.3">91.97</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.4">85.64</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.5">68.14</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.6">57.67</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.7">48.90</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.8">41.94</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.10.9.9">37.27</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.11.10.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.11.10.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.3">100.66</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.4">87.81</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.5">67.56</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.6">56.40</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.7">47.81</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.8">41.33</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.11.10.9">36.54</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.12.11.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.12.11.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.3">118.92</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.4">99.55</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.5">87.24</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.6">73.77</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.7">56.52</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.8">46.43</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.12.11.9">37.13</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.13.12.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.13.12.2">AhoMyTTS</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.3">93.63</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.4">84.94</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.5">67.66</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.6">56.81</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.7">48.20</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.8">41.16</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.13.12.9">36.67</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.14.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T13.1.14.13.2"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.2.1">SLR76</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.3"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.3.1">93.55</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.4"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.4.1">91.82</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.5"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.5.1">72.59</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.6"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.6.1">61.72</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.7"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.7.1">55.01</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.8"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.8.1">48.87</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T13.1.14.13.9"><span class="ltx_text ltx_font_italic" id="A1.T13.1.14.13.9.1">45.92</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.15.14.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.15.14.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.3">101.32</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.4">97.20</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.5">78.16</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.6">67.34</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.7">59.85</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.8">54.34</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.15.14.9">48.20</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.16.15.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.16.15.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.3">93.77</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.4">92.12</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.5">72.97</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.6">62.08</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.7">55.40</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.8">49.21</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.16.15.9">46.28</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.17.16.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.17.16.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.3">98.85</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.4">98.46</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.5">72.65</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.6">62.00</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.7">55.00</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.8">48.85</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.17.16.9">46.15</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.18.17.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T13.1.18.17.2">SLR76</th>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.3">126.77</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.4">103.16</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.5">96.94</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.6">80.50</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.7">64.62</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.8">57.74</td>
<td class="ltx_td ltx_align_right" id="A1.T13.1.18.17.9">47.58</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T13.1.19.18.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T13.1.19.18.2">SLR76</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.3">95.15</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.4">90.22</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.5">72.43</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.6">61.67</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.7">55.01</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.8">48.87</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T13.1.19.18.9">45.92</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on Basque language speech recognition using the Whisper model.  The study systematically removes or modifies various evaluation parameters (beam search, diacritics, timestamps, language specification, and temperature scheduler) to isolate their impact on Word Error Rate (WER). The WER scores are reported for several different Whisper model sizes (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) and for three different test datasets (CV13, AhoMyTTS, SLR76), providing a comprehensive evaluation of the influence of each parameter on the performance of the model under varying conditions.
> <details>
> <summary>read the caption</summary>
> Table 13: WER scores in the ablation study results for the Basque language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T14.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T14.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T14.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T14.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T14.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T14.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T14.1.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T14.1.2.1.2"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.2.1">CV13</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.3"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.3.1">51.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.4"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.4.1">46.31</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.5"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.5.1">29.37</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.6"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.6.1">20.31</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.7"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.7.1">17.84</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.8"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.8.1">15.26</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.1.9"><span class="ltx_text ltx_font_italic" id="A1.T14.1.2.1.9.1">12.46</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.3.2.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.3">59.72</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.4">53.33</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.5">31.91</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.6">21.61</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.7">19.19</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.8">16.60</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.2.9">12.86</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.4.3.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.3">55.66</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.4">50.51</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.5">32.90</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.6">23.03</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.7">20.10</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.8">17.53</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.3.9">14.64</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.5.4.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.3">54.85</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.4">49.13</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.5">30.08</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.6">20.33</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.7">17.99</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.8">15.25</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.4.9">12.36</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.6.5.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.6.5.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.3">66.79</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.4">60.08</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.5">51.36</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.6">50.33</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.7">50.96</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.8">48.26</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.5.9">22.47</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.7.6.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.7.6.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.3">51.21</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.4">45.74</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.5">29.46</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.6">20.39</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.7">17.87</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.8">15.27</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.6.9">12.46</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T14.1.8.7.1"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T14.1.8.7.2"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.2.1">Fleurs</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.3"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.3.1">48.04</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.4"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.4.1">40.53</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.5"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.5.1">24.94</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.6"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.6.1">16.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.7"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.7.1">14.87</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.8"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.8.1">12.41</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.7.9"><span class="ltx_text ltx_font_italic" id="A1.T14.1.8.7.9.1">10.06</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.9.8.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.9.8.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.3">54.33</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.4">43.68</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.5">26.97</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.6">17.54</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.7">15.73</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.8">13.25</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.9.8.9">10.26</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.10.9.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.3">51.77</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.4">44.26</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.5">28.14</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.6">18.96</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.7">17.03</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.8">14.47</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.9.9">12.10</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.11.10.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.11.10.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.3">49.03</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.4">41.45</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.5">25.08</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.6">16.68</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.7">14.72</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.8">12.38</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.10.9">10.06</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.12.11.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.3">58.05</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.4">51.41</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.5">43.72</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.6">38.18</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.7">40.49</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.8">33.35</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.11.9">13.72</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.13.12.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.13.12.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.3">46.36</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.4">40.17</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.5">24.95</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.6">16.48</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.7">14.87</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.8">12.41</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.12.9">10.06</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T14.1.14.13.1"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T14.1.14.13.2"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.2.1">SLR77</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.3"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.3.1">52.12</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.4"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.4.1">46.75</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.5"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.5.1">31.76</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.6"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.6.1">24.26</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.7"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.7.1">21.28</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.8"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.8.1">19.77</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.14.13.9"><span class="ltx_text ltx_font_italic" id="A1.T14.1.14.13.9.1">17.20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.15.14.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.15.14.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.3">59.15</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.4">51.74</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.5">34.43</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.6">25.48</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.7">22.44</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.8">21.16</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.15.14.9">17.30</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.16.15.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.16.15.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.3">55.53</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.4">50.22</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.5">34.48</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.6">26.41</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.7">22.93</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.8">21.40</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.16.15.9">18.81</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.17.16.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.17.16.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.3">54.46</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.4">49.21</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.5">31.98</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.6">24.06</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.7">21.06</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.8">19.60</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.16.9">16.79</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T14.1.18.17.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T14.1.18.17.2">SLR77</th>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.3">64.57</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.4">59.62</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.5">47.66</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.6">41.57</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.7">46.69</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.8">39.78</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.17.9">21.73</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T14.1.19.18.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T14.1.19.18.2">SLR77</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.3">51.88</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.4">46.67</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.5">31.77</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.6">24.27</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.7">21.28</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.8">19.77</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T14.1.19.18.9">17.20</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of various evaluation parameters on the performance of the Galician language model.  It shows Word Error Rates (WER) for different configurations of the Whisper model, including variations in beam size, treatment of diacritics, use of timestamps, language specification, and temperature scheduling. The baseline configuration is compared to variations where each parameter is individually disabled.  This allows assessment of the contribution of each parameter to overall model accuracy.
> <details>
> <summary>read the caption</summary>
> Table 14: WER scores in the ablation study results for the Galician language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T15.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T15.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T15.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T15.1.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T15.1.2.1.2"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.2.1">CV13</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.3"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.3.1">52.94</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.4"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.4.1">41.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.5"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.5.1">25.22</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.6"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.6.1">17.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.7"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.7.1">15.98</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.8"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.8.1">14.94</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.9"><span class="ltx_text ltx_font_italic" id="A1.T15.1.2.1.9.1">13.67</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.3.2.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.3">65.85</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.4">50.82</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.5">29.59</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.6">19.29</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.7">17.33</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.8">16.43</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.9">14.33</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.4.3.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.3">54.13</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.4">42.53</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.5">25.94</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.6">18.06</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.7">16.46</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.8">15.35</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.9">14.11</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.5.4.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.3">57.82</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.4">45.92</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.5">26.03</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.6">17.80</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.7">15.86</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.8">15.28</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.9">13.75</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.6.5.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.6.5.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.3">74.81</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.4">58.13</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.5">35.63</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.6">27.18</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.7">23.88</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.8">24.51</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.9">16.59</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.7.6.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.7.6.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.3">52.03</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.4">41.10</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.5">25.23</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.6">17.45</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.7">15.98</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.8">14.94</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.9">13.67</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T15.1.8.7.1"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T15.1.8.7.2"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.2.1">Fleurs</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.3"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.3.1">40.74</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.4"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.4.1">27.68</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.5"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.5.1">14.20</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.6"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.6.1">8.57</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.7"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.7.1">7.42</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.8"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.8.1">6.18</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.8.7.9"><span class="ltx_text ltx_font_italic" id="A1.T15.1.8.7.9.1">5.68</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.9.8.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.9.8.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.3">51.04</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.4">34.07</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.5">16.52</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.6">9.22</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.7">8.01</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.8">6.77</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.9">5.95</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.10.9.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.3">42.08</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.4">28.80</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.5">14.81</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.6">8.97</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.7">7.77</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.8">6.45</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.9">5.96</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.11.10.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.11.10.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.3">42.90</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.4">29.30</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.5">14.51</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.6">8.39</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.7">7.37</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.8">6.27</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.9">5.67</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.12.11.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.3">57.32</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.4">40.61</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.5">26.86</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.6">15.05</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.7">15.36</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.8">10.24</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.9">6.97</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.13.12.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.13.12.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.3">40.16</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.4">27.17</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.5">14.20</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.6">8.57</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.7">7.40</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.8">6.18</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.9">5.68</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T15.1.14.13.1"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T15.1.14.13.2"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.2.1">SLR69</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.3"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.3.1">41.26</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.4"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.4.1">29.95</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.5"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.5.1">16.21</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.6"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.6.1">10.38</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.7"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.7.1">9.09</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.8"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.8.1">7.90</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.14.13.9"><span class="ltx_text ltx_font_italic" id="A1.T15.1.14.13.9.1">7.86</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.15.14.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.15.14.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.3">51.58</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.4">35.80</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.5">18.55</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.6">11.11</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.7">9.53</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.8">8.63</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.9">8.02</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.16.15.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.16.15.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.3">42.66</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.4">31.08</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.5">17.06</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.6">10.96</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.7">9.67</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.8">8.34</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.9">8.39</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.17.16.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.17.16.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.3">42.76</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.4">31.13</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.5">16.28</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.6">10.34</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.7">8.89</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.8">8.03</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.9">7.79</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.18.17.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T15.1.18.17.2">SLR69</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.3">54.55</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.4">39.15</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.5">18.86</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.6">13.71</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.7">11.38</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.8">10.41</td>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.9">8.93</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T15.1.19.18.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T15.1.19.18.2">SLR69</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.3">41.25</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.4">29.53</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.5">16.21</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.6">10.38</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.7">9.09</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.8">7.90</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T15.1.19.18.9">7.83</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on Catalan language data. It shows how Word Error Rate (WER) changes when individual evaluation parameters (beam search, diacritics, timestamps, language specification, and temperature scheduler) are removed or altered. The baseline configuration uses a beam size of 5, diacritics removed, timestamps excluded, the language provided to the model, and a single temperature value of 0.  The table displays WER scores for various models (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) under different parameter settings.  This allows for analysis of each parameter's individual effect on WER.
> <details>
> <summary>read the caption</summary>
> Table 15: WER scores in the ablation study results for the Catalan language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T16.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T16.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T16.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T16.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.2.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.3.1">Tiny</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.4.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.5.1">Small</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.6.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.7.1">Large</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.8.1">L-V2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T16.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T16.1.1.1.9.1">L-V3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T16.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T16.1.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T16.1.2.1.2"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.2.1">CV13</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.3"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.3.1">27.69</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.4"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.4.1">18.39</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.5"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.5.1">9.70</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.6"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.6.1">6.38</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.7"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.7.1">5.81</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.8"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.8.1">5.16</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.2.1.9"><span class="ltx_text ltx_font_italic" id="A1.T16.1.2.1.9.1">4.38</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.3.2.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.3.2.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.3">38.01</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.4">23.54</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.5">11.31</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.6">6.99</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.7">6.31</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.8">5.72</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.3.2.9">4.52</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.4.3.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.4.3.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.3">28.67</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.4">19.23</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.5">10.33</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.6">6.93</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.7">6.36</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.8">5.63</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.4.3.9">4.82</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.5.4.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.5.4.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.3">31.27</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.4">20.23</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.5">9.86</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.6">6.47</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.7">5.85</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.8">5.42</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.5.4.9">4.30</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.6.5.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.6.5.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.3">29.94</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.4">19.74</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.5">10.31</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.6">6.88</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.7">6.24</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.8">5.53</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.6.5.9">4.60</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.7.6.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.7.6.2">CV13</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.3">28.25</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.4">18.56</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.5">9.76</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.6">6.40</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.7">5.83</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.8">5.21</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.7.6.9">4.38</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T16.1.8.7.1"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T16.1.8.7.2"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.2.1">Fleurs</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.3"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.3.1">27.70</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.4"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.4.1">22.02</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.5"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.5.1">17.46</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.6"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.6.1">15.78</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.7"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.7.1">15.44</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.8"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.8.1">15.15</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.8.7.9"><span class="ltx_text ltx_font_italic" id="A1.T16.1.8.7.9.1">15.01</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.9.8.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.9.8.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.3">32.04</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.4">24.05</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.5">18.03</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.6">15.87</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.7">15.56</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.8">15.32</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.9.8.9">14.95</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.10.9.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.10.9.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.3">28.30</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.4">22.44</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.5">17.74</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.6">15.97</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.7">15.63</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.8">15.33</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.10.9.9">15.14</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.11.10.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.11.10.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.3">31.25</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.4">79.01</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.5">17.64</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.6">15.71</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.7">15.06</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.8">14.59</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.11.10.9">14.94</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.12.11.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.12.11.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.3">33.19</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.4">27.37</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.5">18.77</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.6">15.78</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.7">15.44</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.8">15.15</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.12.11.9">15.02</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.13.12.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.13.12.2">Fleurs</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.3">27.70</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.4">22.02</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.5">17.46</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.6">15.78</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.7">15.44</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.8">15.15</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.13.12.9">14.96</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T16.1.14.13.1"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.1.1">Baseline</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T16.1.14.13.2"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.2.1">MLS</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.3"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.3.1">17.33</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.4"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.4.1">11.45</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.5"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.5.1">6.58</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.6"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.6.1">4.62</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.7"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.7.1">4.34</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.8"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.8.1">3.71</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T16.1.14.13.9"><span class="ltx_text ltx_font_italic" id="A1.T16.1.14.13.9.1">2.92</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.15.14.1">No Beam Size</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.15.14.2">MLS</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.3">20.73</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.4">13.26</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.5">7.24</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.6">5.22</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.7">4.48</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.8">3.70</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.15.14.9">2.85</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.16.15.1">Diacritics</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.16.15.2">MLS</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.3">18.81</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.4">12.67</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.5">7.53</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.6">5.41</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.7">5.08</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.8">4.42</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.16.15.9">3.86</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.17.16.1">Timestamps</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.17.16.2">MLS</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.3">18.20</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.4">11.96</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.5">7.05</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.6">4.48</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.7">4.22</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.8">3.93</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.17.16.9">2.80</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T16.1.18.17.1">No Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T16.1.18.17.2">MLS</th>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.3">17.53</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.4">11.53</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.5">6.77</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.6">4.88</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.7">4.79</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.8">3.90</td>
<td class="ltx_td ltx_align_right" id="A1.T16.1.18.17.9">2.93</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T16.1.19.18.1">Temp. Scheduler</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T16.1.19.18.2">MLS</th>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.3">17.33</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.4">11.45</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.5">6.58</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.6">4.62</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.7">4.21</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.8">3.56</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A1.T16.1.19.18.9">2.89</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rate (WER) scores obtained from an ablation study conducted on Spanish language data.  The study systematically removed or altered various parameters used during the evaluation process to understand their individual impact on the model's performance.  The parameters evaluated included beam search size, diacritics, timestamps, language specification, and temperature scheduling.  The table displays the WER for each model size (Tiny, Base, Small, Medium, Large, Large-V2, Large-V3) and parameter configuration, allowing for a comparison of performance under different evaluation conditions. The baseline configuration includes a beam size of 5, diacritics removed, timestamps excluded, language provided to the model, and a temperature of 0.0.
> <details>
> <summary>read the caption</summary>
> Table 16: WER scores in the ablation study results for the Spanish language.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23542/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23542/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}