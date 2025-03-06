---
title: "Mixture of Structural-and-Textual Retrieval over Text-rich Graph Knowledge Bases"
summary: "MoR: Adaptive knowledge retrieval by fusing structural and textual data for better question answering."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 University of Oregon",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20317 {{< /keyword >}}
{{< keyword icon="writer" >}} Yongjia Lei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20317" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20317" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20317/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-rich Graph Knowledge Bases (TG-KBs) are essential for answering queries with textual and structural knowledge. However, existing methods often retrieve these types of knowledge separately, neglecting their mutual reinforcement. Some hybrid methods bypass structural retrieval entirely after neighbor aggregation. The paper identifies three challenges: the high resource demands of rewording aggregated neighbors, the discarding of structural signals after neighbor aggregation, and the oversight of varying structural and textual knowledge desires across different queries and TG-KBs.



To address these challenges, the paper introduces a Mixture of Structural-and-Textual Retrieval (MoR) framework. MoR starts with a planning module that generates textual planning graphs to preserve structural signals. A reasoning module interweaves structural traversal and textual matching, enabling mutual reinforcement between retrieval types. An organizing module uses a structure-aware reranker to adaptively adjust the importance of retrieved knowledge. **Experiments demonstrate MoR's superiority in harmonizing structural and textual retrieval**, highlighting uneven retrieving performance across query logics and the benefits of integrating structural trajectories for candidate reranking.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MOR is superior in harmonizing textual and structural retrieval. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Queries on different TG-KBs require varying desires for textual and structural knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Trajectory info of candidates is critical in reranking. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper offers a novel method to retrieve information by combining textual and structural data from knowledge bases, overcoming limitations of isolated approaches. It enhances question-answering systems and provides a framework for adaptive knowledge integration, inspiring data-centric reasoning designs and error control of planning.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20317/x1.png)

> 🔼 Figure 1 demonstrates different retrieval methods on text-rich graph knowledge bases (TG-KBs). (a) illustrates textual and structural retrieval, showing how queries are processed using text-based or graph-traversal approaches, respectively. (b) highlights the performance variability of these methods across various TG-KBs, emphasizing that optimal methods can vary depending on the specific TG-KB. (c) focuses on query overlaps and differences within a single TG-KB, showing that queries successfully answered using either textual or structural retrieval alone may not always be answerable using the other method.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Textual retrieval and structural retrieval. (b) The effectiveness of retrieval methods varies across different TG-KBs. (c) Within the same TG-KB, queries addressed by textual (i.e., 𝒬Textsuperscript𝒬Text\mathcal{Q}^{\text{Text}}caligraphic_Q start_POSTSUPERSCRIPT Text end_POSTSUPERSCRIPT) and structural retrieval (i.e., 𝒬Structsuperscript𝒬Struct\mathcal{Q}^{\text{Struct}}caligraphic_Q start_POSTSUPERSCRIPT Struct end_POSTSUPERSCRIPT) exhibit both overlaps and distinctiveness.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.4">
<tr class="ltx_tr" id="S3.T1.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.4.5.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.4.5.2" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.2.1">Retrieval Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S3.T1.4.5.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.3.1">AMAZON</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S3.T1.4.5.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.4.1">MAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S3.T1.4.5.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.5.1">PRIME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.4.5.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.6.1">AVERAGE</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.1" style="padding-left:2.8pt;padding-right:2.8pt;">H@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2" style="padding-left:2.8pt;padding-right:2.8pt;">H@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.3" style="padding-left:2.8pt;padding-right:2.8pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.4" style="padding-left:2.8pt;padding-right:2.8pt;">MRR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.5" style="padding-left:2.8pt;padding-right:2.8pt;">H@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.6" style="padding-left:2.8pt;padding-right:2.8pt;">H@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.7" style="padding-left:2.8pt;padding-right:2.8pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.8" style="padding-left:2.8pt;padding-right:2.8pt;">MRR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.9" style="padding-left:2.8pt;padding-right:2.8pt;">H@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.10" style="padding-left:2.8pt;padding-right:2.8pt;">H@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.11" style="padding-left:2.8pt;padding-right:2.8pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.12" style="padding-left:2.8pt;padding-right:2.8pt;">MRR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.13" style="padding-left:2.8pt;padding-right:2.8pt;">H@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.14" style="padding-left:2.8pt;padding-right:2.8pt;">H@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.15" style="padding-left:2.8pt;padding-right:2.8pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.16" style="padding-left:2.8pt;padding-right:2.8pt;">MRR</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.7.1" rowspan="4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.7.1.1">Textual</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.7.2" style="padding-left:2.8pt;padding-right:2.8pt;">BM25 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib35" title="">Wu et al. </a></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.3" style="padding-left:2.8pt;padding-right:2.8pt;">44.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.4" style="padding-left:2.8pt;padding-right:2.8pt;">67.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.5" style="padding-left:2.8pt;padding-right:2.8pt;">53.77</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.7.6" style="padding-left:2.8pt;padding-right:2.8pt;">55.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.7" style="padding-left:2.8pt;padding-right:2.8pt;">25.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.8" style="padding-left:2.8pt;padding-right:2.8pt;">45.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.9" style="padding-left:2.8pt;padding-right:2.8pt;">45.69</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.7.10" style="padding-left:2.8pt;padding-right:2.8pt;">34.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.11" style="padding-left:2.8pt;padding-right:2.8pt;">12.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.12" style="padding-left:2.8pt;padding-right:2.8pt;">27.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.13" style="padding-left:2.8pt;padding-right:2.8pt;">31.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.7.14" style="padding-left:2.8pt;padding-right:2.8pt;">19.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.15" style="padding-left:2.8pt;padding-right:2.8pt;">27.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.16" style="padding-left:2.8pt;padding-right:2.8pt;">46.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.17" style="padding-left:2.8pt;padding-right:2.8pt;">43.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.7.18" style="padding-left:2.8pt;padding-right:2.8pt;">36.68</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.8.1" style="padding-left:2.8pt;padding-right:2.8pt;">Ada-002 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib35" title="">Wu et al. </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.2" style="padding-left:2.8pt;padding-right:2.8pt;">39.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.3" style="padding-left:2.8pt;padding-right:2.8pt;">62.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4" style="padding-left:2.8pt;padding-right:2.8pt;">53.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.5" style="padding-left:2.8pt;padding-right:2.8pt;">50.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.6" style="padding-left:2.8pt;padding-right:2.8pt;">29.08</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.7" style="padding-left:2.8pt;padding-right:2.8pt;">49.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.8" style="padding-left:2.8pt;padding-right:2.8pt;">48.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.9" style="padding-left:2.8pt;padding-right:2.8pt;">38.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.10" style="padding-left:2.8pt;padding-right:2.8pt;">12.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.11" style="padding-left:2.8pt;padding-right:2.8pt;">31.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.12" style="padding-left:2.8pt;padding-right:2.8pt;">36.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.13" style="padding-left:2.8pt;padding-right:2.8pt;">21.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.14" style="padding-left:2.8pt;padding-right:2.8pt;">26.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.15" style="padding-left:2.8pt;padding-right:2.8pt;">47.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.16" style="padding-left:2.8pt;padding-right:2.8pt;">45.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.17" style="padding-left:2.8pt;padding-right:2.8pt;">36.79</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.9.1" style="padding-left:2.8pt;padding-right:2.8pt;">Multi-ada-002 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib35" title="">Wu et al. </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.2" style="padding-left:2.8pt;padding-right:2.8pt;">40.07</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.3" style="padding-left:2.8pt;padding-right:2.8pt;">64.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.4" style="padding-left:2.8pt;padding-right:2.8pt;">55.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.5" style="padding-left:2.8pt;padding-right:2.8pt;">51.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.6" style="padding-left:2.8pt;padding-right:2.8pt;">25.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.7" style="padding-left:2.8pt;padding-right:2.8pt;">50.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.8" style="padding-left:2.8pt;padding-right:2.8pt;">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.9" style="padding-left:2.8pt;padding-right:2.8pt;">36.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.10" style="padding-left:2.8pt;padding-right:2.8pt;">15.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.11" style="padding-left:2.8pt;padding-right:2.8pt;">33.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.12" style="padding-left:2.8pt;padding-right:2.8pt;">38.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.13" style="padding-left:2.8pt;padding-right:2.8pt;">23.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.14" style="padding-left:2.8pt;padding-right:2.8pt;">27.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.15" style="padding-left:2.8pt;padding-right:2.8pt;">49.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.16" style="padding-left:2.8pt;padding-right:2.8pt;">47.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.17" style="padding-left:2.8pt;padding-right:2.8pt;">37.33</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.10.1" style="padding-left:2.8pt;padding-right:2.8pt;">DPR <cite class="ltx_cite ltx_citemacro_cite">Karpukhin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib16" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.2" style="padding-left:2.8pt;padding-right:2.8pt;">15.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.3" style="padding-left:2.8pt;padding-right:2.8pt;">47.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.4" style="padding-left:2.8pt;padding-right:2.8pt;">44.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.10.5" style="padding-left:2.8pt;padding-right:2.8pt;">30.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6" style="padding-left:2.8pt;padding-right:2.8pt;">10.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.7" style="padding-left:2.8pt;padding-right:2.8pt;">35.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.8" style="padding-left:2.8pt;padding-right:2.8pt;">42.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.10.9" style="padding-left:2.8pt;padding-right:2.8pt;">21.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.10" style="padding-left:2.8pt;padding-right:2.8pt;">4.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.11" style="padding-left:2.8pt;padding-right:2.8pt;">21.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.12" style="padding-left:2.8pt;padding-right:2.8pt;">30.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.10.13" style="padding-left:2.8pt;padding-right:2.8pt;">12.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.14" style="padding-left:2.8pt;padding-right:2.8pt;">10.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.15" style="padding-left:2.8pt;padding-right:2.8pt;">35.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.16" style="padding-left:2.8pt;padding-right:2.8pt;">38.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.17" style="padding-left:2.8pt;padding-right:2.8pt;">21.31</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.11.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.11.1.1">Structural (KG)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.11.2" style="padding-left:2.8pt;padding-right:2.8pt;">QAGNN <cite class="ltx_cite ltx_citemacro_cite">Yasunaga et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib41" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.3" style="padding-left:2.8pt;padding-right:2.8pt;">26.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.4" style="padding-left:2.8pt;padding-right:2.8pt;">50.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.5" style="padding-left:2.8pt;padding-right:2.8pt;">52.05</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.11.6" style="padding-left:2.8pt;padding-right:2.8pt;">37.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.7" style="padding-left:2.8pt;padding-right:2.8pt;">12.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.8" style="padding-left:2.8pt;padding-right:2.8pt;">39.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.9" style="padding-left:2.8pt;padding-right:2.8pt;">46.97</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.11.10" style="padding-left:2.8pt;padding-right:2.8pt;">29.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.11" style="padding-left:2.8pt;padding-right:2.8pt;">8.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.12" style="padding-left:2.8pt;padding-right:2.8pt;">21.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.13" style="padding-left:2.8pt;padding-right:2.8pt;">29.63</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.11.14" style="padding-left:2.8pt;padding-right:2.8pt;">14.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.15" style="padding-left:2.8pt;padding-right:2.8pt;">16.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.16" style="padding-left:2.8pt;padding-right:2.8pt;">36.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.17" style="padding-left:2.8pt;padding-right:2.8pt;">42.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.11.18" style="padding-left:2.8pt;padding-right:2.8pt;">27.20</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.12.1" style="padding-left:2.8pt;padding-right:2.8pt;">ToG <cite class="ltx_cite ltx_citemacro_cite">Sun et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib29" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.2" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.3" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.4" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.5" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.6" style="padding-left:2.8pt;padding-right:2.8pt;">13.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.7" style="padding-left:2.8pt;padding-right:2.8pt;">16.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8" style="padding-left:2.8pt;padding-right:2.8pt;">11.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.9" style="padding-left:2.8pt;padding-right:2.8pt;">14.18</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.10" style="padding-left:2.8pt;padding-right:2.8pt;">6.07</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.11" style="padding-left:2.8pt;padding-right:2.8pt;">15.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.12" style="padding-left:2.8pt;padding-right:2.8pt;">13.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.13" style="padding-left:2.8pt;padding-right:2.8pt;">10.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.14" style="padding-left:2.8pt;padding-right:2.8pt;">9.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.15" style="padding-left:2.8pt;padding-right:2.8pt;">15.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.16" style="padding-left:2.8pt;padding-right:2.8pt;">12.18</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.17" style="padding-left:2.8pt;padding-right:2.8pt;">12.18</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.13.1" rowspan="4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.13.1.1">Hybrid</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.13.2" style="padding-left:2.8pt;padding-right:2.8pt;">AvaTaR <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib34" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.3" style="padding-left:2.8pt;padding-right:2.8pt;">49.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.4" style="padding-left:2.8pt;padding-right:2.8pt;">69.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.13.5.1">60.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.13.6" style="padding-left:2.8pt;padding-right:2.8pt;">58.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.7" style="padding-left:2.8pt;padding-right:2.8pt;">44.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.8" style="padding-left:2.8pt;padding-right:2.8pt;">59.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.9" style="padding-left:2.8pt;padding-right:2.8pt;">50.63</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.13.10" style="padding-left:2.8pt;padding-right:2.8pt;">51.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.11" style="padding-left:2.8pt;padding-right:2.8pt;">18.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.12" style="padding-left:2.8pt;padding-right:2.8pt;">36.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.13" style="padding-left:2.8pt;padding-right:2.8pt;">39.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.13.14" style="padding-left:2.8pt;padding-right:2.8pt;">26.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.15" style="padding-left:2.8pt;padding-right:2.8pt;">37.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.16" style="padding-left:2.8pt;padding-right:2.8pt;">55.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.17" style="padding-left:2.8pt;padding-right:2.8pt;">50.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.13.18" style="padding-left:2.8pt;padding-right:2.8pt;">45.53</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.14.1" style="padding-left:2.8pt;padding-right:2.8pt;">KAR <cite class="ltx_cite ltx_citemacro_cite">Xia et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib36" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.14.2.1">54.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.3" style="padding-left:2.8pt;padding-right:2.8pt;">68.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.4" style="padding-left:2.8pt;padding-right:2.8pt;">57.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.14.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.14.5.1">61.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.14.6.1">50.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.7" style="padding-left:2.8pt;padding-right:2.8pt;">69.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.8" style="padding-left:2.8pt;padding-right:2.8pt;">60.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.14.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.14.9.1">58.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.10" style="padding-left:2.8pt;padding-right:2.8pt;">30.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.11" style="padding-left:2.8pt;padding-right:2.8pt;">49.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.12" style="padding-left:2.8pt;padding-right:2.8pt;">50.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.14.13" style="padding-left:2.8pt;padding-right:2.8pt;">39.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.14.14.1">45.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.15" style="padding-left:2.8pt;padding-right:2.8pt;">62.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.16" style="padding-left:2.8pt;padding-right:2.8pt;">56.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.14.17" style="padding-left:2.8pt;padding-right:2.8pt;">53.05</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">MFAR<sup class="ltx_sup" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.1.1.1.1.1">∗</span></sup> <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20317v2#bib.bib19" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">41.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.3.1">70.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">58.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">54.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">49.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.7.1">69.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.8.1">71.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9" style="padding-left:2.8pt;padding-right:2.8pt;">58.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.1">40.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.1">62.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.1">68.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.1">51.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14" style="padding-left:2.8pt;padding-right:2.8pt;">43.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.15.1">67.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.16.1">66.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.17.1">54.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.15.1" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.1.1" style="background-color:#D9D9D9;">MoR</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.2" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.2.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.2.1.1">52.19</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.3" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.3.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.3.1.1" style="background-color:#D9D9D9;">74.65</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.4" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.4.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.4.1.1">59.92</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.5" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.5.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.5.1.1" style="background-color:#D9D9D9;">62.24</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.6" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.6.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.6.1.1" style="background-color:#D9D9D9;">58.19</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.7" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.7.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.7.1.1" style="background-color:#D9D9D9;">78.34</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.8" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.8.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.8.1.1" style="background-color:#D9D9D9;">75.01</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.9" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.9.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.9.1.1" style="background-color:#D9D9D9;">67.14</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.10" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.10.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.10.1.1">36.41</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.11.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.11.1.1">60.01</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.12" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.12.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.12.1.1">63.48</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.13" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.13.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.13.1.1">46.92</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.14" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.14.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.14.1.1" style="background-color:#D9D9D9;">48.93</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.15" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.15.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.15.1.1" style="background-color:#D9D9D9;">71.00</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.16" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.16.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.4.15.16.1.1">66.14</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.17" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.15.17.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.15.17.1.1" style="background-color:#D9D9D9;">58.77</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.2.2.2" rowspan="3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1">Ablation</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.2.1" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.1.1" style="background-color:#D9D9D9;">MoR<math alttext="{}_{\text{w/o R}}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.2.2.1.1.m1.1a"><msub id="S3.T1.2.2.1.1.m1.1.1" xref="S3.T1.2.2.1.1.m1.1.1.cmml"><mi id="S3.T1.2.2.1.1.m1.1.1a" xref="S3.T1.2.2.1.1.m1.1.1.cmml"></mi><mtext id="S3.T1.2.2.1.1.m1.1.1.1" mathbackground="#D9D9D9" xref="S3.T1.2.2.1.1.m1.1.1.1a.cmml">w/o R</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.1.m1.1b"><apply id="S3.T1.2.2.1.1.m1.1.1.cmml" xref="S3.T1.2.2.1.1.m1.1.1"><ci id="S3.T1.2.2.1.1.m1.1.1.1a.cmml" xref="S3.T1.2.2.1.1.m1.1.1.1"><mtext id="S3.T1.2.2.1.1.m1.1.1.1.cmml" mathbackground="#D9D9D9" mathsize="70%" xref="S3.T1.2.2.1.1.m1.1.1.1">w/o R</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.1.m1.1c">{}_{\text{w/o R}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.1.m1.1d">start_FLOATSUBSCRIPT w/o R end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.3" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.3.1" style="background-color:#D9D9D9;">44.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.4" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.4.1" style="background-color:#D9D9D9;">68.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.5" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.5.1" style="background-color:#D9D9D9;">56.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.6" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.6.1" style="background-color:#D9D9D9;">55.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.7" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.7.1" style="background-color:#D9D9D9;">34.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.8" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.8.1" style="background-color:#D9D9D9;">62.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.9" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.9.1" style="background-color:#D9D9D9;">67.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.10" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.10.1" style="background-color:#D9D9D9;">47.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.11" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.11.1" style="background-color:#D9D9D9;">31.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.12" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.12.1" style="background-color:#D9D9D9;">53.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.13" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.13.1" style="background-color:#D9D9D9;">60.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.14" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.14.1" style="background-color:#D9D9D9;">41.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.15" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.15.1" style="background-color:#D9D9D9;">31.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.16" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.16.1" style="background-color:#D9D9D9;">57.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.17" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.17.1" style="background-color:#D9D9D9;">57.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.18" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.2.2.18.1" style="background-color:#D9D9D9;">43.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.3.3.1" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.1.1" style="background-color:#D9D9D9;">MoR<math alttext="{}_{\text{w/o RT}}" class="ltx_Math" display="inline" id="S3.T1.3.3.1.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.3.3.1.1.m1.1a"><msub id="S3.T1.3.3.1.1.m1.1.1" xref="S3.T1.3.3.1.1.m1.1.1.cmml"><mi id="S3.T1.3.3.1.1.m1.1.1a" xref="S3.T1.3.3.1.1.m1.1.1.cmml"></mi><mtext id="S3.T1.3.3.1.1.m1.1.1.1" mathbackground="#D9D9D9" xref="S3.T1.3.3.1.1.m1.1.1.1a.cmml">w/o RT</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.1.m1.1b"><apply id="S3.T1.3.3.1.1.m1.1.1.cmml" xref="S3.T1.3.3.1.1.m1.1.1"><ci id="S3.T1.3.3.1.1.m1.1.1.1a.cmml" xref="S3.T1.3.3.1.1.m1.1.1.1"><mtext id="S3.T1.3.3.1.1.m1.1.1.1.cmml" mathbackground="#D9D9D9" mathsize="70%" xref="S3.T1.3.3.1.1.m1.1.1.1">w/o RT</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.1.m1.1c">{}_{\text{w/o RT}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.1.m1.1d">start_FLOATSUBSCRIPT w/o RT end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.2" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.2.1" style="background-color:#D9D9D9;">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.3.1" style="background-color:#D9D9D9;">53.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.4" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.4.1" style="background-color:#D9D9D9;">45.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.5" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.5.1" style="background-color:#D9D9D9;">42.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.6.1" style="background-color:#D9D9D9;">51.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.7.1" style="background-color:#D9D9D9;">73.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.8.1" style="background-color:#D9D9D9;">74.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.9" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.9.1" style="background-color:#D9D9D9;">61.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.10.1" style="background-color:#D9D9D9;">28.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.11.1" style="background-color:#D9D9D9;">46.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.12.1" style="background-color:#D9D9D9;">49.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.13" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.13.1" style="background-color:#D9D9D9;">36.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.14.1" style="background-color:#D9D9D9;">36.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.15" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.15.1" style="background-color:#D9D9D9;">56.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.16" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.16.1" style="background-color:#D9D9D9;">55.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.17" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.3.3.17.1" style="background-color:#D9D9D9;">45.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.4.4.1" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.1.1" style="background-color:#D9D9D9;">MoR<math alttext="{}_{\text{w/o RS}}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.4.4.1.1.m1.1a"><msub id="S3.T1.4.4.1.1.m1.1.1" xref="S3.T1.4.4.1.1.m1.1.1.cmml"><mi id="S3.T1.4.4.1.1.m1.1.1a" xref="S3.T1.4.4.1.1.m1.1.1.cmml"></mi><mtext id="S3.T1.4.4.1.1.m1.1.1.1" mathbackground="#D9D9D9" xref="S3.T1.4.4.1.1.m1.1.1.1a.cmml">w/o RS</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.1.m1.1b"><apply id="S3.T1.4.4.1.1.m1.1.1.cmml" xref="S3.T1.4.4.1.1.m1.1.1"><ci id="S3.T1.4.4.1.1.m1.1.1.1a.cmml" xref="S3.T1.4.4.1.1.m1.1.1.1"><mtext id="S3.T1.4.4.1.1.m1.1.1.1.cmml" mathbackground="#D9D9D9" mathsize="70%" xref="S3.T1.4.4.1.1.m1.1.1.1">w/o RS</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.1.m1.1c">{}_{\text{w/o RS}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.1.m1.1d">start_FLOATSUBSCRIPT w/o RS end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.2" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.2.1" style="background-color:#D9D9D9;">43.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.3" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.3.1" style="background-color:#D9D9D9;">69.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.4" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.4.1" style="background-color:#D9D9D9;">57.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.4.4.5" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.5.1" style="background-color:#D9D9D9;">54.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.6" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.6.1" style="background-color:#D9D9D9;">31.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.7" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.7.1" style="background-color:#D9D9D9;">51.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.8" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.8.1" style="background-color:#D9D9D9;">50.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.4.4.9" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.9.1" style="background-color:#D9D9D9;">40.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.10" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.10.1" style="background-color:#D9D9D9;">22.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.11" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.11.1" style="background-color:#D9D9D9;">38.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.12" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.12.1" style="background-color:#D9D9D9;">39.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.4.4.13" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.13.1" style="background-color:#D9D9D9;">29.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.14" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.14.1" style="background-color:#D9D9D9;">28.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.15" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.15.1" style="background-color:#D9D9D9;">51.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.16" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.16.1" style="background-color:#D9D9D9;">48.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.17" style="background-color:#D9D9D9;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S3.T1.4.4.17.1" style="background-color:#D9D9D9;">38.98</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of various retrieval methods on three distinct Text-rich Graph Knowledge Bases (TG-KBs): Amazon, MAG, and Prime.  The methods compared include several baselines (textual, structural, and hybrid approaches), along with the authors' proposed Mixture of Structural-and-Textual Retrieval (MoR) method and several ablation variants of MoR. The table shows the performance of each method on each dataset across multiple evaluation metrics (H@1, H@5, R@20, MRR). The best and second-best performing methods for each metric and dataset are highlighted.  The results demonstrate that MoR consistently outperforms other methods across all datasets and metrics, showcasing the effectiveness of combining structural and textual retrieval approaches. A note clarifies that MFAR* represents the best-performing variant from a previous work by Li et al. (2024).
> <details>
> <summary>read the caption</summary>
> Table 1: Comparing different retrieval methods with our proposed MoR and its ablations on Amazon, MAG, and Prime datasets. The best and runner-up results are in bold and underlined. Overall, MoR achieves the best performance. Note that MFAR∗ denotes the best model variant proposed in Li et al. (2024)
> </details>





### In-depth insights


#### Mixture Retrieval
The concept of 'Mixture Retrieval,' as implied by the paper, centers around harmonizing structural and textual knowledge retrieval from Text-rich Graph Knowledge Bases (**TG-KBs**). This approach is crucial because TG-KBs inherently store information in both structured (graph-based) and unstructured (textual) forms. Traditional methods often treat these retrieval processes in isolation, failing to leverage their mutual reinforcement. A true mixture retrieval system, as envisioned in this work, would intelligently **interleave structural traversal and textual matching**, adaptively balancing their contributions based on query characteristics and dataset properties. The core challenge lies in creating a framework that can dynamically determine when and how to prioritize structural versus textual cues, overcoming the limitations of rigid, pre-defined rules or simple aggregation techniques. The paper addresses this by introducing a **Planning-Reasoning-Organizing** framework that facilitates better retrieval performance by integrating both knowledge graphs.

#### Planning graphs
Planning graphs are crucial for effective retrieval by outlining the logic for answering queries. **They preserve structural signals without rewording neighbors,** addressing limitations of existing methods. They **encode query-specific constraints and entity categories,** enabling generalization to new queries with similar underlying logic. Unlike rigid heuristics or step-by-step LLMs, planning graphs are generated in one shot, **reducing computational costs.** The method generalizes learned patterns adapting efficiently to new queries with same logic.

#### Structure rerank
**Structure-aware reranking** is a crucial step in refining retrieval results, especially when dealing with diverse knowledge sources. After initial retrieval from textual and structural sources, a reranking mechanism helps to prioritize the most relevant candidates. It leverages trajectory information and structural features to refine the results. A key idea is the emphasis on structural trajectories, which capture how candidates are reached through structural paths, along with semantic matching using models.

#### Ablation studies
The ablation studies systematically dissect the contribution of each component within the proposed model, offering granular insights into their individual and collective impacts. **Module ablation** identifies the synergistic effect of Text Retrieval, Structural Retrieval, and Reranker. Eliminating the Reranker consistently degrades performance, highlighting its importance in noise filtering. **Feature ablation** reveals that in structural-heavy knowledge, features contribute less but contribute more when a structured signal is found, showing the importance of trajectory structural knowledge.

#### Limits of MoR
The paper acknowledges limitations of Mixture of Retrieval (MoR). The primary bottleneck is **lack of domain-specific knowledge**, hindering performance especially in specialized areas like biomedicine, as seen with the PRIME dataset, this indicates even advanced LLMs struggle without tailored expertise. Second, **Reranking limitations as it uses every retrieval layer**. Current reranker is also limited to the most informative path. Overcoming these limitations could involve adaptive path integration and MoE.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20317/x2.png)

> 🔼 The figure illustrates the MoR (Mixture of Structural-and-Textual Retrieval) framework, which is composed of three key modules: a planning module, a reasoning module, and an organizing module. The planning module generates a planning graph that outlines the logic of a query. This graph guides the reasoning module, which employs mixed traversal by interweaving structural traversal (following the relationships in the knowledge base) and textual matching (comparing text content with the query) to identify candidate answers. Finally, the organizing module reranks the retrieved candidates, prioritizing those that align best with the query's logical structure based on their traversal trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our MoR framework consists of a planning module to generate a planning graph, a reasoning module to conduct mixed traversal, and an organizing module to rerank the retrieved candidates.
> </details>



![](https://arxiv.org/html/2502.20317/extracted/6244716/figures/query-pattern-20250215.png)

> 🔼 This figure displays a bar chart showing the performance of three different retrieval methods (Textual Retriever, Structural Retriever, and Mixture-of-Retrievers) across various logical structures found within the Amazon dataset.  The x-axis represents the different logical structures (e.g., patterns of relationships between entities such as Product to Category, etc.), while the y-axis shows the Hit@5 score (percentage of times the correct answer is within the top 5 retrieved results).  The chart highlights the varying success rates of each retrieval method depending on the complexity and type of logical relationships involved in the query. The Mixture-of-Retrievers consistently outperforms the other two methods across most of the query patterns.
> <details>
> <summary>read the caption</summary>
> Figure 3: Imbalance number of queries and performance of different retrievers across different logical structures.
> </details>



![](https://arxiv.org/html/2502.20317/x3.png)

> 🔼 This figure visualizes how the model's attention is distributed across the three entities within the retrieved paths for different queries.  It uses saliency maps to show the relative importance of each entity in determining the final ranking of candidates.  The heatmap representation shows which entities significantly contribute to the model's decision-making process for each query.
> <details>
> <summary>read the caption</summary>
> Figure 4: Saliency map visualization of query attention over three entities along the retrieved paths
> </details>



![](https://arxiv.org/html/2502.20317/extracted/6244716/figures/logical-structure-mag.png)

> 🔼 Figure 5 presents a detailed analysis of query patterns within the MAG dataset, showcasing the varying performance of different retrieval methods across diverse logical structures. The x-axis categorizes queries based on their underlying logical structure (e.g., P→A→P representing Paper-to-Author-to-Paper relationships), while the y-axis displays the count of queries for each category.  The bars illustrate the hit@5 performance for each pattern, indicating the success rate of various retrieval approaches—Textual, Structural, and Mixture-of-Retrievers—in correctly retrieving the top-5 relevant results. The figure reveals that the performance of the Mixture-of-Retrievers model generally improves with increasing numbers of queries for each pattern, except for those with repeated entity types, highlighting the effectiveness of the integrated approach in handling intricate query structures.  It also demonstrates a correlation between query pattern complexity and the relative performance of the different retrieval methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Imbalance number of queries and performance of different retrievers across different logic patterns.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1">TF</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1">SF</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1">TI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1">H@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.1">H@5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.1">R@20</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.1">MRR</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.2.1" rowspan="7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.2.1.1">MAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.2.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.2.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.2.4.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">48.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.6" style="padding-left:4.5pt;padding-right:4.5pt;">73.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.7" style="padding-left:4.5pt;padding-right:4.5pt;">72.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.8" style="padding-left:4.5pt;padding-right:4.5pt;">59.79</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3">
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.3.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.3.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.3.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.4" style="padding-left:4.5pt;padding-right:4.5pt;">18.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.5" style="padding-left:4.5pt;padding-right:4.5pt;">41.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.6" style="padding-left:4.5pt;padding-right:4.5pt;">52.85</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.7" style="padding-left:4.5pt;padding-right:4.5pt;">29.84</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.4.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.4.2.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.4.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">18.16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.5" style="padding-left:4.5pt;padding-right:4.5pt;">41.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.6" style="padding-left:4.5pt;padding-right:4.5pt;">52.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.7" style="padding-left:4.5pt;padding-right:4.5pt;">29.31</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.5.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.5.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.5.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4" style="padding-left:4.5pt;padding-right:4.5pt;">58.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">77.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.6" style="padding-left:4.5pt;padding-right:4.5pt;">74.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.7" style="padding-left:4.5pt;padding-right:4.5pt;">66.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6">
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.6.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.6.2.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.6.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.6.4.1">58.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.6.5.1">77.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.6.6.1">74.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.6.7.1">66.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7">
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.7.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.7.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.7.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.4" style="padding-left:4.5pt;padding-right:4.5pt;">17.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.5" style="padding-left:4.5pt;padding-right:4.5pt;">38.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6" style="padding-left:4.5pt;padding-right:4.5pt;">46.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.7" style="padding-left:4.5pt;padding-right:4.5pt;">27.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.8.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.8.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.8.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.4.1">58.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.5.1">78.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.6.1">75.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.1">67.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.9.1" rowspan="7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.9.1.1">Amazon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.9.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.9.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.9.4.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.9.5.1">51.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.9.6.1">74.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.9.7.1">59.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.9.8.1">61.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10">
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.10.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.10.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.10.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.4" style="padding-left:4.5pt;padding-right:4.5pt;">8.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.5" style="padding-left:4.5pt;padding-right:4.5pt;">24.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.6" style="padding-left:4.5pt;padding-right:4.5pt;">25.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.7" style="padding-left:4.5pt;padding-right:4.5pt;">16.94</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11">
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.11.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.11.2.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.11.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.4" style="padding-left:4.5pt;padding-right:4.5pt;">5.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.5" style="padding-left:4.5pt;padding-right:4.5pt;">16.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.6" style="padding-left:4.5pt;padding-right:4.5pt;">12.94</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.11.7" style="padding-left:4.5pt;padding-right:4.5pt;">11.57</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.12.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.12.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.12.3.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.4" style="padding-left:4.5pt;padding-right:4.5pt;">50.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.5" style="padding-left:4.5pt;padding-right:4.5pt;">73.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.6" style="padding-left:4.5pt;padding-right:4.5pt;">59.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.12.7" style="padding-left:4.5pt;padding-right:4.5pt;">61.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13">
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.13.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.13.2.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.13.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.4" style="padding-left:4.5pt;padding-right:4.5pt;">51.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.5" style="padding-left:4.5pt;padding-right:4.5pt;">73.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.6" style="padding-left:4.5pt;padding-right:4.5pt;">59.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.13.7" style="padding-left:4.5pt;padding-right:4.5pt;">61.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14">
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.14.1.1" style="color:#BF0000;">✘</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.14.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.14.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.14.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.4" style="padding-left:4.5pt;padding-right:4.5pt;">8.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.5" style="padding-left:4.5pt;padding-right:4.5pt;">24.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.6" style="padding-left:4.5pt;padding-right:4.5pt;">25.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.14.7" style="padding-left:4.5pt;padding-right:4.5pt;">16.94</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.15.1.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.15.2.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.15.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T2.1.15.3.1" style="color:#6ABF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.15.4.1">52.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.15.5.1">74.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.15.6.1">59.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.15.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.15.7.1">62.24</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different features used within the Structure-aware Reranker component of the MoR model. It shows how removing one or more features (Textual Fingerprint, Structural Fingerprint, and Traversal Identifier) affects the model's performance, helping to understand the contribution of each feature to the overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study investigating the importance of three features, Textual Fingerprint (TF), Structural Fingerprint (SF), and Traversal Identifier (TI), of the traversal trajectories used in our Structure-aware Reranker.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.1">
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1">Feature</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1">MAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.1">Amazon</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2">
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">H@1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">H@1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">R@20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Last Node</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">49.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.49</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">59.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">50.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">61.05</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Full Path</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.1">58.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.1">75.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.1">67.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.5.1">52.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.6.1">59.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.7.1">62.24</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of reranking performance using two different approaches: considering only the last node in the retrieved trajectory and utilizing the entire trajectory.  The results show how effectively each approach integrates structural and textual information to improve the overall ranking accuracy of retrieved candidates. It highlights the impact of incorporating trajectory information in the reranking process.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparing reranking performance using last node in the retrieved trajectory and the whole trajectory.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.28">
<tr class="ltx_tr" id="A1.T4.28.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="A1.T4.28.29.1" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.28.29.1.1">Notations</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.28.29.2" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.28.29.2.1">Definitions or Descriptions</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{B}" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml">ℬ</mi><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><ci id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1">ℬ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\mathcal{B}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">caligraphic_B</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.1.2" style="padding-left:0.5pt;padding-right:0.5pt;">Text-rich Graph Knowledge Base (TG-KB)</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.2.2.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{V,E,D}" class="ltx_Math" display="inline" id="A1.T4.2.2.1.m1.3"><semantics id="A1.T4.2.2.1.m1.3a"><mrow id="A1.T4.2.2.1.m1.3.4.2" xref="A1.T4.2.2.1.m1.3.4.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.2.2.1.m1.1.1" xref="A1.T4.2.2.1.m1.1.1.cmml">𝒱</mi><mo id="A1.T4.2.2.1.m1.3.4.2.1" xref="A1.T4.2.2.1.m1.3.4.1.cmml">,</mo><mi class="ltx_font_mathcaligraphic" id="A1.T4.2.2.1.m1.2.2" xref="A1.T4.2.2.1.m1.2.2.cmml">ℰ</mi><mo id="A1.T4.2.2.1.m1.3.4.2.2" xref="A1.T4.2.2.1.m1.3.4.1.cmml">,</mo><mi class="ltx_font_mathcaligraphic" id="A1.T4.2.2.1.m1.3.3" xref="A1.T4.2.2.1.m1.3.3.cmml">𝒟</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.1.m1.3b"><list id="A1.T4.2.2.1.m1.3.4.1.cmml" xref="A1.T4.2.2.1.m1.3.4.2"><ci id="A1.T4.2.2.1.m1.1.1.cmml" xref="A1.T4.2.2.1.m1.1.1">𝒱</ci><ci id="A1.T4.2.2.1.m1.2.2.cmml" xref="A1.T4.2.2.1.m1.2.2">ℰ</ci><ci id="A1.T4.2.2.1.m1.3.3.cmml" xref="A1.T4.2.2.1.m1.3.3">𝒟</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.1.m1.3c">\mathcal{V,E,D}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.1.m1.3d">caligraphic_V , caligraphic_E , caligraphic_D</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.2.2.2" style="padding-left:0.5pt;padding-right:0.5pt;">Set of Nodes, Categories and Documents of TG-KB</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.3.3.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{D}_{v},\mathcal{E}_{v}" class="ltx_Math" display="inline" id="A1.T4.3.3.1.m1.2"><semantics id="A1.T4.3.3.1.m1.2a"><mrow id="A1.T4.3.3.1.m1.2.2.2" xref="A1.T4.3.3.1.m1.2.2.3.cmml"><msub id="A1.T4.3.3.1.m1.1.1.1.1" xref="A1.T4.3.3.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.3.3.1.m1.1.1.1.1.2" xref="A1.T4.3.3.1.m1.1.1.1.1.2.cmml">𝒟</mi><mi id="A1.T4.3.3.1.m1.1.1.1.1.3" xref="A1.T4.3.3.1.m1.1.1.1.1.3.cmml">v</mi></msub><mo id="A1.T4.3.3.1.m1.2.2.2.3" xref="A1.T4.3.3.1.m1.2.2.3.cmml">,</mo><msub id="A1.T4.3.3.1.m1.2.2.2.2" xref="A1.T4.3.3.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.3.3.1.m1.2.2.2.2.2" xref="A1.T4.3.3.1.m1.2.2.2.2.2.cmml">ℰ</mi><mi id="A1.T4.3.3.1.m1.2.2.2.2.3" xref="A1.T4.3.3.1.m1.2.2.2.2.3.cmml">v</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.1.m1.2b"><list id="A1.T4.3.3.1.m1.2.2.3.cmml" xref="A1.T4.3.3.1.m1.2.2.2"><apply id="A1.T4.3.3.1.m1.1.1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T4.3.3.1.m1.1.1.1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T4.3.3.1.m1.1.1.1.1.2.cmml" xref="A1.T4.3.3.1.m1.1.1.1.1.2">𝒟</ci><ci id="A1.T4.3.3.1.m1.1.1.1.1.3.cmml" xref="A1.T4.3.3.1.m1.1.1.1.1.3">𝑣</ci></apply><apply id="A1.T4.3.3.1.m1.2.2.2.2.cmml" xref="A1.T4.3.3.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T4.3.3.1.m1.2.2.2.2.1.cmml" xref="A1.T4.3.3.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T4.3.3.1.m1.2.2.2.2.2.cmml" xref="A1.T4.3.3.1.m1.2.2.2.2.2">ℰ</ci><ci id="A1.T4.3.3.1.m1.2.2.2.2.3.cmml" xref="A1.T4.3.3.1.m1.2.2.2.2.3">𝑣</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.1.m1.2c">\mathcal{D}_{v},\mathcal{E}_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.1.m1.2d">caligraphic_D start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT , caligraphic_E start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.4.4.2" style="padding-left:0.5pt;padding-right:0.5pt;">Document and Category of Node <math alttext="v" class="ltx_Math" display="inline" id="A1.T4.4.4.2.m1.1"><semantics id="A1.T4.4.4.2.m1.1a"><mi id="A1.T4.4.4.2.m1.1.1" xref="A1.T4.4.4.2.m1.1.1.cmml">v</mi><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.2.m1.1b"><ci id="A1.T4.4.4.2.m1.1.1.cmml" xref="A1.T4.4.4.2.m1.1.1">𝑣</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.2.m1.1c">v</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.2.m1.1d">italic_v</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.5.5.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="Q\in\mathcal{Q}" class="ltx_Math" display="inline" id="A1.T4.5.5.1.m1.1"><semantics id="A1.T4.5.5.1.m1.1a"><mrow id="A1.T4.5.5.1.m1.1.1" xref="A1.T4.5.5.1.m1.1.1.cmml"><mi id="A1.T4.5.5.1.m1.1.1.2" xref="A1.T4.5.5.1.m1.1.1.2.cmml">Q</mi><mo id="A1.T4.5.5.1.m1.1.1.1" xref="A1.T4.5.5.1.m1.1.1.1.cmml">∈</mo><mi class="ltx_font_mathcaligraphic" id="A1.T4.5.5.1.m1.1.1.3" xref="A1.T4.5.5.1.m1.1.1.3.cmml">𝒬</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.1.m1.1b"><apply id="A1.T4.5.5.1.m1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1"><in id="A1.T4.5.5.1.m1.1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1.1"></in><ci id="A1.T4.5.5.1.m1.1.1.2.cmml" xref="A1.T4.5.5.1.m1.1.1.2">𝑄</ci><ci id="A1.T4.5.5.1.m1.1.1.3.cmml" xref="A1.T4.5.5.1.m1.1.1.3">𝒬</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.1.m1.1c">Q\in\mathcal{Q}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.1.m1.1d">italic_Q ∈ caligraphic_Q</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.7.7.3" style="padding-left:0.5pt;padding-right:0.5pt;">Query <math alttext="Q" class="ltx_Math" display="inline" id="A1.T4.6.6.2.m1.1"><semantics id="A1.T4.6.6.2.m1.1a"><mi id="A1.T4.6.6.2.m1.1.1" xref="A1.T4.6.6.2.m1.1.1.cmml">Q</mi><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.2.m1.1b"><ci id="A1.T4.6.6.2.m1.1.1.cmml" xref="A1.T4.6.6.2.m1.1.1">𝑄</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.2.m1.1c">Q</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.2.m1.1d">italic_Q</annotation></semantics></math> from Query set <math alttext="\mathcal{Q}" class="ltx_Math" display="inline" id="A1.T4.7.7.3.m2.1"><semantics id="A1.T4.7.7.3.m2.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T4.7.7.3.m2.1.1" xref="A1.T4.7.7.3.m2.1.1.cmml">𝒬</mi><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.3.m2.1b"><ci id="A1.T4.7.7.3.m2.1.1.cmml" xref="A1.T4.7.7.3.m2.1.1">𝒬</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.3.m2.1c">\mathcal{Q}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.3.m2.1d">caligraphic_Q</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.8.8.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{Q}^{\text{Struct}},\mathcal{Q}^{\text{Text}}" class="ltx_Math" display="inline" id="A1.T4.8.8.1.m1.2"><semantics id="A1.T4.8.8.1.m1.2a"><mrow id="A1.T4.8.8.1.m1.2.2.2" xref="A1.T4.8.8.1.m1.2.2.3.cmml"><msup id="A1.T4.8.8.1.m1.1.1.1.1" xref="A1.T4.8.8.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.8.8.1.m1.1.1.1.1.2" xref="A1.T4.8.8.1.m1.1.1.1.1.2.cmml">𝒬</mi><mtext id="A1.T4.8.8.1.m1.1.1.1.1.3" xref="A1.T4.8.8.1.m1.1.1.1.1.3a.cmml">Struct</mtext></msup><mo id="A1.T4.8.8.1.m1.2.2.2.3" xref="A1.T4.8.8.1.m1.2.2.3.cmml">,</mo><msup id="A1.T4.8.8.1.m1.2.2.2.2" xref="A1.T4.8.8.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.8.8.1.m1.2.2.2.2.2" xref="A1.T4.8.8.1.m1.2.2.2.2.2.cmml">𝒬</mi><mtext id="A1.T4.8.8.1.m1.2.2.2.2.3" xref="A1.T4.8.8.1.m1.2.2.2.2.3a.cmml">Text</mtext></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.1.m1.2b"><list id="A1.T4.8.8.1.m1.2.2.3.cmml" xref="A1.T4.8.8.1.m1.2.2.2"><apply id="A1.T4.8.8.1.m1.1.1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T4.8.8.1.m1.1.1.1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1.1.1">superscript</csymbol><ci id="A1.T4.8.8.1.m1.1.1.1.1.2.cmml" xref="A1.T4.8.8.1.m1.1.1.1.1.2">𝒬</ci><ci id="A1.T4.8.8.1.m1.1.1.1.1.3a.cmml" xref="A1.T4.8.8.1.m1.1.1.1.1.3"><mtext id="A1.T4.8.8.1.m1.1.1.1.1.3.cmml" mathsize="70%" xref="A1.T4.8.8.1.m1.1.1.1.1.3">Struct</mtext></ci></apply><apply id="A1.T4.8.8.1.m1.2.2.2.2.cmml" xref="A1.T4.8.8.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T4.8.8.1.m1.2.2.2.2.1.cmml" xref="A1.T4.8.8.1.m1.2.2.2.2">superscript</csymbol><ci id="A1.T4.8.8.1.m1.2.2.2.2.2.cmml" xref="A1.T4.8.8.1.m1.2.2.2.2.2">𝒬</ci><ci id="A1.T4.8.8.1.m1.2.2.2.2.3a.cmml" xref="A1.T4.8.8.1.m1.2.2.2.2.3"><mtext id="A1.T4.8.8.1.m1.2.2.2.2.3.cmml" mathsize="70%" xref="A1.T4.8.8.1.m1.2.2.2.2.3">Text</mtext></ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.1.m1.2c">\mathcal{Q}^{\text{Struct}},\mathcal{Q}^{\text{Text}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.1.m1.2d">caligraphic_Q start_POSTSUPERSCRIPT Struct end_POSTSUPERSCRIPT , caligraphic_Q start_POSTSUPERSCRIPT Text end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.8.8.2" style="padding-left:0.5pt;padding-right:0.5pt;">Query targeted by structural and textual retrieval</td>
</tr>
<tr class="ltx_tr" id="A1.T4.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.9.9.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="G=\{\mathcal{P}_{i}\}_{i=1}^{|G|}" class="ltx_Math" display="inline" id="A1.T4.9.9.1.m1.2"><semantics id="A1.T4.9.9.1.m1.2a"><mrow id="A1.T4.9.9.1.m1.2.2" xref="A1.T4.9.9.1.m1.2.2.cmml"><mi id="A1.T4.9.9.1.m1.2.2.3" xref="A1.T4.9.9.1.m1.2.2.3.cmml">G</mi><mo id="A1.T4.9.9.1.m1.2.2.2" xref="A1.T4.9.9.1.m1.2.2.2.cmml">=</mo><msubsup id="A1.T4.9.9.1.m1.2.2.1" xref="A1.T4.9.9.1.m1.2.2.1.cmml"><mrow id="A1.T4.9.9.1.m1.2.2.1.1.1.1" xref="A1.T4.9.9.1.m1.2.2.1.1.1.2.cmml"><mo id="A1.T4.9.9.1.m1.2.2.1.1.1.1.2" stretchy="false" xref="A1.T4.9.9.1.m1.2.2.1.1.1.2.cmml">{</mo><msub id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.2" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.2.cmml">𝒫</mi><mi id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.3" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.3.cmml">i</mi></msub><mo id="A1.T4.9.9.1.m1.2.2.1.1.1.1.3" stretchy="false" xref="A1.T4.9.9.1.m1.2.2.1.1.1.2.cmml">}</mo></mrow><mrow id="A1.T4.9.9.1.m1.2.2.1.1.3" xref="A1.T4.9.9.1.m1.2.2.1.1.3.cmml"><mi id="A1.T4.9.9.1.m1.2.2.1.1.3.2" xref="A1.T4.9.9.1.m1.2.2.1.1.3.2.cmml">i</mi><mo id="A1.T4.9.9.1.m1.2.2.1.1.3.1" xref="A1.T4.9.9.1.m1.2.2.1.1.3.1.cmml">=</mo><mn id="A1.T4.9.9.1.m1.2.2.1.1.3.3" xref="A1.T4.9.9.1.m1.2.2.1.1.3.3.cmml">1</mn></mrow><mrow id="A1.T4.9.9.1.m1.1.1.1.3" xref="A1.T4.9.9.1.m1.1.1.1.2.cmml"><mo id="A1.T4.9.9.1.m1.1.1.1.3.1" stretchy="false" xref="A1.T4.9.9.1.m1.1.1.1.2.1.cmml">|</mo><mi id="A1.T4.9.9.1.m1.1.1.1.1" xref="A1.T4.9.9.1.m1.1.1.1.1.cmml">G</mi><mo id="A1.T4.9.9.1.m1.1.1.1.3.2" stretchy="false" xref="A1.T4.9.9.1.m1.1.1.1.2.1.cmml">|</mo></mrow></msubsup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.1.m1.2b"><apply id="A1.T4.9.9.1.m1.2.2.cmml" xref="A1.T4.9.9.1.m1.2.2"><eq id="A1.T4.9.9.1.m1.2.2.2.cmml" xref="A1.T4.9.9.1.m1.2.2.2"></eq><ci id="A1.T4.9.9.1.m1.2.2.3.cmml" xref="A1.T4.9.9.1.m1.2.2.3">𝐺</ci><apply id="A1.T4.9.9.1.m1.2.2.1.cmml" xref="A1.T4.9.9.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T4.9.9.1.m1.2.2.1.2.cmml" xref="A1.T4.9.9.1.m1.2.2.1">superscript</csymbol><apply id="A1.T4.9.9.1.m1.2.2.1.1.cmml" xref="A1.T4.9.9.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T4.9.9.1.m1.2.2.1.1.2.cmml" xref="A1.T4.9.9.1.m1.2.2.1">subscript</csymbol><set id="A1.T4.9.9.1.m1.2.2.1.1.1.2.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1"><apply id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1">subscript</csymbol><ci id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.2.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.2">𝒫</ci><ci id="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.3.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.1.1.1.3">𝑖</ci></apply></set><apply id="A1.T4.9.9.1.m1.2.2.1.1.3.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.3"><eq id="A1.T4.9.9.1.m1.2.2.1.1.3.1.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.3.1"></eq><ci id="A1.T4.9.9.1.m1.2.2.1.1.3.2.cmml" xref="A1.T4.9.9.1.m1.2.2.1.1.3.2">𝑖</ci><cn id="A1.T4.9.9.1.m1.2.2.1.1.3.3.cmml" type="integer" xref="A1.T4.9.9.1.m1.2.2.1.1.3.3">1</cn></apply></apply><apply id="A1.T4.9.9.1.m1.1.1.1.2.cmml" xref="A1.T4.9.9.1.m1.1.1.1.3"><abs id="A1.T4.9.9.1.m1.1.1.1.2.1.cmml" xref="A1.T4.9.9.1.m1.1.1.1.3.1"></abs><ci id="A1.T4.9.9.1.m1.1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1.1.1">𝐺</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.1.m1.2c">G=\{\mathcal{P}_{i}\}_{i=1}^{|G|}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.1.m1.2d">italic_G = { caligraphic_P start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT | italic_G | end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.9.9.2" style="padding-left:0.5pt;padding-right:0.5pt;">Planning Graph consisting of multiple reasoning paths</td>
</tr>
<tr class="ltx_tr" id="A1.T4.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.10.10.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{P}_{i}=(p_{i1}\rightarrow...\rightarrow p_{iL_{i}})" class="ltx_Math" display="inline" id="A1.T4.10.10.1.m1.1"><semantics id="A1.T4.10.10.1.m1.1a"><mrow id="A1.T4.10.10.1.m1.1.1" xref="A1.T4.10.10.1.m1.1.1.cmml"><msub id="A1.T4.10.10.1.m1.1.1.3" xref="A1.T4.10.10.1.m1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.10.10.1.m1.1.1.3.2" xref="A1.T4.10.10.1.m1.1.1.3.2.cmml">𝒫</mi><mi id="A1.T4.10.10.1.m1.1.1.3.3" xref="A1.T4.10.10.1.m1.1.1.3.3.cmml">i</mi></msub><mo id="A1.T4.10.10.1.m1.1.1.2" xref="A1.T4.10.10.1.m1.1.1.2.cmml">=</mo><mrow id="A1.T4.10.10.1.m1.1.1.1.1" xref="A1.T4.10.10.1.m1.1.1.1.1.1.cmml"><mo id="A1.T4.10.10.1.m1.1.1.1.1.2" stretchy="false" xref="A1.T4.10.10.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="A1.T4.10.10.1.m1.1.1.1.1.1" xref="A1.T4.10.10.1.m1.1.1.1.1.1.cmml"><msub id="A1.T4.10.10.1.m1.1.1.1.1.1.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.cmml"><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.2.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.2.cmml">p</mi><mrow id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.cmml"><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.2.cmml">i</mi><mo id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.1" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.1.cmml">⁢</mo><mn id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.3" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.3.cmml">1</mn></mrow></msub><mo id="A1.T4.10.10.1.m1.1.1.1.1.1.3" stretchy="false" xref="A1.T4.10.10.1.m1.1.1.1.1.1.3.cmml">→</mo><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.4" mathvariant="normal" xref="A1.T4.10.10.1.m1.1.1.1.1.1.4.cmml">…</mi><mo id="A1.T4.10.10.1.m1.1.1.1.1.1.5" stretchy="false" xref="A1.T4.10.10.1.m1.1.1.1.1.1.5.cmml">→</mo><msub id="A1.T4.10.10.1.m1.1.1.1.1.1.6" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.cmml"><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.6.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.2.cmml">p</mi><mrow id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.cmml"><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.2.cmml">i</mi><mo id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.1" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.1.cmml">⁢</mo><msub id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.cmml"><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.2" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.2.cmml">L</mi><mi id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.3" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.3.cmml">i</mi></msub></mrow></msub></mrow><mo id="A1.T4.10.10.1.m1.1.1.1.1.3" stretchy="false" xref="A1.T4.10.10.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.1.m1.1b"><apply id="A1.T4.10.10.1.m1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1"><eq id="A1.T4.10.10.1.m1.1.1.2.cmml" xref="A1.T4.10.10.1.m1.1.1.2"></eq><apply id="A1.T4.10.10.1.m1.1.1.3.cmml" xref="A1.T4.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.3">subscript</csymbol><ci id="A1.T4.10.10.1.m1.1.1.3.2.cmml" xref="A1.T4.10.10.1.m1.1.1.3.2">𝒫</ci><ci id="A1.T4.10.10.1.m1.1.1.3.3.cmml" xref="A1.T4.10.10.1.m1.1.1.3.3">𝑖</ci></apply><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1"><and id="A1.T4.10.10.1.m1.1.1.1.1.1a.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1"></and><apply id="A1.T4.10.10.1.m1.1.1.1.1.1b.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1"><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.3.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.3">→</ci><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.1.1.1.2.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2">subscript</csymbol><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.2.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.2">𝑝</ci><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3"><times id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.1"></times><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.2">𝑖</ci><cn id="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.3.cmml" type="integer" xref="A1.T4.10.10.1.m1.1.1.1.1.1.2.3.3">1</cn></apply></apply><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.4.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.4">…</ci></apply><apply id="A1.T4.10.10.1.m1.1.1.1.1.1c.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1"><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.5.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.5">→</ci><share href="https://arxiv.org/html/2502.20317v2#A1.T4.10.10.1.m1.1.1.1.1.1.4.cmml" id="A1.T4.10.10.1.m1.1.1.1.1.1d.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1"></share><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.6.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.1.1.1.6.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6">subscript</csymbol><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.6.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.2">𝑝</ci><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3"><times id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.1"></times><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.2">𝑖</ci><apply id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3">subscript</csymbol><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.2.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.2">𝐿</ci><ci id="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.3.cmml" xref="A1.T4.10.10.1.m1.1.1.1.1.1.6.3.3.3">𝑖</ci></apply></apply></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.1.m1.1c">\mathcal{P}_{i}=(p_{i1}\rightarrow...\rightarrow p_{iL_{i}})</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.1.m1.1d">caligraphic_P start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT = ( italic_p start_POSTSUBSCRIPT italic_i 1 end_POSTSUBSCRIPT → … → italic_p start_POSTSUBSCRIPT italic_i italic_L start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.11.11.2" style="padding-left:0.5pt;padding-right:0.5pt;">Reasoning path consisting of <math alttext="L_{i}" class="ltx_Math" display="inline" id="A1.T4.11.11.2.m1.1"><semantics id="A1.T4.11.11.2.m1.1a"><msub id="A1.T4.11.11.2.m1.1.1" xref="A1.T4.11.11.2.m1.1.1.cmml"><mi id="A1.T4.11.11.2.m1.1.1.2" xref="A1.T4.11.11.2.m1.1.1.2.cmml">L</mi><mi id="A1.T4.11.11.2.m1.1.1.3" xref="A1.T4.11.11.2.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.11.11.2.m1.1b"><apply id="A1.T4.11.11.2.m1.1.1.cmml" xref="A1.T4.11.11.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.11.11.2.m1.1.1.1.cmml" xref="A1.T4.11.11.2.m1.1.1">subscript</csymbol><ci id="A1.T4.11.11.2.m1.1.1.2.cmml" xref="A1.T4.11.11.2.m1.1.1.2">𝐿</ci><ci id="A1.T4.11.11.2.m1.1.1.3.cmml" xref="A1.T4.11.11.2.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.11.11.2.m1.1c">L_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.11.11.2.m1.1d">italic_L start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math> sequential entities</td>
</tr>
<tr class="ltx_tr" id="A1.T4.13.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.12.12.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{E}_{p_{ij}},\mathcal{T}_{p_{ij}}" class="ltx_Math" display="inline" id="A1.T4.12.12.1.m1.2"><semantics id="A1.T4.12.12.1.m1.2a"><mrow id="A1.T4.12.12.1.m1.2.2.2" xref="A1.T4.12.12.1.m1.2.2.3.cmml"><msub id="A1.T4.12.12.1.m1.1.1.1.1" xref="A1.T4.12.12.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.12.12.1.m1.1.1.1.1.2" xref="A1.T4.12.12.1.m1.1.1.1.1.2.cmml">ℰ</mi><msub id="A1.T4.12.12.1.m1.1.1.1.1.3" xref="A1.T4.12.12.1.m1.1.1.1.1.3.cmml"><mi id="A1.T4.12.12.1.m1.1.1.1.1.3.2" xref="A1.T4.12.12.1.m1.1.1.1.1.3.2.cmml">p</mi><mrow id="A1.T4.12.12.1.m1.1.1.1.1.3.3" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.cmml"><mi id="A1.T4.12.12.1.m1.1.1.1.1.3.3.2" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.2.cmml">i</mi><mo id="A1.T4.12.12.1.m1.1.1.1.1.3.3.1" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.1.cmml">⁢</mo><mi id="A1.T4.12.12.1.m1.1.1.1.1.3.3.3" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.3.cmml">j</mi></mrow></msub></msub><mo id="A1.T4.12.12.1.m1.2.2.2.3" xref="A1.T4.12.12.1.m1.2.2.3.cmml">,</mo><msub id="A1.T4.12.12.1.m1.2.2.2.2" xref="A1.T4.12.12.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.12.12.1.m1.2.2.2.2.2" xref="A1.T4.12.12.1.m1.2.2.2.2.2.cmml">𝒯</mi><msub id="A1.T4.12.12.1.m1.2.2.2.2.3" xref="A1.T4.12.12.1.m1.2.2.2.2.3.cmml"><mi id="A1.T4.12.12.1.m1.2.2.2.2.3.2" xref="A1.T4.12.12.1.m1.2.2.2.2.3.2.cmml">p</mi><mrow id="A1.T4.12.12.1.m1.2.2.2.2.3.3" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.cmml"><mi id="A1.T4.12.12.1.m1.2.2.2.2.3.3.2" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.2.cmml">i</mi><mo id="A1.T4.12.12.1.m1.2.2.2.2.3.3.1" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.1.cmml">⁢</mo><mi id="A1.T4.12.12.1.m1.2.2.2.2.3.3.3" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.3.cmml">j</mi></mrow></msub></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.12.12.1.m1.2b"><list id="A1.T4.12.12.1.m1.2.2.3.cmml" xref="A1.T4.12.12.1.m1.2.2.2"><apply id="A1.T4.12.12.1.m1.1.1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.1.1.1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T4.12.12.1.m1.1.1.1.1.2.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.2">ℰ</ci><apply id="A1.T4.12.12.1.m1.1.1.1.1.3.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.1.1.1.1.3.1.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3">subscript</csymbol><ci id="A1.T4.12.12.1.m1.1.1.1.1.3.2.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3.2">𝑝</ci><apply id="A1.T4.12.12.1.m1.1.1.1.1.3.3.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3"><times id="A1.T4.12.12.1.m1.1.1.1.1.3.3.1.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.1"></times><ci id="A1.T4.12.12.1.m1.1.1.1.1.3.3.2.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.2">𝑖</ci><ci id="A1.T4.12.12.1.m1.1.1.1.1.3.3.3.cmml" xref="A1.T4.12.12.1.m1.1.1.1.1.3.3.3">𝑗</ci></apply></apply></apply><apply id="A1.T4.12.12.1.m1.2.2.2.2.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.2.2.2.2.1.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T4.12.12.1.m1.2.2.2.2.2.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.2">𝒯</ci><apply id="A1.T4.12.12.1.m1.2.2.2.2.3.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.2.2.2.2.3.1.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3">subscript</csymbol><ci id="A1.T4.12.12.1.m1.2.2.2.2.3.2.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3.2">𝑝</ci><apply id="A1.T4.12.12.1.m1.2.2.2.2.3.3.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3"><times id="A1.T4.12.12.1.m1.2.2.2.2.3.3.1.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.1"></times><ci id="A1.T4.12.12.1.m1.2.2.2.2.3.3.2.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.2">𝑖</ci><ci id="A1.T4.12.12.1.m1.2.2.2.2.3.3.3.cmml" xref="A1.T4.12.12.1.m1.2.2.2.2.3.3.3">𝑗</ci></apply></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.12.12.1.m1.2c">\mathcal{E}_{p_{ij}},\mathcal{T}_{p_{ij}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.12.12.1.m1.2d">caligraphic_E start_POSTSUBSCRIPT italic_p start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT end_POSTSUBSCRIPT , caligraphic_T start_POSTSUBSCRIPT italic_p start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.13.13.2" style="padding-left:0.5pt;padding-right:0.5pt;">Textual category and restriction of path entity <math alttext="p_{ij}" class="ltx_Math" display="inline" id="A1.T4.13.13.2.m1.1"><semantics id="A1.T4.13.13.2.m1.1a"><msub id="A1.T4.13.13.2.m1.1.1" xref="A1.T4.13.13.2.m1.1.1.cmml"><mi id="A1.T4.13.13.2.m1.1.1.2" xref="A1.T4.13.13.2.m1.1.1.2.cmml">p</mi><mrow id="A1.T4.13.13.2.m1.1.1.3" xref="A1.T4.13.13.2.m1.1.1.3.cmml"><mi id="A1.T4.13.13.2.m1.1.1.3.2" xref="A1.T4.13.13.2.m1.1.1.3.2.cmml">i</mi><mo id="A1.T4.13.13.2.m1.1.1.3.1" xref="A1.T4.13.13.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A1.T4.13.13.2.m1.1.1.3.3" xref="A1.T4.13.13.2.m1.1.1.3.3.cmml">j</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T4.13.13.2.m1.1b"><apply id="A1.T4.13.13.2.m1.1.1.cmml" xref="A1.T4.13.13.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.13.13.2.m1.1.1.1.cmml" xref="A1.T4.13.13.2.m1.1.1">subscript</csymbol><ci id="A1.T4.13.13.2.m1.1.1.2.cmml" xref="A1.T4.13.13.2.m1.1.1.2">𝑝</ci><apply id="A1.T4.13.13.2.m1.1.1.3.cmml" xref="A1.T4.13.13.2.m1.1.1.3"><times id="A1.T4.13.13.2.m1.1.1.3.1.cmml" xref="A1.T4.13.13.2.m1.1.1.3.1"></times><ci id="A1.T4.13.13.2.m1.1.1.3.2.cmml" xref="A1.T4.13.13.2.m1.1.1.3.2">𝑖</ci><ci id="A1.T4.13.13.2.m1.1.1.3.3.cmml" xref="A1.T4.13.13.2.m1.1.1.3.3">𝑗</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.13.13.2.m1.1c">p_{ij}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.13.13.2.m1.1d">italic_p start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.14.14.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\widetilde{\mathcal{C}}" class="ltx_Math" display="inline" id="A1.T4.14.14.1.m1.1"><semantics id="A1.T4.14.14.1.m1.1a"><mover accent="true" id="A1.T4.14.14.1.m1.1.1" xref="A1.T4.14.14.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.14.14.1.m1.1.1.2" xref="A1.T4.14.14.1.m1.1.1.2.cmml">𝒞</mi><mo id="A1.T4.14.14.1.m1.1.1.1" xref="A1.T4.14.14.1.m1.1.1.1.cmml">~</mo></mover><annotation-xml encoding="MathML-Content" id="A1.T4.14.14.1.m1.1b"><apply id="A1.T4.14.14.1.m1.1.1.cmml" xref="A1.T4.14.14.1.m1.1.1"><ci id="A1.T4.14.14.1.m1.1.1.1.cmml" xref="A1.T4.14.14.1.m1.1.1.1">~</ci><ci id="A1.T4.14.14.1.m1.1.1.2.cmml" xref="A1.T4.14.14.1.m1.1.1.2">𝒞</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.14.14.1.m1.1c">\widetilde{\mathcal{C}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.14.14.1.m1.1d">over~ start_ARG caligraphic_C end_ARG</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.14.14.2" style="padding-left:0.5pt;padding-right:0.5pt;">Retrieved candidates after reasoning module.</td>
</tr>
<tr class="ltx_tr" id="A1.T4.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.15.15.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\widetilde{\mathcal{C}}^{l}_{i}=\widetilde{\mathcal{C}}^{l,\text{Struct}}_{i}%
\cup\widetilde{\mathcal{C}}^{l,\text{Text}}_{i}" class="ltx_Math" display="inline" id="A1.T4.15.15.1.m1.4"><semantics id="A1.T4.15.15.1.m1.4a"><mrow id="A1.T4.15.15.1.m1.4.5" xref="A1.T4.15.15.1.m1.4.5.cmml"><msubsup id="A1.T4.15.15.1.m1.4.5.2" xref="A1.T4.15.15.1.m1.4.5.2.cmml"><mover accent="true" id="A1.T4.15.15.1.m1.4.5.2.2.2" xref="A1.T4.15.15.1.m1.4.5.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.15.15.1.m1.4.5.2.2.2.2" xref="A1.T4.15.15.1.m1.4.5.2.2.2.2.cmml">𝒞</mi><mo id="A1.T4.15.15.1.m1.4.5.2.2.2.1" xref="A1.T4.15.15.1.m1.4.5.2.2.2.1.cmml">~</mo></mover><mi id="A1.T4.15.15.1.m1.4.5.2.3" xref="A1.T4.15.15.1.m1.4.5.2.3.cmml">i</mi><mi id="A1.T4.15.15.1.m1.4.5.2.2.3" xref="A1.T4.15.15.1.m1.4.5.2.2.3.cmml">l</mi></msubsup><mo id="A1.T4.15.15.1.m1.4.5.1" xref="A1.T4.15.15.1.m1.4.5.1.cmml">=</mo><mrow id="A1.T4.15.15.1.m1.4.5.3" xref="A1.T4.15.15.1.m1.4.5.3.cmml"><msubsup id="A1.T4.15.15.1.m1.4.5.3.2" xref="A1.T4.15.15.1.m1.4.5.3.2.cmml"><mover accent="true" id="A1.T4.15.15.1.m1.4.5.3.2.2.2" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.15.15.1.m1.4.5.3.2.2.2.2" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2.2.cmml">𝒞</mi><mo id="A1.T4.15.15.1.m1.4.5.3.2.2.2.1" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2.1.cmml">~</mo></mover><mi id="A1.T4.15.15.1.m1.4.5.3.2.3" xref="A1.T4.15.15.1.m1.4.5.3.2.3.cmml">i</mi><mrow id="A1.T4.15.15.1.m1.2.2.2.4" xref="A1.T4.15.15.1.m1.2.2.2.3.cmml"><mi id="A1.T4.15.15.1.m1.1.1.1.1" xref="A1.T4.15.15.1.m1.1.1.1.1.cmml">l</mi><mo id="A1.T4.15.15.1.m1.2.2.2.4.1" xref="A1.T4.15.15.1.m1.2.2.2.3.cmml">,</mo><mtext id="A1.T4.15.15.1.m1.2.2.2.2" xref="A1.T4.15.15.1.m1.2.2.2.2a.cmml">Struct</mtext></mrow></msubsup><mo id="A1.T4.15.15.1.m1.4.5.3.1" xref="A1.T4.15.15.1.m1.4.5.3.1.cmml">∪</mo><msubsup id="A1.T4.15.15.1.m1.4.5.3.3" xref="A1.T4.15.15.1.m1.4.5.3.3.cmml"><mover accent="true" id="A1.T4.15.15.1.m1.4.5.3.3.2.2" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.15.15.1.m1.4.5.3.3.2.2.2" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2.2.cmml">𝒞</mi><mo id="A1.T4.15.15.1.m1.4.5.3.3.2.2.1" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2.1.cmml">~</mo></mover><mi id="A1.T4.15.15.1.m1.4.5.3.3.3" xref="A1.T4.15.15.1.m1.4.5.3.3.3.cmml">i</mi><mrow id="A1.T4.15.15.1.m1.4.4.2.4" xref="A1.T4.15.15.1.m1.4.4.2.3.cmml"><mi id="A1.T4.15.15.1.m1.3.3.1.1" xref="A1.T4.15.15.1.m1.3.3.1.1.cmml">l</mi><mo id="A1.T4.15.15.1.m1.4.4.2.4.1" xref="A1.T4.15.15.1.m1.4.4.2.3.cmml">,</mo><mtext id="A1.T4.15.15.1.m1.4.4.2.2" xref="A1.T4.15.15.1.m1.4.4.2.2a.cmml">Text</mtext></mrow></msubsup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.15.15.1.m1.4b"><apply id="A1.T4.15.15.1.m1.4.5.cmml" xref="A1.T4.15.15.1.m1.4.5"><eq id="A1.T4.15.15.1.m1.4.5.1.cmml" xref="A1.T4.15.15.1.m1.4.5.1"></eq><apply id="A1.T4.15.15.1.m1.4.5.2.cmml" xref="A1.T4.15.15.1.m1.4.5.2"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.2">subscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.2"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.2.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.2">superscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.2.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.2.2.2"><ci id="A1.T4.15.15.1.m1.4.5.2.2.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.2.2.2.1">~</ci><ci id="A1.T4.15.15.1.m1.4.5.2.2.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.2.2.2.2">𝒞</ci></apply><ci id="A1.T4.15.15.1.m1.4.5.2.2.3.cmml" xref="A1.T4.15.15.1.m1.4.5.2.2.3">𝑙</ci></apply><ci id="A1.T4.15.15.1.m1.4.5.2.3.cmml" xref="A1.T4.15.15.1.m1.4.5.2.3">𝑖</ci></apply><apply id="A1.T4.15.15.1.m1.4.5.3.cmml" xref="A1.T4.15.15.1.m1.4.5.3"><union id="A1.T4.15.15.1.m1.4.5.3.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.1"></union><apply id="A1.T4.15.15.1.m1.4.5.3.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.3.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2">subscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.3.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.3.2.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2">superscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.3.2.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2"><ci id="A1.T4.15.15.1.m1.4.5.3.2.2.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2.1">~</ci><ci id="A1.T4.15.15.1.m1.4.5.3.2.2.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2.2.2.2">𝒞</ci></apply><list id="A1.T4.15.15.1.m1.2.2.2.3.cmml" xref="A1.T4.15.15.1.m1.2.2.2.4"><ci id="A1.T4.15.15.1.m1.1.1.1.1.cmml" xref="A1.T4.15.15.1.m1.1.1.1.1">𝑙</ci><ci id="A1.T4.15.15.1.m1.2.2.2.2a.cmml" xref="A1.T4.15.15.1.m1.2.2.2.2"><mtext id="A1.T4.15.15.1.m1.2.2.2.2.cmml" mathsize="70%" xref="A1.T4.15.15.1.m1.2.2.2.2">Struct</mtext></ci></list></apply><ci id="A1.T4.15.15.1.m1.4.5.3.2.3.cmml" xref="A1.T4.15.15.1.m1.4.5.3.2.3">𝑖</ci></apply><apply id="A1.T4.15.15.1.m1.4.5.3.3.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.3.3.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3">subscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.3.3.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.4.5.3.3.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3">superscript</csymbol><apply id="A1.T4.15.15.1.m1.4.5.3.3.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2"><ci id="A1.T4.15.15.1.m1.4.5.3.3.2.2.1.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2.1">~</ci><ci id="A1.T4.15.15.1.m1.4.5.3.3.2.2.2.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3.2.2.2">𝒞</ci></apply><list id="A1.T4.15.15.1.m1.4.4.2.3.cmml" xref="A1.T4.15.15.1.m1.4.4.2.4"><ci id="A1.T4.15.15.1.m1.3.3.1.1.cmml" xref="A1.T4.15.15.1.m1.3.3.1.1">𝑙</ci><ci id="A1.T4.15.15.1.m1.4.4.2.2a.cmml" xref="A1.T4.15.15.1.m1.4.4.2.2"><mtext id="A1.T4.15.15.1.m1.4.4.2.2.cmml" mathsize="70%" xref="A1.T4.15.15.1.m1.4.4.2.2">Text</mtext></ci></list></apply><ci id="A1.T4.15.15.1.m1.4.5.3.3.3.cmml" xref="A1.T4.15.15.1.m1.4.5.3.3.3">𝑖</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.15.15.1.m1.4c">\widetilde{\mathcal{C}}^{l}_{i}=\widetilde{\mathcal{C}}^{l,\text{Struct}}_{i}%
\cup\widetilde{\mathcal{C}}^{l,\text{Text}}_{i}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.15.15.1.m1.4d">over~ start_ARG caligraphic_C end_ARG start_POSTSUPERSCRIPT italic_l end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT = over~ start_ARG caligraphic_C end_ARG start_POSTSUPERSCRIPT italic_l , Struct end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ∪ over~ start_ARG caligraphic_C end_ARG start_POSTSUPERSCRIPT italic_l , Text end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.17.17.3" style="padding-left:0.5pt;padding-right:0.5pt;">
<span class="ltx_text" id="A1.T4.17.17.3.3"></span> <span class="ltx_text" id="A1.T4.17.17.3.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T4.17.17.3.2.2">
<span class="ltx_tr" id="A1.T4.17.17.3.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.17.17.3.2.2.2.2" style="padding-left:0.5pt;padding-right:0.5pt;">Retrieved candidates at <math alttext="l^{\text{th}}" class="ltx_Math" display="inline" id="A1.T4.16.16.2.1.1.1.1.m1.1"><semantics id="A1.T4.16.16.2.1.1.1.1.m1.1a"><msup id="A1.T4.16.16.2.1.1.1.1.m1.1.1" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.cmml"><mi id="A1.T4.16.16.2.1.1.1.1.m1.1.1.2" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.2.cmml">l</mi><mtext id="A1.T4.16.16.2.1.1.1.1.m1.1.1.3" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.3a.cmml">th</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T4.16.16.2.1.1.1.1.m1.1b"><apply id="A1.T4.16.16.2.1.1.1.1.m1.1.1.cmml" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.16.16.2.1.1.1.1.m1.1.1.1.cmml" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1">superscript</csymbol><ci id="A1.T4.16.16.2.1.1.1.1.m1.1.1.2.cmml" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.2">𝑙</ci><ci id="A1.T4.16.16.2.1.1.1.1.m1.1.1.3a.cmml" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.3"><mtext id="A1.T4.16.16.2.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A1.T4.16.16.2.1.1.1.1.m1.1.1.3">th</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.16.16.2.1.1.1.1.m1.1c">l^{\text{th}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.16.16.2.1.1.1.1.m1.1d">italic_l start_POSTSUPERSCRIPT th end_POSTSUPERSCRIPT</annotation></semantics></math> layer for <math alttext="i^{\text{th}}" class="ltx_Math" display="inline" id="A1.T4.17.17.3.2.2.2.2.m2.1"><semantics id="A1.T4.17.17.3.2.2.2.2.m2.1a"><msup id="A1.T4.17.17.3.2.2.2.2.m2.1.1" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.cmml"><mi id="A1.T4.17.17.3.2.2.2.2.m2.1.1.2" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.2.cmml">i</mi><mtext id="A1.T4.17.17.3.2.2.2.2.m2.1.1.3" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.3a.cmml">th</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T4.17.17.3.2.2.2.2.m2.1b"><apply id="A1.T4.17.17.3.2.2.2.2.m2.1.1.cmml" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T4.17.17.3.2.2.2.2.m2.1.1.1.cmml" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1">superscript</csymbol><ci id="A1.T4.17.17.3.2.2.2.2.m2.1.1.2.cmml" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.2">𝑖</ci><ci id="A1.T4.17.17.3.2.2.2.2.m2.1.1.3a.cmml" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.3"><mtext id="A1.T4.17.17.3.2.2.2.2.m2.1.1.3.cmml" mathsize="70%" xref="A1.T4.17.17.3.2.2.2.2.m2.1.1.3">th</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.17.17.3.2.2.2.2.m2.1c">i^{\text{th}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.17.17.3.2.2.2.2.m2.1d">italic_i start_POSTSUPERSCRIPT th end_POSTSUPERSCRIPT</annotation></semantics></math> path including</span></span>
<span class="ltx_tr" id="A1.T4.17.17.3.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.17.17.3.2.2.3.1" style="padding-left:0.5pt;padding-right:0.5pt;">structurally retrieved ones and textually retrieved ones.</span></span>
</span></span><span class="ltx_text" id="A1.T4.17.17.3.4"></span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.18.18.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{C}" class="ltx_Math" display="inline" id="A1.T4.18.18.1.m1.1"><semantics id="A1.T4.18.18.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T4.18.18.1.m1.1.1" xref="A1.T4.18.18.1.m1.1.1.cmml">𝒞</mi><annotation-xml encoding="MathML-Content" id="A1.T4.18.18.1.m1.1b"><ci id="A1.T4.18.18.1.m1.1.1.cmml" xref="A1.T4.18.18.1.m1.1.1">𝒞</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.18.18.1.m1.1c">\mathcal{C}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.18.18.1.m1.1d">caligraphic_C</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.18.18.2" style="padding-left:0.5pt;padding-right:0.5pt;">Final retrieved candidates after organizing module.</td>
</tr>
<tr class="ltx_tr" id="A1.T4.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.19.19.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="P_{\mathbb{Q}\times\mathbb{G}}" class="ltx_Math" display="inline" id="A1.T4.19.19.1.m1.1"><semantics id="A1.T4.19.19.1.m1.1a"><msub id="A1.T4.19.19.1.m1.1.1" xref="A1.T4.19.19.1.m1.1.1.cmml"><mi id="A1.T4.19.19.1.m1.1.1.2" xref="A1.T4.19.19.1.m1.1.1.2.cmml">P</mi><mrow id="A1.T4.19.19.1.m1.1.1.3" xref="A1.T4.19.19.1.m1.1.1.3.cmml"><mi id="A1.T4.19.19.1.m1.1.1.3.2" xref="A1.T4.19.19.1.m1.1.1.3.2.cmml">ℚ</mi><mo id="A1.T4.19.19.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.19.19.1.m1.1.1.3.1.cmml">×</mo><mi id="A1.T4.19.19.1.m1.1.1.3.3" xref="A1.T4.19.19.1.m1.1.1.3.3.cmml">𝔾</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T4.19.19.1.m1.1b"><apply id="A1.T4.19.19.1.m1.1.1.cmml" xref="A1.T4.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.19.19.1.m1.1.1.1.cmml" xref="A1.T4.19.19.1.m1.1.1">subscript</csymbol><ci id="A1.T4.19.19.1.m1.1.1.2.cmml" xref="A1.T4.19.19.1.m1.1.1.2">𝑃</ci><apply id="A1.T4.19.19.1.m1.1.1.3.cmml" xref="A1.T4.19.19.1.m1.1.1.3"><times id="A1.T4.19.19.1.m1.1.1.3.1.cmml" xref="A1.T4.19.19.1.m1.1.1.3.1"></times><ci id="A1.T4.19.19.1.m1.1.1.3.2.cmml" xref="A1.T4.19.19.1.m1.1.1.3.2">ℚ</ci><ci id="A1.T4.19.19.1.m1.1.1.3.3.cmml" xref="A1.T4.19.19.1.m1.1.1.3.3">𝔾</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.19.19.1.m1.1c">P_{\mathbb{Q}\times\mathbb{G}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.19.19.1.m1.1d">italic_P start_POSTSUBSCRIPT blackboard_Q × blackboard_G end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.19.19.2" style="padding-left:0.5pt;padding-right:0.5pt;">Joint distribution of query and planning graph.</td>
</tr>
<tr class="ltx_tr" id="A1.T4.21.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.20.20.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{N}_{v}" class="ltx_Math" display="inline" id="A1.T4.20.20.1.m1.1"><semantics id="A1.T4.20.20.1.m1.1a"><msub id="A1.T4.20.20.1.m1.1.1" xref="A1.T4.20.20.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.20.20.1.m1.1.1.2" xref="A1.T4.20.20.1.m1.1.1.2.cmml">𝒩</mi><mi id="A1.T4.20.20.1.m1.1.1.3" xref="A1.T4.20.20.1.m1.1.1.3.cmml">v</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.20.20.1.m1.1b"><apply id="A1.T4.20.20.1.m1.1.1.cmml" xref="A1.T4.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.20.20.1.m1.1.1.1.cmml" xref="A1.T4.20.20.1.m1.1.1">subscript</csymbol><ci id="A1.T4.20.20.1.m1.1.1.2.cmml" xref="A1.T4.20.20.1.m1.1.1.2">𝒩</ci><ci id="A1.T4.20.20.1.m1.1.1.3.cmml" xref="A1.T4.20.20.1.m1.1.1.3">𝑣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.20.20.1.m1.1c">\mathcal{N}_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.20.20.1.m1.1d">caligraphic_N start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.21.21.2" style="padding-left:0.5pt;padding-right:0.5pt;">Neighborhood of entity <math alttext="v" class="ltx_Math" display="inline" id="A1.T4.21.21.2.m1.1"><semantics id="A1.T4.21.21.2.m1.1a"><mi id="A1.T4.21.21.2.m1.1.1" xref="A1.T4.21.21.2.m1.1.1.cmml">v</mi><annotation-xml encoding="MathML-Content" id="A1.T4.21.21.2.m1.1b"><ci id="A1.T4.21.21.2.m1.1.1.cmml" xref="A1.T4.21.21.2.m1.1.1">𝑣</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.21.21.2.m1.1c">v</annotation><annotation encoding="application/x-llamapun" id="A1.T4.21.21.2.m1.1d">italic_v</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.22.22.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="\mathcal{I}_{p_{il}}" class="ltx_Math" display="inline" id="A1.T4.22.22.1.m1.1"><semantics id="A1.T4.22.22.1.m1.1a"><msub id="A1.T4.22.22.1.m1.1.1" xref="A1.T4.22.22.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T4.22.22.1.m1.1.1.2" xref="A1.T4.22.22.1.m1.1.1.2.cmml">ℐ</mi><msub id="A1.T4.22.22.1.m1.1.1.3" xref="A1.T4.22.22.1.m1.1.1.3.cmml"><mi id="A1.T4.22.22.1.m1.1.1.3.2" xref="A1.T4.22.22.1.m1.1.1.3.2.cmml">p</mi><mrow id="A1.T4.22.22.1.m1.1.1.3.3" xref="A1.T4.22.22.1.m1.1.1.3.3.cmml"><mi id="A1.T4.22.22.1.m1.1.1.3.3.2" xref="A1.T4.22.22.1.m1.1.1.3.3.2.cmml">i</mi><mo id="A1.T4.22.22.1.m1.1.1.3.3.1" xref="A1.T4.22.22.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="A1.T4.22.22.1.m1.1.1.3.3.3" xref="A1.T4.22.22.1.m1.1.1.3.3.3.cmml">l</mi></mrow></msub></msub><annotation-xml encoding="MathML-Content" id="A1.T4.22.22.1.m1.1b"><apply id="A1.T4.22.22.1.m1.1.1.cmml" xref="A1.T4.22.22.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.22.22.1.m1.1.1.1.cmml" xref="A1.T4.22.22.1.m1.1.1">subscript</csymbol><ci id="A1.T4.22.22.1.m1.1.1.2.cmml" xref="A1.T4.22.22.1.m1.1.1.2">ℐ</ci><apply id="A1.T4.22.22.1.m1.1.1.3.cmml" xref="A1.T4.22.22.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.22.22.1.m1.1.1.3.1.cmml" xref="A1.T4.22.22.1.m1.1.1.3">subscript</csymbol><ci id="A1.T4.22.22.1.m1.1.1.3.2.cmml" xref="A1.T4.22.22.1.m1.1.1.3.2">𝑝</ci><apply id="A1.T4.22.22.1.m1.1.1.3.3.cmml" xref="A1.T4.22.22.1.m1.1.1.3.3"><times id="A1.T4.22.22.1.m1.1.1.3.3.1.cmml" xref="A1.T4.22.22.1.m1.1.1.3.3.1"></times><ci id="A1.T4.22.22.1.m1.1.1.3.3.2.cmml" xref="A1.T4.22.22.1.m1.1.1.3.3.2">𝑖</ci><ci id="A1.T4.22.22.1.m1.1.1.3.3.3.cmml" xref="A1.T4.22.22.1.m1.1.1.3.3.3">𝑙</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.22.22.1.m1.1c">\mathcal{I}_{p_{il}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.22.22.1.m1.1d">caligraphic_I start_POSTSUBSCRIPT italic_p start_POSTSUBSCRIPT italic_i italic_l end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.22.22.2" style="padding-left:0.5pt;padding-right:0.5pt;">Traversal Identifier of Structural and Textual Retrieval</td>
</tr>
<tr class="ltx_tr" id="A1.T4.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.23.23.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="P_{\bm{\Theta}_{1}}" class="ltx_Math" display="inline" id="A1.T4.23.23.1.m1.1"><semantics id="A1.T4.23.23.1.m1.1a"><msub id="A1.T4.23.23.1.m1.1.1" xref="A1.T4.23.23.1.m1.1.1.cmml"><mi id="A1.T4.23.23.1.m1.1.1.2" xref="A1.T4.23.23.1.m1.1.1.2.cmml">P</mi><msub id="A1.T4.23.23.1.m1.1.1.3" xref="A1.T4.23.23.1.m1.1.1.3.cmml"><mi id="A1.T4.23.23.1.m1.1.1.3.2" xref="A1.T4.23.23.1.m1.1.1.3.2.cmml">𝚯</mi><mn id="A1.T4.23.23.1.m1.1.1.3.3" xref="A1.T4.23.23.1.m1.1.1.3.3.cmml">1</mn></msub></msub><annotation-xml encoding="MathML-Content" id="A1.T4.23.23.1.m1.1b"><apply id="A1.T4.23.23.1.m1.1.1.cmml" xref="A1.T4.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.23.23.1.m1.1.1.1.cmml" xref="A1.T4.23.23.1.m1.1.1">subscript</csymbol><ci id="A1.T4.23.23.1.m1.1.1.2.cmml" xref="A1.T4.23.23.1.m1.1.1.2">𝑃</ci><apply id="A1.T4.23.23.1.m1.1.1.3.cmml" xref="A1.T4.23.23.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.23.23.1.m1.1.1.3.1.cmml" xref="A1.T4.23.23.1.m1.1.1.3">subscript</csymbol><ci id="A1.T4.23.23.1.m1.1.1.3.2.cmml" xref="A1.T4.23.23.1.m1.1.1.3.2">𝚯</ci><cn id="A1.T4.23.23.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T4.23.23.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.23.23.1.m1.1c">P_{\bm{\Theta}_{1}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.23.23.1.m1.1d">italic_P start_POSTSUBSCRIPT bold_Θ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.24.24.2" style="padding-left:0.5pt;padding-right:0.5pt;">Planning module with its parameters <math alttext="\bm{\Theta}_{1}" class="ltx_Math" display="inline" id="A1.T4.24.24.2.m1.1"><semantics id="A1.T4.24.24.2.m1.1a"><msub id="A1.T4.24.24.2.m1.1.1" xref="A1.T4.24.24.2.m1.1.1.cmml"><mi id="A1.T4.24.24.2.m1.1.1.2" xref="A1.T4.24.24.2.m1.1.1.2.cmml">𝚯</mi><mn id="A1.T4.24.24.2.m1.1.1.3" xref="A1.T4.24.24.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T4.24.24.2.m1.1b"><apply id="A1.T4.24.24.2.m1.1.1.cmml" xref="A1.T4.24.24.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.24.24.2.m1.1.1.1.cmml" xref="A1.T4.24.24.2.m1.1.1">subscript</csymbol><ci id="A1.T4.24.24.2.m1.1.1.2.cmml" xref="A1.T4.24.24.2.m1.1.1.2">𝚯</ci><cn id="A1.T4.24.24.2.m1.1.1.3.cmml" type="integer" xref="A1.T4.24.24.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.24.24.2.m1.1c">\bm{\Theta}_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.24.24.2.m1.1d">bold_Θ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.26.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T4.25.25.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="P_{\bm{\Theta}_{2}}" class="ltx_Math" display="inline" id="A1.T4.25.25.1.m1.1"><semantics id="A1.T4.25.25.1.m1.1a"><msub id="A1.T4.25.25.1.m1.1.1" xref="A1.T4.25.25.1.m1.1.1.cmml"><mi id="A1.T4.25.25.1.m1.1.1.2" xref="A1.T4.25.25.1.m1.1.1.2.cmml">P</mi><msub id="A1.T4.25.25.1.m1.1.1.3" xref="A1.T4.25.25.1.m1.1.1.3.cmml"><mi id="A1.T4.25.25.1.m1.1.1.3.2" xref="A1.T4.25.25.1.m1.1.1.3.2.cmml">𝚯</mi><mn id="A1.T4.25.25.1.m1.1.1.3.3" xref="A1.T4.25.25.1.m1.1.1.3.3.cmml">2</mn></msub></msub><annotation-xml encoding="MathML-Content" id="A1.T4.25.25.1.m1.1b"><apply id="A1.T4.25.25.1.m1.1.1.cmml" xref="A1.T4.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.25.25.1.m1.1.1.1.cmml" xref="A1.T4.25.25.1.m1.1.1">subscript</csymbol><ci id="A1.T4.25.25.1.m1.1.1.2.cmml" xref="A1.T4.25.25.1.m1.1.1.2">𝑃</ci><apply id="A1.T4.25.25.1.m1.1.1.3.cmml" xref="A1.T4.25.25.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.25.25.1.m1.1.1.3.1.cmml" xref="A1.T4.25.25.1.m1.1.1.3">subscript</csymbol><ci id="A1.T4.25.25.1.m1.1.1.3.2.cmml" xref="A1.T4.25.25.1.m1.1.1.3.2">𝚯</ci><cn id="A1.T4.25.25.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T4.25.25.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.25.25.1.m1.1c">P_{\bm{\Theta}_{2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.25.25.1.m1.1d">italic_P start_POSTSUBSCRIPT bold_Θ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.26.26.2" style="padding-left:0.5pt;padding-right:0.5pt;">Reasoning module with its parameters <math alttext="\bm{\Theta}_{2}" class="ltx_Math" display="inline" id="A1.T4.26.26.2.m1.1"><semantics id="A1.T4.26.26.2.m1.1a"><msub id="A1.T4.26.26.2.m1.1.1" xref="A1.T4.26.26.2.m1.1.1.cmml"><mi id="A1.T4.26.26.2.m1.1.1.2" xref="A1.T4.26.26.2.m1.1.1.2.cmml">𝚯</mi><mn id="A1.T4.26.26.2.m1.1.1.3" xref="A1.T4.26.26.2.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T4.26.26.2.m1.1b"><apply id="A1.T4.26.26.2.m1.1.1.cmml" xref="A1.T4.26.26.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.26.26.2.m1.1.1.1.cmml" xref="A1.T4.26.26.2.m1.1.1">subscript</csymbol><ci id="A1.T4.26.26.2.m1.1.1.2.cmml" xref="A1.T4.26.26.2.m1.1.1.2">𝚯</ci><cn id="A1.T4.26.26.2.m1.1.1.3.cmml" type="integer" xref="A1.T4.26.26.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.26.26.2.m1.1c">\bm{\Theta}_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.26.26.2.m1.1d">bold_Θ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.28.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.27.27.1" style="padding-left:0.5pt;padding-right:0.5pt;"><math alttext="P_{\bm{\Theta}_{3}}" class="ltx_Math" display="inline" id="A1.T4.27.27.1.m1.1"><semantics id="A1.T4.27.27.1.m1.1a"><msub id="A1.T4.27.27.1.m1.1.1" xref="A1.T4.27.27.1.m1.1.1.cmml"><mi id="A1.T4.27.27.1.m1.1.1.2" xref="A1.T4.27.27.1.m1.1.1.2.cmml">P</mi><msub id="A1.T4.27.27.1.m1.1.1.3" xref="A1.T4.27.27.1.m1.1.1.3.cmml"><mi id="A1.T4.27.27.1.m1.1.1.3.2" xref="A1.T4.27.27.1.m1.1.1.3.2.cmml">𝚯</mi><mn id="A1.T4.27.27.1.m1.1.1.3.3" xref="A1.T4.27.27.1.m1.1.1.3.3.cmml">3</mn></msub></msub><annotation-xml encoding="MathML-Content" id="A1.T4.27.27.1.m1.1b"><apply id="A1.T4.27.27.1.m1.1.1.cmml" xref="A1.T4.27.27.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.27.27.1.m1.1.1.1.cmml" xref="A1.T4.27.27.1.m1.1.1">subscript</csymbol><ci id="A1.T4.27.27.1.m1.1.1.2.cmml" xref="A1.T4.27.27.1.m1.1.1.2">𝑃</ci><apply id="A1.T4.27.27.1.m1.1.1.3.cmml" xref="A1.T4.27.27.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.27.27.1.m1.1.1.3.1.cmml" xref="A1.T4.27.27.1.m1.1.1.3">subscript</csymbol><ci id="A1.T4.27.27.1.m1.1.1.3.2.cmml" xref="A1.T4.27.27.1.m1.1.1.3.2">𝚯</ci><cn id="A1.T4.27.27.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T4.27.27.1.m1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.27.27.1.m1.1c">P_{\bm{\Theta}_{3}}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.27.27.1.m1.1d">italic_P start_POSTSUBSCRIPT bold_Θ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T4.28.28.2" style="padding-left:0.5pt;padding-right:0.5pt;">Organizing module with its parameters <math alttext="\bm{\Theta}_{3}" class="ltx_Math" display="inline" id="A1.T4.28.28.2.m1.1"><semantics id="A1.T4.28.28.2.m1.1a"><msub id="A1.T4.28.28.2.m1.1.1" xref="A1.T4.28.28.2.m1.1.1.cmml"><mi id="A1.T4.28.28.2.m1.1.1.2" xref="A1.T4.28.28.2.m1.1.1.2.cmml">𝚯</mi><mn id="A1.T4.28.28.2.m1.1.1.3" xref="A1.T4.28.28.2.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T4.28.28.2.m1.1b"><apply id="A1.T4.28.28.2.m1.1.1.cmml" xref="A1.T4.28.28.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.28.28.2.m1.1.1.1.cmml" xref="A1.T4.28.28.2.m1.1.1">subscript</csymbol><ci id="A1.T4.28.28.2.m1.1.1.2.cmml" xref="A1.T4.28.28.2.m1.1.1.2">𝚯</ci><cn id="A1.T4.28.28.2.m1.1.1.3.cmml" type="integer" xref="A1.T4.28.28.2.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.28.28.2.m1.1c">\bm{\Theta}_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.28.28.2.m1.1d">bold_Θ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists notations used in the paper and their corresponding descriptions.  It includes symbols for the text-rich graph knowledge base (TG-KB), its components (nodes, edges, documents), queries, retrieved candidates, planning graphs and reasoning paths, entity categories and restrictions, and probability distributions for each module in the proposed framework.
> <details>
> <summary>read the caption</summary>
> Table 4: Notations and the corresponding descriptions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.1">
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.2"># <span class="ltx_text ltx_font_bold" id="A1.T5.1.1.2.1">Entities</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.3"># <span class="ltx_text ltx_font_bold" id="A1.T5.1.1.3.1">Text Tokens</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.4"># <span class="ltx_text ltx_font_bold" id="A1.T5.1.1.4.1">Relations</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.5.1">Avg. Degree</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.2.1.1">AMAZON</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.2">1,035,542</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.3">592,067,882</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.4">9,443,802</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.5">18.2</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.3.1.1">MAG</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.2">1,872,968</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.3">212,602,571</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.4">39,802,116</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.5">43.5</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.4.1.1">PRIME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.4.2">129,375</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.4.3">31,844,769</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.4.4">8,100,498</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.4.5">125.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of three text-rich graph knowledge bases (TG-KBs) used in the STaRK benchmark.  For each TG-KB (Amazon, MAG, and Prime), it shows the number of entities, text tokens, and relations, along with the average node degree. These statistics provide insights into the size and complexity of the datasets, which are crucial for understanding the experimental results and the challenges of knowledge retrieval in these specific TG-KBs.
> <details>
> <summary>read the caption</summary>
> Table 5: Statistics of text-rich graph knowledge bases in STaRK benchmark Wu et al. .
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20317/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20317/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}