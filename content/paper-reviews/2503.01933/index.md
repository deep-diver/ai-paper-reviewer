---
title: "Fine-Tuning Small Language Models for Domain-Specific AI: An Edge AI Perspective"
summary: "Shakti SLMs: Fine-tuning compact language models for efficient, domain-specific AI on edge devices."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 SandLogic Technologies Pvt Ltd",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01933 {{< /keyword >}}
{{< keyword icon="writer" >}} Rakshit Aralimatti et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01933" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01933" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01933/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large-scale language models face challenges in edge deployment due to high computational demands, energy consumption, and privacy risks.  To address these issues, this work explores **Small Language Models (SLMs)**. Edge AI runs models directly on local hardware, reducing reliance on remote servers. However, scaling down large models often compromises language understanding, and this motivates SLMs that balance performance and resource constraints. Techniques such as efficient architectures and quantization help SLMs maintain performance under tight constraints.



To achieve the benefits of the SLMs, this paper introduces the **Shakti Small Language Models (SLMs): Shakti-100M, Shakti-250M, and Shakti-500M**.  The Shakti series combines efficient architectures, quantization, and responsible AI for on-device intelligence. They provide design insights, training pipelines, and benchmark results for general and specialized tasks. The study illustrates that compact models can meet and often exceed expectations in real-world edge-AI scenarios. The Shakti models incorporate mechanisms to mitigate bias, handle data privately, and reduce carbon footprints through on-device inference.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Shakti SLMs (100M, 250M, 500M parameters) achieve strong performance on edge devices by combining efficient architectures and quantization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Domain-specific fine-tuning enhances the models' applicability in specialized areas like healthcare, finance, and legal. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Responsible AI principles are integrated through bias mitigation techniques and on-device processing for data privacy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a series of small language models optimized for edge devices, paving the way for **efficient and privacy-preserving AI applications**. The models address limitations of large language models and offer researchers insights into designing compact, high-performance models. **It enables further exploration of edge AI**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01933/extracted/6246866/100M_benchmark_graph.png)

> 🔼 Figure 1 presents a comparative analysis of the Shakti-100M model's performance against other similar-sized language models across various academic benchmarks.  The benchmarks assess performance on diverse natural language processing tasks.  The figure visually compares the scores achieved by Shakti-100M to those of Boomer-634M, SmolLM-135M, SmolLM-360M, and AMD-Llama-135M, all of which fall within a similar parameter range, allowing for a fair comparison based on model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison results on academic benchmarks for Shakti-100M, Boomer-634M[14], SmolLM-135M[12], SmolLM-360M[12], and AMD-Llama-135M[45], which are in the same parameter range.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1.1.1.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Shakti-100M</span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1.1.1.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.3.1">Shakti-250M</span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1.1.1.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.4.1">Shakti-500M</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.1.1.1">
<span class="ltx_p" id="S5.T1.1.2.1.1.1.1" style="width:42.7pt;">Pre-Training</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.2.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.1.2.1">
<span class="ltx_p" id="S5.T1.1.2.1.2.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I2">
<span class="ltx_item" id="S5.I2.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I2.i1.p1">
<span class="ltx_p" id="S5.I2.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I2.i1.p1.1.1">Common Crawl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib10" title="">10</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I2.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I2.i2.p1">
<span class="ltx_p" id="S5.I2.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I2.i2.p1.1.1">Fineweb-EDU-Dedup <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib23" title="">23</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.2.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.1.3.1">
<span class="ltx_p" id="S5.T1.1.2.1.3.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I3">
<span class="ltx_item" id="S5.I3.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I3.i1.p1">
<span class="ltx_p" id="S5.I3.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I3.i1.p1.1.1">Fineweb-EDU-Dedup <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib23" title="">23</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I3.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I3.i2.p1">
<span class="ltx_p" id="S5.I3.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I3.i2.p1.1.1">AIR-Bench/qa_finance_e_n <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib24" title="">24</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I3.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I3.i3.p1">
<span class="ltx_p" id="S5.I3.i3.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I3.i3.p1.1.1">Vidhaan/LegalCitationWorthiness <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib25" title="">25</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.2.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.1.4.1">
<span class="ltx_p" id="S5.T1.1.2.1.4.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I4">
<span class="ltx_item" id="S5.I4.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I4.i1.p1">
<span class="ltx_p" id="S5.I4.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I4.i1.p1.1.1">TxT360 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib26" title="">26</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I4.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I4.i2.p1">
<span class="ltx_p" id="S5.I4.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I4.i2.p1.1.1">Common Crawl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib10" title="">10</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.2.1.1">
<span class="ltx_p" id="S5.T1.1.3.2.1.1.1" style="width:42.7pt;">SFT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.3.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.2.2.1">
<span class="ltx_p" id="S5.T1.1.3.2.2.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I5">
<span class="ltx_item" id="S5.I5.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I5.i1.p1">
<span class="ltx_p" id="S5.I5.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i1.p1.1.1">Cosmopedia v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib27" title="">27</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I5.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I5.i2.p1">
<span class="ltx_p" id="S5.I5.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i2.p1.1.1">Magma-Pro-300K-Filtered-H4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib28" title="">28</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I5.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I5.i3.p1">
<span class="ltx_p" id="S5.I5.i3.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i3.p1.1.1">OpenHermes-2.5-H4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib29" title="">29</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I5.i4" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I5.i4.p1">
<span class="ltx_p" id="S5.I5.i4.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i4.p1.1.1">Self-oss-instruct-sc2-H4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib30" title="">30</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I5.i5" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I5.i5.p1">
<span class="ltx_p" id="S5.I5.i5.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i5.p1.1.1">Everyday-conversations-llama3.1-2k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib31" title="">31</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I5.i6" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I5.i6.p1">
<span class="ltx_p" id="S5.I5.i6.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I5.i6.p1.1.1">Instruct-data-basics-smolim-H4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib32" title="">32</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.3.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.2.3.1">
<span class="ltx_p" id="S5.T1.1.3.2.3.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I6">
<span class="ltx_item" id="S5.I6.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i1.p1">
<span class="ltx_p" id="S5.I6.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i1.p1.1.1">lavita/medical-qa-datasets <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib33" title="">33</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i2.p1">
<span class="ltx_p" id="S5.I6.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i2.p1.1.1">ruslannmv/ai-medical-chatbot <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib34" title="">34</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i3.p1">
<span class="ltx_p" id="S5.I6.i3.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i3.p1.1.1">axion/pmc_llama_instructions <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib35" title="">35</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i4" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i4.p1">
<span class="ltx_p" id="S5.I6.i4.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i4.p1.1.1">windupdate/reddit_finance_43_250k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib36" title="">36</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i5" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i5.p1">
<span class="ltx_p" id="S5.I6.i5.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i5.p1.1.1">Marina-C/question-answer-Subject-Finance-instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib37" title="">37</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i6" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I6.i6.p1">
<span class="ltx_p" id="S5.I6.i6.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i6.p1.1.1">isacus/open-australian-legal-qa <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib38" title="">38</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I6.i7" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I6.i7.p1">
<span class="ltx_p" id="S5.I6.i7.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I6.i7.p1.1.1">mb7419/legal-advice-reddit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib39" title="">39</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.3.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.2.4.1">
<span class="ltx_p" id="S5.T1.1.3.2.4.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I7">
<span class="ltx_item" id="S5.I7.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I7.i1.p1">
<span class="ltx_p" id="S5.I7.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I7.i1.p1.1.1">The Thome <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib40" title="">40</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I7.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I7.i2.p1">
<span class="ltx_p" id="S5.I7.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I7.i2.p1.1.1">Infinity-instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib41" title="">41</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.3.1.1">
<span class="ltx_p" id="S5.T1.1.4.3.1.1.1" style="width:42.7pt;">DPO</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.4.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.3.2.1">
<span class="ltx_p" id="S5.T1.1.4.3.2.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I8">
<span class="ltx_item" id="S5.I8.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I8.i1.p1">
<span class="ltx_p" id="S5.I8.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I8.i1.p1.1.1">UltraFeedback Binarized <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib42" title="">42</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.4.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.3.3.1">
<span class="ltx_p" id="S5.T1.1.4.3.3.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I9">
<span class="ltx_item" id="S5.I9.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S5.I9.i1.p1">
<span class="ltx_p" id="S5.I9.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I9.i1.p1.1.1">NickyNicky/nano_finance_200k<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib43" title="">43</a>]</cite></span></span>
</span></span>
<span class="ltx_item" id="S5.I9.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I9.i2.p1">
<span class="ltx_p" id="S5.I9.i2.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I9.i2.p1.1.1">Dhananjay22/legal-dpo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib44" title="">44</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="S5.T1.1.4.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.4.1.1">
<span class="ltx_p" id="S5.T1.1.5.4.1.1.1" style="width:42.7pt;">RLHF</span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S5.T1.1.5.4.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"></td>
<td class="ltx_td ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S5.T1.1.5.4.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S5.T1.1.5.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.4.4.1">
<span class="ltx_p" id="S5.T1.1.5.4.4.1.1" style="width:128.0pt;">
<span class="ltx_itemize" id="S5.I10">
<span class="ltx_item" id="S5.I10.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="S5.I10.i1.p1">
<span class="ltx_p" id="S5.I10.i1.p1.1"><span class="ltx_text ltx_font_italic" id="S5.I10.i1.p1.1.1">UltraFeedback Binarized <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01933v1#bib.bib42" title="">42</a>]</cite></span></span>
</span></span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the datasets used in training the three Shakti language models (Shakti-100M, Shakti-250M, and Shakti-500M) at different stages. It breaks down the datasets used for pre-training, supervised fine-tuning (SFT), direct preference optimization (DPO), and reinforcement learning from human feedback (RLHF), offering insights into the diverse data sources and training methodologies employed for each model size.  This provides a comprehensive overview of the data used to build the different Shakti models.
> <details>
> <summary>read the caption</summary>
> Table 1: Training datasets used for different Shakti model sizes.
> </details>





### In-depth insights


#### Edge AI Shakti
The paper introduces the **Shakti Small Language Models (SLMs)**—Shakti-100M, Shakti-250M, and Shakti-500M—to address challenges in deploying large-scale language models on edge devices. Edge AI, where models run directly on local hardware, is presented as a solution to limitations such as high computational demands, energy consumption, and data privacy risks. The Shakti series combines efficient architectures, quantization techniques, and responsible AI principles to enable on-device intelligence for smartphones, smart appliances, and IoT systems. The models integrate Rotary Positional Embeddings (RoPE) and specialized attention variants to rival larger models. Quantized versions minimize memory usage and increase throughput, even on constrained devices. Shakti models mitigate bias, handle data privately, and reduce carbon footprints. Pre-training and fine-tuning strategies align with user preferences and ethical standards. Evaluations on specialized tasks suggest that Shakti's parameter sizes and domain-targeted training yield cost-effective, scalable, and privacy-preserving solutions.

#### Quantized SLMs
The emergence of quantized Small Language Models (SLMs) signifies a crucial step towards efficient AI deployment, particularly on resource-constrained edge devices. **Quantization reduces model size and accelerates inference** by representing weights and activations with lower precision (e.g., int8, int5, int4) compared to traditional FP32 models. This allows SLMs to fit into devices like smartphones and IoT gadgets. **This optimization does not come without trade-offs**: aggressive quantization may lead to accuracy degradation. Therefore, techniques like quantization-aware training (QAT) are essential to maintain performance. **Model architecture also plays a role**, where certain architectures are more amenable to quantization than others. Ultimately, quantized SLMs represent a balanced approach, enabling sophisticated AI functionalities in real-world scenarios.

#### DPO Alignment
**Direct Preference Optimization (DPO)** emerges as a pivotal technique for aligning language models with desired behaviors, offering a computationally efficient alternative to Reinforcement Learning from Human Feedback (RLHF). By directly optimizing for preferences, DPO streamlines the alignment process. Shakti-250M and Shakti-100M use **DPO** to achieve domain-specific accuracy and quality real-time responses, suitable for mobile devices and IoT applications. DPO achieves alignment at a significantly lower computational cost compared to models relying solely on RLHF. This enables real-time application capabilities without sacrificing quality.

#### Domain SLM Tasks
Domain-Specific Small Language Models (SLMs) represent a focused approach to AI, tailoring models for specific fields like healthcare, finance, or legal. Instead of broadly capable general-purpose models, domain-specific SLMs are trained on datasets relevant to their target domain. This specialization offers several advantages. **Improved Accuracy:** By focusing on a narrow domain, SLMs can achieve higher accuracy and relevance compared to general models. **Reduced Computational Cost:** SLMs require less computational power and memory, making them suitable for deployment on edge devices with limited resources. **Enhanced Privacy:** Training and deploying SLMs on-premise reduces the need to transmit sensitive data to cloud servers. **Faster Inference:** The reduced size and complexity of SLMs lead to faster inference times, making them suitable for real-time applications. **Reduced Bias:** Carefully curating the datasets and training processes, biases can be mitigated.

#### Ethical Edge AI
**Ethical Edge AI** is crucial for responsible technology deployment. It requires addressing **bias in datasets and models**, ensuring **fairness and transparency**. **Privacy-preserving techniques**, like federated learning, are essential to protect user data on edge devices. **Accountability mechanisms** should be in place to address potential harms or unintended consequences. Continuous monitoring and evaluation are necessary to detect and mitigate biases over time. Ethical guidelines and standards should be developed to guide the development and deployment of edge AI systems. User education and awareness are important to empower individuals to make informed decisions about their data and privacy. Collaboration between stakeholders, including researchers, developers, policymakers, and civil society organizations, is essential to ensure that edge AI is developed and deployed in an ethical and responsible manner. By prioritizing ethical considerations, we can harness the benefits of edge AI while minimizing potential risks and promoting a more equitable and inclusive future. Moreover, we have to ensure that AI serves humanity and adheres to the same ethical principles and norms.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01933/extracted/6246866/250M_benchmark_graph.png)

> 🔼 This figure compares the performance of Shakti-250M against other large language models (LLMs) across various academic benchmarks.  The benchmarks assess performance on diverse tasks, allowing for a comprehensive comparison of the model's capabilities. The LLMs included in the comparison are Boomer-1B, Boomer-634M, Qwen2.5-0.5B, SmolLM-360M, and Llama 3.2 1B, providing context for evaluating Shakti-250M's performance relative to established models.  Each bar in the chart represents the score achieved by each model on a specific benchmark task.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison results on academic benchmarks for Shakti-250M, Boomer-1B[13], Boomer-634M[14], Qwen2.5-0.5B[47], SmolLM-360M[12], and Llama 3.2 1B[46].
> </details>



![](https://arxiv.org/html/2503.01933/extracted/6246866/500M_benchmark_graph.png)

> 🔼 Figure 3 presents a comparative analysis of the Shakti-500M model's performance against other prominent large language models (LLMs) across various academic benchmarks.  These benchmarks assess performance on diverse natural language processing (NLP) tasks, allowing for a comprehensive evaluation of the model's capabilities. The comparison includes Boomer-1B, Boomer-634M, Qwen2.5-0.5B, and Llama 3.2 1B, providing a nuanced understanding of Shakti-500M's strengths and weaknesses relative to models with similar and larger parameter counts.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison results on academic benchmarks for Shakti-500M, Boomer-1B[13], Boomer-634M[14], Qwen2.5-0.5B[47], and Llama 3.2 1B[46].
> </details>



![](https://arxiv.org/html/2503.01933/extracted/6246866/domain_specific_benchmark_250M.png)

> 🔼 Figure 4 presents a comparative analysis of the performance of several large language models (LLMs) on medical domain benchmark tasks.  The LLMs compared include Shakti-250M, Phi-1.5-1.3B, Gemma-2B, and Opt-2.7B. The figure specifically highlights performance on tasks relevant to the medical field. The results are likely displayed using bar charts or similar visualizations, showing each model's score on each benchmark task to allow for direct comparison.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison results on medical and finance domain benchmarks for Shakti-250M, Phi-1.5-1.3B[48], Gemma-2B[49], and Opt-2.7B[50] models, specifically for the Medical domain.
> </details>



![](https://arxiv.org/html/2503.01933/extracted/6246866/raw_quantized_model_size.png)

> 🔼 This figure compares the memory usage of several language models before and after applying different quantization techniques.  The original, unquantized model size is represented by 'FP32'.  The levels of quantization are shown by 'Q8', 'Q5', and 'Q4', where Q4 uses the most aggressive quantization and reduces the model's memory footprint the most. The bar chart visually demonstrates how much smaller the quantized models are compared to their original size.  Specifically, it shows that using Q4 quantization results in models requiring approximately 8 times less memory than the original FP32 versions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Model size comparison before and after quantization. FP32 represents the original model size, while Q8, Q5, and Q4 represent increasingly aggressive quantization levels. Note the substantial reduction in memory footprint, with Q4 models requiring approximately 8x less memory than their FP32 counterparts.
> </details>



![](https://arxiv.org/html/2503.01933/extracted/6246866/token_performance_hardware_v1.png)

> 🔼 Figure 6 presents a comparative analysis of the Shakti models' performance (measured in tokens per second) across various hardware platforms, ranging from high-performance GPUs to resource-constrained devices like Raspberry Pi and mobile phones.  The bar chart visually represents the throughput achieved by Shakti-100M, Shakti-250M, and Shakti-500M, in their quantized versions (Q4), compared to similar-sized competitor models on each platform.  This comparison highlights the Shakti models' ability to maintain high processing speeds even on devices with limited computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance comparison (tokens per second) of Shakti models across different hardware platforms. The graph demonstrates how our models maintain high throughput even on resource-constrained devices compared to similar-sized competitors.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1.1">Domain</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.2.1">Average Answer Relevancy Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.3.1">Summarization Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.4.1">Factual Score</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.1.2.2.1">HealthCare</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.2">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.4">-</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.1.3.3.1">Legal</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.3.3.2">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.3.3.3">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.3.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T2.1.4.4.1">Finance</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.1.4.4.2">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.1.4.4.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.1.4.4.4">0.83</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance analysis of the Shakti-250M model across three domains: Healthcare, Finance, and Legal.  For each domain, it provides three key metrics: Average Answer Relevancy, Summarization Score (Legal domain only), and Factual Score (Finance domain only). Answer Relevancy assesses how well the model's responses match the expected answers, reflecting accuracy and context. Summarization Score measures the quality and completeness of summaries produced by the model. Factual Score evaluates the correctness of facts in the model's output, indicating how effectively it extracts and reproduces crucial details from the input.  Scores closer to 1.0 indicate better model performance in each respective task.
> <details>
> <summary>read the caption</summary>
> Table 2: Average Answer Relevancy score of Shakti-250M model across domains as mentioned, Summarization score for Shakti-250M model for Legal domain, Average Factual Score for Finance domain.Answer Relevancy: Answer relevancy measures the degree to which the model-generated response aligns with the expected or correct answer, reflecting its accuracy and contextual relevance.Summarization Score: Summarization Score calculates the alignment and coverage of the summary generated for the input.Factual Score: Factual Score evaluates the correctness of factual information in the model’s output, measuring how well it captures and reproduces essential details from the input. A score near to 1 indicates better performance of the model in the respective task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S9.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S9.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.1">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.2.1">Accuracy of Shakti-250M</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.3.1">Accuracy of Shakti-500M</span></td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T3.1.2.2.1">BBQ Average</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T3.1.2.2.2">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T3.1.2.2.3">54.08</td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T3.1.3.3.1">Toxigen</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T3.1.3.3.2">47.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T3.1.3.3.3">51.5</td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S9.T3.1.4.4.1">ImplicitHate</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T3.1.4.4.2">63</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T3.1.4.4.3">69.04</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of Shakti-250M and Shakti-500M models on three benchmark datasets designed to evaluate bias and toxicity in language models: Bias Benchmark for QA (BBQ), ToxiGen, and Implicit Hate Speech.  Higher accuracy scores reflect a better ability of the model to avoid generating biased or harmful outputs, demonstrating alignment with responsible AI practices. The BBQ dataset assesses biases related to gender, race, and religion. ToxiGen focuses on detecting both explicit and implicit hate speech. The Implicit Hate Speech dataset specifically evaluates the model's ability to identify nuanced forms of hateful language.  The results show how the larger Shakti-500M model generally outperforms the smaller Shakti-250M model in terms of accuracy on these important benchmarks, highlighting the importance of model size and training in mitigating bias and toxicity.
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy scores of the Shakti models on Bias Benchmark for QA (BBQ), ToxiGen, and Implicit Hate Speech datasets. Higher accuracy indicates the model’s improved ability to mitigate biases, detect nuanced toxicity, and accurately classify implicit hate speech, showcasing alignment with Responsible AI principles.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S9.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S9.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S9.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S9.T4.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S9.T4.1.1.1.2.1">likelyhood diff</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S9.T4.1.1.1.3.1">pct stereotypes</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T4.1.2.1.1">Shakti-250M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T4.1.2.1.2">3.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T4.1.2.1.3">52.07</td>
</tr>
<tr class="ltx_tr" id="S9.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S9.T4.1.3.2.1">Shakti-500M</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T4.1.3.2.2">3.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T4.1.3.2.3">51.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of evaluating the Shakti-250M and Shakti-500M models for bias using the CrowS-Pairs dataset.  The CrowS-Pairs dataset assesses the tendency of language models to exhibit stereotypical biases.  The table reports two key metrics: Likelihood Difference and Percentage of Stereotypes.  A lower Likelihood Difference score indicates that the model shows less of a preference for stereotypical sentences compared to non-stereotypical sentences. A lower Percentage of Stereotypes score signifies that the model is less likely to generate stereotypical statements.  Lower scores on both metrics suggest better fairness and bias mitigation in the model.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of the Shakti models on the Crows-Pairs dataset using Likelihood Difference and Percentage of Stereotypes metrics. Lower values in Likelihood Difference indicate reduced preference for stereotypical over non-stereotypical sentences, while a lower Percentage of Stereotypes signifies the model’s fairness and ability to minimize bias..
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01933/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01933/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}