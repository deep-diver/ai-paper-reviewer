---
title: "Survey on Evaluation of LLM-based Agents"
summary: "A comprehensive survey on evaluation methodologies for LLM-based agents, analyzing benchmarks and frameworks across key dimensions like capabilities, applications, and generalist performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hebrew University of Jerusalem",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16416 {{< /keyword >}}
{{< keyword icon="writer" >}} Asaf Yehudai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16416" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16416" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16416/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLM-based agents represent a paradigm shift in AI, enabling autonomous systems to perform complex tasks in dynamic environments. This paper addresses the need for reliable evaluation methods. It covers fundamental agentic capabilities like planning, tool use, memory and identifies gaps in cost, safety and robustness.



This survey comprehensively maps evaluation, serving LLM agent developers and practitioners. It reviews benchmarks and strategies for prominent applications: web, software engineering, scientific, and conversational agents. The paper discusses current trends, and directions for future research, highlighting opportunities for better metrics.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The evaluation of LLM-based agents requires specialized methodologies beyond standard LLM benchmarking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current research is shifting towards more realistic, dynamic, and challenging evaluation environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Critical gaps remain in assessing safety, cost-efficiency, and scalability of agent evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey is important as it provides a comprehensive overview of LLM agent evaluation, offering crucial insights for developers, practitioners, and researchers. It highlights current challenges, emerging trends, and gaps in areas like **safety and cost-efficiency**, guiding future innovation and responsible development in the rapidly evolving field of AI agents. It enables researchers to better grasp the capabilities and limitations of current agents.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.30.30.30">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.30.30.30.31.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.1">Framework</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.2">Stepwise Assessment</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.3">Monitoring</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.4">Trajectory Assessment</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.5">Human in the Loop</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.6">Synthetic Data Generation</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.30.30.30.31.1.7">A/B Comparisons</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.2.2.2.2.3">LangSmith (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib64" title=""><span class="ltx_text" style="color:#BF0040;">LangChain</span></a></cite>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.4"><span class="ltx_text" id="S5.2.2.2.2.4.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.5"><span class="ltx_text" id="S5.2.2.2.2.5.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.6"><span class="ltx_text" id="S5.2.2.2.2.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.7"><span class="ltx_text" id="S5.2.2.2.2.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.2.2.2.2.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.2.2.2.2.8"><span class="ltx_text" id="S5.2.2.2.2.8.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.6.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.6.6.6.6.5">Langfuse (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib65" title=""><span class="ltx_text" style="color:#BF0040;">Langfuse</span></a></cite>)</td>
<td class="ltx_td ltx_align_center" id="S5.6.6.6.6.6"><span class="ltx_text" id="S5.6.6.6.6.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.6.6.6.6.7"><span class="ltx_text" id="S5.6.6.6.6.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.4.4.4.4.2"><span class="ltx_text ltx_font_bold" id="S5.4.4.4.4.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.6.6.6.6.8"><span class="ltx_text" id="S5.6.6.6.6.8.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.6.6.6.6.4"><span class="ltx_text ltx_font_bold" id="S5.6.6.6.6.4.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.6.6.6.6.9"><span class="ltx_text" id="S5.6.6.6.6.9.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.10.10.10.10">
<td class="ltx_td ltx_align_left" id="S5.10.10.10.10.5"><span class="ltx_text" id="S5.10.10.10.10.5.1" style="color:#BF0040;">Google Vertex AI
evaluation (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib38" title=""><span class="ltx_text" style="color:#BF0040;">Google Cloud</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center" id="S5.10.10.10.10.6"><span class="ltx_text" id="S5.10.10.10.10.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.10.10.10.10.7"><span class="ltx_text" id="S5.10.10.10.10.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.10.10.10.10.8"><span class="ltx_text" id="S5.10.10.10.10.8.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.8.8.8.8.2"><span class="ltx_text ltx_font_bold" id="S5.8.8.8.8.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.10.10.10.10.4"><span class="ltx_text ltx_font_bold" id="S5.10.10.10.10.4.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.10.10.10.10.9"><span class="ltx_text" id="S5.10.10.10.10.9.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.12.12.12.12">
<td class="ltx_td ltx_align_left" id="S5.12.12.12.12.3"><span class="ltx_text" id="S5.12.12.12.12.3.1" style="color:#BF0040;">Arize AI’s Evaluation (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib6" title=""><span class="ltx_text" style="color:#BF0040;">Arize AI, Inc</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.4"><span class="ltx_text" id="S5.12.12.12.12.4.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.5"><span class="ltx_text" id="S5.12.12.12.12.5.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.2"><span class="ltx_text ltx_font_bold" id="S5.12.12.12.12.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.6"><span class="ltx_text" id="S5.12.12.12.12.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.7"><span class="ltx_text" id="S5.12.12.12.12.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.12.12.12.12.8"><span class="ltx_text" id="S5.12.12.12.12.8.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.16.16.16.16">
<td class="ltx_td ltx_align_left" id="S5.16.16.16.16.5"><span class="ltx_text" id="S5.16.16.16.16.5.1" style="color:#BF0040;">Galileo Agentic Evaluation (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib34" title=""><span class="ltx_text" style="color:#BF0040;">Galileo</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center" id="S5.16.16.16.16.6"><span class="ltx_text" id="S5.16.16.16.16.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.16.16.16.16.7"><span class="ltx_text" id="S5.16.16.16.16.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.14.14.14.14.2"><span class="ltx_text ltx_font_bold" id="S5.14.14.14.14.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.16.16.16.16.8"><span class="ltx_text" id="S5.16.16.16.16.8.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.16.16.16.16.4"><span class="ltx_text ltx_font_bold" id="S5.16.16.16.16.4.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.16.16.16.16.9"><span class="ltx_text" id="S5.16.16.16.16.9.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.18.18.18.18">
<td class="ltx_td ltx_align_left" id="S5.18.18.18.18.3"><span class="ltx_text" id="S5.18.18.18.18.3.1" style="color:#BF0040;">Patronus AI (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib104" title=""><span class="ltx_text" style="color:#BF0040;">Patronus AI, Inc.</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.4"><span class="ltx_text" id="S5.18.18.18.18.4.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.5"><span class="ltx_text" id="S5.18.18.18.18.5.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.2"><span class="ltx_text ltx_font_bold" id="S5.18.18.18.18.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.6"><span class="ltx_text" id="S5.18.18.18.18.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.7"><span class="ltx_text" id="S5.18.18.18.18.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.18.18.18.18.8"><span class="ltx_text" id="S5.18.18.18.18.8.1" style="color:#008080;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.28.28.28.28">
<td class="ltx_td ltx_align_left" id="S5.28.28.28.28.11"><span class="ltx_text" id="S5.28.28.28.28.11.1" style="color:#BF0040;">AgentsEval (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib63" title=""><span class="ltx_text" style="color:#BF0040;">LangChain</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center" id="S5.20.20.20.20.2"><span class="ltx_text ltx_font_bold" id="S5.20.20.20.20.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.22.22.22.22.4"><span class="ltx_text ltx_font_bold" id="S5.22.22.22.22.4.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.28.28.28.28.12"><span class="ltx_text" id="S5.28.28.28.28.12.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.24.24.24.24.6"><span class="ltx_text ltx_font_bold" id="S5.24.24.24.24.6.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.26.26.26.26.8"><span class="ltx_text ltx_font_bold" id="S5.26.26.26.26.8.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center" id="S5.28.28.28.28.10"><span class="ltx_text ltx_font_bold" id="S5.28.28.28.28.10.1" style="color:#BF0040;">×</span></td>
</tr>
<tr class="ltx_tr" id="S5.30.30.30.30">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.30.30.30.30.3"><span class="ltx_text" id="S5.30.30.30.30.3.1" style="color:#BF0040;">Mosaic AI (<cite class="ltx_cite ltx_citemacro_citeauthor"><a class="ltx_ref" href="https://arxiv.org/html/2503.16416v1#bib.bib29" title=""><span class="ltx_text" style="color:#BF0040;">Databricks</span></a></cite>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.4"><span class="ltx_text" id="S5.30.30.30.30.4.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.5"><span class="ltx_text" id="S5.30.30.30.30.5.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.2"><span class="ltx_text ltx_font_bold" id="S5.30.30.30.30.2.1" style="color:#BF0040;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.6"><span class="ltx_text" id="S5.30.30.30.30.6.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.7"><span class="ltx_text" id="S5.30.30.30.30.7.1" style="color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.30.30.30.30.8"><span class="ltx_text" id="S5.30.30.30.30.8.1" style="color:#008080;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the capabilities of several prominent frameworks for evaluating Large Language Model (LLM) agents.  It shows which frameworks support various assessment features, including stepwise assessment (evaluating individual actions), trajectory assessment (analyzing the overall sequence of actions), the use of human-in-the-loop evaluations, the generation of synthetic data for evaluation, and A/B comparisons (comparing the performance of different versions or setups). The caption notes that some capabilities are still under development.
> <details>
> <summary>read the caption</summary>
> Table 1: Supported evaluation capabilities of major agent frameworks. Note that some of these capabilities are still in initial phases of development, as discussed further in the text.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16416/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16416/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}