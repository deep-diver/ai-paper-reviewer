---
title: ""Silent Is Not Actually Silent": An Investigation of Toxicity on Bug Report Discussion"
summary: "Toxicity derails bug report discussions, hindering resolutions in open source projects. "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Security", "🏢 Missouri University of Science and Technology",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10072 {{< /keyword >}}
{{< keyword icon="writer" >}} Mia Mohammad Imran et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10072" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10072" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10072/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Bug reports, crucial for identifying and resolving software defects, are susceptible to toxic interactions due to their problem-focused nature. Such toxicity disrupts communication, hampers collaboration, and may discourage users, ultimately derailing collaborative efforts needed for resolving software issues. Prior research has explored toxicity in broader software engineering contexts, but bug reports remain underexplored. This study bridges the gap by analyzing how toxicity manifests in bug reports and its effects on bug resolution. 



This paper qualitatively analyzes 203 bug threads from GitHub, identifying 81 with toxic interactions. The findings showed that toxicity often arises from misaligned perceptions of bug severity, unresolved frustrations with tools, and lapses in professional communication. The research also found that toxic interactions hinder collaboration and reduce the likelihood of actionable outcomes, such as linking issues with pull requests. The insights offer actionable recommendations to **mitigate toxicity, enhance communication, and improve bug resolution**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Toxicity often stems from mismatched perceptions of bug severity and priority. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Toxic interactions reduce the likelihood of bug resolution through pull requests or fixes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Toxicity can extend beyond interpersonal negativity, including negative sentiment toward the technology involved. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers, especially in software engineering and open-source development, because it highlights the impact of toxicity on bug resolution. By identifying toxicity patterns and their effects on collaboration, it paves the way for **developing automated systems to mitigate toxicity**. This research underscores the importance of fostering a constructive online environment and offers insights for future investigations into improving communication and collaboration in software projects.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10072/x1.png)

> 🔼 The figure displays a screenshot of a GitHub bug report discussion thread. It highlights an example of toxic interaction between users and maintainers.  The blue-marked text in the screenshot shows the phrases that are considered toxic. The example depicts how a user reports a bug, and a maintainer dismisses it, leading to escalated negative comments and accusations.
> <details>
> <summary>read the caption</summary>
> Figure 1. Toxic Interaction in Bug Report Discussion (blue marked text shows toxic phrase)
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.2">
<tr class="ltx_tr" id="S2.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.2.2.3"><span class="ltx_text" id="S2.T1.2.2.3.1" style="font-size:80%;">Issue Thread</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.2.4"><span class="ltx_text" id="S2.T1.2.2.4.1" style="font-size:80%;">Count</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.1">
<span class="ltx_text" id="S2.T1.1.1.1.1" style="font-size:80%;">ToxiCR (</span><math alttext="\geq 0.5" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><mrow id="S2.T1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.m1.1.1.cmml"><mi id="S2.T1.1.1.1.m1.1.1.2" xref="S2.T1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S2.T1.1.1.1.m1.1.1.1" mathsize="80%" xref="S2.T1.1.1.1.m1.1.1.1.cmml">≥</mo><mn id="S2.T1.1.1.1.m1.1.1.3" mathsize="80%" xref="S2.T1.1.1.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><apply id="S2.T1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1"><geq id="S2.T1.1.1.1.m1.1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S2.T1.1.1.1.m1.1.1.2.cmml" xref="S2.T1.1.1.1.m1.1.1.2">absent</csymbol><cn id="S2.T1.1.1.1.m1.1.1.3.cmml" type="float" xref="S2.T1.1.1.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">\geq 0.5</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">≥ 0.5</annotation></semantics></math><span class="ltx_text" id="S2.T1.1.1.1.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.2.2">
<span class="ltx_text" id="S2.T1.2.2.2.1" style="font-size:80%;">LLaMA (</span><math alttext="\geq 0.7" class="ltx_Math" display="inline" id="S2.T1.2.2.2.m1.1"><semantics id="S2.T1.2.2.2.m1.1a"><mrow id="S2.T1.2.2.2.m1.1.1" xref="S2.T1.2.2.2.m1.1.1.cmml"><mi id="S2.T1.2.2.2.m1.1.1.2" xref="S2.T1.2.2.2.m1.1.1.2.cmml"></mi><mo id="S2.T1.2.2.2.m1.1.1.1" mathsize="80%" xref="S2.T1.2.2.2.m1.1.1.1.cmml">≥</mo><mn id="S2.T1.2.2.2.m1.1.1.3" mathsize="80%" xref="S2.T1.2.2.2.m1.1.1.3.cmml">0.7</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.m1.1b"><apply id="S2.T1.2.2.2.m1.1.1.cmml" xref="S2.T1.2.2.2.m1.1.1"><geq id="S2.T1.2.2.2.m1.1.1.1.cmml" xref="S2.T1.2.2.2.m1.1.1.1"></geq><csymbol cd="latexml" id="S2.T1.2.2.2.m1.1.1.2.cmml" xref="S2.T1.2.2.2.m1.1.1.2">absent</csymbol><cn id="S2.T1.2.2.2.m1.1.1.3.cmml" type="float" xref="S2.T1.2.2.2.m1.1.1.3">0.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.m1.1c">\geq 0.7</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.m1.1d">≥ 0.7</annotation></semantics></math><span class="ltx_text" id="S2.T1.2.2.2.2" style="font-size:80%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.2.3.1"><span class="ltx_text" id="S2.T1.2.3.1.1" style="font-size:80%;">Total Thread</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.3.2"><span class="ltx_text" id="S2.T1.2.3.2.1" style="font-size:80%;">8,723</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.3.3"><span class="ltx_text" id="S2.T1.2.3.3.1" style="font-size:80%;">861</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.3.4"><span class="ltx_text" id="S2.T1.2.3.4.1" style="font-size:80%;">789</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.2.4.1"><span class="ltx_text" id="S2.T1.2.4.1.1" style="font-size:80%;">Selected Thread</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.4.2"><span class="ltx_text" id="S2.T1.2.4.2.1" style="font-size:80%;">203</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.4.3"><span class="ltx_text" id="S2.T1.2.4.3.1" style="font-size:80%;">186</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.4.4"><span class="ltx_text" id="S2.T1.2.4.4.1" style="font-size:80%;">165</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S2.T1.2.5.1"><span class="ltx_text" id="S2.T1.2.5.1.1" style="font-size:80%;">Labeled as Toxic</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S2.T1.2.5.2"><span class="ltx_text" id="S2.T1.2.5.2.1" style="font-size:80%;">81</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S2.T1.2.5.3"><span class="ltx_text" id="S2.T1.2.5.3.1" style="font-size:80%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S2.T1.2.5.4"><span class="ltx_text" id="S2.T1.2.5.4.1" style="font-size:80%;">59</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the dataset used in the study. It shows the initial number of issue threads collected (8,723), the number of threads flagged as toxic by at least one of the toxicity detection models used (ToxiCR and LLAMA), the subset of threads selected for the qualitative analysis (203), and the number of those selected threads labeled as toxic (81).  It highlights the process of sampling and filtering bug reports from a large pool to obtain a focused dataset for the qualitative study.
> <details>
> <summary>read the caption</summary>
> Table 1. Data Sampling
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10072/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10072/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10072/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10072/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10072/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}