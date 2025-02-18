---
title: "HermesFlow: Seamlessly Closing the Gap in Multimodal Understanding and Generation"
summary: "HermesFlow seamlessly bridges the understanding-generation gap in MLLMs using a novel Pair-DPO framework and self-play optimization on homologous data, achieving significant performance improvements."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12148 {{< /keyword >}}
{{< keyword icon="writer" >}} Ling Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12148" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12148" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12148/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multimodal large language models (MLLMs) struggle with a significant discrepancy between their comprehension and generation abilities.  This limitation hinders the development of truly versatile and powerful AI systems capable of seamlessly integrating understanding and creative content generation.  Existing methods often focus on improving one aspect while neglecting the other, resulting in an imbalance that restricts overall performance.



The research introduces HermesFlow, a novel framework designed to resolve this issue.  HermesFlow employs a technique called Pair-DPO (Direct Preference Optimization) which leverages paired preference data to simultaneously improve both understanding and generation capabilities.  By using a self-play optimization strategy and iteratively refining the model's understanding and generation preference, HermesFlow achieves significant improvement in closing the gap, outperforming existing state-of-the-art models in various benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multimodal LLMs typically exhibit a significant gap between their understanding and generation capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} HermesFlow, a new framework, effectively narrows this gap by aligning multimodal understanding and generation using homologous preference data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Pair-DPO and self-play iterative optimization significantly improve both understanding and generation performance in MLLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is significant because it **identifies and addresses a critical gap** in the capabilities of current multimodal large language models (MLLMs). By proposing a novel framework, it offers **practical solutions** for improving the alignment between understanding and generation tasks, opening up **new avenues for research** and development in the field.  The findings are highly relevant to the current focus on unified multimodal models and have implications for building more versatile and robust AI systems.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.7.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.7.7.7.7.8">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.7.7.7.7.9"># Params</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1">POPE<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2.2">MME<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3.3">Flickr30k<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5.5.5">VQAv2<math alttext="{}_{\text{(test)}}" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.4.m1.1a"><msub id="S4.T1.4.4.4.4.4.m1.1.1" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml"><mi id="S4.T1.4.4.4.4.4.m1.1.1a" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml"></mi><mtext id="S4.T1.4.4.4.4.4.m1.1.1.1" xref="S4.T1.4.4.4.4.4.m1.1.1.1a.cmml">(test)</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1"><ci id="S4.T1.4.4.4.4.4.m1.1.1.1a.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1.1"><mtext id="S4.T1.4.4.4.4.4.m1.1.1.1.cmml" mathsize="70%" xref="S4.T1.4.4.4.4.4.m1.1.1.1">(test)</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.4.m1.1c">{}_{\text{(test)}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.4.m1.1d">start_FLOATSUBSCRIPT (test) end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.5.m2.1"><semantics id="S4.T1.5.5.5.5.5.m2.1a"><mo id="S4.T1.5.5.5.5.5.m2.1.1" stretchy="false" xref="S4.T1.5.5.5.5.5.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.5.m2.1b"><ci id="S4.T1.5.5.5.5.5.m2.1.1.cmml" xref="S4.T1.5.5.5.5.5.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.5.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.5.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.6.6.6.6">GQA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.7.7.7.7.7">MMMU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.7.7.7.8.1.1">Gemini-Nano-1 <cite class="ltx_cite ltx_citemacro_citep">(Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib34" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.2">1.8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.6">62.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.8.1.8">26.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.9.2.1">CoDI <cite class="ltx_cite ltx_citemacro_citep">(Tang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib32" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.5">12.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.9.2.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.10.3.1">Emu <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib31" title="">2024c</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.5">77.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.6">57.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.10.3.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.11.4.1">NExT-GPT <cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib41" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.5">84.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.6">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.11.4.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.12.5.1">SEED-X <cite class="ltx_cite ltx_citemacro_citep">(Ge et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.2">17B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.3">84.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.4">1435.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.5">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.7">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.12.5.8">35.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.13.6.1">DreamLLM <cite class="ltx_cite ltx_citemacro_citep">(Dong et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib2" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.6">72.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.13.6.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.14.7.1">Chameleon <cite class="ltx_cite ltx_citemacro_citep">(Team, <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib33" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.2">34B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.5">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.6">66.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.14.7.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.15.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.7.7.15.8.1">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.2">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.3">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.4">1232.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.5">67.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.6">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.7">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.15.8.8">27.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7.16.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.7.7.7.16.9.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.7.16.9.1.1">HermesFlow (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.2" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.2.1" style="background-color:#ECECEC;">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.3" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.3.1" style="background-color:#ECECEC;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.4" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.4.1" style="background-color:#ECECEC;">1249.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.5" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.5.1" style="background-color:#ECECEC;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.6" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.6.1" style="background-color:#ECECEC;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.7" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.7.1" style="background-color:#ECECEC;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.16.9.8" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T1.7.7.7.16.9.8.1" style="background-color:#ECECEC;">28.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of various multimodal large language models (MLLMs) on several benchmark tasks designed to evaluate multimodal understanding capabilities.  The results show the performance of each model across different metrics, including the number of parameters used.  The baseline data for comparison is taken from the Show-o model, as referenced in Xie et al. (2024a).  This table allows readers to assess the relative strengths and weaknesses of different MLLMs in terms of their ability to understand multimodal inputs, highlighting the state-of-the-art performance in the field.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation on multimodal understanding benchmarks. The baseline data is quoted from Show-o (Xie et al., 2024a).
> </details>





### In-depth insights


#### Multimodal Gap
The concept of a "Multimodal Gap" in the context of large language models (LLMs) highlights **a critical performance discrepancy between an LLM's understanding and generation capabilities in multimodal contexts**.  The paper likely explores this gap by analyzing how these models perform differently on tasks requiring visual understanding (e.g., image captioning, visual question answering) versus visual generation (e.g., image synthesis from text prompts).  **This disparity suggests that current LLMs are more proficient at interpreting and analyzing multimodal inputs compared to actually creating novel multimodal outputs.** The research probably investigates the root causes behind this gap and explores potential solutions.  **One key aspect might be the inherent differences in training data and methodologies used for understanding and generation tasks.** Understanding often relies on large-scale datasets with labeled information, while generation relies on more complex approaches that might be more data-hungry. Ultimately, the findings will provide crucial insights into developing more balanced and powerful multimodal LLMs by addressing this gap, leading to significant advancements in various AI applications.

#### Pair-DPO Training
The proposed Pair-DPO (Pairwise Direct Preference Optimization) training method is a **novel approach** designed to bridge the gap between multimodal understanding and generation capabilities within large language models (LLMs).  Unlike traditional DPO, which focuses on optimizing either understanding or generation separately, Pair-DPO leverages **homologous data** (paired understanding and generation preferences) to simultaneously improve both.  This simultaneous optimization aims to **harmoniously align** the model's capabilities, reducing the inherent imbalance often observed where understanding surpasses generation.  The effectiveness of Pair-DPO stems from its ability to learn from paired preferences, creating a more balanced and coherent training process. This technique appears particularly promising given the limitations of simply increasing training data for one capability without impacting the other. The iterative refinement within Pair-DPO further enhances this balance, progressively closing the performance gap between understanding and generation tasks, leading to a more robust and versatile multimodal LLM.

#### Iterative Alignment
Iterative alignment, in the context of multimodal understanding and generation, represents a powerful strategy to progressively refine the model's capabilities.  It suggests a cyclical process where initial understanding and generation attempts are evaluated, and the feedback is used to iteratively improve both tasks. This iterative refinement is particularly valuable because understanding and generation are interdependent; improvements in one often lead to improvements in the other. **The core idea is to use homologous data (data pairs with shared semantic meaning across modalities) to create a feedback loop.** Through this, discrepancies between the model's understanding and generation performance can be detected and addressed with each cycle.  **The key strength lies in its ability to learn from inherent model biases and data imbalances without requiring external high-quality data.** This makes iterative alignment methods highly efficient and suitable for real-world applications where perfectly balanced datasets are hard to obtain.  The self-play aspect often incorporated, further enhancing the learning process by leveraging the model's own outputs as training material.  **This self-supervised refinement leads to a more robust and refined model, bridging the gap between understanding and generation for superior performance across various multimodal tasks.**

#### Homologous Data
The concept of "Homologous Data" in the context of multimodal understanding and generation is crucial.  It refers to **paired data points** where both inputs (image and text) and outputs (captions and generated images) share a fundamental semantic similarity or relationship.  This homologous nature allows for a direct comparison of understanding and generation capabilities within the same semantic space, revealing performance gaps and enabling targeted improvements.  **Curating homologous data** involves carefully selecting paired inputs, generating multiple homologous outputs (e.g., captions, images), and filtering these outputs based on similarity metrics (like BERT similarity for captions or self-VQA scoring for images) to identify high-quality homologous pairs.  This process ensures that model performance on both tasks is evaluated under comparable conditions, effectively measuring and mitigating inherent biases which would skew results if non-homologous data were used.  This strategy helps to directly address the gap between understanding and generation by providing a framework for aligning the model's capabilities across different modalities.  The efficacy of the proposed approach hinges upon the quality and representativeness of the homologous data in capturing the nuances of multimodal understanding and generation tasks.

#### Future of MLLMs
The future of Multimodal Large Language Models (MLLMs) is bright, but hinges on overcoming current limitations.  **Bridging the gap between understanding and generation capabilities** is crucial; current models often excel at one while lagging in the other.  **Research focusing on data-efficient training and alignment techniques**, such as the Pair-DPO method presented in the paper, will be key to creating more balanced and versatile models.  **Iterative optimization and self-improvement frameworks** are promising avenues for enhancing both understanding and generative performance without needing massive datasets.  Further exploration of **homologous data curation** and the synergy between understanding and generation tasks will be vital. The development of more effective **evaluation metrics** is crucial for assessing MLLM capabilities accurately.  Addressing issues such as bias and ethical considerations will be paramount to ensuring responsible development and deployment.  The integration of MLLMs into real-world applications will also drive future innovation, necessitating the development of robust and efficient architectures. Finally, **unifying multimodal understanding and generation within a single, streamlined framework** presents a significant challenge with immense potential rewards for advancing AI.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.2.2.2.3"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.2.2.2.4"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.2.2.2.5"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S4.T2.1.1.1.1.1">GenEval<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2.2">DPG-Bench<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" colspan="2" id="S4.T2.2.2.2.3.1.1">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.3.1.2">#params</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.3">Single Obj.</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.4">Two Obj.</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.5">Counting</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.6">Colors</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.7">Position</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.8">Color Attri.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.3.1.9">Overall</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3.1.10">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" colspan="2" id="S4.T2.2.2.2.4.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.4.2.1.1">Diffusion Model</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.2.4.2.2"></th>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.8"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.2.2.2.4.2.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.4.2.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.5.3">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.5.3.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.5.3.2">LDM <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.5.3.3">1.4B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.4">0.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.5">0.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.6">0.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.7">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.8">0.02</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.9">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.5.3.10">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5.3.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.6.4">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.6.4.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.6.4.2">DALL-E 2 <cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib26" title="">2022</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.6.4.3">4.2B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.4">0.94</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.6">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.8">0.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.9">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.6.4.10">0.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6.4.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.7.5">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.7.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.7.5.2">SD 1.5 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.7.5.3">860M</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.4">0.94</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.5">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.6">0.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.7">0.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.8">0.05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.9">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.7.5.10">0.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7.5.11">63.18</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.8.6">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.8.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.8.6.2">SD 2.1 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.8.6.3">865M</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.5">0.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.6">0.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.7">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.8">0.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.9">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.8.6.10">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8.6.11">68.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" colspan="2" id="S4.T2.2.2.2.9.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.9.7.1.1">Autoregressive Model</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.2.9.7.2"></th>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.8"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.2.2.2.9.7.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.2.2.9.7.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.10.8">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.10.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.10.8.2">LlamaGen <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib30" title="">2024b</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.10.8.3">775M</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.4">0.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.5">0.25</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.6">0.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.7">0.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.8">0.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.9">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.10.8.10">0.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10.8.11">65.16</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.11.9">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.11.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.11.9.2">Emu <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib31" title="">2024c</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.11.9.3">14B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.4">0.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.5">0.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.6">0.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.7">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.8">0.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.9">0.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.11.9.10">0.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11.9.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.12.10">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.12.10.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.12.10.2">Chameleon <cite class="ltx_cite ltx_citemacro_citep">(Team, <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib33" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.12.10.3">34B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.4">0.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.5">0.39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.6">0.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.7">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.8">0.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.9">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.12.10.10">0.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12.10.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.13.11">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.13.11.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.13.11.2">LWM <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib19" title="">2024b</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.13.11.3">7B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.4">0.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.5">0.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.6">0.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.7">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.8">0.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.9">0.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.13.11.10">0.47</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.13.11.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.14.12">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.14.12.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.14.12.2">SEED-X <cite class="ltx_cite ltx_citemacro_citep">(Ge et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib5" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.14.12.3">17B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.5">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.6">0.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.7">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.8">0.19</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.9">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.14.12.10">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.14.12.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.15.13">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.15.13.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.15.13.2">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.15.13.3">1.3B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.4">0.95</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.5">0.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.6">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.7">0.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.8">0.11</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.9">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.15.13.10">0.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.15.13.11">67.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.16.14">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.16.14.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.16.14.2">Janus <cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib39" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.16.14.3">1.3B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.5">0.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.6">0.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.16.14.7.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.16.14.8.1">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.9">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.16.14.10">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.16.14.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2.17.15">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.2.17.15.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.2.2.17.15.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.2.1">HermesFlow (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.2.2.17.15.3" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T2.2.2.2.17.15.3.1" style="background-color:#ECECEC;">1.3B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.4" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.4.1" style="background-color:#ECECEC;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.5" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.5.1" style="background-color:#ECECEC;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.6" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.6.1" style="background-color:#ECECEC;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.7" style="background-color:#ECECEC;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.17.15.7.1" style="background-color:#ECECEC;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.8" style="background-color:#ECECEC;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.17.15.8.1" style="background-color:#ECECEC;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.9" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.9.1" style="background-color:#ECECEC;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.2.17.15.10" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.10.1" style="background-color:#ECECEC;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.17.15.11" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.17.15.11.1" style="background-color:#ECECEC;">70.22</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of various models' performance on two visual generation benchmarks: GenEval and DPG-Bench.  GenEval assesses multiple aspects of image generation quality, including the handling of single and multiple objects, color accuracy, positional accuracy, and attribute representation. DPG-Bench provides an overall assessment of image generation capabilities. The table lists various models, their parameter counts, and their scores on each sub-task and the overall performance metrics of the two benchmarks. This allows for a comparison of different models across various visual generation aspects.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation on visual generation benchmarks: GenEval (Ghosh et al., 2024) and DPG-Bench (Hu et al., 2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.2.2.2.3">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.4"># Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">CLIP-Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.2.3.1.1">LDM <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.2">1.4B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.3">12.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.4.2.1">DALL·E 2 <cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib26" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4.2.2">6.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4.2.3">10.39</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4.2.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.5.3.1">SD 1.5 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.2">860M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.3">9.62</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.4">30.23</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.6.4.1">SD 2.1 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib27" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.2">865M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.3">8.03</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.4">30.87</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.2.7.5.1">LlamaGen <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib30" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.7.5.2">775M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.7.5.3">9.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.7.5.4">29.12</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.8.6.1">Emu <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib31" title="">2024c</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.8.6.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.8.6.3">11.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.8.6.4">28.98</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.9.7.1">LWM <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib19" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.9.7.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.9.7.3">12.68</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.9.7.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.10.8.1">SEED-X <cite class="ltx_cite ltx_citemacro_citep">(Ge et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.10.8.2">17B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.10.8.3">14.99</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.10.8.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.11.9.1">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.11.9.2">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.11.9.3">9.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.11.9.4">30.63</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.2.2.12.10.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.12.10.1.1">HermesFlow (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.2.12.10.2" style="background-color:#ECECEC;"><span class="ltx_text" id="S4.T3.2.2.12.10.2.1" style="background-color:#ECECEC;">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.2.12.10.3" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.12.10.3.1" style="background-color:#ECECEC;">9.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.2.12.10.4" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.12.10.4.1" style="background-color:#ECECEC;">31.08</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating different models on the MSCOCO dataset using two metrics: Fréchet Inception Distance (FID) and CLIP score.  Lower FID scores indicate better image quality (more similar to real images), and higher CLIP scores indicate better image-text alignment. The table compares the performance of HermesFlow against several other models and shows its FID and CLIP score for zero-shot generation.
> <details>
> <summary>read the caption</summary>
> Table 3: MSCOCO zero-shot FID and CLIP-Score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3.5"># Params</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1">Understanding Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.2">Generation Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3.3">Gap <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.4.1.1">VILA-U <cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib42" title="">2024c</a>)</cite> <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.1.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.1.3">0.646</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.1.4">0.477</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.1.5">0.169</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.5.2.1">Janus <cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib39" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.2.2">1.3B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.2.3">0.599</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.2.4">0.417</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.2.5">0.182</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.3.3.6.3.1">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.3.2">1.3B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.3.3">0.520</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.3.4">0.433</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.3.5">0.087</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.3.3.7.4.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.7.4.1.1">HermesFlow (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.7.4.2" style="background-color:#ECECEC;"><span class="ltx_text" id="S5.T4.3.3.7.4.2.1" style="background-color:#ECECEC;">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.7.4.3" style="background-color:#ECECEC;"><span class="ltx_text" id="S5.T4.3.3.7.4.3.1" style="background-color:#ECECEC;">0.533</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.7.4.4" style="background-color:#ECECEC;"><span class="ltx_text" id="S5.T4.3.3.7.4.4.1" style="background-color:#ECECEC;">0.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.7.4.5" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.7.4.5.1" style="background-color:#ECECEC;">0.036</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table quantitatively assesses the performance gap between multimodal understanding and generation capabilities in various Multimodal Large Language Models (MLLMs).  It presents the understanding and generation scores for several MLLMs, calculated using a standardized pipeline.  The 'Gap' column shows the difference between the understanding and generation scores, highlighting the relative strengths and weaknesses of each model in these two aspects.  A smaller gap indicates a more balanced performance between understanding and generation. The data in the table helps illustrate the common phenomenon observed in the paper, that understanding capabilities of MLLMs typically outperform their generation capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative assess of MLLM’s Understanding and Generation Gap.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.5.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.5.5.5.6.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T5.5.5.5.6.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.5.5.5.6.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T5.5.5.5.6.1.3">Understanding Bench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.5.5.5.6.1.4">Generation Bench</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" colspan="2" id="S5.T5.5.5.5.5.6">Methods</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.1.1">POPE<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.2.2">MME<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.3.3.3.3.3">MMMU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.4.4">GenEval (Overall)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.5.5">DPG-Bench (Average)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.5.5.m1.1"><semantics id="S5.T5.5.5.5.5.5.m1.1a"><mo id="S5.T5.5.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T5.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.5.5.m1.1b"><ci id="S5.T5.5.5.5.5.5.m1.1.1.cmml" xref="S5.T5.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.7.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.5.5.5.7.2.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.5.5.5.7.2.2">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12148v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.7.2.3">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.7.2.4">1232.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.5.5.7.2.5">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.7.2.6">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.7.2.7">67.48</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.8.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.5.5.5.8.3.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.5.5.5.8.3.2">DPO (Understanding)</th>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.8.3.3">80.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.8.3.4">1242.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.5.8.3.5">27.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.8.3.6">0.58</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.8.3.7">67.88</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.9.4">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.5.5.5.9.4.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.5.5.5.9.4.2">DPO (Generation)</th>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.9.4.3">80.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.9.4.4">1239.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.5.9.4.5">27.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.9.4.6">0.70</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.9.4.7">70.03</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.10.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.5.5.5.10.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.5.5.5.10.5.2">Pair-DPO (Iter. 0) (Show-o)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.10.5.3">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.10.5.4">1232.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.5.5.5.10.5.5">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.10.5.6">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.10.5.7">67.48</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.11.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.5.5.5.11.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.5.5.5.11.6.2">Pair-DPO (Iter. 1)</th>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.11.6.3">81.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.11.6.4">1246.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.5.11.6.5">28.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.11.6.6">0.68</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.11.6.7">70.19</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.12.7">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.5.5.5.12.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.5.5.5.12.7.2">Pair-DPO (Iter. 2)</th>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.12.7.3">81.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.12.7.4">1248.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.5.5.5.12.7.5">28.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.12.7.6">0.69</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.12.7.7">70.21</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5.13.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T5.5.5.5.13.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T5.5.5.5.13.8.2">Pair-DPO (Iter. 3)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.13.8.3" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.13.8.3.1" style="background-color:#ECECEC;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.13.8.4" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.13.8.4.1" style="background-color:#ECECEC;">1249.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.5.5.5.13.8.5" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.13.8.5.1" style="background-color:#ECECEC;">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.13.8.6" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.13.8.6.1" style="background-color:#ECECEC;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.5.5.5.13.8.7" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.13.8.7.1" style="background-color:#ECECEC;">70.22</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of three different optimization methods: standard DPO focusing solely on understanding, standard DPO focusing solely on generation, and the proposed Pair-DPO method.  It shows the impact of applying Pair-DPO iteratively, demonstrating performance improvements across multiple multimodal understanding and generation benchmarks (POPE, MME, MMMU, GenEval, and DPG-Bench) with each iteration.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of Pair-DPO vs. DPO and the Effect of Pair-DPO Iterations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12148/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12148/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}