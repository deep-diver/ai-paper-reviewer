---
title: "Craw4LLM: Efficient Web Crawling for LLM Pretraining"
summary: "CRAW4LLM: Efficiently crawls web pages for LLM pretraining by prioritizing influence scores, boosting data quality & cutting crawling waste."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13347 {{< /keyword >}}
{{< keyword icon="writer" >}} Shi Yu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13347" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13347" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13347/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Web crawl is key for pretraining LLMs, but much crawled data gets discarded due to low quality. Traditional web crawlers prioritize graph connectivity, favoring high inlink counts which does not align well with LLM pretraining needs and causing computational waste and website burden. To address this inefficiency, this paper introduces **CRAW4LLM**, a novel web crawling method designed to enhance the efficiency of collecting high-quality pretraining data for LLMs. 



Instead of relying on traditional graph-based metrics, **CRAW4LLM** prioritizes webpages based on their **influence on LLM pretraining**.  It leverages a pretraining influence scorer derived from data-filtering pipelines to assess and rank newly discovered documents during each crawling iteration. Experiment results show that **CRAW4LLM** significantly improves crawling efficiency and reduces data waste, outperforming traditional methods by achieving similar performance with substantially less data. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CRAW4LLM enhances web crawling for LLM pretraining by prioritizing pages based on their pretraining influence, outperforming traditional graph-connectivity methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method significantly reduces crawling waste, achieving comparable downstream performance with LLMs using only 21% of the data required by previous crawls. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Analysis reveals CRAW4LLM quickly identifies documents aligned with oracle selection, demonstrating its efficiency in discovering high-quality pretraining data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research offers a significant advancement in web crawling for LLM pretraining, addressing the critical issue of data quality and efficiency. By prioritizing pretraining influence, it reduces data processing waste and alleviates website burdens. It paves the way for more sustainable data acquisition, offering a new direction for future research to explore advanced, targeted crawling strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13347/x1.png)

> 🔼 This figure illustrates the difference in web graph traversal between a traditional graph-connectivity-based crawler and the proposed CRAW4LLM method.  Both crawlers begin from the same seed URL (represented by a star). The traditional crawler (green) explores the web graph by prioritizing pages based on graph connectivity metrics (such as PageRank or harmonic centrality). This leads to a broad, but potentially inefficient, search of the web. Conversely, CRAW4LLM (red) prioritizes pages based on their relevance to LLM pretraining, focusing its search on a more targeted subset of web pages relevant for training large language models. This targeted approach is visualized by the red path which focuses on a smaller set of interconnected nodes.
> <details>
> <summary>read the caption</summary>
> Figure 1: Graph traverse process of a traditional graph-connectivity-based crawler (green) and Craw4LLM (red) starting from a same seed URL (star).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S2.T1.1.1.1.1"></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.1.1.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3">
<span class="ltx_text" id="S2.T1.1.1.1.3.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.3.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.2.1.1.1.1">Commonsense</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.3.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.2.1.2.1.1">Reasoning</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.4">
<span class="ltx_text" id="S2.T1.1.1.1.4.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.4.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.2.1.1.1.1">Language</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.2.1.2.1.1">Understanding</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.5">
<span class="ltx_text" id="S2.T1.1.1.1.5.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.5.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.2.1.1.1.1">Reading</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.5.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.2.1.2.1.1">Comprehension</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.6">
<span class="ltx_text" id="S2.T1.1.1.1.6.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.6.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.6.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.2.1.1.1.1">Symbolic</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.6.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.2.1.2.1.1">Problem Solving</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.7">
<span class="ltx_text" id="S2.T1.1.1.1.7.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.7.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.7.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.7.2.1.1.1.1">World</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.7.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.7.2.1.2.1.1">Knowledge</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.8">
<span class="ltx_text" id="S2.T1.1.1.1.8.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.8.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.8.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.8.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.2.1.1.1.1">Core</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.9">
<span class="ltx_text" id="S2.T1.1.1.1.9.1"></span> <span class="ltx_text" id="S2.T1.1.1.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.9.2.1">
<span class="ltx_tr" id="S2.T1.1.1.1.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.9.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.2.1.1.1.1">% of</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.1.9.3"></span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2">
<td class="ltx_td ltx_align_right" id="S2.T1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1.1">Crawling Method</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.1">Selection Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.3"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.3.1">(4 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.4"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.4.1">(6 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.5"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.5.1">(3 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.6"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.6.1">(5 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.7"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.7.1">(5 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.8"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.8.1">(23 tasks)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.2.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.9.1">Oracle</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S2.T1.1.1.3.1">
<span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1.1">Oracle Selection (Upper Bound):</span> Random sample from the top 10% rated data from ClueWeb22 using DCLM fastText for pretraining</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.1.3.2"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4">
<td class="ltx_td ltx_align_right" id="S2.T1.1.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.3">0.2438</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4">0.2209</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.5">0.1483</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.6">0.2039</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.7">0.2403</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.8">0.2239</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.9">100%</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S2.T1.1.1.5.1">
<span class="ltx_text ltx_font_bold" id="S2.T1.1.1.5.1.1">Crawl-then-Select:</span> Crawl 1× and 2× more data from ClueWeb22 and select top-rated 1× data using DCLM fastText for pretraining</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.1.5.2"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6">
<td class="ltx_td ltx_align_right" id="S2.T1.1.1.6.1" rowspan="2"><span class="ltx_text" id="S2.T1.1.1.6.1.1">Random</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.6.3.1">0.1906</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.4">0.1890</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.5">0.0244</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6">0.1834</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.7">0.1930</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.8">0.1748</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.9">78.1%</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.7.1">2×</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.2">0.1896</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.7.3.1">0.1967</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.7.4.1">0.1260</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.7.5.1">0.2000</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.7.6.1">0.2024</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.7.7.1">0.1964</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.7.8.1">87.7%</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8">
<td class="ltx_td ltx_align_right" id="S2.T1.1.1.8.1" rowspan="2"><span class="ltx_text" id="S2.T1.1.1.8.1.1">Indegree</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.8.2">1×</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.3">0.1730</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.4">0.1680</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.5">0.0326</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.6">0.1616</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.7">0.1668</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.8">0.1556</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.9">69.5%</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.9.1">2×</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.2">0.1845</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.3">0.1856</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.9.4.1">0.0970</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.5">0.1958</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.6">0.1953</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.7">0.1865</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.8">83.3%</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S2.T1.1.1.10.1">
<span class="ltx_text ltx_font_bold" id="S2.T1.1.1.10.1.1">Ours:</span> Crawl 1× data using <span class="ltx_text ltx_font_smallcaps" id="S2.T1.1.1.10.1.2">Craw4LLM</span> for pretraining</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.1.10.2"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11" style="background-color:#E0E0FF;">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.1.11.1"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.1.1.11.1.1" style="background-color:#E0E0FF;">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.1.11.2"><span class="ltx_text" id="S2.T1.1.1.11.2.1" style="background-color:#E0E0FF;">1×</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.3.1" style="background-color:#E0E0FF;">0.2116</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.4.1" style="background-color:#E0E0FF;">0.2311</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.5"><span class="ltx_text" id="S2.T1.1.1.11.5.1" style="background-color:#E0E0FF;">0.0826</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.11.6.1" style="background-color:#E0E0FF;">0.1979</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.7.1" style="background-color:#E0E0FF;">0.2486</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.8"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.8.1" style="background-color:#E0E0FF;">0.2133</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.11.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.11.9.1" style="background-color:#E0E0FF;">95.3%</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the downstream performance of Large Language Models (LLMs) trained using different web crawling methods.  All models were pretrained on the same amount of data (1x, corresponding to 20 million documents and 32.9 billion tokens).  The performance is evaluated across 23 core tasks using centered accuracy as the metric (where 0 represents a random guess). The table compares the performance of CRAW4LLM against baselines that use different crawling strategies (random crawling, indegree-based crawling, and a crawl-then-select approach with random and indegree baselines), as well as an oracle selection method representing an upper bound.  The best and second-best performing methods in each comparison group are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 1:  Downstream LLM performance. All models are pretrained on 1× data, which corresponds to 20M documents and 32.9B tokens. The evaluation metric is centered accuracy (0 = random guess) (Li et al., 2024). Best/2nd best in the last two groups are bolded/underlined. See Appendix C for detailed results.
> </details>





### In-depth insights


#### LLM-Driven Crawl
The concept of an **LLM-driven crawl** represents a paradigm shift in web data acquisition. Instead of relying on traditional metrics, the crawler prioritizes pages deemed most valuable for LLM pretraining. This approach is revolutionary because it aligns crawling with the specific needs of modern AI models. Such a system would necessitate a dynamic scoring mechanism, where the **crawler continuously evaluates webpage relevance based on pretraining objectives**. This could involve analyzing text quality, topic diversity, or even the presence of specific linguistic patterns known to benefit LLMs. By intelligently selecting data, an LLM-driven crawl promises to improve the efficiency of pretraining, reducing both computational costs and the environmental impact associated with large-scale data processing, and also reduce legal risks. **This type of crawl reduces website burden, and is more sustainable.**

#### Influence Scoring
**Influence scoring in web crawling for LLM pretraining prioritizes webpages based on their potential impact on the learning process.** It replaces traditional methods reliant on graph connectivity metrics like PageRank, which often favor high-inlink documents, not necessarily aligned with high-quality pretraining data. This approach aims to address the inefficiency of conventional web crawlers, where a significant portion of collected data is discarded due to low quality. **By scoring URLs using a pretraining-oriented function, the crawler can strategically explore the web graph, focusing on documents deemed more valuable for LLM pretraining.** This enhances efficiency, reduces computational waste, and mitigates risks of over-crawling. Influence is often derived from data classification models trained to discern useful documents, allowing for a targeted and effective web crawling strategy.

#### Web Graph Traversal
Web graph traversal is crucial for effective web crawling. Traditional methods often rely on graph connectivity metrics, such as PageRank and indegree, but may not align with the needs of LLM pretraining. **Prioritizing webpages based on their influence on LLM pretraining**, as proposed by CRAW4LLM, represents a significant shift. Efficient traversal strategies are essential to alleviate computational burdens, reduce website traffic, and address ethical and legal concerns related to data usage. **By carefully selecting and prioritizing high-quality data sources**, web graph traversal can be optimized to enhance the performance of LLMs while promoting responsible web crawling practices.

#### Ethical Crawling
Ethical web crawling is a multifaceted challenge, balancing the need for data to train large language models (LLMs) with respecting website owners' rights and resource limitations. **Efficient crawling techniques** are paramount, minimizing server load and reducing the risk of denial-of-service. Crawlers should adhere to `robots.txt` directives, respect crawl delays, and identify themselves clearly. **Transparency is key**; crawlers should disclose their purpose and contact information. Data usage also requires ethical consideration, focusing on fair use and mitigating potential biases. A crucial aspect involves **obtaining consent** where possible and respecting copyright laws to prevent misuse of copyrighted material. **Regular audits and updates** to crawling practices are essential to adapt to evolving web standards and ethical considerations. Furthermore, responsible data handling, including anonymization and secure storage, is crucial to protect user privacy. Ethical crawling is an ongoing process of refinement to ensure a sustainable and respectful relationship with the online ecosystem.

#### Dataset Efficiency
From the perspective of dataset efficiency for LLM pretraining, the paper highlights the significance of prioritizing high-quality data. Traditional web crawling methods, often relying on graph-connectivity metrics, prove inefficient as much of the crawled data is discarded due to low quality. The introduction of CRAW4LLM addresses this by incorporating an LLM pretraining preference into the crawling process. **By scoring webpages based on their pretraining influence**, CRAW4LLM achieves superior performance with significantly less data. This targeted approach contrasts with indiscriminate crawling followed by data filtering, **demonstrating the value of intelligent data acquisition**. The reduction in crawling waste not only saves computational resources but also alleviates the burden on websites, promoting ethical and sustainable data collection.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13347/x2.png)

> 🔼 The figure shows the correlation between pretraining influence scores and indegrees on randomly sampled ClueWeb22-B documents.  Specifically, subplot (a) displays a weak negative correlation between pretraining influence scores and indegrees, indicating that documents with many incoming links are not necessarily the most influential for pretraining. The Spearman correlation coefficient is reported as -0.11, suggesting that a higher indegree does not strongly imply higher pretraining influence.
> <details>
> <summary>read the caption</summary>
> (a) Pretraining (-0.11).
> </details>



![](https://arxiv.org/html/2502.13347/x3.png)

> 🔼 The figure shows the correlation between the pretraining influence scores and PageRank scores.  The scatter plot visually represents the relationship between these two metrics, calculated on a randomly sampled subset of documents from the ClueWeb22-B dataset. The Spearman correlation coefficient (0.88) indicates a strong positive correlation, suggesting that documents with high PageRank scores tend to also have high pretraining influence scores.
> <details>
> <summary>read the caption</summary>
> (b) PageRank (0.88).
> </details>



![](https://arxiv.org/html/2502.13347/x4.png)

> 🔼 This figure displays scatter plots illustrating the correlation between pretraining influence scores and other metrics on a subset of documents from the ClueWeb22-B dataset.  The pretraining influence scores are derived from the DCLM fastText model.  The plots visually compare the relationships between these scores and PageRank, as well as the relationship between PageRank and the number of inlinks (indegree). Spearman correlation coefficients are provided to quantify the strength of each correlation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Correlations between pretraining influence scores from DCLM fastText (Li et al., 2024) and PageRank to indegrees, on randomly sampled ClueWeb22-B documents (Overwijk et al., 2022). Spearman correlation coefficients are reported in parentheses.
> </details>



![](https://arxiv.org/html/2502.13347/x5.png)

> 🔼 This figure shows the efficiency of different crawling methods in achieving comparable performance to the oracle method. The x-axis represents the pool size (relative to the oracle), indicating how much more data the crawlers processed than the oracle. The y-axis shows the performance of the LLMs trained on the data collected by each crawler. CRAW4LLM achieves nearly the same performance as the oracle by crawling significantly less data, while the other methods, including extended indegree and random crawling, require much larger amounts of data to reach comparable performance.
> <details>
> <summary>read the caption</summary>
> (a) Extended crawling.
> </details>



![](https://arxiv.org/html/2502.13347/x6.png)

> 🔼 Figure 3(b) shows the number of documents visited and crawled by the CRAW4LLM crawler and baseline crawlers (Indegree and Random).  It compares the number of documents crawled (P) to achieve a certain performance level against the number of documents visited (V) during the crawling process. This visualization highlights the efficiency of CRAW4LLM in achieving comparable performance with significantly fewer crawled and visited documents than traditional methods.
> <details>
> <summary>read the caption</summary>
> (b) Visited documents.
> </details>



![](https://arxiv.org/html/2502.13347/x7.png)

> 🔼 Figure 3 delves into the efficiency of different web crawling methods.  Subfigure (a) compares the performance of Large Language Models (LLMs) trained using data collected by Craw4LLM and traditional crawlers (extended baselines).  The traditional crawlers are extended to crawl more data in an attempt to match Craw4LLM's results. Subfigure (b) shows a quantitative comparison of the number of web pages crawled and visited by Craw4LLM versus the estimated number a traditional, indegree-based crawler would need to crawl to achieve similar LLM performance.  This demonstrates Craw4LLM's effectiveness in selecting high-quality data with far fewer crawls.
> <details>
> <summary>read the caption</summary>
> Figure 3: Efficiency of crawlers. (a) shows the performance of LLMs trained on selected data crawled by Craw4LLM and extended baseline crawlers. (b) presents the number of crawled (𝒫𝒫\mathcal{P}caligraphic_P) and visited (𝒱𝒱\mathcal{V}caligraphic_V) documents for Craw4LLM, along with the estimated number of crawled documents required for indegree-based crawler to match Craw4LLM’s performance.
> </details>



![](https://arxiv.org/html/2502.13347/x8.png)

> 🔼 Figure 4 illustrates the effectiveness of CRAW4LLM in identifying high-quality documents for LLM pretraining.  The left panel shows the precision (the percentage of truly valuable documents among those identified by each method) while the right panel shows the recall (the percentage of valuable documents found by each method).  CRAW4LLM demonstrates high precision, quickly identifying nearly all the best documents.  In contrast, the indegree-based and random crawling methods perform significantly worse. The upper bound line represents a hypothetical ideal scenario where only the best documents are collected.
> <details>
> <summary>read the caption</summary>
> Figure 4: Precision (left) and recall (right) of the oracle documents among the documents crawled by Craw4LLM, indegree, and random crawler. The upper bound represents always crawling the oracle documents.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T2.4">
<tr class="ltx_tr" id="A2.T2.4.5">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A2.T2.4.5.1"><span class="ltx_text ltx_font_bold" id="A2.T2.4.5.1.1">Hyper-parameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T2.4.5.2"><span class="ltx_text ltx_font_bold" id="A2.T2.4.5.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1">
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T2.1.1.1"><math alttext="n_{\text{layers}}" class="ltx_Math" display="inline" id="A2.T2.1.1.1.m1.1"><semantics id="A2.T2.1.1.1.m1.1a"><msub id="A2.T2.1.1.1.m1.1.1" xref="A2.T2.1.1.1.m1.1.1.cmml"><mi id="A2.T2.1.1.1.m1.1.1.2" xref="A2.T2.1.1.1.m1.1.1.2.cmml">n</mi><mtext id="A2.T2.1.1.1.m1.1.1.3" xref="A2.T2.1.1.1.m1.1.1.3a.cmml">layers</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T2.1.1.1.m1.1b"><apply id="A2.T2.1.1.1.m1.1.1.cmml" xref="A2.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.1.1.1.m1.1.1.1.cmml" xref="A2.T2.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T2.1.1.1.m1.1.1.2.cmml" xref="A2.T2.1.1.1.m1.1.1.2">𝑛</ci><ci id="A2.T2.1.1.1.m1.1.1.3a.cmml" xref="A2.T2.1.1.1.m1.1.1.3"><mtext id="A2.T2.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T2.1.1.1.m1.1.1.3">layers</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.1.1.1.m1.1c">n_{\text{layers}}</annotation><annotation encoding="application/x-llamapun" id="A2.T2.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T2.1.1.2">24</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.2">
<td class="ltx_td ltx_align_right" id="A2.T2.2.2.1"><math alttext="n_{\text{heads}}" class="ltx_Math" display="inline" id="A2.T2.2.2.1.m1.1"><semantics id="A2.T2.2.2.1.m1.1a"><msub id="A2.T2.2.2.1.m1.1.1" xref="A2.T2.2.2.1.m1.1.1.cmml"><mi id="A2.T2.2.2.1.m1.1.1.2" xref="A2.T2.2.2.1.m1.1.1.2.cmml">n</mi><mtext id="A2.T2.2.2.1.m1.1.1.3" xref="A2.T2.2.2.1.m1.1.1.3a.cmml">heads</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T2.2.2.1.m1.1b"><apply id="A2.T2.2.2.1.m1.1.1.cmml" xref="A2.T2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.2.2.1.m1.1.1.1.cmml" xref="A2.T2.2.2.1.m1.1.1">subscript</csymbol><ci id="A2.T2.2.2.1.m1.1.1.2.cmml" xref="A2.T2.2.2.1.m1.1.1.2">𝑛</ci><ci id="A2.T2.2.2.1.m1.1.1.3a.cmml" xref="A2.T2.2.2.1.m1.1.1.3"><mtext id="A2.T2.2.2.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T2.2.2.1.m1.1.1.3">heads</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.2.2.1.m1.1c">n_{\text{heads}}</annotation><annotation encoding="application/x-llamapun" id="A2.T2.2.2.1.m1.1d">italic_n start_POSTSUBSCRIPT heads end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T2.2.2.2">8</td>
</tr>
<tr class="ltx_tr" id="A2.T2.3.3">
<td class="ltx_td ltx_align_right" id="A2.T2.3.3.1"><math alttext="d_{\text{model}}" class="ltx_Math" display="inline" id="A2.T2.3.3.1.m1.1"><semantics id="A2.T2.3.3.1.m1.1a"><msub id="A2.T2.3.3.1.m1.1.1" xref="A2.T2.3.3.1.m1.1.1.cmml"><mi id="A2.T2.3.3.1.m1.1.1.2" xref="A2.T2.3.3.1.m1.1.1.2.cmml">d</mi><mtext id="A2.T2.3.3.1.m1.1.1.3" xref="A2.T2.3.3.1.m1.1.1.3a.cmml">model</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T2.3.3.1.m1.1b"><apply id="A2.T2.3.3.1.m1.1.1.cmml" xref="A2.T2.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.3.3.1.m1.1.1.1.cmml" xref="A2.T2.3.3.1.m1.1.1">subscript</csymbol><ci id="A2.T2.3.3.1.m1.1.1.2.cmml" xref="A2.T2.3.3.1.m1.1.1.2">𝑑</ci><ci id="A2.T2.3.3.1.m1.1.1.3a.cmml" xref="A2.T2.3.3.1.m1.1.1.3"><mtext id="A2.T2.3.3.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T2.3.3.1.m1.1.1.3">model</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.3.3.1.m1.1c">d_{\text{model}}</annotation><annotation encoding="application/x-llamapun" id="A2.T2.3.3.1.m1.1d">italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T2.3.3.2">1,024</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.4">
<td class="ltx_td ltx_align_right" id="A2.T2.4.4.1"><math alttext="d_{\text{head}}" class="ltx_Math" display="inline" id="A2.T2.4.4.1.m1.1"><semantics id="A2.T2.4.4.1.m1.1a"><msub id="A2.T2.4.4.1.m1.1.1" xref="A2.T2.4.4.1.m1.1.1.cmml"><mi id="A2.T2.4.4.1.m1.1.1.2" xref="A2.T2.4.4.1.m1.1.1.2.cmml">d</mi><mtext id="A2.T2.4.4.1.m1.1.1.3" xref="A2.T2.4.4.1.m1.1.1.3a.cmml">head</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T2.4.4.1.m1.1b"><apply id="A2.T2.4.4.1.m1.1.1.cmml" xref="A2.T2.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.4.4.1.m1.1.1.1.cmml" xref="A2.T2.4.4.1.m1.1.1">subscript</csymbol><ci id="A2.T2.4.4.1.m1.1.1.2.cmml" xref="A2.T2.4.4.1.m1.1.1.2">𝑑</ci><ci id="A2.T2.4.4.1.m1.1.1.3a.cmml" xref="A2.T2.4.4.1.m1.1.1.3"><mtext id="A2.T2.4.4.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T2.4.4.1.m1.1.1.3">head</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.4.4.1.m1.1c">d_{\text{head}}</annotation><annotation encoding="application/x-llamapun" id="A2.T2.4.4.1.m1.1d">italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.4.2">128</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.6">
<td class="ltx_td ltx_align_right" id="A2.T2.4.6.1">Warmup</td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.6.2">2,000</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.7">
<td class="ltx_td ltx_align_right" id="A2.T2.4.7.1">Learning Rate</td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.7.2">3e-3</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.8">
<td class="ltx_td ltx_align_right" id="A2.T2.4.8.1">Weight Decay</td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.8.2">0.033</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.9">
<td class="ltx_td ltx_align_right" id="A2.T2.4.9.1">z-loss</td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.9.2">1e-4</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.10">
<td class="ltx_td ltx_align_right" id="A2.T2.4.10.1">Global Batch Size</td>
<td class="ltx_td ltx_align_left" id="A2.T2.4.10.2">512</td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.11">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A2.T2.4.11.1">Sequence Length</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T2.4.11.2">2048</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the language model.  It details the architecture of the model, including the number of layers, attention heads, the width of the model's hidden layers (dmodel), and the width of each attention head (dhead).  These parameters significantly influence the model's capacity and performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Model and training hyper-parameters. nlayerssubscript𝑛layersn_{\text{layers}}italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT, nlayerssubscript𝑛layersn_{\text{layers}}italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT, dmodelsubscript𝑑modeld_{\text{model}}italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT, and dheadsubscript𝑑headd_{\text{head}}italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT denote the number of layers, attention heads, width, and width per attention head, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T3.1">
<tr class="ltx_tr" id="A3.T3.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.1.1">Crawling</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T3.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.1">Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T3.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.3.1">Commonsense Reasoning</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.2">
<td class="ltx_td ltx_align_right" id="A3.T3.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.2.2.1">Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.2.3">CommonsenseQA</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.2.4">COPA</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.2.5">OpenBookQA</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.2.6">PIQA</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="A3.T3.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.3.1.1">Oracle Selection (Upper Bound)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.4">
<td class="ltx_td ltx_align_right" id="A3.T3.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.4.3">0.2850</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.4.4">0.7000</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.4.5">0.3300</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.4.6">0.6812</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.5">
<td class="ltx_td ltx_align_left" colspan="6" id="A3.T3.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.5.1.1">Crawl-then-Select</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.6">
<td class="ltx_td ltx_align_right" id="A3.T3.1.6.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.6.3">0.2072</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.6.4">0.6700</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.6.5">0.2980</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.6.6">0.6746</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.7">
<td class="ltx_td ltx_align_right" id="A3.T3.1.7.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.7.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.7.3">0.2588</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.7.4">0.6200</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.7.5">0.3160</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.7.6">0.6785</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.8">
<td class="ltx_td ltx_align_right" id="A3.T3.1.8.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.8.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.8.3">0.2326</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.8.4">0.6400</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.8.5">0.3380</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.8.6">0.6757</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.9">
<td class="ltx_td ltx_align_right" id="A3.T3.1.9.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.9.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.9.3">0.3219</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.9.4">0.6000</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.9.5">0.2780</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.9.6">0.6513</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.10">
<td class="ltx_td ltx_align_right" id="A3.T3.1.10.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.10.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.10.3">0.1966</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.10.4">0.6600</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.10.5">0.3040</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.10.6">0.6752</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.11">
<td class="ltx_td ltx_align_right" id="A3.T3.1.11.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T3.1.11.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.11.3">0.2088</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.11.4">0.6400</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.11.5">0.3400</td>
<td class="ltx_td ltx_align_center" id="A3.T3.1.11.6">0.6817</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.12">
<td class="ltx_td ltx_align_left" colspan="6" id="A3.T3.1.12.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.12.1.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.13">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T3.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="A3.T3.1.13.1.1">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T3.1.13.2">1×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.1.13.3">0.2277</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.1.13.4">0.6600</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.1.13.5">0.3300</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.1.13.6">0.6926</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different web crawling methods on commonsense reasoning tasks.  It compares the performance of a baseline method (crawling a large amount of data and then selecting the top-performing subset) using random selection and indegree-based selection with the proposed CRAW4LLM method. The results are shown for different amounts of crawled data (1x, 2x, 4x) relative to the amount used in the CRAW4LLM method (1x).  An oracle selection result (selecting the best 10% of data from the entire dataset) serves as an upper bound performance measure. The commonsense reasoning tasks evaluated are CommonsenseQA, COPA, OpenBookQA, and PIQA.
> <details>
> <summary>read the caption</summary>
> Table 3: Results for commonsense reasoning tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T4.1.1">
<tr class="ltx_tr" id="A3.T4.1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1.1">Crawling</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.2.1">Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="A3.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.3.1">Language Understanding</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.2">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.2.2.1">Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.3">BIG-Bench Lang. Id.</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.4">HellaSwag (zero-shot)</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.5">HellaSwag</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.6">LAMBADA</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.7">Winograd</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.2.8">Winogrande</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="A3.T4.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.3.1.1">Oracle Selection (Upper Bound)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.4">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.3">0.2515</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.4">0.3856</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.5">0.3905</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.6">0.4432</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.7">0.6557</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.8">0.5130</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.5">
<td class="ltx_td ltx_align_left" colspan="8" id="A3.T4.1.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.5.1.1">Crawl-then-Select</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.6">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.6.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.3">0.2490</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.4">0.3709</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.5">0.3716</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.6">0.3990</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.7">0.6044</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.8">0.5146</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.7">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.7.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.7.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.3">0.2468</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.4">0.3882</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.5">0.3925</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.6">0.4073</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.7">0.6007</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.8">0.5130</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.8">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.8.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.8.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.3">0.2521</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.4">0.4011</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.5">0.4019</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.6">0.4390</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.7">0.6154</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.8">0.5130</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.9">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.9.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.9.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.3">0.2566</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.4">0.3515</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.5">0.3519</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.6">0.3596</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.7">0.5971</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.8">0.5004</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.10">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.10.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.10.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.3">0.2547</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.4">0.3749</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.5">0.3771</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.6">0.3773</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.7">0.5861</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.8">0.5241</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.11">
<td class="ltx_td ltx_align_right" id="A3.T4.1.1.11.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.11.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.3">0.2562</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.4">0.3994</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.5">0.4008</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.6">0.4159</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.7">0.6190</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.8">0.5178</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.12">
<td class="ltx_td ltx_align_left" colspan="8" id="A3.T4.1.1.12.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.12.1.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.13">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T4.1.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="A3.T4.1.1.13.1.1">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.1.1.13.2">1×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.3">0.2544</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.4">0.4035</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.5">0.4048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.6">0.4196</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.7">0.6593</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.13.8">0.5288</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Language Models (LMs) on various language understanding tasks.  The models were pre-trained using data obtained from different crawling methods: a baseline crawler using indegree as a priority metric, a random crawler, and the proposed CRAW4LLM method. The table shows the performance (accuracy) of each model across several benchmarks, including BIG-Bench, HellaSwag, LAMBADA, Winograd, and Winogrande.  The 'Pool Size' column indicates how many times more data was crawled compared to the target training dataset size of 1x. The 'Oracle Selection (Upper Bound)' row shows the best possible result achievable by selecting the top 10% of data, based on the DCLM fastText classifier.
> <details>
> <summary>read the caption</summary>
> Table 4: Results for language understanding tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T5.1">
<tr class="ltx_tr" id="A3.T5.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1">Crawling</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T5.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.2.1">Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.3.1">Reading Comprehension</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.2">
<td class="ltx_td ltx_align_right" id="A3.T5.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.1">Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.2.3">BoolQ</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.2.4">CoQA</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.2.5">SQuAD</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="A3.T5.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.3.1.1">Oracle Selection (Upper Bound)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4">
<td class="ltx_td ltx_align_right" id="A3.T5.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.3">0.5755</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.4">0.2479</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.5">0.3139</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5">
<td class="ltx_td ltx_align_left" colspan="5" id="A3.T5.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.5.1.1">Crawl-then-Select</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.6">
<td class="ltx_td ltx_align_right" id="A3.T5.1.6.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.3">0.5080</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4">0.1799</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.5">0.1882</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.7">
<td class="ltx_td ltx_align_right" id="A3.T5.1.7.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.7.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.3">0.5807</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.4">0.2053</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5">0.2759</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.8">
<td class="ltx_td ltx_align_right" id="A3.T5.1.8.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.8.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.3">0.5911</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.4">0.2361</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.5">0.2951</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.9">
<td class="ltx_td ltx_align_right" id="A3.T5.1.9.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.9.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.3">0.5324</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.4">0.1666</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.5">0.1616</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.10">
<td class="ltx_td ltx_align_right" id="A3.T5.1.10.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.10.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.3">0.5697</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.4">0.1843</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.5">0.2390</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.11">
<td class="ltx_td ltx_align_right" id="A3.T5.1.11.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.11.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.3">0.5765</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.4">0.2147</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.5">0.2736</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.12">
<td class="ltx_td ltx_align_left" colspan="5" id="A3.T5.1.12.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.12.1.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.13">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T5.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="A3.T5.1.13.1.1">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.13.2">1×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.13.3">0.5440</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.13.4">0.2264</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.13.5">0.2215</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the reading comprehension tasks, evaluated using three metrics: BoolQ, CoQA, and SQUAD.  It compares the performance of Language Models (LLMs) trained on data obtained through different crawling methods and data selection strategies. The methods include a baseline using random selection, indegree-based crawling, and the proposed CRAW4LLM method, each with varying amounts of crawled data (1x, 2x, and 4x the size of the target dataset). An oracle selection represents the upper bound performance.  The table shows the performance (accuracy) achieved by each method for each reading comprehension metric.
> <details>
> <summary>read the caption</summary>
> Table 5: Results for reading comprehension tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.1.1">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1">Crawling</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.2.1">Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="A3.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.3.1">Symbolic Problem Solving</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.2">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.2.2.1">Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.3">AGI Eval LSAT-AR</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.4">BIG-Bench CS Algorithms</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.5">BIG-Bench Dyck Lang.</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.6">BIG-Bench Operators</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.7">BIG-Bench Repeat Copy Logic</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="A3.T6.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.3.1.1">Oracle Selection (Upper Bound)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.4">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.3">0.2739</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.4">0.4341</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.5">0.2160</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.6">0.2143</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.7">0.0625</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.5">
<td class="ltx_td ltx_align_left" colspan="7" id="A3.T6.1.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.5.1.1">Crawl-then-Select</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.6">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.3">0.2391</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.4">0.4568</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.5">0.1970</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.6">0.2143</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.7">0.0000</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.7">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.7.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.3">0.2696</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.4">0.4538</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.5">0.2520</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.6">0.1762</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.7">0.0313</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.8">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.8.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.3">0.1957</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.4">0.4568</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.5">0.2600</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.6">0.1857</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.7">0.0625</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.9">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.9.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.3">0.2304</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.4">0.4371</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.5">0.1900</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.6">0.1429</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.7">0.0000</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.10">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.10.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.3">0.2609</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.4">0.4235</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.5">0.2340</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.6">0.2143</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.7">0.0313</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.11">
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.11.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.3">0.2174</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.4">0.4538</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.5">0.2530</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.6">0.1667</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.7">0.0938</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.12">
<td class="ltx_td ltx_align_left" colspan="7" id="A3.T6.1.1.12.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.12.1.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.13">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T6.1.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="A3.T6.1.1.13.1.1">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.1.13.2">1×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.13.3">0.2696</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.13.4">0.4371</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.13.5">0.1620</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.13.6">0.2095</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.13.7">0.0938</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different web crawling methods on symbolic problem-solving tasks.  It compares the results of using an oracle selection (the upper bound of performance), random crawling, indegree-based crawling (representing traditional graph-connectivity methods), and the proposed CRAW4LLM method.  The table shows the performance across several different datasets and tasks, indicating how each crawling strategy impacts the downstream performance of LLMs trained on the data collected.
> <details>
> <summary>read the caption</summary>
> Table 6: Results for symbolic problem solving tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T7.1.1">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1">Crawling</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.2.1">Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="A3.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.3.1">World Knowledge</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.2">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.2.2.1">Pool Size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.2.3">ARC Easy</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.2.4">ARC Challenge</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.2.5">BIG-Bench-Bench QA Wikidata</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.2.6">Jeopardy</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.2.7">MMLU</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="A3.T7.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.3.1.1">Oracle Selection (Upper Bound)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.4">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.4.1">n.a.</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.4.2">45×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.4.3">0.5951</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.4.4">0.3166</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.4.5">0.4945</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.4.6">0.1176</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.4.7">0.2805</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.5">
<td class="ltx_td ltx_align_left" colspan="7" id="A3.T7.1.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.5.1.1">Crawl-then-Select</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.6">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.6.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.6.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.6.3">0.5152</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.6.4">0.2799</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.6.5">0.5186</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.6.6">0.0461</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.6.7">0.2552</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.7">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.7.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.7.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.7.3">0.5425</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.7.4">0.2807</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.7.5">0.5081</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.7.6">0.0648</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.7.7">0.2561</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.8">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.8.1">Random</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.8.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.8.3">0.5577</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.8.4">0.2867</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.8.5">0.5126</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.8.6">0.0970</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.8.7">0.2543</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.9">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.9.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.9.2">1×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.9.3">0.4857</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.9.4">0.2509</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.9.5">0.4888</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.9.6">0.0138</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.9.7">0.2618</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.10">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.10.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.10.2">2×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.10.3">0.5248</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.10.4">0.2790</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.10.5">0.5205</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.10.6">0.0555</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.10.7">0.2464</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.11">
<td class="ltx_td ltx_align_right" id="A3.T7.1.1.11.1">Indegree</td>
<td class="ltx_td ltx_align_left" id="A3.T7.1.1.11.2">4×</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.11.3">0.5749</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.11.4">0.2935</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.11.5">0.5084</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.11.6">0.0959</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.1.11.7">0.2430</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.12">
<td class="ltx_td ltx_align_left" colspan="7" id="A3.T7.1.1.12.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.12.1.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.13">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T7.1.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="A3.T7.1.1.13.1.1">Craw4LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T7.1.1.13.2">1×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.1.13.3">0.6103</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.1.13.4">0.3208</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.1.13.5">0.5143</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.1.13.6">0.1323</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.1.13.7">0.2661</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating Large Language Models (LLMs) on world knowledge tasks.  Different crawling methods (random, indegree-based, and CRAW4LLM) were used to gather data for LLM pretraining, with varying amounts of data collected (1x, 2x, and 4x the target dataset size for crawl-then-select methods).  The 'Oracle Selection' row represents an upper bound, using the top-performing 10% of data. The table shows performance metrics for each method across several world knowledge benchmarks: ARC Easy, ARC Challenge, BIG-Bench QA, Wikidata, Jeopardy, and MMLU. This allows comparison of the efficiency of different crawling strategies in obtaining high-quality pretraining data that results in strong LLM performance on world knowledge tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Results for world knowledge tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13347/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13347/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}