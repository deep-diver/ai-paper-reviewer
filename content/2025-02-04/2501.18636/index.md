---
title: "SafeRAG: Benchmarking Security in Retrieval-Augmented Generation of Large Language Model"
summary: "SafeRAG: A new benchmark exposes critical security vulnerabilities in Retrieval-Augmented Generation (RAG) systems by introducing four novel attack types and a comprehensive dataset for evaluation, re..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Beijing Advanced Innovation Center for Future Blockchain and Privacy Computing",]
showSummary: true
date: 2025-01-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18636 {{< /keyword >}}
{{< keyword icon="writer" >}} Xun Liang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18636" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18636" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18636/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Retrieval-Augmented Generation (RAG), integrating external knowledge into Large Language Models (LLMs), has gained popularity but also raises security concerns.  Existing RAG security benchmarks are inadequate as they fail to effectively evaluate the robustness of RAG against sophisticated attacks.  Attackers can manipulate information at different stages of the RAG pipeline. 

The paper introduces SafeRAG, a novel benchmark for evaluating RAG security. SafeRAG classifies attacks into four categories: silver noise, inter-context conflict, soft ad, and white denial-of-service. A new dataset was manually created to simulate real-world attacks.  Experimental results on 14 RAG components reveal significant vulnerabilities across all attack types. SafeRAG provides a more thorough and accurate evaluation of RAG security, paving the way for improved security mechanisms.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Retrieval-Augmented Generation (RAG) systems are vulnerable to various attacks, including noise injection, conflicting information, toxicity, and denial-of-service. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SafeRAG, a new benchmark, provides a more comprehensive and accurate evaluation of RAG security by introducing four novel attack types. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study reveals that existing safety mechanisms in RAG systems are often insufficient to mitigate these attacks, indicating a need for more robust security solutions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in AI security and large language models.  It **highlights vulnerabilities in Retrieval-Augmented Generation (RAG)**, a rapidly growing field, and proposes a novel benchmark, **SafeRAG**, for evaluating RAG security. This work directly addresses current gaps in RAG security evaluation and opens new avenues for developing more robust and secure RAG systems, which is critical given the increasing deployment of LLMs in various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.18636/extracted/6162038/Figure/sfr_motivation.png)

> 🔼 Existing RAG security benchmarks often fail to effectively evaluate RAG's vulnerabilities because their attack methods are easily mitigated by standard RAG components like retrievers and filters.  This figure illustrates the limitations of prior work.  The SafeRAG benchmark, in contrast, employs enhanced attack strategies (noise, conflict, toxicity, and denial-of-service) designed to bypass these defenses and more accurately assess the security risks inherent in RAG systems.
> <details>
> <summary>read the caption</summary>
> Figure 1: Motivation. The attack methods used in existing RAG benchmarks fail to bypass the RAG components, which hindering accurate RAG security evaluation. Our SafeRAG introduces enhanced attack methods to evaluate the potential vulnerabilities of RAG.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.2">Attack Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.3">Attack Stage</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.4">Evaluation Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.5">Evaluation Metrics</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.6">Lang.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.1.7">Evaluation Task</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.1">RGB <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib2" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.2">Noise</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.3">Knowledge Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.5">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.6">CN, EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2.7">Open-domain Q&amp;A</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.1">RAG Bench <cite class="ltx_cite ltx_citemacro_cite">Fang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib6" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.2">Noise, Conflict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.3">Knowledge Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.5">EM, F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.6">EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.3.7">Open-domain Q&amp;A</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.1">LRII <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib20" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.2">Noise, Conflict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.3">Filtered Context</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.4">Model-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.4.4.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.4.4.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.5.1.1.1">Misleading Ratio,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.4.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.5.1.2.1">Uncertainty Ratio</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.6">EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.4.4.7">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.4.4.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.4.4.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.7.1.1.1">Open-domain Q&amp;A,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.4.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.7.1.2.1">Simple Fact Q&amp;A</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.1">RECALL <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib8" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.2">Conflict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.3">Filtered Context</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.4">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.5.5.4.1">
<tr class="ltx_tr" id="S1.T1.1.1.5.5.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.4.1.1.1">Model-based,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.4.1.2.1">Rule-based</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.5.5.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.5.5.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.5.1.1.1">Accuracy, BLEU,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.5.1.2.1">ROUGE-L, Misleading Rate,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.5.1.3.1">Mistake Reappearance Rate</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.6">EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.5.5.7">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.5.5.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.5.5.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.7.1.1.1">Open-domain Q&amp;A,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.7.1.2.1">Simple Fact Q&amp;A,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.5.7.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.5.5.7.1.3.1">Text Generation</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.1">ClashEval <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib19" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.2">Conflict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.3">Filtered Context</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.6.6.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.6.6.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.6.6.5.1.1.1">Accuracy, Prior Bias,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6.6.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.6.6.5.1.2.1">Context Bias</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.6">EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.6.6.7">Domain-specific Q&amp;A</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.1">PoisonedRAG <cite class="ltx_cite ltx_citemacro_cite">Zou et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.2">Conflict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.3">Knowledge Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.7.7.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.7.7.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.7.7.5.1.1.1">Attack Success Rate,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7.7.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.7.7.5.1.2.1">Precision, Recall, F1</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.6">—</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.7.7.7">—</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.1">Phantom <cite class="ltx_cite ltx_citemacro_cite">Chaudhari et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.2">DoS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.3">Knowledge Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.5">Retrieval Failure Rate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.6">—</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.8.8.7">—</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.1">MAR <cite class="ltx_cite ltx_citemacro_cite">Shafran et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.18636v1#bib.bib13" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.2">DoS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.3">Knowledge Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.4">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.5">Retrieval Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.6">—</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.9.9.7">—</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.10.10.1.1">SafeRAG (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.2">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.10.10.2.1">
<tr class="ltx_tr" id="S1.T1.1.1.10.10.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.2.1.1.1">Noise, Conflict,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.2.1.2.1">Toxicity, DoS</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.3">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.10.10.3.1">
<tr class="ltx_tr" id="S1.T1.1.1.10.10.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.3.1.1.1">Knowledge Base, Retrieved</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.3.1.2.1">Context, Filtered Context</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.4">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.10.10.4.1">
<tr class="ltx_tr" id="S1.T1.1.1.10.10.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.4.1.1.1">Model-based,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.4.1.2.1">Rule-based</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.10.10.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.10.10.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.5.1.1.1">F1 (correct/incorrect/avg),</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.5.1.2.1">Attack Success Rate,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.5.1.3.1">Retrieval Accuracy</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.6">CN</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.10.10.7">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.10.10.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.10.10.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.7.1.1.1">Domain-specific Question,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.10.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.10.10.7.1.2.1">Comprehensive Question-contexts</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares existing RAG security benchmark datasets.  It shows the methods used, the types of attacks targeted (noise, conflict), the stage of the RAG pipeline targeted by the attack (knowledge base, filtered context), the evaluation methods used (rule-based, model-based), the languages used in the evaluation, and the evaluation tasks. 
> <details>
> <summary>read the caption</summary>
> Table 1: Related works.
> </details>





### In-depth insights


#### RAG Security Risks
Retrieval-Augmented Generation (RAG) systems, while powerful, introduce new security vulnerabilities.  **The integration of external knowledge sources makes RAG susceptible to manipulation at various stages.** Attackers can inject malicious content into the knowledge base, causing the retriever to select harmful or biased information.  **Poorly designed filters can fail to remove this tainted data**, leading to compromised responses from the generator.  Furthermore, **attackers might craft adversarial queries to exploit vulnerabilities in the LLM's reasoning abilities**, resulting in harmful or misleading outputs, even when the retrieved information itself is benign.  This highlights the critical need for robust security mechanisms within RAG systems, including advanced filtering techniques, improved retrieval models resistant to adversarial attacks, and the development of LLMs with enhanced resilience to malicious input.  **Addressing the security risks associated with RAG is paramount to ensuring the responsible and trustworthy deployment of these powerful language models.**  Ultimately, a multi-faceted approach combining improved data sanitization, more robust algorithms, and careful human oversight is crucial to mitigating these significant security concerns.

#### SafeRAG Benchmark
The SafeRAG benchmark represents a significant contribution to the field of Retrieval-Augmented Generation (RAG) security.  Its **comprehensive evaluation framework** moves beyond existing benchmarks by identifying and addressing their limitations. The framework focuses on four crucial attack surfaces: noise, conflict, toxicity, and denial-of-service, each with carefully designed attack methodologies.  The inclusion of **novel attack tasks**, such as silver noise and soft-ad attacks, demonstrates an understanding of the nuanced ways adversaries can exploit vulnerabilities.  The benchmark also addresses the limitation of many existing datasets by incorporating **human-evaluated metrics**, ensuring accuracy and alignment with real-world scenarios.  Finally, the benchmark's design allows researchers to systematically evaluate RAG across different components and stages of the pipeline, providing **granular insights** into the security weaknesses of various RAG systems and components. This in-depth analysis contributes substantially to the development of more robust and secure RAG systems.

#### Novel Attack Vectors
A section on "Novel Attack Vectors" in a research paper would likely explore new and innovative methods for compromising large language models (LLMs), particularly within the context of retrieval-augmented generation (RAG).  The discussion might categorize these attacks based on the stage of the RAG pipeline they target (**retrieval, filtering, generation**).  For example, **novel retrieval attacks** could focus on manipulating the knowledge base to bias retrieval results or crafting adversarial queries to circumvent existing safeguards.  **Sophisticated filtering attacks** might evade detection by embedding malicious content within seemingly innocuous texts. Finally, **novel generation attacks** could exploit vulnerabilities in the LLM's generation process to produce harmful or misleading outputs.  A strong section would offer a detailed technical explanation of each novel attack vector, potentially providing examples and discussing their impact on the overall system security. The analysis might conclude by highlighting which attack vectors pose the greatest threat and suggest potential mitigations or future research directions.  **The novelty of the attacks is paramount**, showcasing significant advancements beyond known LLM vulnerabilities.

#### RAG Vulnerability
Retrieval-Augmented Generation (RAG) systems, while offering significant advantages in expanding the knowledge base of large language models (LLMs), introduce several vulnerabilities.  **Noise**, in the form of irrelevant or inaccurate information retrieved alongside relevant data, significantly impacts RAG's performance and can lead to unreliable outputs. **Conflicts** between retrieved information from different sources can confuse the LLM, resulting in inconsistent or contradictory responses.  The presence of **toxic** or harmful content within the retrieved data poses a substantial risk, potentially leading to the generation of unsafe or offensive content.  Furthermore, **denial-of-service (DoS)** attacks, which aim to disrupt or overload the RAG pipeline, can render the system unusable. The effectiveness of existing safety mechanisms, such as filters and retrievers, in mitigating these vulnerabilities is limited.  **Robust security measures** are crucial to address these vulnerabilities and ensure the trustworthiness and safety of RAG systems.  Future research needs to focus on developing and evaluating advanced techniques to detect and neutralize these attacks, improving the resilience of RAG pipelines to various forms of manipulation and ensuring that these systems can be deployed reliably and ethically.

#### Future Research
Future research in retrieval-augmented generation (RAG) security should prioritize several key areas.  **Developing more sophisticated and robust attack methodologies** is crucial, moving beyond current limitations and exploring novel attack vectors that exploit the complexities of real-world scenarios.  This includes focusing on **adversarial attacks that combine multiple attack surfaces**, such as noise, conflict, and toxicity, to create more realistic and challenging scenarios for evaluating RAG security.  Simultaneously, **developing more effective defense mechanisms** is vital. This requires exploring advanced filtering techniques, potentially incorporating explainable AI (XAI) to enhance transparency and allow for better identification and mitigation of malicious inputs. **A deeper investigation into the interplay between different components of the RAG pipeline** is also needed, focusing on how vulnerabilities in one area (retrieval, filtering, generation) can propagate and amplify risks in others.  Finally, given the inherent biases and potential for misuse in LLMs, **research should explore methods to build more resilient and ethical RAG systems** by incorporating fairness and safety constraints at every stage of the pipeline.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.18636/x3.png)

> 🔼 This figure illustrates the methodology for creating adversarial examples to test the security of Retrieval-Augmented Generation (RAG) systems.  The process begins by collecting news articles and forming a question-context dataset.  Four types of attacks are simulated: Noise, Conflict, Toxicity, and Denial-of-Service (DoS).  For each attack, specific text is selected from the dataset to be injected into different stages of the RAG pipeline (knowledge base, retriever, filter, generator) to evaluate its effect.
> <details>
> <summary>read the caption</summary>
> Figure 2: The process of generating attacking texts. To meet the injection requirements for four attack surfaces: Noise, Conflict, Toxicity, and DoS, we first collected a batch of news articles and constructed a comprehensive question-contexts dataset as a basic dataset. Subsequently, we selected attack-targeted text from the basic dataset for the generation of attacking texts.
> </details>



![](https://arxiv.org/html/2501.18636/x4.png)

> 🔼 This figure illustrates different ways to create conflicting contexts for the conflict attack task.  It shows examples of minimal perturbations to existing text (where only small changes are made), realistic rewriting to create more convincing conflicts, and how to maintain key facts while creating conflicts. The examples highlight the importance of preserving core information to avoid generating irrelevant or hallucinated contexts.
> <details>
> <summary>read the caption</summary>
> Figure 3: Cases of forming conflict contexts.
> </details>



![](https://arxiv.org/html/2501.18636/x5.png)

> 🔼 This figure illustrates the mechanism of the White Denial-of-Service (DoS) attack.  The attack leverages a three-part structure. First, the original question (in blue) is designed to bypass the retriever. Second, a safety warning message (in green) is crafted to bypass any safety filters that might otherwise block the subsequent text. Finally, a statement (in red) is included to prompt the large language model (LLM) generator to refuse to answer, masking the refusal as a security precaution rather than a system limitation. The objective is to cause the entire RAG system to fail to provide an answer, while appearing as though it was done for security reasons.
> <details>
> <summary>read the caption</summary>
> Figure 4: The construction rules of White DoS. Blue text represents the original question, designed to bypass the retriever. Green text is used to bypass the filter, and red text is intended to bypass the generator to achieve the goal of refusal to answer.
> </details>



![](https://arxiv.org/html/2501.18636/x6.png)

> 🔼 This figure displays the impact of injecting varying ratios of silver noise into different stages of the RAG pipeline. The x-axis represents the proportion of noisy text injected, ranging from 0 to 1 (or 6/6). The y-axis shows different metrics measuring RAG performance after the noise injection: Retrieval Accuracy (RA), F1 score (average of correct and incorrect option identification), and Attack Failure Rate (AFR, which is 1-Attack Success Rate). Different colored lines represent different components of the RAG pipeline (knowledge base, retrieved context, filtered context) and different retrieval methods (DPR, BM25, Hybrid, Hybrid-Rerank). The graph allows the reader to visualize how the presence of noise impacts the different stages of the pipeline, and which components and methods show more resilience to noisy data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Experimental results injected different noise ratios into the text accessible within the RAG pipeline.
> </details>



![](https://arxiv.org/html/2501.18636/x7.png)

> 🔼 This figure visualizes the impact of injecting conflicting information at different stages of the RAG pipeline (knowledge base, retrieved context, filtered context) on the system's performance.  The results are shown using radar charts comparing metrics before and after the injection of conflicting text.  The metrics likely include retrieval accuracy (RA) and F1-score, representing the model's ability to retrieve relevant information and accurately answer questions, respectively. Each radar chart represents a different retriever or filter configuration, allowing a comparison of how various system configurations respond to conflicting information.
> <details>
> <summary>read the caption</summary>
> Figure 6: Experimental results injected conflict into the text accessible within the RAG pipeline.
> </details>



![](https://arxiv.org/html/2501.18636/x8.png)

> 🔼 This figure shows example questions used to evaluate the performance of the model in the noise and denial-of-service (DoS) attack scenarios.  The evaluation involves multiple-choice questions based on a news summary generated by the model.  The questions test whether the model's summary includes fine-grained details (propositions) about the subject matter, indicating diversity and completeness. Evaluators select options based on their understanding of the generated text.
> <details>
> <summary>read the caption</summary>
> Figure 7: Evaluation cases for multiple-choice questions in Noise and DoS tasks.
> </details>



![](https://arxiv.org/html/2501.18636/x9.png)

> 🔼 This figure shows an example of a multiple-choice question used to evaluate the performance of a large language model in handling conflicting information.  The question is presented, along with multiple-choice options that incorporate conflicting facts.  The evaluator is asked to select the correct option(s) based on the provided context, which is designed to present contradictory or conflicting facts. This measures the model's ability to reason and resolve conflicting information to arrive at the most accurate response.
> <details>
> <summary>read the caption</summary>
> Figure 8: An evaluation case for a multiple-choice question in the conflict task.
> </details>



![](https://arxiv.org/html/2501.18636/x10.png)

> 🔼 This figure displays the results of experiments where varying amounts of toxic text were injected into different stages of the RAG pipeline (knowledge base, retrieved context, and filtered context).  The impact on three key metrics is visualized: Retrieval Accuracy (RA), Attack Failure Rate (AFR), and the F1 score (averaged F1 score considering both correct and incorrect option identifications).  The graph likely shows how different retrieval methods (e.g., DPR, BM25, Hybrid) and filters (OFF, NLI, SKR) perform under this type of attack, demonstrating the resilience of each component to toxic inputs.
> <details>
> <summary>read the caption</summary>
> Figure 9: Experimental results injected toxicity into the text accessible within the RAG pipeline.
> </details>



![](https://arxiv.org/html/2501.18636/x11.png)

> 🔼 This radar chart displays the results of experiments where different Denial-of-Service (DoS) attack ratios were injected into various stages of the Retrieval-Augmented Generation (RAG) pipeline.  It visualizes the impact of these attacks on the performance metrics: Retrieval Accuracy (RA), Attack Failure Rate (AFR), and F1 variants (the average of F1 scores for correct and incorrect option identification in multiple-choice questions evaluating the model's response diversity). The chart compares different retrievers (DPR, BM25, Hybrid, Hybrid-Rerank), filters (OFF, NLI, SKR), and the overall effect on the RAG pipeline's performance after the DoS attacks are introduced at various stages.
> <details>
> <summary>read the caption</summary>
> Figure 10: Experimental results injected DoS into the text accessible within the RAG pipeline.
> </details>



![](https://arxiv.org/html/2501.18636/x12.png)

> 🔼 This figure shows a cumulative analysis of the performance of different large language models (LLMs) as text generators in the face of various security attacks.  The y-axis represents the evaluation metrics (F1 variants for noise and conflict attacks, AFR for toxicity and denial-of-service (DoS) attacks), and the x-axis lists the different LLMs tested.  The bar chart visually compares the performance of each LLM across the different types of attacks, providing insights into which models are more resistant to each type of adversarial input. This helps illustrate the relative vulnerabilities of various LLMs to these attacks in a retrieval-augmented generation (RAG) pipeline.
> <details>
> <summary>read the caption</summary>
> Figure 11: Cumulative analysis of the generator’s positive evaluation metrics across different attack tasks.
> </details>



![](https://arxiv.org/html/2501.18636/x13.png)

> 🔼 This figure illustrates the process of generating comprehensive questions and corresponding golden contexts from news titles and segments.  It details the steps involved in creating a question-context dataset for the RAG security benchmark. The process uses a Chinese LLM engine and involves manual verification and refinement.
> <details>
> <summary>read the caption</summary>
> Figure 12: Generation of comprehensive questions and golden contexts.
> </details>



![](https://arxiv.org/html/2501.18636/x14.png)

> 🔼 This figure details the process of generating comprehensive questions and their corresponding golden contexts, which are sets of sentences used as ground truth answers.  The process starts with a news title and segment, which are fed into a Chinese Large Language Model (LLM) called DeepSeek. The LLM generates a comprehensive question and selects eight sentences (golden contexts) that best support answering the question.  These are then manually reviewed and revised to ensure quality and relevance.  The image shows the process steps visually and includes an example in Chinese.
> <details>
> <summary>read the caption</summary>
> Figure 13: Generation of comprehensive questions and golden contexts (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x15.png)

> 🔼 This figure displays the prompt used for the question answering task in the SafeRAG benchmark.  It shows the structure for providing both the question and the retrieved context to the large language model (LLM). The goal is to evaluate the model's ability to answer the question accurately and consistently based solely on the provided information, testing the security and reliability of the retrieval-augmented generation (RAG) process.
> <details>
> <summary>read the caption</summary>
> Figure 14: Question answering.
> </details>



![](https://arxiv.org/html/2501.18636/x16.png)

> 🔼 This figure demonstrates the process of extracting propositions from the golden contexts.  It details the steps involved in breaking down complex sentences into smaller, more manageable units, ensuring that each proposition is self-contained and easily understood independently from the surrounding text.  The process involves: (1) splitting compound sentences; (2) separating additional information about named entities into independent propositions; (3) removing context-dependent elements like pronouns; and (4) presenting the result as a JSON-formatted list of strings. The example shown in the figure uses text from the 'Easter Hare' section.
> <details>
> <summary>read the caption</summary>
> Figure 15: Extraction of propositions from golden contexts.
> </details>



![](https://arxiv.org/html/2501.18636/x17.png)

> 🔼 This figure displays the process of extracting propositions from golden contexts in Chinese.  The process involves breaking down longer sentences into smaller, more manageable units (propositions) that are semantically complete and independent.  This is important for ensuring the accuracy and effectiveness of subsequent analysis and attack generation. The image shows the original Chinese text (golden contexts), the steps involved in the proposition extraction, and the resulting list of extracted propositions.
> <details>
> <summary>read the caption</summary>
> Figure 16: Extraction of propositions from golden contexts (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x18.png)

> 🔼 This figure presents guidelines for annotators on how to generate soft ad attack texts. It details two methods for inserting soft ads into text: direct insertion and indirect insertion. Direct insertion involves seamlessly embedding the ad into the existing text. Indirect insertion modifies the text slightly to make the ad's inclusion more natural.  The guidelines emphasize creating ads dynamically based on the context, aiming for naturalness and seamless integration.
> <details>
> <summary>read the caption</summary>
> Figure 17: Guidelines for generating (annotating) soft ad attack texts.
> </details>



![](https://arxiv.org/html/2501.18636/x19.png)

> 🔼 Figure 18 provides guidelines in Chinese for creating soft ad attack texts.  It details the annotation objective, which is to have annotators choose between two insertion methods (direct or indirect) based on context and generate natural-sounding ads.  The guidelines define the methods, outlining direct insertion as embedding the ad concisely and indirectly as modifying the context slightly to incorporate the ad subtly.  The workflow is also described:  understand the context, choose a method, generate the ad, insert the ad, verify it sounds natural, and then output the attack text.
> <details>
> <summary>read the caption</summary>
> Figure 18: Guidelines for generating (annotating) soft ad attack texts (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x20.png)

> 🔼 This figure details the evaluation process for multiple-choice questions in the SafeRAG benchmark. The evaluators read a news summary and determine for each option whether its content is correct and mentioned in the summary, incorrect but mentioned, or indeterminate because it's unmentioned or its accuracy can't be judged based on the summary alone.  The output is a JSON containing the evaluator's explanations for each option and classifications into correct, incorrect, and indeterminate categories.
> <details>
> <summary>read the caption</summary>
> Figure 19: Multiple-choice question evaluation.
> </details>



![](https://arxiv.org/html/2501.18636/x21.png)

> 🔼 This figure details the evaluation process for a multiple-choice question in Chinese.  Evaluators assess options based on a provided news summary, categorizing them as correct, incorrect, or indeterminate. The JSON output includes explanations justifying each classification and lists of correct, incorrect, and indeterminate options.
> <details>
> <summary>read the caption</summary>
> Figure 20: Multiple-choice question evaluation (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x22.png)

> 🔼 This figure shows an example from the SafeRAG dataset.  It presents a comprehensive question about why the RMB (Chinese currency) has rebounded against the US dollar since late August.  Below the question, the figure lists the 'golden contexts'—the sentences from the original news article that best answer the question—followed by a list of 'propositions', which are the most basic, independent facts extracted from the golden contexts.
> <details>
> <summary>read the caption</summary>
> Figure 21: A data point of a comprehensive question, the golden contexts and propositions.
> </details>



![](https://arxiv.org/html/2501.18636/x23.png)

> 🔼 This figure showcases a multiple-choice question evaluation example.  It presents a news summary and several options related to it.  The ground truth answers are then provided, indicating which options are correct ('correct_options'), incorrect ('incorrect_options'), or indeterminate ('indeterminate_options') based on the information in the news summary.
> <details>
> <summary>read the caption</summary>
> Figure 22: A case of multiple options and the ground truth answers.
> </details>



![](https://arxiv.org/html/2501.18636/x24.png)

> 🔼 Figure 23 shows a sample data point from the SafeRAG dataset, which is used to evaluate the security of Retrieval-Augmented Generation (RAG) systems.  It includes a comprehensive question (in Chinese) designed to assess the RAG's ability to handle complex knowledge retrieval tasks. The dataset also provides the corresponding 'golden contexts', which are the ideal, relevant sentences that would provide a correct answer, and the 'propositions', which are further decomposed, smaller units of meaning derived from the golden contexts, representing the most basic facts.  These components are designed to be used to evaluate several attack strategies against RAG systems in the SafeRAG benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 23: A data point of a comprehensive question, the golden contexts and propositions (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x25.png)

> 🔼 This figure presents a multiple-choice question evaluation example in Chinese. It shows a news summary, multiple-choice options, and the ground truth answers (correct, incorrect, and indeterminate options) based on the news summary.  This is used to evaluate a model's ability to identify correct and incorrect information and handle cases with insufficient information.
> <details>
> <summary>read the caption</summary>
> Figure 24: A case of multiple options and the ground truth answers (in Chinese).
> </details>



![](https://arxiv.org/html/2501.18636/x26.png)

> 🔼 This figure shows an example of a silver noise attack in the SafeRAG benchmark. Silver noise is a type of attack where irrelevant or only partially relevant information is injected into the knowledge base.  The figure demonstrates how such noise, when retrieved by the RAG system, can lead to inaccurate or nonsensical responses. In this specific example, multiple sentences are shown that all support the notion that the RMB (Chinese currency) rebounded against the US dollar due to a decline in the US Dollar Index. However, these sentences, while factually correct in isolation, lack the nuance and context needed to form a complete and accurate explanation of the RMB's rebound.
> <details>
> <summary>read the caption</summary>
> Figure 25: A case of silver noise.
> </details>



![](https://arxiv.org/html/2501.18636/x27.png)

> 🔼 Figure 26 presents examples of both inter-context conflict and soft ad attacks. The conflict example shows a manipulated context that contradicts existing information. This can be used to confuse LLMs and make them generate responses based on the conflicting context. The soft ad examples demonstrate how ads can be seamlessly inserted into the original context by either directly embedding them or adapting the context subtly to promote the ad alongside credible entities.  This illustrates how subtle forms of manipulation can bypass filters and affect LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 26: A case of context conflict and soft ad.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.4.4.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.4.4.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.5.1.1.1">Misleading Ratio,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.4.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.5.1.2.1">Uncertainty Ratio</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the evaluation metrics used in the SafeRAG benchmark and demonstrates their agreement with human judgment.  It shows the consistency between the automated metrics (ASR and AFR for attack success rate and failure rate respectively, and F1 scores for correctness) and human evaluations for the four attack types (silver noise, inter-context conflict, soft ad, and white DoS). High consistency indicates the effectiveness and reliability of the proposed metrics for evaluating RAG security.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation metrics and human consistency.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.4.4.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.4.4.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.7.1.1.1">Open-domain Q&amp;A,</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.4.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.4.4.7.1.2.1">Simple Fact Q&amp;A</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a cumulative analysis of the performance of different large language models (LLMs) as generators within a Retrieval-Augmented Generation (RAG) pipeline, when subjected to four types of attacks: silver noise, inter-context conflict, toxicity, and denial-of-service (DoS).  For each attack type, the table shows two metrics: F1 Variants (a metric assessing the diversity and quality of the generated text), and Attack Failure Rate (AFR, measuring the generator's success in avoiding the injection of attack keywords). The results illustrate the relative strengths and weaknesses of various LLMs in handling different forms of adversarial attacks.
> <details>
> <summary>read the caption</summary>
> Table 3: Cumulative analysis of the generator’s positive evaluation metrics across different attack tasks
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18636/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18636/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}