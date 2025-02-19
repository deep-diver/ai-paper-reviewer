---
title: "Injecting Domain-Specific Knowledge into Large Language Models: A Comprehensive Survey"
summary: "This survey paper comprehensively analyzes methods for injecting domain-specific knowledge into LLMs, categorizing them into four key approaches and evaluating their trade-offs to enhance performance ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Northeastern University",]
showSummary: true
date: 2025-02-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.10708 {{< /keyword >}}
{{< keyword icon="writer" >}} Zirui Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.10708" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.10708" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.10708/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) excel in general tasks but often struggle with domain-specific applications requiring specialized knowledge (e.g., medicine, finance).  This necessitates enhancing LLMs with domain-specific knowledge, a process known as knowledge injection.  However, current methods lack standardization and evaluation, hindering the field's progress. 

This paper addresses this gap by providing a comprehensive survey of existing knowledge injection techniques.  It categorizes these techniques into four main approaches: dynamic knowledge injection, static knowledge embedding, modular adapters, and prompt optimization. The paper offers a detailed comparison of these methods, discussing their strengths and weaknesses, and identifies key challenges and opportunities for future research.  It also includes a valuable open-source repository to track ongoing developments, facilitating future research and collaboration in this rapidly growing area.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Four key approaches for injecting domain-specific knowledge into LLMs are identified and analyzed: dynamic knowledge injection, static knowledge embedding, modular adapters, and prompt optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper provides a comprehensive comparison of the advantages and disadvantages of each approach, considering factors such as flexibility, scalability, and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Challenges and opportunities in the field of domain-specific LLMs are highlighted, including issues of knowledge consistency, cross-domain knowledge transfer, and the need for standardized evaluation methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models (LLMs) because it provides a **comprehensive overview of domain-specific knowledge injection techniques**.  It identifies **four key approaches**, compares their advantages and disadvantages, and highlights **challenges and opportunities** in the field. This is especially important given the growing interest in specialized LLMs across various domains. The open-source repository mentioned in the paper further enhances its value by providing a centralized resource for the latest research.  The survey's focus on standardization and evaluation is a critical step in advancing the field and promotes reproducible results.

------
#### Visual Insights



![](https://arxiv.org/html/2502.10708/x1.png)

> 🔼 Figure 1 illustrates the growth of research on injecting domain-specific knowledge into Large Language Models (LLMs) from October 2022 to December 2024.  The graph shows the cumulative number of published papers over time.  Different colors and border styles represent the various knowledge injection methods (dynamic injection, static embedding, modular adapters, and prompt optimization) and the specific domains of application (biomedicine, materials science, finance, human-centered science, etc.). For example, blue with a solid border indicates dynamic knowledge injection within the biomedical field.  This visualization helps to understand trends and the relative popularity of different approaches within various domains.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of Growth Trends in Domain-Specific Knowledge Injection into LLMs. The chart displays the cumulative number of papers published between October 2022 and December 2024. Different colors and border styles represent various injection methods and domains, such as blue with a solid border denoting dynamic injection in the biomedical field.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.13.14.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.13.14.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.13.14.1.1.1" style="font-size:90%;">Symbol</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.13.14.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.13.14.1.2.1">
<span class="ltx_p" id="S3.T1.13.14.1.2.1.1" style="width:303.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.13.14.1.2.1.1.1" style="font-size:90%;">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.1"><math alttext="\mathbf{x}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T1.1.1.1.m1.1.1.cmml">𝐱</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">𝐱</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\mathbf{x}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">bold_x</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.1.1.2.1.1.1" style="font-size:90%;">Input to LLM</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.2.1"><math alttext="\mathbf{y}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mi id="S3.T1.2.2.1.m1.1.1" mathsize="90%" xref="S3.T1.2.2.1.m1.1.1.cmml">𝐲</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><ci id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1">𝐲</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">\mathbf{y}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">bold_y</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.2.2.1">
<span class="ltx_p" id="S3.T1.2.2.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.2.2.2.1.1.1" style="font-size:90%;">Output of LLM</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.3.1"><math alttext="M" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mi id="S3.T1.3.3.1.m1.1.1" mathsize="90%" xref="S3.T1.3.3.1.m1.1.1.cmml">M</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><ci id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1">𝑀</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">M</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">italic_M</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.2.1">
<span class="ltx_p" id="S3.T1.3.3.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.3.3.2.1.1.1" style="font-size:90%;">Backbone LLM Function</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.4.1"><math alttext="\mathcal{K}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S3.T1.4.4.1.m1.1.1" mathsize="90%" xref="S3.T1.4.4.1.m1.1.1.cmml">𝒦</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><ci id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1">𝒦</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">\mathcal{K}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">caligraphic_K</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.2.1">
<span class="ltx_p" id="S3.T1.4.4.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.4.4.2.1.1.1" style="font-size:90%;">External domain knowledge base</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.5.5.1"><math alttext="\theta" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mi id="S3.T1.5.5.1.m1.1.1" mathsize="90%" xref="S3.T1.5.5.1.m1.1.1.cmml">θ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><ci id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1">𝜃</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">\theta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">italic_θ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.2.1">
<span class="ltx_p" id="S3.T1.5.5.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.5.5.2.1.1.1" style="font-size:90%;">Parameters of LLM</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.6.6.1"><math alttext="\phi" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1"><semantics id="S3.T1.6.6.1.m1.1a"><mi id="S3.T1.6.6.1.m1.1.1" mathsize="90%" xref="S3.T1.6.6.1.m1.1.1.cmml">ϕ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><ci id="S3.T1.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1">italic-ϕ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">\phi</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">italic_ϕ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.2.1">
<span class="ltx_p" id="S3.T1.6.6.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.6.6.2.1.1.1" style="font-size:90%;">Additional parameters introduced</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.7.7.1"><math alttext="\mathcal{R}(\mathbf{x},\mathcal{K})" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.2"><semantics id="S3.T1.7.7.1.m1.2a"><mrow id="S3.T1.7.7.1.m1.2.3" xref="S3.T1.7.7.1.m1.2.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.7.7.1.m1.2.3.2" mathsize="90%" xref="S3.T1.7.7.1.m1.2.3.2.cmml">ℛ</mi><mo id="S3.T1.7.7.1.m1.2.3.1" xref="S3.T1.7.7.1.m1.2.3.1.cmml">⁢</mo><mrow id="S3.T1.7.7.1.m1.2.3.3.2" xref="S3.T1.7.7.1.m1.2.3.3.1.cmml"><mo id="S3.T1.7.7.1.m1.2.3.3.2.1" maxsize="90%" minsize="90%" xref="S3.T1.7.7.1.m1.2.3.3.1.cmml">(</mo><mi id="S3.T1.7.7.1.m1.1.1" mathsize="90%" xref="S3.T1.7.7.1.m1.1.1.cmml">𝐱</mi><mo id="S3.T1.7.7.1.m1.2.3.3.2.2" mathsize="90%" xref="S3.T1.7.7.1.m1.2.3.3.1.cmml">,</mo><mi class="ltx_font_mathcaligraphic" id="S3.T1.7.7.1.m1.2.2" mathsize="90%" xref="S3.T1.7.7.1.m1.2.2.cmml">𝒦</mi><mo id="S3.T1.7.7.1.m1.2.3.3.2.3" maxsize="90%" minsize="90%" xref="S3.T1.7.7.1.m1.2.3.3.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.2b"><apply id="S3.T1.7.7.1.m1.2.3.cmml" xref="S3.T1.7.7.1.m1.2.3"><times id="S3.T1.7.7.1.m1.2.3.1.cmml" xref="S3.T1.7.7.1.m1.2.3.1"></times><ci id="S3.T1.7.7.1.m1.2.3.2.cmml" xref="S3.T1.7.7.1.m1.2.3.2">ℛ</ci><interval closure="open" id="S3.T1.7.7.1.m1.2.3.3.1.cmml" xref="S3.T1.7.7.1.m1.2.3.3.2"><ci id="S3.T1.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1">𝐱</ci><ci id="S3.T1.7.7.1.m1.2.2.cmml" xref="S3.T1.7.7.1.m1.2.2">𝒦</ci></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.2c">\mathcal{R}(\mathbf{x},\mathcal{K})</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.2d">caligraphic_R ( bold_x , caligraphic_K )</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.9.9.3.2">
<span class="ltx_p" id="S3.T1.9.9.3.2.2" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.9.9.3.2.2.1" style="font-size:90%;">Retrieval function fetches relevant elements of </span><math alttext="\mathcal{K}" class="ltx_Math" display="inline" id="S3.T1.8.8.2.1.1.m1.1"><semantics id="S3.T1.8.8.2.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S3.T1.8.8.2.1.1.m1.1.1" mathsize="90%" xref="S3.T1.8.8.2.1.1.m1.1.1.cmml">𝒦</mi><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.2.1.1.m1.1b"><ci id="S3.T1.8.8.2.1.1.m1.1.1.cmml" xref="S3.T1.8.8.2.1.1.m1.1.1">𝒦</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.2.1.1.m1.1c">\mathcal{K}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.2.1.1.m1.1d">caligraphic_K</annotation></semantics></math><span class="ltx_text" id="S3.T1.9.9.3.2.2.2" style="font-size:90%;"> given the input </span><math alttext="\mathbf{x}" class="ltx_Math" display="inline" id="S3.T1.9.9.3.2.2.m2.1"><semantics id="S3.T1.9.9.3.2.2.m2.1a"><mi id="S3.T1.9.9.3.2.2.m2.1.1" mathsize="90%" xref="S3.T1.9.9.3.2.2.m2.1.1.cmml">𝐱</mi><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.3.2.2.m2.1b"><ci id="S3.T1.9.9.3.2.2.m2.1.1.cmml" xref="S3.T1.9.9.3.2.2.m2.1.1">𝐱</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.3.2.2.m2.1c">\mathbf{x}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.3.2.2.m2.1d">bold_x</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.1"><math alttext="M(\mathbf{x};\theta)" class="ltx_Math" display="inline" id="S3.T1.10.10.1.m1.2"><semantics id="S3.T1.10.10.1.m1.2a"><mrow id="S3.T1.10.10.1.m1.2.3" xref="S3.T1.10.10.1.m1.2.3.cmml"><mi id="S3.T1.10.10.1.m1.2.3.2" mathsize="90%" xref="S3.T1.10.10.1.m1.2.3.2.cmml">M</mi><mo id="S3.T1.10.10.1.m1.2.3.1" xref="S3.T1.10.10.1.m1.2.3.1.cmml">⁢</mo><mrow id="S3.T1.10.10.1.m1.2.3.3.2" xref="S3.T1.10.10.1.m1.2.3.3.1.cmml"><mo id="S3.T1.10.10.1.m1.2.3.3.2.1" maxsize="90%" minsize="90%" xref="S3.T1.10.10.1.m1.2.3.3.1.cmml">(</mo><mi id="S3.T1.10.10.1.m1.1.1" mathsize="90%" xref="S3.T1.10.10.1.m1.1.1.cmml">𝐱</mi><mo id="S3.T1.10.10.1.m1.2.3.3.2.2" mathsize="90%" xref="S3.T1.10.10.1.m1.2.3.3.1.cmml">;</mo><mi id="S3.T1.10.10.1.m1.2.2" mathsize="90%" xref="S3.T1.10.10.1.m1.2.2.cmml">θ</mi><mo id="S3.T1.10.10.1.m1.2.3.3.2.3" maxsize="90%" minsize="90%" xref="S3.T1.10.10.1.m1.2.3.3.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.1.m1.2b"><apply id="S3.T1.10.10.1.m1.2.3.cmml" xref="S3.T1.10.10.1.m1.2.3"><times id="S3.T1.10.10.1.m1.2.3.1.cmml" xref="S3.T1.10.10.1.m1.2.3.1"></times><ci id="S3.T1.10.10.1.m1.2.3.2.cmml" xref="S3.T1.10.10.1.m1.2.3.2">𝑀</ci><list id="S3.T1.10.10.1.m1.2.3.3.1.cmml" xref="S3.T1.10.10.1.m1.2.3.3.2"><ci id="S3.T1.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1">𝐱</ci><ci id="S3.T1.10.10.1.m1.2.2.cmml" xref="S3.T1.10.10.1.m1.2.2">𝜃</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.1.m1.2c">M(\mathbf{x};\theta)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.1.m1.2d">italic_M ( bold_x ; italic_θ )</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.12.12.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.12.12.3.2">
<span class="ltx_p" id="S3.T1.12.12.3.2.2" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.12.12.3.2.2.1" style="font-size:90%;">Represent LLM takes input </span><math alttext="\mathbf{x}" class="ltx_Math" display="inline" id="S3.T1.11.11.2.1.1.m1.1"><semantics id="S3.T1.11.11.2.1.1.m1.1a"><mi id="S3.T1.11.11.2.1.1.m1.1.1" mathsize="90%" xref="S3.T1.11.11.2.1.1.m1.1.1.cmml">𝐱</mi><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.2.1.1.m1.1b"><ci id="S3.T1.11.11.2.1.1.m1.1.1.cmml" xref="S3.T1.11.11.2.1.1.m1.1.1">𝐱</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.2.1.1.m1.1c">\mathbf{x}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.2.1.1.m1.1d">bold_x</annotation></semantics></math><span class="ltx_text" id="S3.T1.12.12.3.2.2.2" style="font-size:90%;"> and produces an output, parameterized by </span><math alttext="\theta" class="ltx_Math" display="inline" id="S3.T1.12.12.3.2.2.m2.1"><semantics id="S3.T1.12.12.3.2.2.m2.1a"><mi id="S3.T1.12.12.3.2.2.m2.1.1" mathsize="90%" xref="S3.T1.12.12.3.2.2.m2.1.1.cmml">θ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.3.2.2.m2.1b"><ci id="S3.T1.12.12.3.2.2.m2.1.1.cmml" xref="S3.T1.12.12.3.2.2.m2.1.1">𝜃</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.3.2.2.m2.1c">\theta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.3.2.2.m2.1d">italic_θ</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.13.13.1"><math alttext="\Delta\theta" class="ltx_Math" display="inline" id="S3.T1.13.13.1.m1.1"><semantics id="S3.T1.13.13.1.m1.1a"><mrow id="S3.T1.13.13.1.m1.1.1" xref="S3.T1.13.13.1.m1.1.1.cmml"><mi id="S3.T1.13.13.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S3.T1.13.13.1.m1.1.1.2.cmml">Δ</mi><mo id="S3.T1.13.13.1.m1.1.1.1" xref="S3.T1.13.13.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.13.13.1.m1.1.1.3" mathsize="90%" xref="S3.T1.13.13.1.m1.1.1.3.cmml">θ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.1.m1.1b"><apply id="S3.T1.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.1.m1.1.1"><times id="S3.T1.13.13.1.m1.1.1.1.cmml" xref="S3.T1.13.13.1.m1.1.1.1"></times><ci id="S3.T1.13.13.1.m1.1.1.2.cmml" xref="S3.T1.13.13.1.m1.1.1.2">Δ</ci><ci id="S3.T1.13.13.1.m1.1.1.3.cmml" xref="S3.T1.13.13.1.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.1.m1.1c">\Delta\theta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.1.m1.1d">roman_Δ italic_θ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.13.13.2.1">
<span class="ltx_p" id="S3.T1.13.13.2.1.1" style="width:303.5pt;"><span class="ltx_text" id="S3.T1.13.13.2.1.1.1" style="font-size:90%;">Offsets to the original LLM’s parameters</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the symbols used throughout the paper, along with their corresponding descriptions.  The symbols represent key concepts such as the input and output of the large language model (LLM), the external knowledge base, parameters of the LLM, and any additional parameters introduced during knowledge injection.  It serves as a handy reference for understanding the notation used in the mathematical equations and descriptions of the various knowledge injection methods presented.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of Symbols.
> </details>





### In-depth insights


#### LLM Knowledge Infusion
LLM knowledge infusion, the process of integrating domain-specific knowledge into large language models (LLMs), is crucial for enhancing their performance on specialized tasks.  **Dynamic knowledge injection**, where external knowledge is retrieved and utilized during inference, offers flexibility but can be slow.  **Static knowledge embedding**, integrating knowledge directly into the model parameters, provides fast inference but is less adaptable.  **Modular adapters** offer a balance, enabling efficient addition of knowledge without retraining the entire model.  **Prompt optimization** cleverly guides the LLM using prompts to leverage existing knowledge without modifying parameters, showcasing cost-effectiveness.  The choice among these methods depends on the specific application's requirements, balancing trade-offs in speed, cost, and adaptability.  **Successful knowledge infusion requires careful consideration of data quality, knowledge representation, and methods for resolving potential inconsistencies.**  Future research should focus on improving cross-domain knowledge transfer and efficient handling of dynamic knowledge updates for even more powerful and adaptable LLMs.

#### Injection Method Tradeoffs
Different knowledge injection methods present unique trade-offs. **Dynamic injection**, while offering flexibility and ease of updating, suffers from retrieval latency and dependence on knowledge base quality.  **Static embedding**, conversely, provides fast inference but necessitates retraining for updates and can be computationally expensive.  **Modular adapters** offer a compromise, balancing efficiency with adaptability, though careful design and hyperparameter tuning are crucial.  **Prompt optimization**, requiring minimal training, is limited by its reliance on implicit knowledge and prompt engineering skill.  The optimal choice hinges on the specific application's needs, weighing factors such as inference speed, update frequency, computational resources, and the nature of available domain-specific knowledge.  **A balanced approach may involve combining methods,** for instance, integrating a modular adapter with dynamic retrieval to leverage both efficiency and adaptability.

#### Domain-Specific Benchmarks
Establishing **robust domain-specific benchmarks** is crucial for evaluating the effectiveness of knowledge injection techniques in LLMs.  These benchmarks must go beyond general-purpose language tasks and **focus on the unique challenges** presented by each domain. For instance, in biomedicine, benchmarks should assess performance on tasks like medical diagnosis, drug interaction prediction, or clinical trial analysis, using datasets that reflect real-world complexity.  Similarly, financial benchmarks might involve tasks such as sentiment analysis of financial news, fraud detection, or risk assessment, using datasets that incorporate market dynamics and regulatory nuances.  **The key is to design benchmarks that not only measure accuracy but also capture other relevant aspects** like interpretability, robustness to noisy data, and efficiency in resource utilization.   A comprehensive evaluation framework should incorporate both quantitative and qualitative metrics, enabling a nuanced comparison of various knowledge injection methods.  The availability of high-quality, publicly available domain-specific benchmarks is essential for fostering research reproducibility and facilitating progress in this critical area.

#### Future Research Roadmap
Future research should prioritize **robustness and reliability** in knowledge injection methods.  Addressing challenges like catastrophic forgetting and knowledge inconsistencies is crucial.  **Developing standardized evaluation metrics and benchmarks** across diverse domains is vital for fair comparison of different approaches.  Exploration of **hybrid techniques**, combining dynamic and static methods, can improve both flexibility and efficiency.  Furthermore, research should focus on enhancing **cross-domain knowledge transfer**, enabling LLMs to generalize effectively across fields.  **Investigating new architectural designs** that seamlessly integrate external knowledge sources without compromising performance is important. Finally, focusing on **ethical considerations**, including bias detection and mitigation, is paramount for responsible development and deployment of knowledge-enhanced LLMs.

#### Knowledge Consistency
Maintaining **knowledge consistency** in LLMs enhanced with external knowledge is crucial.  Conflicting information from various sources can lead to unreliable outputs.  The challenge lies in **detecting and resolving inconsistencies** within the model's knowledge base and ensuring alignment with the model's reasoning process.  **Prioritizing reliable sources**, employing **conflict resolution strategies**, and utilizing **validation modules** are essential steps.  Furthermore, the **design of the knowledge injection framework** itself plays a significant role.  A well-designed system should incorporate mechanisms to identify and manage potential inconsistencies, preventing the propagation of unreliable information and ensuring trust in the LLM's output.  **Future research** must focus on developing robust methods for managing inconsistencies and maintaining a cohesive and dependable knowledge representation within enhanced LLMs.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1.1" style="font-size:70%;">Paradigm</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1.1.1" style="font-size:70%;">Training Cost</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1" style="font-size:70%;">Inference Speed</span></span>
</span>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.4" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.1.1" style="font-size:70%;">Limitations</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.1" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.1.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.1.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.1.1.1.1.1" style="font-size:70%;">Dynamic</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.1.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.1.1.2.1.1" style="font-size:70%;">Injection</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.2" style="width:56.9pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.2.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.2.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.2.1.1.1.1" style="font-size:70%;">None, but requires</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.2.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.2.1.2.1.1" style="font-size:70%;">retrieval module</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.3" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.3.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.3.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.3.1.1.1.1" style="font-size:70%;">Slower due to</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.3.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.3.1.2.1.1" style="font-size:70%;">retrieval latency</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.4" style="width:62.6pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.4.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.4.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.4.1.1.1.1" style="font-size:70%;">Relies heavily on</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.4.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.4.1.2.1.1" style="font-size:70%;">retrieval quality</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.2.1" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.3.2.1.1">
<tr class="ltx_tr" id="S3.T2.1.3.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.3.2.1.1.1.1"><span class="ltx_text" id="S3.T2.1.3.2.1.1.1.1.1" style="font-size:70%;">Static</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.3.2.1.1.2.1"><span class="ltx_text" id="S3.T2.1.3.2.1.1.2.1.1" style="font-size:70%;">Embedding</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.2.2" style="width:56.9pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.3.2.2.1">
<tr class="ltx_tr" id="S3.T2.1.3.2.2.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.2.1.1.1"><span class="ltx_text" id="S3.T2.1.3.2.2.1.1.1.1" style="font-size:70%;">High</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2.2.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.2.1.2.1"><span class="ltx_text" id="S3.T2.1.3.2.2.1.2.1.1" style="font-size:70%;">(requires pretraining</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2.2.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.2.1.3.1"><span class="ltx_text" id="S3.T2.1.3.2.2.1.3.1.1" style="font-size:70%;">or fine-tuning)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.2.3" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.3.1">
<span class="ltx_p" id="S3.T2.1.3.2.3.1.1"><span class="ltx_text" id="S3.T2.1.3.2.3.1.1.1" style="font-size:70%;">No extra cost</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.2.4" style="width:62.6pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.3.2.4.1">
<tr class="ltx_tr" id="S3.T2.1.3.2.4.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.4.1.1.1"><span class="ltx_text" id="S3.T2.1.3.2.4.1.1.1.1" style="font-size:70%;">Fixed knowledge;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2.4.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.4.1.2.1"><span class="ltx_text" id="S3.T2.1.3.2.4.1.2.1.1" style="font-size:70%;">risks catastrophic</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2.4.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.4.1.3.1"><span class="ltx_text" id="S3.T2.1.3.2.4.1.3.1.1" style="font-size:70%;">forgetting</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.4.3.1" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.4.3.1.1">
<tr class="ltx_tr" id="S3.T2.1.4.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.1.1.1.1"><span class="ltx_text" id="S3.T2.1.4.3.1.1.1.1.1" style="font-size:70%;">Modular</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.1.1.2.1"><span class="ltx_text" id="S3.T2.1.4.3.1.1.2.1.1" style="font-size:70%;">Adapters</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.4.3.2" style="width:56.9pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.4.3.2.1">
<tr class="ltx_tr" id="S3.T2.1.4.3.2.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.3.2.1.1.1"><span class="ltx_text" id="S3.T2.1.4.3.2.1.1.1.1" style="font-size:70%;">Low</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3.2.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.3.2.1.2.1"><span class="ltx_text" id="S3.T2.1.4.3.2.1.2.1.1" style="font-size:70%;">(train small subset</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3.2.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.3.2.1.3.1"><span class="ltx_text" id="S3.T2.1.4.3.2.1.3.1.1" style="font-size:70%;">of parameters)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.4.3.3" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.4.3.3.1">
<tr class="ltx_tr" id="S3.T2.1.4.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.3.1.1.1"><span class="ltx_text" id="S3.T2.1.4.3.3.1.1.1.1" style="font-size:70%;">Almost</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.3.1.2.1"><span class="ltx_text" id="S3.T2.1.4.3.3.1.2.1.1" style="font-size:70%;">unaffected</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.4.3.4" style="width:62.6pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.4.3.4.1">
<tr class="ltx_tr" id="S3.T2.1.4.3.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.4.1.1.1"><span class="ltx_text" id="S3.T2.1.4.3.4.1.1.1.1" style="font-size:70%;">Sensitive to training</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.4.1.2.1"><span class="ltx_text" id="S3.T2.1.4.3.4.1.2.1.1" style="font-size:70%;">data quality</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.1.5.4.1" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.5.4.1.1">
<tr class="ltx_tr" id="S3.T2.1.5.4.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.5.4.1.1.1.1"><span class="ltx_text" id="S3.T2.1.5.4.1.1.1.1.1" style="font-size:70%;">Prompt</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.5.4.1.1.2.1"><span class="ltx_text" id="S3.T2.1.5.4.1.1.2.1.1" style="font-size:70%;">Optimization</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.1.5.4.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.4.2.1">
<span class="ltx_p" id="S3.T2.1.5.4.2.1.1"><span class="ltx_text" id="S3.T2.1.5.4.2.1.1.1" style="font-size:70%;">None</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.1.5.4.3" style="width:42.7pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.5.4.3.1">
<tr class="ltx_tr" id="S3.T2.1.5.4.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.3.1.1.1"><span class="ltx_text" id="S3.T2.1.5.4.3.1.1.1.1" style="font-size:70%;">Almost</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.3.1.2.1"><span class="ltx_text" id="S3.T2.1.5.4.3.1.2.1.1" style="font-size:70%;">unaffected</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.1.5.4.4" style="width:62.6pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.5.4.4.1">
<tr class="ltx_tr" id="S3.T2.1.5.4.4.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.4.1.1.1"><span class="ltx_text" id="S3.T2.1.5.4.4.1.1.1.1" style="font-size:70%;">Labor-intensive;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4.4.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.4.1.2.1"><span class="ltx_text" id="S3.T2.1.5.4.4.1.2.1.1" style="font-size:70%;">limited to pre-existing</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4.4.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.4.1.3.1"><span class="ltx_text" id="S3.T2.1.5.4.4.1.3.1.1" style="font-size:70%;">knowledge</span></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares four different knowledge injection methods for LLMs (Large Language Models): Dynamic Injection, Static Embedding, Modular Adapters, and Prompt Optimization.  It highlights the trade-offs between each method in terms of training costs, inference speed, and limitations.  This allows researchers to choose the most suitable approach for their specific needs based on factors such as computational resources and desired level of model adaptability.
> <details>
> <summary>read the caption</summary>
> Table 2: Guidance on selecting knowledge injection paradigms based on training cost, inference speed, and limitations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.1.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.1.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.1.1.1.1.1" style="font-size:70%;">Dynamic</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.1.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.1.1.2.1.1" style="font-size:70%;">Injection</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a summary of studies on injecting domain-specific knowledge into Large Language Models (LLMs).  It categorizes the research based on the specific domain of application (e.g., Biomedicine, Finance, Materials Science) and the knowledge injection method used (e.g., Static Knowledge Embedding, Dynamic Knowledge Injection, Modular Knowledge Adapters, Prompt Optimization). For each study, the table lists the model name, the applied paradigm, and the knowledge sources used in the study. 
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of the domain-specific knowledge injection studies. We categorize current work according to their research domain and knowledge injection method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.1.2.1.2.1">
<tr class="ltx_tr" id="S3.T2.1.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.2.1.1.1"><span class="ltx_text" id="S3.T2.1.2.1.2.1.1.1.1" style="font-size:70%;">None, but requires</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.2.1.2.1.2.1"><span class="ltx_text" id="S3.T2.1.2.1.2.1.2.1.1" style="font-size:70%;">retrieval module</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several Large Language Models (LLMs) on three medical benchmarks: MedQA, PubMedQA, and MedMCQA.  It contrasts the results of domain-specific LLMs (trained or fine-tuned on medical data) with general-purpose LLMs. The goal is to show the impact of incorporating domain-specific knowledge on the performance of LLMs for medical tasks.  The table includes the model name, whether it is domain-specific or general, the model size (in parameters), and the performance scores on each benchmark.  This allows for a direct comparison of the effectiveness of domain-specific training.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of domain-specific and general-domain model performance on medical benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.10708/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10708/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}