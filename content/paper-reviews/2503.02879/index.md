---
title: "Wikipedia in the Era of LLMs: Evolution and Risks"
summary: "LLMs modestly affect Wikipedia, subtly altering content and potentially skewing NLP benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Huazhong University of Science and Technology",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02879 {{< /keyword >}}
{{< keyword icon="writer" >}} Siming Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02879" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02879" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02879/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models(LLMs) raise concerns about Wikipedia's future. While Wikipedia hasn't remained unaffected, the impact of LLMs requires comprehensive investigation. Current research has started examining the influence of LLMs on Wikipedia, this paper analyzes the direct impact of LLMs on Wikipedia, focusing on changes in page views, word frequency, and linguistic style, exploring indirect effects on NLP, particularly in machine translation and RAG.



This paper quantifies the impact of LLMs on Wikipedia pages across categories and analyzes this impact from the perspective of word usage, providing estimates. It examines how LLM-generated content affects machine translation and the efficiency of RAG. Results show a slight decline in page views, and some Wikipedia articles have been influenced by LLMs, with an overall limited impact. Machine translation scores may be inflated. RAG may be less effective with LLM content.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs have a limited but measurable impact on Wikipedia content, with certain categories more affected than others. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Machine translation benchmarks based on Wikipedia content may be skewed by LLM influence, affecting comparative model results. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Retrieval-Augmented Generation (RAG) systems may be less effective with LLM-generated content due to potential 'pollution' of the knowledge base. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study is crucial for **understanding and mitigating the impact of LLMs on information ecosystems**. It underscores the **need for careful monitoring** of content quality and reliability in the face of AI-driven content generation, offering insights for future research and policy.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02879/x1.png)

> 🔼 This figure illustrates the research design.  The researchers directly analyzed the impact of LLMs on Wikipedia by examining changes in page views, word frequency, and linguistic style.  They also explored the indirect impact on the broader NLP community by assessing how LLMs might affect machine translation benchmarks and RAG (Retrieval-Augmented Generation) systems, which rely heavily on Wikipedia data.  The core question is whether LLMs have already altered Wikipedia and what future risks and consequences might arise.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our work analyze the direct impact of LLMs on Wikipedia, and exploring the indirect impact of LLMs generated content on Wikipedia: Have LLMs already impacted Wikipedia, and if so, how might they influence the broader NLP community?
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.46">
<tr class="ltx_tr" id="S4.T1.46.47">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.46.47.1" style="padding-top:1pt;padding-bottom:1pt;">Criteria</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.46.47.2" style="padding-top:1pt;padding-bottom:1pt;">LLM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.46.47.3" style="padding-top:1pt;padding-bottom:1pt;">Data</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.46.47.4" style="padding-top:1pt;padding-bottom:1pt;">Figures</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">Auxiliary verb %</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf1" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf4" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(d)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">"To Be" verb %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.3.3.1.m1.1"><semantics id="S4.T1.3.3.1.m1.1a"><mo id="S4.T1.3.3.1.m1.1.1" xref="S4.T1.3.3.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.1.m1.1b"><ci id="S4.T1.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.4.4.2.m1.1"><semantics id="S4.T1.4.4.2.m1.1a"><mo id="S4.T1.4.4.2.m1.1.1" xref="S4.T1.4.4.2.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.2.m1.1b"><ci id="S4.T1.4.4.2.m1.1.1.cmml" xref="S4.T1.4.4.2.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.2.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.2.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F14" title="Figure 14 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">14</span></a></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_left" id="S4.T1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">CTTR</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.5.5.1.m1.1"><semantics id="S4.T1.5.5.1.m1.1a"><mo id="S4.T1.5.5.1.m1.1.1" xref="S4.T1.5.5.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.1.m1.1b"><ci id="S4.T1.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.6.6.2.m1.1"><semantics id="S4.T1.6.6.2.m1.1a"><mo id="S4.T1.6.6.2.m1.1.1" xref="S4.T1.6.6.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.2.m1.1b"><ci id="S4.T1.6.6.2.m1.1.1.cmml" xref="S4.T1.6.6.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F15" title="Figure 15 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">15</span></a></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_align_left" id="S4.T1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">Long word %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mo id="S4.T1.7.7.1.m1.1.1" xref="S4.T1.7.7.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><ci id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.8.8.2.m1.1"><semantics id="S4.T1.8.8.2.m1.1a"><mo id="S4.T1.8.8.2.m1.1.1" xref="S4.T1.8.8.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.2.m1.1b"><minus id="S4.T1.8.8.2.m1.1.1.cmml" xref="S4.T1.8.8.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F16" title="Figure 16 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">16</span></a></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10">
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">Conjunction %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mo id="S4.T1.9.9.1.m1.1.1" xref="S4.T1.9.9.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><minus id="S4.T1.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.10.10.2.m1.1"><semantics id="S4.T1.10.10.2.m1.1a"><mo id="S4.T1.10.10.2.m1.1.1" xref="S4.T1.10.10.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.2.m1.1b"><ci id="S4.T1.10.10.2.m1.1.1.cmml" xref="S4.T1.10.10.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf1" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf2" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf3" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.3" style="padding-top:1pt;padding-bottom:1pt;">Noun %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.11.11.1.m1.1"><semantics id="S4.T1.11.11.1.m1.1a"><mo id="S4.T1.11.11.1.m1.1.1" xref="S4.T1.11.11.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.1.m1.1b"><ci id="S4.T1.11.11.1.m1.1.1.cmml" xref="S4.T1.11.11.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.12.12.2.m1.1"><semantics id="S4.T1.12.12.2.m1.1a"><mo id="S4.T1.12.12.2.m1.1.1" xref="S4.T1.12.12.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.2.m1.1b"><ci id="S4.T1.12.12.2.m1.1.1.cmml" xref="S4.T1.12.12.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf4" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(d)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf5" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(e)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf6" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.3" style="padding-top:1pt;padding-bottom:1pt;">Preposition %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.13.13.1.m1.1"><semantics id="S4.T1.13.13.1.m1.1a"><mo id="S4.T1.13.13.1.m1.1.1" xref="S4.T1.13.13.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.1.m1.1b"><minus id="S4.T1.13.13.1.m1.1.1.cmml" xref="S4.T1.13.13.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.14.14.2.m1.1"><semantics id="S4.T1.14.14.2.m1.1a"><mo id="S4.T1.14.14.2.m1.1.1" xref="S4.T1.14.14.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.2.m1.1b"><ci id="S4.T1.14.14.2.m1.1.1.cmml" xref="S4.T1.14.14.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.14.14.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf7" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(g)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf8" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(h)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf9" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(i)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16">
<td class="ltx_td ltx_align_left" id="S4.T1.16.16.3" style="padding-top:1pt;padding-bottom:1pt;">Pronouns %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.15.15.1.m1.1"><semantics id="S4.T1.15.15.1.m1.1a"><mo id="S4.T1.15.15.1.m1.1.1" xref="S4.T1.15.15.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.1.m1.1b"><ci id="S4.T1.15.15.1.m1.1.1.cmml" xref="S4.T1.15.15.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.16.16.2.m1.1"><semantics id="S4.T1.16.16.2.m1.1a"><mo id="S4.T1.16.16.2.m1.1.1" xref="S4.T1.16.16.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.2.m1.1b"><ci id="S4.T1.16.16.2.m1.1.1.cmml" xref="S4.T1.16.16.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.16.16.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf10" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(j)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf11" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(k)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F17.sf12" title="In Figure 17 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">17(l)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18">
<td class="ltx_td ltx_align_left" id="S4.T1.18.18.3" style="padding-top:1pt;padding-bottom:1pt;">One-syllable word %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.17.17.1.m1.1"><semantics id="S4.T1.17.17.1.m1.1a"><mo id="S4.T1.17.17.1.m1.1.1" xref="S4.T1.17.17.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.1.m1.1b"><ci id="S4.T1.17.17.1.m1.1.1.cmml" xref="S4.T1.17.17.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.18.18.2.m1.1"><semantics id="S4.T1.18.18.2.m1.1a"><mo id="S4.T1.18.18.2.m1.1.1" xref="S4.T1.18.18.2.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.2.m1.1b"><ci id="S4.T1.18.18.2.m1.1.1.cmml" xref="S4.T1.18.18.2.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.2.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.2.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.18.18.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf1" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf2" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf3" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20">
<td class="ltx_td ltx_align_left" id="S4.T1.20.20.3" style="padding-top:1pt;padding-bottom:1pt;">Average syllables per word</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.19.19.1.m1.1"><semantics id="S4.T1.19.19.1.m1.1a"><mo id="S4.T1.19.19.1.m1.1.1" xref="S4.T1.19.19.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.1.m1.1b"><ci id="S4.T1.19.19.1.m1.1.1.cmml" xref="S4.T1.19.19.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.20.20.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.20.20.2.m1.1"><semantics id="S4.T1.20.20.2.m1.1a"><mo id="S4.T1.20.20.2.m1.1.1" xref="S4.T1.20.20.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.2.m1.1b"><ci id="S4.T1.20.20.2.m1.1.1.cmml" xref="S4.T1.20.20.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.20.20.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf4" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(d)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf5" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(e)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F18.sf6" title="In Figure 18 ‣ D.1 Word Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">18(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.22">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.22.22.3" style="padding-top:1pt;padding-bottom:1pt;">Passive voice %</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.21.21.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.21.21.1.m1.1"><semantics id="S4.T1.21.21.1.m1.1a"><mo id="S4.T1.21.21.1.m1.1.1" xref="S4.T1.21.21.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.1.m1.1b"><ci id="S4.T1.21.21.1.m1.1.1.cmml" xref="S4.T1.21.21.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.22.22.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.22.22.2.m1.1"><semantics id="S4.T1.22.22.2.m1.1a"><mo id="S4.T1.22.22.2.m1.1.1" xref="S4.T1.22.22.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.2.m1.1b"><ci id="S4.T1.22.22.2.m1.1.1.cmml" xref="S4.T1.22.22.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.22.22.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf2" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf5" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(e)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24">
<td class="ltx_td ltx_align_left" id="S4.T1.24.24.3" style="padding-top:1pt;padding-bottom:1pt;">Long sentence %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.23.23.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.23.23.1.m1.1"><semantics id="S4.T1.23.23.1.m1.1a"><mo id="S4.T1.23.23.1.m1.1.1" xref="S4.T1.23.23.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.1.m1.1b"><ci id="S4.T1.23.23.1.m1.1.1.cmml" xref="S4.T1.23.23.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.24.24.2.m1.1"><semantics id="S4.T1.24.24.2.m1.1a"><mo id="S4.T1.24.24.2.m1.1.1" xref="S4.T1.24.24.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.2.m1.1b"><ci id="S4.T1.24.24.2.m1.1.1.cmml" xref="S4.T1.24.24.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.24.24.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf1" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf2" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf3" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.26">
<td class="ltx_td ltx_align_left" id="S4.T1.26.26.3" style="padding-top:1pt;padding-bottom:1pt;">Average sentence length</td>
<td class="ltx_td ltx_align_center" id="S4.T1.25.25.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.25.25.1.m1.1"><semantics id="S4.T1.25.25.1.m1.1a"><mo id="S4.T1.25.25.1.m1.1.1" xref="S4.T1.25.25.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.1.m1.1b"><ci id="S4.T1.25.25.1.m1.1.1.cmml" xref="S4.T1.25.25.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.26.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.26.26.2.m1.1"><semantics id="S4.T1.26.26.2.m1.1a"><mo id="S4.T1.26.26.2.m1.1.1" xref="S4.T1.26.26.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.2.m1.1b"><ci id="S4.T1.26.26.2.m1.1.1.cmml" xref="S4.T1.26.26.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.26.26.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf4" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(d)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf5" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(e)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F19.sf6" title="In Figure 19 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">19(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.28.28">
<td class="ltx_td ltx_align_left" id="S4.T1.28.28.3" style="padding-top:1pt;padding-bottom:1pt;">Average parse tree depth</td>
<td class="ltx_td ltx_align_center" id="S4.T1.27.27.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.27.27.1.m1.1"><semantics id="S4.T1.27.27.1.m1.1a"><mo id="S4.T1.27.27.1.m1.1.1" xref="S4.T1.27.27.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.1.m1.1b"><ci id="S4.T1.27.27.1.m1.1.1.cmml" xref="S4.T1.27.27.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.28.28.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.28.28.2.m1.1"><semantics id="S4.T1.28.28.2.m1.1a"><mo id="S4.T1.28.28.2.m1.1.1" xref="S4.T1.28.28.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.2.m1.1b"><ci id="S4.T1.28.28.2.m1.1.1.cmml" xref="S4.T1.28.28.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.28.28.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf1" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf2" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf3" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.30.30">
<td class="ltx_td ltx_align_left" id="S4.T1.30.30.3" style="padding-top:1pt;padding-bottom:1pt;">Clause %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.29.29.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.29.29.1.m1.1"><semantics id="S4.T1.29.29.1.m1.1a"><mo id="S4.T1.29.29.1.m1.1.1" xref="S4.T1.29.29.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.29.29.1.m1.1b"><ci id="S4.T1.29.29.1.m1.1.1.cmml" xref="S4.T1.29.29.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.29.29.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.29.29.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.30.30.2.m1.1"><semantics id="S4.T1.30.30.2.m1.1a"><mo id="S4.T1.30.30.2.m1.1.1" xref="S4.T1.30.30.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.30.30.2.m1.1b"><ci id="S4.T1.30.30.2.m1.1.1.cmml" xref="S4.T1.30.30.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.30.30.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.30.30.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.30.30.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf4" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(d)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf5" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(e)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F20.sf6" title="In Figure 20 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">20(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.32">
<td class="ltx_td ltx_align_left" id="S4.T1.32.32.3" style="padding-top:1pt;padding-bottom:1pt;">Pronoun-initial sentence %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.31.31.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.31.31.1.m1.1"><semantics id="S4.T1.31.31.1.m1.1a"><mo id="S4.T1.31.31.1.m1.1.1" xref="S4.T1.31.31.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.31.31.1.m1.1b"><ci id="S4.T1.31.31.1.m1.1.1.cmml" xref="S4.T1.31.31.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.31.31.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.31.31.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.32.32.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.32.32.2.m1.1"><semantics id="S4.T1.32.32.2.m1.1a"><mo id="S4.T1.32.32.2.m1.1.1" xref="S4.T1.32.32.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.32.32.2.m1.1b"><ci id="S4.T1.32.32.2.m1.1.1.cmml" xref="S4.T1.32.32.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.32.32.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.32.32.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.32.32.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf1" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(a)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf2" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(b)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf3" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.34.34">
<td class="ltx_td ltx_align_left" id="S4.T1.34.34.3" style="padding-top:1pt;padding-bottom:1pt;">Article-initial sentence %</td>
<td class="ltx_td ltx_align_center" id="S4.T1.33.33.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.33.33.1.m1.1"><semantics id="S4.T1.33.33.1.m1.1a"><mo id="S4.T1.33.33.1.m1.1.1" xref="S4.T1.33.33.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.33.33.1.m1.1b"><minus id="S4.T1.33.33.1.m1.1.1.cmml" xref="S4.T1.33.33.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.33.33.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.33.33.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.34.34.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.34.34.2.m1.1"><semantics id="S4.T1.34.34.2.m1.1a"><mo id="S4.T1.34.34.2.m1.1.1" xref="S4.T1.34.34.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.34.34.2.m1.1b"><ci id="S4.T1.34.34.2.m1.1.1.cmml" xref="S4.T1.34.34.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.34.34.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.34.34.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.34.34.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf4" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(d)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf5" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(e)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F21.sf6" title="In Figure 21 ‣ D.2 Sentence Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">21(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.3" style="padding-top:1pt;padding-bottom:1pt;">Dale-Chall readability</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.35.35.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.35.35.1.m1.1"><semantics id="S4.T1.35.35.1.m1.1a"><mo id="S4.T1.35.35.1.m1.1.1" xref="S4.T1.35.35.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.35.35.1.m1.1b"><ci id="S4.T1.35.35.1.m1.1.1.cmml" xref="S4.T1.35.35.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.35.35.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.35.35.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.36.36.2.m1.1"><semantics id="S4.T1.36.36.2.m1.1a"><mo id="S4.T1.36.36.2.m1.1.1" xref="S4.T1.36.36.2.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.36.36.2.m1.1b"><ci id="S4.T1.36.36.2.m1.1.1.cmml" xref="S4.T1.36.36.2.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.36.36.2.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.36.36.2.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.36.36.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F22.sf1" title="In Figure 22 ‣ D.3 Paragraph Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">22(a)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.38.38">
<td class="ltx_td ltx_align_left" id="S4.T1.38.38.3" style="padding-top:1pt;padding-bottom:1pt;">Automated readability index</td>
<td class="ltx_td ltx_align_center" id="S4.T1.37.37.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.37.37.1.m1.1"><semantics id="S4.T1.37.37.1.m1.1a"><mo id="S4.T1.37.37.1.m1.1.1" xref="S4.T1.37.37.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.37.37.1.m1.1b"><ci id="S4.T1.37.37.1.m1.1.1.cmml" xref="S4.T1.37.37.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.37.37.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.37.37.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.38.38.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.38.38.2.m1.1"><semantics id="S4.T1.38.38.2.m1.1a"><mo id="S4.T1.38.38.2.m1.1.1" xref="S4.T1.38.38.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.38.38.2.m1.1b"><ci id="S4.T1.38.38.2.m1.1.1.cmml" xref="S4.T1.38.38.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.38.38.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.38.38.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.38.38.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F22.sf2" title="In Figure 22 ‣ D.3 Paragraph Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">22(b)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.40.40">
<td class="ltx_td ltx_align_left" id="S4.T1.40.40.3" style="padding-top:1pt;padding-bottom:1pt;">Flesch-Kincaid grade level</td>
<td class="ltx_td ltx_align_center" id="S4.T1.39.39.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.39.39.1.m1.1"><semantics id="S4.T1.39.39.1.m1.1a"><mo id="S4.T1.39.39.1.m1.1.1" xref="S4.T1.39.39.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.39.39.1.m1.1b"><ci id="S4.T1.39.39.1.m1.1.1.cmml" xref="S4.T1.39.39.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.39.39.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.39.39.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.40.40.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.40.40.2.m1.1"><semantics id="S4.T1.40.40.2.m1.1a"><mo id="S4.T1.40.40.2.m1.1.1" xref="S4.T1.40.40.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.40.40.2.m1.1b"><ci id="S4.T1.40.40.2.m1.1.1.cmml" xref="S4.T1.40.40.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.40.40.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.40.40.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.40.40.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf6" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(f)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.42.42">
<td class="ltx_td ltx_align_left" id="S4.T1.42.42.3" style="padding-top:1pt;padding-bottom:1pt;">Flesch reading ease</td>
<td class="ltx_td ltx_align_center" id="S4.T1.41.41.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\searrow" class="ltx_Math" display="inline" id="S4.T1.41.41.1.m1.1"><semantics id="S4.T1.41.41.1.m1.1a"><mo id="S4.T1.41.41.1.m1.1.1" xref="S4.T1.41.41.1.m1.1.1.cmml">↘</mo><annotation-xml encoding="MathML-Content" id="S4.T1.41.41.1.m1.1b"><ci id="S4.T1.41.41.1.m1.1.1.cmml" xref="S4.T1.41.41.1.m1.1.1">↘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.41.41.1.m1.1c">\searrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.41.41.1.m1.1d">↘</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.42.42.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.42.42.2.m1.1"><semantics id="S4.T1.42.42.2.m1.1a"><mo id="S4.T1.42.42.2.m1.1.1" xref="S4.T1.42.42.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.42.42.2.m1.1b"><minus id="S4.T1.42.42.2.m1.1.1.cmml" xref="S4.T1.42.42.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.42.42.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.42.42.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.42.42.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F22.sf3" title="In Figure 22 ‣ D.3 Paragraph Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">22(c)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.44.44">
<td class="ltx_td ltx_align_left" id="S4.T1.44.44.3" style="padding-top:1pt;padding-bottom:1pt;">Coleman-Liau index</td>
<td class="ltx_td ltx_align_center" id="S4.T1.43.43.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.43.43.1.m1.1"><semantics id="S4.T1.43.43.1.m1.1a"><mo id="S4.T1.43.43.1.m1.1.1" xref="S4.T1.43.43.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.43.43.1.m1.1b"><ci id="S4.T1.43.43.1.m1.1.1.cmml" xref="S4.T1.43.43.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.43.43.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.43.43.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.44.44.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T1.44.44.2.m1.1"><semantics id="S4.T1.44.44.2.m1.1a"><mo id="S4.T1.44.44.2.m1.1.1" xref="S4.T1.44.44.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T1.44.44.2.m1.1b"><minus id="S4.T1.44.44.2.m1.1.1.cmml" xref="S4.T1.44.44.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.44.44.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T1.44.44.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.44.44.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F22.sf4" title="In Figure 22 ‣ D.3 Paragraph Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">22(d)</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.46.46">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.46.46.3" style="padding-top:1pt;padding-bottom:1pt;">Gunning Fox index</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.45.45.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.45.45.1.m1.1"><semantics id="S4.T1.45.45.1.m1.1a"><mo id="S4.T1.45.45.1.m1.1.1" xref="S4.T1.45.45.1.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.45.45.1.m1.1b"><ci id="S4.T1.45.45.1.m1.1.1.cmml" xref="S4.T1.45.45.1.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.45.45.1.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.45.45.1.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.46.46.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\nearrow" class="ltx_Math" display="inline" id="S4.T1.46.46.2.m1.1"><semantics id="S4.T1.46.46.2.m1.1a"><mo id="S4.T1.46.46.2.m1.1.1" xref="S4.T1.46.46.2.m1.1.1.cmml">↗</mo><annotation-xml encoding="MathML-Content" id="S4.T1.46.46.2.m1.1b"><ci id="S4.T1.46.46.2.m1.1.1.cmml" xref="S4.T1.46.46.2.m1.1.1">↗</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.46.46.2.m1.1c">\nearrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.46.46.2.m1.1d">↗</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.46.46.4" style="padding-top:1pt;padding-bottom:1pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#S4.F5.sf3" title="In Figure 5 ‣ LLM Simulation ‣ 4.3.1 Experiment Setups ‣ 4.3 Direct Impact 3: Linguistic Style ‣ 4 Direct Impact from LLMs ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">5(c)</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02879v1#A4.F22.sf5" title="In Figure 22 ‣ D.3 Paragraph Level ‣ Appendix D Linguistic Style ‣ Wikipedia in the Era of LLMs: Evolution and Risks"><span class="ltx_text ltx_ref_tag">22(e)</span></a>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table summarizes the observed trends in linguistic style within Wikipedia articles, both before and after processing by Large Language Models (LLMs).  The first column lists the linguistic features analyzed (e.g., auxiliary verb usage, sentence length). The second column shows the impact of LLM processing on these features (e.g., increase, decrease, no change). The third column indicates the trends in these features over time within Wikipedia articles themselves, independent of LLM influence. This allows for a comparison between how LLMs are altering Wikipedia's linguistic characteristics and the natural evolution of the Wikipedia writing style.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of linguistic style trends. The second column indicates the effects of LLM processing. The third column shows Wikipedia trends over time.
> </details>





### In-depth insights


#### LLM's Wiki Impact
Analyzing the impact of LLMs on Wikipedia is multifaceted. **Quantifying the direct influence is challenging**, as discerning LLM-generated edits from human contributions requires sophisticated detection methods. Metrics like page view fluctuations, word frequency shifts (increased use of LLM-favored terms), and linguistic style alterations (sentence complexity, part-of-speech distributions) offer clues, but causality is difficult to establish definitively. Simulations, where LLMs revise existing articles, provide a controlled environment to isolate LLM-induced changes, revealing potential biases (e.g., reduced auxiliary verbs, increased long words). Furthermore, the **indirect impact on NLP tasks** leveraging Wikipedia data is crucial. If LLMs subtly alter Wikipedia's content, benchmarks relying on it (machine translation, RAG) may become skewed, leading to inflated scores or altered comparative model performance. The 'pollution' of Wikipedia with LLM-generated content could also degrade the effectiveness of RAG systems. **Careful monitoring and development of robust detection mechanisms are essential** to mitigate potential risks and preserve the integrity of Wikipedia as a valuable knowledge resource.

#### MT inflated?
**If MT benchmarks use Wikipedia-derived sentences, and LLMs influence Wikipedia content, MT scores might be inflated.** This is because LLMs could subtly shape Wikipedia text towards patterns that favor certain MT architectures. If MT models are trained/evaluated on these biased sentences, their apparent performance boosts are misleading. Comparisons between models then become unreliable. Therefore, careful design of MT benchmarks is crucial to avoid this contamination and accurately reflect true translation capabilities. Constant data curation and scrutiny are must to measure real-world MT progress rather than artificial improvements.

#### Word use shifts
Analyzing word use shifts provides insights into **language evolution** and **cultural trends**. By tracking changes in word frequency and context, we can understand how language adapts to new concepts and technologies. This analysis also reveals shifts in public discourse and values. **Computational linguistics** enables automated tracking of these shifts over large text corpora. Examining changes in **sentiment analysis** and **topic modeling** can also expose subtle yet significant shifts in how we communicate and understand the world. The research can also highlight **biases and stereotypes** embedded in language, as well as how they evolve or persist over time.

#### RAG's content risk
**RAG systems heavily rely on the quality of the knowledge base, so LLM-generated content "polluting" the base becomes a major risk.** If the RAG pulls information from a source saturated with AI-written text, the results may be skewed. The system might reinforce existing biases or generate hallucinations because **AI-generated content often lacks the nuance and factual precision of human-written sources.** The RAG effectiveness could be compromised, potentially leading to less reliable results, especially with complex inquiries requiring in-depth reasoning. The study suggests if trusted sources are affected by AI content, there's a higher risk of degradation in information quality.

#### Style evolves
While the provided text doesn't explicitly contain a heading titled 'Style Evolving,' the research intrinsically delves into this concept by analyzing the impact of LLMs on Wikipedia's linguistic characteristics. The study examines how **word frequency, sentence structure, and overall readability** are influenced by LLMs. LLMs tend to generate articles that are harder to read. This indicates that LLMs are inducing changes in the writing style. By observing these trends over time and comparing them with LLM-generated content, the research infers that **Wikipedia's style is indeed evolving, subtly shifting towards the linguistic preferences of LLMs**. While the changes are not drastic, they signal a potential long-term shift in the character of a valuable and widely used knowledge base.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02879/x2.png)

> 🔼 This figure displays the monthly page view counts for various Wikipedia categories from the beginning of 2020 to the beginning of 2025.  To facilitate comparison across categories with differing scales of page view numbers, the raw page view data has been transformed using the Inverse Hyperbolic Sine (IHS) function, which standardizes the values.  Each line represents a different Wikipedia category, allowing for a visual comparison of trends over time and across categories.
> <details>
> <summary>read the caption</summary>
> Figure 2: Monthly page views across different Wikipedia categories. The vertical axis represents the transformed page view values, standardized using the Inverse Hyperbolic Sine (IHS) function.
> </details>



![](https://arxiv.org/html/2503.02879/x3.png)

> 🔼 The figure shows a line graph illustrating the trend of word frequency in the introductory sections of Wikipedia articles over time.  Each line represents a specific category (Art, Biology, Chemistry, Computer Science, etc.) and plots the frequency of the word 'crucial' within those articles. The x-axis represents the year (2020-2025) and the y-axis shows the frequency (per 1000 words). The graph helps visualize how the frequency of this specific word (and by implication, other LLM-associated words) has changed over time within each category of articles, offering insights into the possible influence of Large Language Models (LLMs).
> <details>
> <summary>read the caption</summary>
> Figure 3: Word frequency in the first section of the Wikipedia articles.
> </details>



![](https://arxiv.org/html/2503.02879/x4.png)

> 🔼 This figure displays the results of simulations conducted to quantify the impact of Large Language Models (LLMs) on Wikipedia articles.  The simulations used different sets of words across various Wikipedia categories and focused on the first section of each article. The Y-axis represents the estimated LLM impact, reflecting the degree to which LLMs influenced word frequencies within those sections.  The X-axis indicates the year, showing the impact of LLMs over time for different article categories. Each line on the graph corresponds to a different Wikipedia subject category. The graph helps to visualize how the impact of LLMs on Wikipedia varied between categories and across the period measured.
> <details>
> <summary>read the caption</summary>
> Figure 4: LLM Impact: Estimated based on simulations of the first section of Featured Articles, using different word combinations across different categories of Wikipedia pages.
> </details>



![](https://arxiv.org/html/2503.02879/x5.png)

> 🔼 This figure presents a comparison of the proportion of auxiliary verbs across different categories of Wikipedia articles and their counterparts after being processed by LLMs (Large Language Models). It compares the baseline proportion of auxiliary verbs (before LLM processing) with the proportions after processing by two different LLMs, GPT and Gemini.  The data is visualized using box plots for each Wikipedia category.  The purpose is to show how the use of auxiliary verbs is affected by LLMs.
> <details>
> <summary>read the caption</summary>
> (a) Auxiliary verbs proportion.
> </details>



![](https://arxiv.org/html/2503.02879/x12.png)

> 🔼 This figure presents a comparison of the proportion of passive voice usage across various categories of Wikipedia articles and their LLM-simulated counterparts. It helps to visualize the effect of LLMs on the linguistic style of Wikipedia content by showing how the passive voice is used differently before and after LLM processing. The comparison includes both Featured Articles (FA), Simple Articles (SA), and the results of LLM simulations (FA-GPT, FA-Gem, SA-GPT, SA-Gem). This allows for an analysis of how LLMs might alter the linguistic style of the articles.
> <details>
> <summary>read the caption</summary>
> (b) Passive voice proportion.
> </details>



![](https://arxiv.org/html/2503.02879/x13.png)

> 🔼 This figure compares the readability metrics (Automated Readability Index, Coleman-Liau Index, Dale-Chall Score, Flesch Reading Ease, Flesch-Kincaid Grade Level, and Gunning Fog Index) of Wikipedia articles before and after processing by LLMs (GPT and Gemini).  It shows the relative readability differences between the original Wikipedia text and the LLM-processed versions for Featured Articles (FA) and Simple Articles (SA).
> <details>
> <summary>read the caption</summary>
> (c) Readability metrics comparison.
> </details>



![](https://arxiv.org/html/2503.02879/x16.png)

> 🔼 This figure shows the change in the proportion of auxiliary verbs used in Wikipedia articles over time, comparing the proportion before and after the impact of LLMs.  It specifically visualizes how the frequency of auxiliary verbs has changed across different categories of Wikipedia articles from 2020 to 2025. The graph helps to illustrate one aspect of the linguistic style changes potentially caused by Large Language Models (LLMs) on Wikipedia.
> <details>
> <summary>read the caption</summary>
> (d) Change in auxiliary verbs proportion.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.5">
<tr class="ltx_tr" id="S5.T2.5.1">
<td class="ltx_td ltx_border_tt" id="S5.T2.5.1.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.5.1.2" style="padding-top:1pt;padding-bottom:1pt;">BLEU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.5.1.3" style="padding-top:1pt;padding-bottom:1pt;">ChrF</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.5.1.4" style="padding-top:1pt;padding-bottom:1pt;">COMET</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.2">
<td class="ltx_td" id="S5.T2.5.2.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.2" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.3" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.4" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.5" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.6" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.7" style="padding-top:1pt;padding-bottom:1pt;">G</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.5.3.1" style="padding-top:1pt;padding-bottom:1pt;">FR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.5.3.2.1">87.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.5.3.3.1">96.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.4" style="padding-top:1pt;padding-bottom:1pt;">94.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.5" style="padding-top:1pt;padding-bottom:1pt;">99.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.6" style="padding-top:1pt;padding-bottom:1pt;">90.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.3.7" style="padding-top:1pt;padding-bottom:1pt;">87.79</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.4">
<td class="ltx_td ltx_align_left" id="S5.T2.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">DE</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">72.39</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">93.38</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">77.98</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">96.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">84.70</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">86.37</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5">
<td class="ltx_td ltx_align_left" id="S5.T2.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">ZH</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">72.14</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">78.61</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">67.06</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">78.19</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.6" style="padding-top:1pt;padding-bottom:1pt;">82.40</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.7" style="padding-top:1pt;padding-bottom:1pt;">83.91</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.6">
<td class="ltx_td ltx_align_left" id="S5.T2.5.6.1" style="padding-top:1pt;padding-bottom:1pt;">AR</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.2" style="padding-top:1pt;padding-bottom:1pt;">71.86</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.3" style="padding-top:1pt;padding-bottom:1pt;">78.73</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.4" style="padding-top:1pt;padding-bottom:1pt;">83.89</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.5" style="padding-top:1pt;padding-bottom:1pt;">88.61</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.6" style="padding-top:1pt;padding-bottom:1pt;">83.19</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.7" style="padding-top:1pt;padding-bottom:1pt;">84.04</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.7">
<td class="ltx_td ltx_align_left" id="S5.T2.5.7.1" style="padding-top:1pt;padding-bottom:1pt;">PT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.2" style="padding-top:1pt;padding-bottom:1pt;">69.59</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.3" style="padding-top:1pt;padding-bottom:1pt;">87.71</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.4" style="padding-top:1pt;padding-bottom:1pt;">79.41</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.5" style="padding-top:1pt;padding-bottom:1pt;">92.02</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.6" style="padding-top:1pt;padding-bottom:1pt;">88.93</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.7" style="padding-top:1pt;padding-bottom:1pt;">90.45</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.8">
<td class="ltx_td ltx_align_left" id="S5.T2.5.8.1" style="padding-top:1pt;padding-bottom:1pt;">JA</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.2" style="padding-top:1pt;padding-bottom:1pt;">62.05</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.3" style="padding-top:1pt;padding-bottom:1pt;">64.21</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.4" style="padding-top:1pt;padding-bottom:1pt;">56.86</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.5" style="padding-top:1pt;padding-bottom:1pt;">58.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.6" style="padding-top:1pt;padding-bottom:1pt;">62.61</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.8.7" style="padding-top:1pt;padding-bottom:1pt;">62.87</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.9">
<td class="ltx_td ltx_align_left" id="S5.T2.5.9.1" style="padding-top:1pt;padding-bottom:1pt;">ES</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.2" style="padding-top:1pt;padding-bottom:1pt;">59.25</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.3" style="padding-top:1pt;padding-bottom:1pt;">84.44</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.4" style="padding-top:1pt;padding-bottom:1pt;">73.70</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.5" style="padding-top:1pt;padding-bottom:1pt;">90.70</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.6" style="padding-top:1pt;padding-bottom:1pt;">85.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.7" style="padding-top:1pt;padding-bottom:1pt;">89.49</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.10">
<td class="ltx_td ltx_align_left" id="S5.T2.5.10.1" style="padding-top:1pt;padding-bottom:1pt;">IT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.2" style="padding-top:1pt;padding-bottom:1pt;">58.60</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.3" style="padding-top:1pt;padding-bottom:1pt;">62.14</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.4" style="padding-top:1pt;padding-bottom:1pt;">67.31</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.5" style="padding-top:1pt;padding-bottom:1pt;">78.22</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.6" style="padding-top:1pt;padding-bottom:1pt;">85.22</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.10.7" style="padding-top:1pt;padding-bottom:1pt;">88.72</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.11">
<td class="ltx_td ltx_align_left" id="S5.T2.5.11.1" style="padding-top:1pt;padding-bottom:1pt;">HI</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.2" style="padding-top:1pt;padding-bottom:1pt;">58.49</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.3" style="padding-top:1pt;padding-bottom:1pt;">67.29</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.4" style="padding-top:1pt;padding-bottom:1pt;">75.25</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.5" style="padding-top:1pt;padding-bottom:1pt;">80.64</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.6" style="padding-top:1pt;padding-bottom:1pt;">59.53</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.11.7" style="padding-top:1pt;padding-bottom:1pt;">60.16</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.12">
<td class="ltx_td ltx_align_left" id="S5.T2.5.12.1" style="padding-top:1pt;padding-bottom:1pt;">KO</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.2" style="padding-top:1pt;padding-bottom:1pt;">54.75</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.3" style="padding-top:1pt;padding-bottom:1pt;">78.35</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.4" style="padding-top:1pt;padding-bottom:1pt;">52.50</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.5" style="padding-top:1pt;padding-bottom:1pt;">69.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.6" style="padding-top:1pt;padding-bottom:1pt;">25.94</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.12.7" style="padding-top:1pt;padding-bottom:1pt;">25.98</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.5.13.1" style="padding-top:1pt;padding-bottom:1pt;">RU</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.2" style="padding-top:1pt;padding-bottom:1pt;">51.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.3" style="padding-top:1pt;padding-bottom:1pt;">63.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.4" style="padding-top:1pt;padding-bottom:1pt;">73.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.5" style="padding-top:1pt;padding-bottom:1pt;">84.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.6" style="padding-top:1pt;padding-bottom:1pt;">84.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.13.7" style="padding-top:1pt;padding-bottom:1pt;">86.37</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of the Facebook-NLLB machine translation model on three evaluation metrics (BLEU, ChrF, and COMET) using two different benchmarks: the original benchmark (O) and a GPT-processed benchmark (G). The GPT-processed benchmark involves translating English sentences from the original benchmark into multiple languages using GPT-40-mini and then using those translated sentences to test the machine translation models.  This comparison aims to reveal how the modifications introduced by LLMs, such as changes in vocabulary and linguistic style, affect the performance of machine translation models.
> <details>
> <summary>read the caption</summary>
> Table 2: Facebook-NLLB Results on BLEU, ChrF, and COMET Metrics. O and G represent the original benchmark and GPT-processed benchmark, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.1">
<tr class="ltx_tr" id="S5.T3.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">BLEU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">ChrF</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">COMET</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.2">
<td class="ltx_td" id="S5.T3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">G</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">FR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.3.2.1">88.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.3.3.1">89.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">91.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">91.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">88.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">89.91</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">DE</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">68.07</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">90.68</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">77.17</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">94.83</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">86.35</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">87.98</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5">
<td class="ltx_td ltx_align_left" id="S5.T3.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">ZH</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">70.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">75.32</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">59.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">65.10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">84.19</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">85.73</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6">
<td class="ltx_td ltx_align_left" id="S5.T3.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">AR</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">67.52</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">70.99</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">80.70</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">87.20</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">85.24</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">86.14</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.7">
<td class="ltx_td ltx_align_left" id="S5.T3.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">PT</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">69.74</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">85.99</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">81.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">91.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.6" style="padding-top:1pt;padding-bottom:1pt;">90.71</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.7" style="padding-top:1pt;padding-bottom:1pt;">92.31</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.8">
<td class="ltx_td ltx_align_left" id="S5.T3.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">JA</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">49.48</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">45.28</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">49.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">46.40</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">64.15</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.7" style="padding-top:1pt;padding-bottom:1pt;">64.37</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.9">
<td class="ltx_td ltx_align_left" id="S5.T3.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">ES</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">60.00</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">84.07</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">74.45</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.5" style="padding-top:1pt;padding-bottom:1pt;">91.26</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.6" style="padding-top:1pt;padding-bottom:1pt;">86.91</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7" style="padding-top:1pt;padding-bottom:1pt;">91.24</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.10">
<td class="ltx_td ltx_align_left" id="S5.T3.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">IT</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.2" style="padding-top:1pt;padding-bottom:1pt;">56.14</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.3" style="padding-top:1pt;padding-bottom:1pt;">69.32</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.4" style="padding-top:1pt;padding-bottom:1pt;">67.97</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.5" style="padding-top:1pt;padding-bottom:1pt;">82.04</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.6" style="padding-top:1pt;padding-bottom:1pt;">87.53</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.10.7" style="padding-top:1pt;padding-bottom:1pt;">90.11</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.11">
<td class="ltx_td ltx_align_left" id="S5.T3.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">HI</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.2" style="padding-top:1pt;padding-bottom:1pt;">46.85</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.3" style="padding-top:1pt;padding-bottom:1pt;">49.37</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.4" style="padding-top:1pt;padding-bottom:1pt;">58.20</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.5" style="padding-top:1pt;padding-bottom:1pt;">57.06</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.6" style="padding-top:1pt;padding-bottom:1pt;">62.31</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.11.7" style="padding-top:1pt;padding-bottom:1pt;">63.18</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.12">
<td class="ltx_td ltx_align_left" id="S5.T3.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">KO</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.2" style="padding-top:1pt;padding-bottom:1pt;">45.28</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.3" style="padding-top:1pt;padding-bottom:1pt;">57.53</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.4" style="padding-top:1pt;padding-bottom:1pt;">58.36</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.5" style="padding-top:1pt;padding-bottom:1pt;">68.94</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.6" style="padding-top:1pt;padding-bottom:1pt;">29.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.12.7" style="padding-top:1pt;padding-bottom:1pt;">29.48</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">RU</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.2" style="padding-top:1pt;padding-bottom:1pt;">44.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.3" style="padding-top:1pt;padding-bottom:1pt;">69.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.4" style="padding-top:1pt;padding-bottom:1pt;">70.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.5" style="padding-top:1pt;padding-bottom:1pt;">81.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.6" style="padding-top:1pt;padding-bottom:1pt;">86.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.13.7" style="padding-top:1pt;padding-bottom:1pt;">87.83</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the evaluation results of three machine translation metrics (BLEU, ChrF, and COMET) on the Helsinki-NLP machine translation benchmark.  The results are shown for both the original benchmark and a modified benchmark where the English sentences have been translated by LLMs (GPT-40-mini) into other languages before being evaluated by machine translation models.  This comparison illustrates the impact of LLM-processed data on machine translation evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Table 3: Helsinki-NLP Results on BLEU, ChrF, and COMET Metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Art</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Bio</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">Chem</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">CS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Math</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Philo</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Phy</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.1.1.9" style="padding-top:1pt;padding-bottom:1pt;">Sports</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.2.1.1">Crawl Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.2.9" style="padding-top:1pt;padding-bottom:1pt;">4</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.3.1.1">Number of Pages</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">57,028</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">44,617</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">53,282</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">59,097</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">47,004</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">33,596</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">40,986</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T4.1.3.9" style="padding-top:1pt;padding-bottom:1pt;">53,900</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the number of Wikipedia articles used in the study for each of the eight categories analyzed: Art, Biology, Computer Science, Chemistry, Mathematics, Philosophy, Physics, and Sports.  It also shows the depth of the hierarchical Wikipedia category structure that was crawled to obtain those articles.
> <details>
> <summary>read the caption</summary>
> Table 4: Number of Wikipedia articles crawled per category.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T5.1">
<tr class="ltx_tr" id="A3.T5.1.1">
<td class="ltx_td ltx_border_tt" id="A3.T5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">BLEU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">ChrF</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">COMET</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.2">
<td class="ltx_td" id="A3.T5.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">O</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">G</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">DE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">71.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">80.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">84.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">93.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">83.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">85.63</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">FR</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">68.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">65.93</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">87.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">86.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">85.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">87.01</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of Google's T5 multilingual machine translation model performance on a benchmark. The benchmark evaluates translations across several languages, comparing the model's outputs to human references using three metrics: BLEU, ChrF, and COMET.  The 'O' column represents the original benchmark, while the 'G' column shows results after the benchmark was processed using GPT, illustrating the impact of LLMs on the benchmark and evaluation results.
> <details>
> <summary>read the caption</summary>
> Table 5: Google-T5 results on some metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T6.1">
<tr class="ltx_tr" id="A4.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T6.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T6.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">75.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">85.34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">85.63%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">79.60%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">95.98%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">95.40%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">87.36%</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.3">
<td class="ltx_td ltx_align_left" id="A4.T6.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">71.74%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">86.31%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">88.96%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">79.69%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">96.03%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">96.03%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">88.08%</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.4">
<td class="ltx_td ltx_align_left" id="A4.T6.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">80.00%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">89.49%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">87.18%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">84.10%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">95.64%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">95.64%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">88.97%</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.5">
<td class="ltx_td ltx_align_left" id="A4.T6.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">77.46%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">87.09%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">87.09%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">83.33%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">96.01%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">94.84%</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">87.09%</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T6.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">66.67%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">83.33%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">84.58%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">82.08%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">95.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">95.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">88.75%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-40-mini language model on a question answering task using the Retrieval Augmented Generation (RAG) technique.  The questions were generated by another GPT model.  The table shows the accuracy of GPT-40-mini across different question answering methods (Direct Ask, RAG using original content, RAG using GPT-modified content, RAG using Gemini-modified content, and Full Context using original, GPT-modified, and Gemini-modified content), and across different years (2020-2024). This allows for evaluating the impact of LLMs on the accuracy of RAG.
> <details>
> <summary>read the caption</summary>
> Table 6: GPT-4o-mini performance on RAG task (problem generated by GPT).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T7.1">
<tr class="ltx_tr" id="A4.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T7.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">66.95%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">82.76%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">82.47%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">75.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">93.68%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">91.38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">84.20%</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.3">
<td class="ltx_td ltx_align_left" id="A4.T7.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">64.68%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">81.90%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">82.34%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">75.06%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">94.04%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">93.82%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">82.12%</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.4">
<td class="ltx_td ltx_align_left" id="A4.T7.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">73.54%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">86.01%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">85.75%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">78.88%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">94.66%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">93.89%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">83.21%</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.5">
<td class="ltx_td ltx_align_left" id="A4.T7.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">69.95%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">82.39%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">83.10%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">78.40%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">92.49%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">92.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">83.57%</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">61.25%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">79.58%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">75.42%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">75.42%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">92.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">92.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">82.92%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-40-mini language model on a question answering task using the Retrieval Augmented Generation (RAG) method.  The questions for this task were generated by the Gemini language model. The table shows the accuracy of GPT-40-mini under different conditions:  Direct Ask (no RAG), RAG using the original Wikipedia text, RAG using Wikipedia text modified by GPT-40-mini, RAG using Wikipedia text modified by Gemini, and Full (original) text, Full (GPT-processed), and Full (Gemini-processed) showing the performance with the full original, GPT processed, and Gemini processed Wikipedia content available as context.
> <details>
> <summary>read the caption</summary>
> Table 7: GPT-4o-mini performance on RAG task (problem generated by Gemini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T8.1">
<tr class="ltx_tr" id="A4.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">68.68%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">77.59%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">78.16%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">74.14%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">86.21%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">87.93%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">87.36%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3">
<td class="ltx_td ltx_align_left" id="A4.T8.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">67.11%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">79.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">79.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">74.17%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">87.42%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">88.30%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">84.99%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.4">
<td class="ltx_td ltx_align_left" id="A4.T8.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">70.26%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">82.82%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">80.77%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">78.97%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">88.46%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">90.51%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">88.46%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.5">
<td class="ltx_td ltx_align_left" id="A4.T8.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">64.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">74.88%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">76.06%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">71.83%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">86.85%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">88.73%</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">84.27%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">60.42%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">77.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">75.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">75.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">92.08%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">89.17%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">83.75%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-3.5 language model on a question answering task using the RAG (Retrieval Augmented Generation) method. The questions were generated by the GPT language model, and the performance is measured across different settings and time periods (years).  The metrics used likely assess the accuracy of the answers provided by GPT-3.5 when retrieving information from a knowledge base using the RAG technique. The settings likely involve variations in question answering techniques such as directly asking the model, using RAG with original content, and using RAG with content modified by different LLMs.
> <details>
> <summary>read the caption</summary>
> Table 8: GPT-3.5 Performance on RAG task (problem generated by GPT).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T9.1">
<tr class="ltx_tr" id="A4.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T9.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">66.95%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">72.70%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">72.41%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">68.97%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">77.87%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">79.31%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">77.59%</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.3">
<td class="ltx_td ltx_align_left" id="A4.T9.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">58.72%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">73.73%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">71.74%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">68.21%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">81.02%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">79.47%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">74.17%</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.4">
<td class="ltx_td ltx_align_left" id="A4.T9.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">62.09%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">74.05%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">72.77%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">69.47%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">82.44%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">82.19%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">80.41%</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.5">
<td class="ltx_td ltx_align_left" id="A4.T9.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">56.57%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">73.24%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">74.88%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">67.14%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">77.46%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">79.58%</td>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">74.65%</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T9.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">55.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">71.67%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">70.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">65.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">77.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">80.42%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">76.67%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-3.5 language model on the RAG (Retrieval-Augmented Generation) task.  The questions for this task were generated by the Gemini language model. The table shows the accuracy of GPT-3.5 in answering questions across different scenarios and time periods (years 2020-2024).  The scenarios include directly asking the question, using RAG with the original Wikipedia text, using RAG with GPT-3.5 revised text, using RAG with Gemini revised text, using the full original Wikipedia text, using the full GPT-3.5 revised text, and using the full Gemini revised text.  The results are expressed as percentages.
> <details>
> <summary>read the caption</summary>
> Table 9: GPT-3.5 Performance on RAG task (problem generated by Gemini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T10.1">
<tr class="ltx_tr" id="A4.T10.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T10.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T10.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T10.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">75.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">85.76%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">86.28%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">80.03%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">96.19%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">95.76%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">89.15%</td>
</tr>
<tr class="ltx_tr" id="A4.T10.1.3">
<td class="ltx_td ltx_align_left" id="A4.T10.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">71.74%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">86.53%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">89.24%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">80.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">96.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">96.36%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">89.85%</td>
</tr>
<tr class="ltx_tr" id="A4.T10.1.4">
<td class="ltx_td ltx_align_left" id="A4.T10.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">80.00%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">89.87%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">88.14%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">84.55%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">95.90%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">95.96%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">90.51%</td>
</tr>
<tr class="ltx_tr" id="A4.T10.1.5">
<td class="ltx_td ltx_align_left" id="A4.T10.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">77.52%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">87.44%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">87.32%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">83.69%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">96.24%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">95.18%</td>
<td class="ltx_td ltx_align_center" id="A4.T10.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">89.14%</td>
</tr>
<tr class="ltx_tr" id="A4.T10.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T10.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">67.60%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">83.75%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">85.21%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">82.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">96.15%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">96.15%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">90.10%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-40-mini language model on a question answering task using the RAG (Retrieval-Augmented Generation) method.  The questions were generated by the GPT language model.  A key feature of this table is that instances where the model produced no output (Null Output) were assigned a score of 0.25 to account for these cases in the overall performance evaluation. The table is broken down by year and shows the performance across different question answering methods.
> <details>
> <summary>read the caption</summary>
> Table 10: GPT-4o-mini performance on RAG task (problem generated by GPT), Null Output is counted as 0.25.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T11.1">
<tr class="ltx_tr" id="A4.T11.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T11.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">67.53%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">82.90%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">82.54%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">76.29%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">93.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">91.45%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">85.70%</td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.3">
<td class="ltx_td ltx_align_left" id="A4.T11.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">65.01%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">81.95%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">82.40%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">75.22%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">94.21%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">93.87%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">83.83%</td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.4">
<td class="ltx_td ltx_align_left" id="A4.T11.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">73.98%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">86.20%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">85.94%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">79.07%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">94.85%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">94.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">84.80%</td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.5">
<td class="ltx_td ltx_align_left" id="A4.T11.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">70.42%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">82.63%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">83.39%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">78.64%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">92.72%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">92.55%</td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">85.27%</td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T11.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">62.50%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">80.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">75.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">75.94%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">93.65%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">93.33%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">85.00%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of GPT-40-mini's performance on the RAG (Retrieval Augmented Generation) task.  The questions for this task were generated by the Gemini language model.  A key aspect of this experiment is that a 'Null Output' (when the model failed to produce a response) is treated as having 0.25 accuracy, influencing the overall accuracy scores reported.  The table shows accuracy percentages across different question types (Direct Ask, RAG using original text, RAG with GPT-processed text, RAG with Gemini-processed text) and across different years (2020-2024). This allows for analysis of how well the model performs under various conditions and over time.
> <details>
> <summary>read the caption</summary>
> Table 11: GPT-4o-mini performance on RAG task (problem generated by Gemini) , Null Output is counted as 0.25.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T12.1">
<tr class="ltx_tr" id="A4.T12.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T12.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T12.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T12.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">68.68%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">77.59%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">78.16%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">74.14%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">86.35%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">87.93%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">87.36%</td>
</tr>
<tr class="ltx_tr" id="A4.T12.1.3">
<td class="ltx_td ltx_align_left" id="A4.T12.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">67.11%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">79.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">79.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">74.17%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">87.42%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">88.30%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">85.15%</td>
</tr>
<tr class="ltx_tr" id="A4.T12.1.4">
<td class="ltx_td ltx_align_left" id="A4.T12.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">70.26%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">82.82%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">80.77%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">78.97%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">88.59%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">90.51%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">88.65%</td>
</tr>
<tr class="ltx_tr" id="A4.T12.1.5">
<td class="ltx_td ltx_align_left" id="A4.T12.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">64.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">74.88%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">76.06%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">71.83%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">86.91%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">88.79%</td>
<td class="ltx_td ltx_align_center" id="A4.T12.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">84.51%</td>
</tr>
<tr class="ltx_tr" id="A4.T12.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T12.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">60.42%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">77.92%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">75.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">75.83%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">92.29%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">89.17%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">83.75%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of using the GPT-3.5 language model to answer questions generated by another GPT model, within the framework of Retrieval Augmented Generation (RAG).  The questions are based on the Wikinews dataset. The performance is measured by accuracy, with 'Null Output' scenarios (where the model fails to provide an answer) being assigned an accuracy score of 0.25.  The table shows the accuracy across different querying methods (direct ask, RAG using original content, RAG using GPT-processed content, and RAG using Gemini-processed content) and across different years (2020-2024), to illustrate the impact of LLMs on RAG's effectiveness over time.
> <details>
> <summary>read the caption</summary>
> Table 12: GPT-3.5 performance on RAG task (problem generated by GPT) , Null Output is counted as 0.25.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T13.1">
<tr class="ltx_tr" id="A4.T13.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T13.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Direct Ask</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">RAG (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">RAG (Gem)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Full (Original)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Full (GPT)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">Full (Gem)</td>
</tr>
<tr class="ltx_tr" id="A4.T13.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T13.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">66.95%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">72.70%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">72.49%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">68.97%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">77.95%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">79.31%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">77.66%</td>
</tr>
<tr class="ltx_tr" id="A4.T13.1.3">
<td class="ltx_td ltx_align_left" id="A4.T13.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">58.72%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">73.79%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">71.74%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">68.21%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">81.13%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">79.53%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">74.34%</td>
</tr>
<tr class="ltx_tr" id="A4.T13.1.4">
<td class="ltx_td ltx_align_left" id="A4.T13.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">62.28%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">74.11%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">72.84%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">69.53%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">82.44%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">82.25%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">80.47%</td>
</tr>
<tr class="ltx_tr" id="A4.T13.1.5">
<td class="ltx_td ltx_align_left" id="A4.T13.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">56.57%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">73.24%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">74.88%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">67.14%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">77.70%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">79.69%</td>
<td class="ltx_td ltx_align_center" id="A4.T13.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">74.82%</td>
</tr>
<tr class="ltx_tr" id="A4.T13.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T13.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">55.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">71.67%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">70.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">65.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">78.12%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">80.52%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">76.67%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of using GPT-3.5 for the RAG task.  The questions for this task were generated by Gemini.  The results show the accuracy of GPT-3.5 in answering questions, broken down by different methods (Direct Ask, RAG using original text, RAG using GPT-revised text, RAG using Gemini-revised text, and using full original text, full GPT-revised text, and full Gemini-revised text).  The performance is evaluated across different years (2020-2024) and a null output is counted as 0.25 accuracy.
> <details>
> <summary>read the caption</summary>
> Table 13: GPT-3.5 performance on RAG task (problem generated by Gemini) , Null Output is counted as 0.25.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T14.1">
<tr class="ltx_tr" id="A5.T14.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T14.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Models</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T14.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Knowledge Cutoff</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T14.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Temperature</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T14.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">Top-p</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T14.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-3.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T14.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">September 2021</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T14.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T14.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.3">
<td class="ltx_td ltx_align_left" id="A5.T14.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="A5.T14.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">October 2023</td>
<td class="ltx_td ltx_align_center" id="A5.T14.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T14.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T14.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Gemini-1.5-flash</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T14.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">May 2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T14.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T14.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.95</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the parameters used for the Large Language Models (LLMs) during the Retrieval Augmented Generation (RAG) simulations in the study.  It shows the specific LLM models used (GPT-3.5, GPT-40-mini, and Gemini-1.5-flash), the knowledge cutoff date for each model (the most recent date the model was trained on), and the temperature and top-p values used to control the randomness and creativity of the model's outputs during the RAG process.
> <details>
> <summary>read the caption</summary>
> Table 14: LLM parameters Used in RAG simulations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T15.1">
<tr class="ltx_tr" id="A5.T15.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T15.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T15.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T15.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">2021</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T15.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">2022</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T15.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">2023</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T15.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">2024</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Number of GPT genertated Questions</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T15.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">348</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T15.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">453</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T15.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">390</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T15.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">426</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T15.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">240</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T15.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Number of Gemini genertated Question</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T15.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">348</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T15.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">453</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T15.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">393</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T15.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">426</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T15.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">240</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the number of questions generated annually by two different large language models (LLMs), GPT and Gemini, from 2020 to 2024.  These questions were used in the RAG (Retrieval Augmented Generation) experiments detailed in the paper. The data provides context on the volume of queries used in the study's evaluation of LLM performance in a question-answering scenario.
> <details>
> <summary>read the caption</summary>
> Table 15: Annual Number of Questions Generated by Different LLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02879/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02879/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}