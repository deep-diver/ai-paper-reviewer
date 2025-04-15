---
title: "LLM-SRBench: A New Benchmark for Scientific Equation Discovery with Large Language Models"
summary: "LLM-SRBench: A new benchmark to evaluate scientific equation discovery with LLMs, preventing memorization and ensuring true reasoning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Virginia Tech",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10415 {{< /keyword >}}
{{< keyword icon="writer" >}} Parshin Shojaee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10415" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10415" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10415/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scientific equation discovery is crucial, but evaluating LLMs' capabilities is challenging due to memorization in existing benchmarks. This paper introduces LLM-SRBench to address this. It's a comprehensive benchmark of 239 challenging problems across scientific domains. Current benchmarks often rely on common equations that LLMs memorize, leading to inflated performance metrics. LLM-SRBench comprises two main categories: LSR-Transform, transforming common models, and LSR-Synth, introducing synthetic problems for reasoning. 



LLM-SRBench is designed to prevent trivial memorization and evaluate true discovery capabilities. Through extensive evaluations, the authors find that the best-performing system achieves only 31.5% symbolic accuracy. This underscores the challenges and highlights LLM-SRBench as a valuable resource. By using custom problems the research ensures rigorous evaluation and positions their custom dataset as a foundation for advancing LLM-based scientific equation discovery.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLM-SRBench: a benchmark with 239 problems for scientific equation discovery. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Benchmark design using alternative mathematical representations and synthetic problems to evaluate LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show LLMs achieve performance peaks at 31%, showcasing the challenges. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important as it **addresses limitations of LLM evaluation**. By introducing LLM-SRBench, the research **provides a valuable tool** for the community to benchmark and advance LLM-based equation discovery. It fosters innovation and a deeper understanding of LLMs' scientific reasoning.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.22.22">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.22.22.23.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T1.22.22.23.1.1"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.22.22.23.1.1.1" style="font-size:90%;">Data set</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.22.22.23.1.2"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.22.22.23.1.2.1" style="font-size:90%;">Naive</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.22.22.23.1.3"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.22.22.23.1.3.1" style="font-size:90%;">Flexible</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.22.22.23.1.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.22.22.23.1.4.1" style="font-size:90%;">Better?</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.3.3.3.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.3.3.3.4.1" style="font-size:90%;">Breast</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.1.1.1.1.1" style="font-size:90%;">95.9</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.1.m1.1.1" mathsize="90%" xref="S2.T1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S2.T1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.1.1.1.1.2" style="font-size:90%;"> 0.2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.2.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.2.2.2.2.1" style="font-size:90%;">96.7</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.2.2.2.2.m1.1"><semantics id="S2.T1.2.2.2.2.m1.1a"><mo id="S2.T1.2.2.2.2.m1.1.1" mathsize="90%" xref="S2.T1.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S2.T1.2.2.2.2.m1.1.1.cmml" xref="S2.T1.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.2.2.2.2.2" style="font-size:90%;"> 0.2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.3.3.3"><math alttext="\surd" class="ltx_Math" display="inline" id="S2.T1.3.3.3.3.m1.1"><semantics id="S2.T1.3.3.3.3.m1.1a"><mo id="S2.T1.3.3.3.3.m1.1.1" mathsize="90%" xref="S2.T1.3.3.3.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S2.T1.3.3.3.3.m1.1.1.cmml" xref="S2.T1.3.3.3.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.6.6.6.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.6.6.6.4.1" style="font-size:90%;">Cleveland</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.4.4.4.1.1" style="font-size:90%;">83.3</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.4.4.4.1.m1.1"><semantics id="S2.T1.4.4.4.1.m1.1a"><mo id="S2.T1.4.4.4.1.m1.1.1" mathsize="90%" xref="S2.T1.4.4.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.4.1.m1.1b"><csymbol cd="latexml" id="S2.T1.4.4.4.1.m1.1.1.cmml" xref="S2.T1.4.4.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.4.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.4.4.4.1.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.5.5.5.2.1" style="font-size:90%;">80.0</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.5.5.5.2.m1.1"><semantics id="S2.T1.5.5.5.2.m1.1a"><mo id="S2.T1.5.5.5.2.m1.1.1" mathsize="90%" xref="S2.T1.5.5.5.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.5.2.m1.1b"><csymbol cd="latexml" id="S2.T1.5.5.5.2.m1.1.1.cmml" xref="S2.T1.5.5.5.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.5.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.5.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.5.5.5.2.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.6.3"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.6.6.6.3.m1.1"><semantics id="S2.T1.6.6.6.3.m1.1a"><mo id="S2.T1.6.6.6.3.m1.1.1" mathsize="90%" xref="S2.T1.6.6.6.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.6.3.m1.1b"><times id="S2.T1.6.6.6.3.m1.1.1.cmml" xref="S2.T1.6.6.6.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.6.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.6.3.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.9.9.9.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.9.9.9.4.1" style="font-size:90%;">Glass2</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.7.7.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.7.7.7.1.1" style="font-size:90%;">61.9</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.7.7.7.1.m1.1"><semantics id="S2.T1.7.7.7.1.m1.1a"><mo id="S2.T1.7.7.7.1.m1.1.1" mathsize="90%" xref="S2.T1.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S2.T1.7.7.7.1.m1.1.1.cmml" xref="S2.T1.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.7.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.7.7.7.1.2" style="font-size:90%;"> 1.4</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.8.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.8.8.8.2.1" style="font-size:90%;">83.8</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.8.8.8.2.m1.1"><semantics id="S2.T1.8.8.8.2.m1.1a"><mo id="S2.T1.8.8.8.2.m1.1.1" mathsize="90%" xref="S2.T1.8.8.8.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.8.8.8.2.m1.1b"><csymbol cd="latexml" id="S2.T1.8.8.8.2.m1.1.1.cmml" xref="S2.T1.8.8.8.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.8.8.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.8.8.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.8.8.8.2.2" style="font-size:90%;"> 0.7</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.9.3"><math alttext="\surd" class="ltx_Math" display="inline" id="S2.T1.9.9.9.3.m1.1"><semantics id="S2.T1.9.9.9.3.m1.1a"><mo id="S2.T1.9.9.9.3.m1.1.1" mathsize="90%" xref="S2.T1.9.9.9.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S2.T1.9.9.9.3.m1.1b"><csymbol cd="latexml" id="S2.T1.9.9.9.3.m1.1.1.cmml" xref="S2.T1.9.9.9.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.9.9.9.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S2.T1.9.9.9.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.11.11.11.3"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.11.11.11.3.1" style="font-size:90%;">Credit</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.10.10.10.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.10.10.10.1.1" style="font-size:90%;">74.8</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.10.10.10.1.m1.1"><semantics id="S2.T1.10.10.10.1.m1.1a"><mo id="S2.T1.10.10.10.1.m1.1.1" mathsize="90%" xref="S2.T1.10.10.10.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.10.10.10.1.m1.1b"><csymbol cd="latexml" id="S2.T1.10.10.10.1.m1.1.1.cmml" xref="S2.T1.10.10.10.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.10.10.10.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.10.10.10.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.10.10.10.1.2" style="font-size:90%;"> 0.5</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.11.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.11.11.11.2.1" style="font-size:90%;">78.3</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.11.11.11.2.m1.1"><semantics id="S2.T1.11.11.11.2.m1.1a"><mo id="S2.T1.11.11.11.2.m1.1.1" mathsize="90%" xref="S2.T1.11.11.11.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.11.11.11.2.m1.1b"><csymbol cd="latexml" id="S2.T1.11.11.11.2.m1.1.1.cmml" xref="S2.T1.11.11.11.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.11.11.11.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.11.11.11.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.11.11.11.2.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td" id="S2.T1.11.11.11.4"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.14.14.14.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.14.14.14.4.1" style="font-size:90%;">Horse</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.12.12.12.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.12.12.12.1.1" style="font-size:90%;">73.3</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.12.12.12.1.m1.1"><semantics id="S2.T1.12.12.12.1.m1.1a"><mo id="S2.T1.12.12.12.1.m1.1.1" mathsize="90%" xref="S2.T1.12.12.12.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.12.12.12.1.m1.1b"><csymbol cd="latexml" id="S2.T1.12.12.12.1.m1.1.1.cmml" xref="S2.T1.12.12.12.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.12.12.12.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.12.12.12.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.12.12.12.1.2" style="font-size:90%;"> 0.9</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.13.13.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.13.13.13.2.1" style="font-size:90%;">69.7</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.13.13.13.2.m1.1"><semantics id="S2.T1.13.13.13.2.m1.1a"><mo id="S2.T1.13.13.13.2.m1.1.1" mathsize="90%" xref="S2.T1.13.13.13.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.13.13.13.2.m1.1b"><csymbol cd="latexml" id="S2.T1.13.13.13.2.m1.1.1.cmml" xref="S2.T1.13.13.13.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.13.13.13.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.13.13.13.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.13.13.13.2.2" style="font-size:90%;"> 1.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.14.14.3"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.14.14.14.3.m1.1"><semantics id="S2.T1.14.14.14.3.m1.1a"><mo id="S2.T1.14.14.14.3.m1.1.1" mathsize="90%" xref="S2.T1.14.14.14.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.14.14.14.3.m1.1b"><times id="S2.T1.14.14.14.3.m1.1.1.cmml" xref="S2.T1.14.14.14.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.14.14.14.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.14.14.14.3.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.17.17.17.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.17.17.17.4.1" style="font-size:90%;">Meta</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.15.15.15.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.15.15.15.1.1" style="font-size:90%;">67.1</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.15.15.15.1.m1.1"><semantics id="S2.T1.15.15.15.1.m1.1a"><mo id="S2.T1.15.15.15.1.m1.1.1" mathsize="90%" xref="S2.T1.15.15.15.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.15.15.15.1.m1.1b"><csymbol cd="latexml" id="S2.T1.15.15.15.1.m1.1.1.cmml" xref="S2.T1.15.15.15.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.15.15.15.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.15.15.15.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.15.15.15.1.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.16.16.16.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.16.16.16.2.1" style="font-size:90%;">76.5</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.16.16.16.2.m1.1"><semantics id="S2.T1.16.16.16.2.m1.1a"><mo id="S2.T1.16.16.16.2.m1.1.1" mathsize="90%" xref="S2.T1.16.16.16.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.16.16.16.2.m1.1b"><csymbol cd="latexml" id="S2.T1.16.16.16.2.m1.1.1.cmml" xref="S2.T1.16.16.16.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.16.16.16.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.16.16.16.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.16.16.16.2.2" style="font-size:90%;"> 0.5</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.17.17.3"><math alttext="\surd" class="ltx_Math" display="inline" id="S2.T1.17.17.17.3.m1.1"><semantics id="S2.T1.17.17.17.3.m1.1a"><mo id="S2.T1.17.17.17.3.m1.1.1" mathsize="90%" xref="S2.T1.17.17.17.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S2.T1.17.17.17.3.m1.1b"><csymbol cd="latexml" id="S2.T1.17.17.17.3.m1.1.1.cmml" xref="S2.T1.17.17.17.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.17.17.17.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S2.T1.17.17.17.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.19.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.19.19.19.3"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.19.19.19.3.1" style="font-size:90%;">Pima</span></th>
<td class="ltx_td ltx_align_center" id="S2.T1.18.18.18.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.18.18.18.1.1" style="font-size:90%;">75.1</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.18.18.18.1.m1.1"><semantics id="S2.T1.18.18.18.1.m1.1a"><mo id="S2.T1.18.18.18.1.m1.1.1" mathsize="90%" xref="S2.T1.18.18.18.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.18.18.18.1.m1.1b"><csymbol cd="latexml" id="S2.T1.18.18.18.1.m1.1.1.cmml" xref="S2.T1.18.18.18.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.18.18.18.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.18.18.18.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.18.18.18.1.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.19.19.19.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.19.19.19.2.1" style="font-size:90%;">73.9</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.19.19.19.2.m1.1"><semantics id="S2.T1.19.19.19.2.m1.1a"><mo id="S2.T1.19.19.19.2.m1.1.1" mathsize="90%" xref="S2.T1.19.19.19.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.19.19.19.2.m1.1b"><csymbol cd="latexml" id="S2.T1.19.19.19.2.m1.1.1.cmml" xref="S2.T1.19.19.19.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.19.19.19.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.19.19.19.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.19.19.19.2.2" style="font-size:90%;"> 0.5</span>
</td>
<td class="ltx_td" id="S2.T1.19.19.19.4"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.22.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T1.22.22.22.4"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.22.22.22.4.1" style="font-size:90%;">Vehicle</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.20.20.20.1">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.20.20.20.1.1" style="font-size:90%;">44.9</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.20.20.20.1.m1.1"><semantics id="S2.T1.20.20.20.1.m1.1a"><mo id="S2.T1.20.20.20.1.m1.1.1" mathsize="90%" xref="S2.T1.20.20.20.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.20.20.20.1.m1.1b"><csymbol cd="latexml" id="S2.T1.20.20.20.1.m1.1.1.cmml" xref="S2.T1.20.20.20.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.20.20.20.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.20.20.20.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.20.20.20.1.2" style="font-size:90%;"> 0.6</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.21.21.21.2">
<span class="ltx_text ltx_font_smallcaps" id="S2.T1.21.21.21.2.1" style="font-size:90%;">61.5</span><math alttext="\pm" class="ltx_Math" display="inline" id="S2.T1.21.21.21.2.m1.1"><semantics id="S2.T1.21.21.21.2.m1.1a"><mo id="S2.T1.21.21.21.2.m1.1.1" mathsize="90%" xref="S2.T1.21.21.21.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S2.T1.21.21.21.2.m1.1b"><csymbol cd="latexml" id="S2.T1.21.21.21.2.m1.1.1.cmml" xref="S2.T1.21.21.21.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.21.21.21.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S2.T1.21.21.21.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S2.T1.21.21.21.2.2" style="font-size:90%;"> 0.4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.22.22.22.3"><math alttext="\surd" class="ltx_Math" display="inline" id="S2.T1.22.22.22.3.m1.1"><semantics id="S2.T1.22.22.22.3.m1.1a"><mo id="S2.T1.22.22.22.3.m1.1.1" mathsize="90%" xref="S2.T1.22.22.22.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S2.T1.22.22.22.3.m1.1b"><csymbol cd="latexml" id="S2.T1.22.22.22.3.m1.1.1.cmml" xref="S2.T1.22.22.22.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.22.22.22.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S2.T1.22.22.22.3.m1.1d">√</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of classification performance achieved by Naive Bayes and Flexible Bayes models across a range of datasets.  The results are expressed as classification accuracy, indicating the percentage of correctly classified instances for each dataset and model. This allows for a direct comparison of the two models' performance under different conditions and data characteristics.
> <details>
> <summary>read the caption</summary>
> Table 1: Classification accuracies for naive Bayes and flexible Bayes on various data sets.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10415/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10415/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}