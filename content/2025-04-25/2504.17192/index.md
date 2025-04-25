---
title: "Paper2Code: Automating Code Generation from Scientific Papers in Machine Learning"
summary: "Paper2Code: LLM agents that turns machine learning papers into code, automating implementation and boosting reproducibility!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 KAIST",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17192 {{< /keyword >}}
{{< keyword icon="writer" >}} Minju Seo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17192" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17192" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17192/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reproducibility is a major challenge in machine learning research, with many papers lacking available code implementations. This makes it time-consuming for researchers to validate and build upon existing work. Large language models(LLMs) have shown promise in understanding and generating code, but their ability to create faithful implementations from research papers alone is uncertain.



To address this, PaperCoder, a multi-agent framework that uses LLMs to transform machine learning papers into functional code repositories. The framework operates in three stages: planning, analysis, and generation, using specialized agents to collaborate. Evaluations show PaperCoder creates high-quality and faithful implementations, surpassing strong baselines.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PaperCoder can create high-quality code from research papers {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The generated repositories can be executed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PaperCoder's method improve research reproducibility. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces PaperCoder, a novel approach to automatically generate executable code repositories from machine learning research papers, enhancing reproducibility and accelerating scientific innovation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17192/x3.png)

> 🔼 Figure 1(a) illustrates the PaperCoder framework's three-stage process: planning (high-level roadmap creation, system architecture design, dependency identification, configuration file generation), analysis (interpretation of implementation details), and code generation (creation of modular, dependency-aware code).  Figure 1(b) presents a bar chart showing the code availability in top machine learning conferences (ICLR, NeurIPS, ICML) in 2024. The blue bars represent the total number of accepted papers, while the orange sections within those bars indicate the percentage of papers with publicly available code repositories. This highlights the reproducibility challenge addressed by the PaperCoder framework.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) PaperCoder overview. The proposed PaperCoder aims to transform given scientific papers (in machine learning domains) into code repositories, which consists of three sequential steps: planning, analyzing, and coding. (b) Code availability. The availability of the code repositories, where blue bars indicate the total number of accepted papers and orange regions represent the subset of papers with officially released code.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS3.SSS2.tab1.3.1">
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.1">
<td class="ltx_td ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.SS3.SSS2.tab1.3.1.1.2">Reference-based</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.SS3.SSS2.tab1.3.1.1.3">Reference-free</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.SS3.SSS2.tab1.3.1.1.4">Statistics</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.2">
<td class="ltx_td" id="S4.SS3.SSS2.tab1.3.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.2">ICML</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.3">NeurIPS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.4">ICLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.5">ICML</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.6">NeurIPS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.7">ICLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.8"># of Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.9"># of Files</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS3.SSS2.tab1.3.1.2.10"># of Funcs</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.1">ChatDEV</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.2">2.97 (0.58)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.3">2.96 (0.69)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.4">2.70(0.63)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.5">4.12 (0.53)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.6">4.01 (0.74)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.7">4.00 (0.65)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.8">6150.54</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.9">6.99</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS3.SSS2.tab1.3.1.3.10">23.82</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS3.SSS2.tab1.3.1.4.1">MetaGPT</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.2">2.75 (0.70)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.3">2.95 (0.87)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.4">2.48 (0.48)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.5">3.63 (0.75)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.6">3.59 (0.92)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.7">3.52 (0.60)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.8">5405.21</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.9">3.24</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.4.10">18.08</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.SS3.SSS2.tab1.3.1.5.1">
<span class="ltx_ERROR undefined" id="S4.SS3.SSS2.tab1.3.1.5.1.1">\cdashline</span>1-10
Abstract</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.2">2.43 (0.49)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.3">2.35 (0.62)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.4">2.28 (0.42)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.5">3.01 (0.60)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.6">2.99 (0.78)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.7">3.03 (0.64)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.8">3376.99</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.9">1.28</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.5.10">12.62</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.SS3.SSS2.tab1.3.1.6.1">Paper</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.2">3.28 (0.67)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.3">3.22 (0.80)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.4">3.08 (0.66)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.5">4.30 (0.53)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.6">4.08 (0.84)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.7">4.15 (0.63)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.8">3846.33</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.9">1.79</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.6.10">14.84</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.SS3.SSS2.tab1.3.1.7.1">
<span class="ltx_ERROR undefined" id="S4.SS3.SSS2.tab1.3.1.7.1.1">\cdashline</span>1-10
PaperCoder</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.2">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.2.1">3.72</span> (0.54)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.3">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.3.1">3.83</span> (0.50)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.4">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.4.1">3.68</span> (0.52)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.5">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.5.1">4.73</span> (0.44)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.6">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.6.1">4.77</span> (0.38)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.7">
<span class="ltx_text ltx_font_bold" id="S4.SS3.SSS2.tab1.3.1.7.7.1">4.73</span> (0.32)</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.8">14343.38</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.9">6.97</td>
<td class="ltx_td ltx_align_center" id="S4.SS3.SSS2.tab1.3.1.7.10">35.22</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.SSS2.tab1.3.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.1">
<span class="ltx_ERROR undefined" id="S4.SS3.SSS2.tab1.3.1.8.1.1">\cdashline</span>1-10
Oracle</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.5">4.80 (0.32)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.6">4.83 (0.38)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.7">4.84 (0.26)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.8">32149.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.9">28.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS3.SSS2.tab1.3.1.8.10">122.03</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of the Paper2Code benchmark, evaluating the performance of different code generation methods in converting machine learning research papers into executable code repositories.  It compares the performance of the proposed PaperCoder method against various baselines (ChatDev, MetaGPT, Abstract-only, Paper-only) across three top-tier machine learning conferences (ICML, NeurIPS, ICLR).  The evaluation uses two model-based approaches: reference-based (comparing against the official repository when available), and reference-free (without access to the official repository). The table reports average correctness scores (1-5 scale), along with the average number of tokens, files, and functions in the generated repositories.  The best-performing method for each metric is highlighted in bold, showcasing the relative strengths and weaknesses of each approach in generating high-quality, reproducible code.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on our experimental Paper2Code benchmark. We report average model-based evaluation scores for each conference. Oracle denotes the official repository released by the paper’s authors. Reference-based evaluation assesses correctness (on a 1–5 scale) by comparing the generated repository against both the paper and the official implementation, while reference-free evaluation relies solely on the paper. We report statistics on the average number of tokens, files, and functions per repository. The best scores are highlighted in bold.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17192/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17192/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}