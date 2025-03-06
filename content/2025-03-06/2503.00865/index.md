---
title: "Babel: Open Multilingual Large Language Models Serving Over 90% of Global Speakers"
summary: "Babel: An open multilingual LLM supports over 90% of global speakers, filling the language coverage gap and setting new performance standards."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 DAMO Academy, Alibaba Group",]
showSummary: true
date: 2025-03-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.00865 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiran Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.00865" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.00865" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.00865/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large language models (LLMs) have revolutionized NLP, but open-source multilingual LLMs are scarce, limiting language coverage**. Existing models prioritize well-resourced languages, overlooking widely spoken but under-resourced ones. To bridge this gap and enhance global accessibility, this paper introduces a new open-source multilingual LLM that aims to serve over 90% of speakers worldwide. It focuses on the top 25 languages by speaker numbers, including many languages neglected by existing open-source multilingual LLMs. Additionally, given the limited high-quality training data for many languages, the paper emphasizes optimizing the data-cleaning pipeline to ensure the highest possible data quality. 



This paper **introduces Babel**, which enhances performance through a layer extension technique, increasing its parameter space instead of traditional continue pretraining. Two variants are presented: one designed for efficient inference and fine-tuning, and another setting a new standard for open multilingual LLMs. Evaluations on multilingual tasks show its superior performance compared to open LLMs of comparable size. Moreover, using open-source supervised fine-tuning datasets, Babel achieves remarkable performance, with one variant leading among 10B-sized LLMs and the other setting a new standard for multilingual tasks, rivaling commercial models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Babel, an open multilingual LLM, covers the top 25 languages by speakers, supporting over 90% of the global population. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Babel enhances performance through layer extension, increasing parameter count rather than continue pretraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Babel achieves superior performance compared to other open LLMs and reaches commercial model levels using supervised fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers, because **it introduces a new open-source multilingual LLM, addressing the gap in language coverage**, and sets a strong foundation for future research in multilingual language modeling. It also sets a new standard for open multilingual LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2503.00865/x2.png)

> 🔼 This figure illustrates the layer extension method used in the Babel model.  The original model's layers are shown on the left.  The layer extension technique adds new layers (shown inserted and appended in the middle), which are identical in structure to the original model's layers. This approach increases the model's parameter count, enhancing its performance without significantly altering its core architecture.  The figure highlights that only layers in the latter half of the model are extended to minimize disruption of the existing layers.
> <details>
> <summary>read the caption</summary>
> Figure 1: Layer extension for Babel.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.1.1.1.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.1.1" style="font-size:80%;">Language</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.1.1.1.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.2.1" style="font-size:80%;">Speakers</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.1.1.1.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.3.1" style="font-size:80%;">Language Family</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.1.1.1.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.4.1" style="font-size:80%;">Macroarea</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.1.1.1.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.5.1" style="font-size:80%;">CC ratio</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.2.1.2.1.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.1.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.1.2.1.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.2.1" style="font-size:80%;">1.5B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.2.1.2.1.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.3.1" style="font-size:80%;">Germanic</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.2.1.2.1.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.4.1" style="font-size:80%;">Worldwide</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.1.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.5.1" style="font-size:80%;">43.4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.3.2">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.3.2.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.1.1" style="font-size:80%;">Chinese (Mandarin)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.3.2.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.2.1" style="font-size:80%;">1.4B</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.3.2.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.3.1" style="font-size:80%;">Sinitic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.3.2.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.4.1" style="font-size:80%;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.2.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.5.1" style="font-size:80%;">5.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.4.3" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.4.3.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.1.1" style="font-size:80%;background-color:#E6F2FF;">Hindi</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.4.3.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.2.1" style="font-size:80%;background-color:#E6F2FF;">700M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.4.3.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.3.1" style="font-size:80%;background-color:#E6F2FF;">Indo-Aryan</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.4.3.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.3.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.5.1" style="font-size:80%;background-color:#E6F2FF;">0.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.5.4">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.5.4.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.1.1" style="font-size:80%;">Spanish</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.5.4.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.2.1" style="font-size:80%;">595M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.5.4.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.3.1" style="font-size:80%;">Romance</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.5.4.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.4.1" style="font-size:80%;">Americas, Europe</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.4.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.5.1" style="font-size:80%;">4.6</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.6.5">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.6.5.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.1.1" style="font-size:80%;">Standard Arabic</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.6.5.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.2.1" style="font-size:80%;">400M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.6.5.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.3.1" style="font-size:80%;">Semitic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.6.5.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.4.1" style="font-size:80%;">Asia, Africa</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.6.5.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.5.1" style="font-size:80%;">0.68</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.7.6">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.7.6.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.7.6.1.1" style="font-size:80%;">French</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.7.6.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.7.6.2.1" style="font-size:80%;">300M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.7.6.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.7.6.3.1" style="font-size:80%;">Romance</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.7.6.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.7.6.4.1" style="font-size:80%;">Europe, Africa, Americas</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.7.6.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.7.6.5.1" style="font-size:80%;">4.4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.8.7" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.8.7.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.8.7.1.1" style="font-size:80%;background-color:#E6F2FF;">Bengali</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.8.7.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.8.7.2.1" style="font-size:80%;background-color:#E6F2FF;">300M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.8.7.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.8.7.3.1" style="font-size:80%;background-color:#E6F2FF;">Indo-Aryan</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.8.7.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.8.7.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.8.7.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.8.7.5.1" style="font-size:80%;background-color:#E6F2FF;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.9.8">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.9.8.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.9.8.1.1" style="font-size:80%;">Portuguese</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.9.8.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.9.8.2.1" style="font-size:80%;">270M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.9.8.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.9.8.3.1" style="font-size:80%;">Romance</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.9.8.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.9.8.4.1" style="font-size:80%;">Americas, Europe, Africa</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.9.8.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.9.8.5.1" style="font-size:80%;">2.3</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.10.9">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.10.9.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.10.9.1.1" style="font-size:80%;">Russian</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.10.9.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.10.9.2.1" style="font-size:80%;">260M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.10.9.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.10.9.3.1" style="font-size:80%;">Slavic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.10.9.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.10.9.4.1" style="font-size:80%;">Europe, Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.10.9.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.10.9.5.1" style="font-size:80%;">6.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.11.10" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.11.10.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.11.10.1.1" style="font-size:80%;background-color:#E6F2FF;">Urdu</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.11.10.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.11.10.2.1" style="font-size:80%;background-color:#E6F2FF;">230M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.11.10.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.11.10.3.1" style="font-size:80%;background-color:#E6F2FF;">Indo-Aryan</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.11.10.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.11.10.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.11.10.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.11.10.5.1" style="font-size:80%;background-color:#E6F2FF;">0.02</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.12.11" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.12.11.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.12.11.1.1" style="font-size:80%;background-color:#E6F2FF;">Indonesian</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.12.11.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.12.11.2.1" style="font-size:80%;background-color:#E6F2FF;">200M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.12.11.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.12.11.3.1" style="font-size:80%;background-color:#E6F2FF;">Malayo-Polynesian</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.12.11.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.12.11.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.12.11.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.12.11.5.1" style="font-size:80%;background-color:#E6F2FF;">1.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.13.12">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.13.12.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.13.12.1.1" style="font-size:80%;">Standard German</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.13.12.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.13.12.2.1" style="font-size:80%;">135M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.13.12.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.13.12.3.1" style="font-size:80%;">Germanic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.13.12.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.13.12.4.1" style="font-size:80%;">Europe</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.13.12.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.13.12.5.1" style="font-size:80%;">5.4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.14.13">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.14.13.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.14.13.1.1" style="font-size:80%;">Japanese</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.14.13.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.14.13.2.1" style="font-size:80%;">130M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.14.13.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.14.13.3.1" style="font-size:80%;">Japonic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.14.13.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.14.13.4.1" style="font-size:80%;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.14.13.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.14.13.5.1" style="font-size:80%;">5.3</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.15.14" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.15.14.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.15.14.1.1" style="font-size:80%;background-color:#E6F2FF;">Swahili</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.15.14.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.15.14.2.1" style="font-size:80%;background-color:#E6F2FF;">100M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.15.14.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.15.14.3.1" style="font-size:80%;background-color:#E6F2FF;">Bantu</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.15.14.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.15.14.4.1" style="font-size:80%;background-color:#E6F2FF;">Africa</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.15.14.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.15.14.5.1" style="font-size:80%;background-color:#E6F2FF;">0.008</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.16.15" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.16.15.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.16.15.1.1" style="font-size:80%;background-color:#E6F2FF;">Filipino (Tagalog)</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.16.15.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.16.15.2.1" style="font-size:80%;background-color:#E6F2FF;">100M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.16.15.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.16.15.3.1" style="font-size:80%;background-color:#E6F2FF;">Malayo-Polynesian</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.16.15.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.16.15.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.16.15.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.16.15.5.1" style="font-size:80%;background-color:#E6F2FF;">0.008</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.17.16" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.17.16.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.17.16.1.1" style="font-size:80%;background-color:#E6F2FF;">Tamil</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.17.16.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.17.16.2.1" style="font-size:80%;background-color:#E6F2FF;">90M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.17.16.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.17.16.3.1" style="font-size:80%;background-color:#E6F2FF;">Dravidian</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.17.16.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.17.16.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.17.16.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.17.16.5.1" style="font-size:80%;background-color:#E6F2FF;">0.04</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.18.17">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.18.17.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.18.17.1.1" style="font-size:80%;">Vietnamese</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.18.17.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.18.17.2.1" style="font-size:80%;">86M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.18.17.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.18.17.3.1" style="font-size:80%;">Vietic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.18.17.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.18.17.4.1" style="font-size:80%;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.18.17.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.18.17.5.1" style="font-size:80%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.19.18">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.19.18.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.19.18.1.1" style="font-size:80%;">Turkish</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.19.18.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.19.18.2.1" style="font-size:80%;">85M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.19.18.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.19.18.3.1" style="font-size:80%;">Turkic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.19.18.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.19.18.4.1" style="font-size:80%;">Asia, Europe</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.19.18.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.19.18.5.1" style="font-size:80%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.20.19">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.20.19.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.20.19.1.1" style="font-size:80%;">Italian</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.20.19.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.20.19.2.1" style="font-size:80%;">85M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.20.19.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.20.19.3.1" style="font-size:80%;">Romance</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.20.19.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.20.19.4.1" style="font-size:80%;">Europe</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.20.19.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.20.19.5.1" style="font-size:80%;">2.4</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.21.20" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.21.20.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.21.20.1.1" style="font-size:80%;background-color:#E6F2FF;">Javanese</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.21.20.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.21.20.2.1" style="font-size:80%;background-color:#E6F2FF;">83M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.21.20.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.21.20.3.1" style="font-size:80%;background-color:#E6F2FF;">Malayo-Polynesian</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.21.20.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.21.20.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.21.20.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.21.20.5.1" style="font-size:80%;background-color:#E6F2FF;">0.002</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.22.21">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.22.21.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.22.21.1.1" style="font-size:80%;">Korean</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.22.21.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.22.21.2.1" style="font-size:80%;">80M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.22.21.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.22.21.3.1" style="font-size:80%;">Koreanic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.22.21.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.22.21.4.1" style="font-size:80%;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.22.21.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.22.21.5.1" style="font-size:80%;">0.76</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.23.22" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.23.22.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.23.22.1.1" style="font-size:80%;background-color:#E6F2FF;">Hausa</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.23.22.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.23.22.2.1" style="font-size:80%;background-color:#E6F2FF;">80M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.23.22.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.23.22.3.1" style="font-size:80%;background-color:#E6F2FF;">Chadic</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.23.22.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.23.22.4.1" style="font-size:80%;background-color:#E6F2FF;">Africa</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.23.22.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.23.22.5.1" style="font-size:80%;background-color:#E6F2FF;">0.003</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.24.23" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.24.23.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.24.23.1.1" style="font-size:80%;background-color:#E6F2FF;">Iranian Persian</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.24.23.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.24.23.2.1" style="font-size:80%;background-color:#E6F2FF;">80M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.24.23.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.24.23.3.1" style="font-size:80%;background-color:#E6F2FF;">Indo-Iranian</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.24.23.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.24.23.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.24.23.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.24.23.5.1" style="font-size:80%;background-color:#E6F2FF;">0.74</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.25.24" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.25.24.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.25.24.1.1" style="font-size:80%;background-color:#E6F2FF;">Thai</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.1.25.24.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.25.24.2.1" style="font-size:80%;background-color:#E6F2FF;">80M</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.25.24.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.25.24.3.1" style="font-size:80%;background-color:#E6F2FF;">Kra-Dai</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.2.1.25.24.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.25.24.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.1.25.24.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.25.24.5.1" style="font-size:80%;background-color:#E6F2FF;">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.26.25" style="background-color:#E6F2FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.2.1.26.25.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.26.25.1.1" style="font-size:80%;background-color:#E6F2FF;">Burmese</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.1.26.25.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.26.25.2.1" style="font-size:80%;background-color:#E6F2FF;">50M</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.2.1.26.25.3" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.26.25.3.1" style="font-size:80%;background-color:#E6F2FF;">Tibeto-Burman</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.2.1.26.25.4" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.26.25.4.1" style="font-size:80%;background-color:#E6F2FF;">Asia</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.2.1.26.25.5" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S2.T1.2.1.26.25.5.1" style="font-size:80%;background-color:#E6F2FF;">0.01</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the top 25 languages supported by the Babel multilingual large language model, ordered by the number of speakers (in billions and millions).  For each language, it shows its language family, the macroarea where it's predominantly spoken, and a CC ratio, which represents the number of available open-source training corpora. Languages that have been historically under-represented in previous multilingual LLMs are highlighted to emphasize Babel's broader language coverage.
> <details>
> <summary>read the caption</summary>
> Table 1: Languages supported by Babel sorted by the number of speakers (B = Billion, M = Million). CC ratio indicates the number of open training corpora. Highlighted languages are those underexplored by previous multilingual LLMs.
> </details>





### In-depth insights


#### LLM Multilingual
**Multilingual LLMs** are pivotal for bridging communication gaps across diverse linguistic communities. The paper addresses the scarcity of **open-source** options, particularly for **under-resourced languages**. By focusing on the top 25 languages by speaker count, covering 90% of the global population, the work aims for inclusivity. The introduction of **Babel**, a novel LLM, tackles the challenge of expanding language support while maintaining performance. The layer extension technique and two variants (**Babel-9B** and **Babel-83B**) signify a commitment to efficient inference and state-of-the-art capabilities, respectively. The significance lies in its potential to democratize access to NLP technologies, ensuring that a broader range of languages benefits from advancements in the field. Furthermore, the emphasis on data quality and model expansion suggests a dedication to both linguistic breadth and model performance.

#### Layer Extension
**Layer Extension** seems to be a technique to scale up the capacity of a language model.  Instead of just pre-training, it adds new layers to the existing architecture. It increases the total parameter count and improves the **performance ceiling**. Key considerations include how to initialize the weights of the new layers (**duplication**, **adding noise**) and where to insert them (**between existing layers**, **appending at the end**). Optimal approach ensures minimal disruption of the original model and efficient training. By expanding model capacity strategically, it aims to improve performance without completely retraining.

#### Data Cleaning
**Data cleaning** is a crucial step in preparing data for training large language models (LLMs). The process involves several key steps like **normalization**, to remove noise and inconsistencies in the data. **LLM-based quality classifiers** are also employed, utilizing a combination of model-based labeling with expert linguistic refinement to construct high-quality training datasets. **Deduplication** techniques, such as hashing and pairing duplicates, are also implemented to ensure data uniqueness. Optimizing data quality is essential, especially for languages with limited high-quality resources, as it directly impacts the performance and reliability of the trained LLMs.

#### Babel Performance
**Babel's performance** is rigorously evaluated across diverse multilingual tasks. Key findings reveal its superior performance compared to other open LLMs of comparable size, notably in multilingual reasoning, understanding, and translation. Babel achieves state-of-the-art results on various benchmarks. Babel's novel layer extension technique and optimized data-cleaning pipeline contribute to its strong foundational performance. Babel's effectiveness across both high-resource and low-resource languages highlights its balanced design and broader accessibility. The chat version of Babel demonstrates strong multilingual capabilities, approaching the performance of top commercial alternatives. Performance gains are attributed to both model architecture and training data strategies.

#### Future LLM Tuning
**Future LLM tuning** will likely focus on more efficient and targeted methods. The trend will involve strategies like **parameter-efficient fine-tuning (PEFT)**, enabling adaptation to specific tasks with minimal computational cost. Moreover, expect increased emphasis on **multilingual and low-resource language tuning**, leveraging techniques like **cross-lingual transfer learning** to overcome data scarcity. Improved alignment methods, such as **reinforcement learning from human feedback (RLHF)**, will ensure LLMs are more helpful and less toxic. We will also see development in tuning for specialized applications such as medical and legal domains


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.00865/x3.png)

> 🔼 This figure presents a bar chart comparing the performance of three different 10B-parameter language models (Qwen2.5-7B, Gemma2-9B, and Babel-9B) on the MMMLU benchmark.  The chart displays the average performance across all languages, as well as the performance on high-resource and low-resource languages separately.  It visually demonstrates Babel-9B's superior performance, particularly on low-resource languages, showcasing its strength in multilingual understanding.
> <details>
> <summary>read the caption</summary>
> (a) MMMLU
> </details>



![](https://arxiv.org/html/2503.00865/x4.png)

> 🔼 The figure shows the performance comparison of Babel-9B-Base with other multilingual models on the XNLI (Cross-lingual Natural Language Inference) dataset.  It displays the average performance across high and low resource languages and highlights Babel's improved performance, especially on the low-resource languages, compared to other models such as Qwen2.5-7B and Gemma2-9B.
> <details>
> <summary>read the caption</summary>
> (b) XNLI
> </details>



![](https://arxiv.org/html/2503.00865/x5.png)

> 🔼 This figure displays the performance comparison of Babel-9B-Base against other multilingual LLMs across the MGSM (Multi-Genre Semantic Matching) dataset.  The chart likely shows performance metrics such as accuracy or F1-score, comparing Babel-9B-Base to models like Qwen2.5-7B and Gemma2-9B.  It specifically highlights how Babel performs across high and low-resource languages within the MGSM dataset.
> <details>
> <summary>read the caption</summary>
> (c) MGSM
> </details>



![](https://arxiv.org/html/2503.00865/x6.png)

> 🔼 This figure compares the performance of Babel-9B-Base, Qwen2.5-7B, and Gemma2-9B across different languages, categorized into high-resource and low-resource groups.  For each model and language group, the average performance is shown across three benchmark datasets: MMMLU, XNLI, and MGSM, representing world knowledge, natural language inference, and common sense reasoning, respectively. The figure visually demonstrates Babel-9B-Base's performance improvement over other models, particularly with low-resource languages, highlighting its multilingual capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance of Babel-9B-Base comparison across languages.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.2.2.3" style="padding:1.2pt 8.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.4" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.4.1" style="font-size:80%;">No-noise</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" style="padding:1.2pt 8.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:80%;">Gaussian (</span><math alttext="\mu=0.01" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml">μ</mi><mo id="S4.T2.1.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.T2.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T2.1.1.1.1.m1.1.1.3.cmml">0.01</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><eq id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2">𝜇</ci><cn id="S4.T2.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S4.T2.1.1.1.1.m1.1.1.3">0.01</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\mu=0.01</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">italic_μ = 0.01</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.1.2" style="font-size:80%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2" style="padding:1.2pt 8.0pt;">
<span class="ltx_text" id="S4.T2.2.2.2.2.1" style="font-size:80%;">Gaussian (</span><math alttext="\mu=0.0001" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mrow id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T2.2.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T2.2.2.2.2.m1.1.1.2.cmml">μ</mi><mo id="S4.T2.2.2.2.2.m1.1.1.1" mathsize="80%" xref="S4.T2.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S4.T2.2.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T2.2.2.2.2.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><apply id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1"><eq id="S4.T2.2.2.2.2.m1.1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1.1"></eq><ci id="S4.T2.2.2.2.2.m1.1.1.2.cmml" xref="S4.T2.2.2.2.2.m1.1.1.2">𝜇</ci><cn id="S4.T2.2.2.2.2.m1.1.1.3.cmml" type="float" xref="S4.T2.2.2.2.2.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\mu=0.0001</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">italic_μ = 0.0001</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.2.2.2" style="font-size:80%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.2.3.1.1" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1.1.1" style="font-size:80%;">Among Layers</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.2" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1.2.1" style="font-size:80%;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.3" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1.3.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.4" style="background-color:#E6F2FF;padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1.4.1" style="font-size:80%;background-color:#E6F2FF;">72.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.4.2.1" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.2.1.1" style="font-size:80%;">After Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.4.2.2" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.2.2.1" style="font-size:80%;">9.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.4.2.3" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.2.3.1" style="font-size:80%;">3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.4.2.4" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.2.4.1" style="font-size:80%;">5.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on different initialization methods for the layer extension technique used in the Babel model.  The study varied the position of the inserted layers (among existing layers or appended to the end) and the initialization method (copying original parameters, initializing with zeros, or adding Gaussian noise). The table shows that appending layers significantly reduces performance, while inserting layers has less impact, and copying original parameters without noise achieves the best performance.  The baseline performance (before layer extension) is 79.5, providing a context for understanding the impact of different initialization strategies.
> <details>
> <summary>read the caption</summary>
> Table 2: Layer extension initialization analysis. The original performance is 79.5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.1" style="padding:1.2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.2" style="padding:1.2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.2.1" style="font-size:80%;">Initialization</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.3" style="padding:1.2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.3.1" style="font-size:80%;">Layer Inserting Position</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.2.1.2.1.1" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S5.T3.2.1.2.1.1.1" style="font-size:80%;">Babel-9B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.2.1.2" rowspan="2" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S5.T3.2.1.2.1.2.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.2.1.2.1.2.1.1">
<span class="ltx_tr" id="S5.T3.2.1.2.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S5.T3.2.1.2.1.2.1.1.1.1" style="padding:1.2pt 8.0pt;">Duplicate + Gaussian Noise</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.2.1.2.1.3" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S5.T3.2.1.2.1.3.1" style="font-size:80%;">{14, 16, 18, 20, 22, 24}</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.2.1.3.2.1" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S5.T3.2.1.3.2.1.1" style="font-size:80%;">Babel-83B</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.2.1.3.2.2" style="padding:1.2pt 8.0pt;"><span class="ltx_text" id="S5.T3.2.1.3.2.2.1" style="font-size:80%;">{40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62}</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific configurations used for expanding the Babel-9B and Babel-83B models. It shows the initialization method used for the added layers (Duplicate + Gaussian Noise) and the precise layer positions where new layers were inserted within the original model architecture.  The layer positions are listed as numerical indices, indicating the location of new layer insertion relative to the existing layers.
> <details>
> <summary>read the caption</summary>
> Table 3: Layer extension method details.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.2.1">GLM4-9B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.3.1">Gemma2-9B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.4.1">Mistral-12B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.5.1">Llama3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T4.2.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.6.1">Qwen2.5-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.7.1">Babel-9B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.2.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MMMLU</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.2.1.3.1">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">52.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">49.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.2.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">59.4</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">M3Exam</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">56.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.3.2.3.1">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">52.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T4.2.1.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">58.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">61.3</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">XCOPA</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">87.3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">84.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T4.2.1.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">81.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.4.3.7.1">89.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">MGSM</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">39.0</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">34.3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T4.2.1.5.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">41.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.5.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.5.4.7.1">43.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">XNLI</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">61.7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">55.0</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T4.2.1.6.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.6.5.7.1">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.7.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">Flores-200</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">46.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">50.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T4.2.1.7.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">45.5</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.7.6.7.1">55.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.8.7" style="background-color:#E6F2FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T4.2.1.8.7.1.1" style="background-color:#E6F2FF;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T4.2.1.8.7.2.1" style="background-color:#E6F2FF;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T4.2.1.8.7.3.1" style="background-color:#E6F2FF;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T4.2.1.8.7.4.1" style="background-color:#E6F2FF;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T4.2.1.8.7.5.1" style="background-color:#E6F2FF;">49.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T4.2.1.8.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T4.2.1.8.7.6.1" style="background-color:#E6F2FF;">58.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T4.2.1.8.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.8.7.7.1" style="background-color:#E6F2FF;">63.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Babel-9B-Base, a 9-billion parameter multilingual large language model, against other open-source multilingual LLMs with around 10 billion parameters across six different benchmark datasets.  The datasets assess various aspects of language understanding, including world knowledge, commonsense reasoning, natural language inference, and cross-lingual understanding.  The results show Babel-9B-Base's performance relative to other models of similar size.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of 10B-Size Base Models vs. Babel-9B-Base.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T5.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.1.2.1">Llama3.1-70B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T5.2.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.1.3.1">Qwen2.5-72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.1.4.1">Babel-83B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.2.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MMMLU</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.2.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">69.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.2.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.2.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.2.1.4.1">76.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.2.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">M3Exam</th>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.2.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.3.2.4.1">72.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.2.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">XCOPA</th>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">92.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.2.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">81.1</td>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.4.3.4.1">92.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.2.1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">MGSM</th>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.2.1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.5.4.3.1">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">62.6</td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.2.1.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">XNLI</th>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.6.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.2.1.6.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">74.9</td>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.6.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.6.5.4.1">76.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.2.1.7.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">Flores-200</th>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.7.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.2.1.7.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">53.1</td>
<td class="ltx_td ltx_align_center" id="S6.T5.2.1.7.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.7.6.4.1">58.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.1.8.7" style="background-color:#E6F2FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T5.2.1.8.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T5.2.1.8.7.1.1" style="background-color:#E6F2FF;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T5.2.1.8.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T5.2.1.8.7.2.1" style="background-color:#E6F2FF;">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T5.2.1.8.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T5.2.1.8.7.3.1" style="background-color:#E6F2FF;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T5.2.1.8.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.8.7.4.1" style="background-color:#E6F2FF;">73.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Babel-83B-Base, a large multilingual language model, against other open-source large multilingual language models.  It assesses their performance across six different benchmark datasets: MMMLU (multitask language understanding), M3Exam (multilingual exam questions), XCOPA (causal commonsense reasoning), MGSM (multilingual general-purpose reasoning), XNLI (cross-lingual natural language inference), and Flores-200 (cross-lingual translation). The results show the average performance across these tasks for each model, indicating Babel-83B-Base's performance relative to its competitors.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of Open Large Multilingual LLMs vs. Babel-83B-Base.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.SS1.1.fig1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S7.SS1.1.fig1.1.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.SS1.1.fig1.1.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.1.1.2.1">English</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.SS1.1.fig1.1.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.1.1.3.1">Multilingual</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S7.SS1.1.fig1.1.1.2.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">MMMLU</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.SS1.1.fig1.1.1.2.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.SS1.1.fig1.1.1.2.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.2.1.3.1">52.1</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.SS1.1.fig1.1.1.3.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">M3Exam</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.SS1.1.fig1.1.1.3.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">55.3</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.1.fig1.1.1.3.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.3.2.3.1">58.4</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.SS1.1.fig1.1.1.4.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">XCOPA</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.SS1.1.fig1.1.1.4.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">84.2</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.1.fig1.1.1.4.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.4.3.3.1">83.3</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.SS1.1.fig1.1.1.5.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">MGSM</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.SS1.1.fig1.1.1.5.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">41.8</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.1.fig1.1.1.5.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.5.4.3.1">42.1</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.SS1.1.fig1.1.1.6.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">XNLI</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.SS1.1.fig1.1.1.6.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">64.5</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.1.fig1.1.1.6.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.6.5.3.1">67.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.SS1.1.fig1.1.1.7.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">Flore-200</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.SS1.1.fig1.1.1.7.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">42.6</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.1.fig1.1.1.7.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.7.6.3.1">48.1</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.1.fig1.1.1.8.7" style="background-color:#E6F2FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S7.SS1.1.fig1.1.1.8.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S7.SS1.1.fig1.1.1.8.7.1.1" style="background-color:#E6F2FF;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.SS1.1.fig1.1.1.8.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S7.SS1.1.fig1.1.1.8.7.2.1" style="background-color:#E6F2FF;">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.SS1.1.fig1.1.1.8.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.1.fig1.1.1.8.7.3.1" style="background-color:#E6F2FF;">58.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of models fine-tuned using only English supervised fine-tuning (SFT) data versus models trained with multilingual SFT data.  The comparison is done across six different multilingual benchmarks: MMMLU, M3Exam, XCOPA, MGSM, XNLI, and Flores-200.  It shows the performance difference when using English-only versus multilingual datasets for fine-tuning, highlighting the improvement in performance achieved by using multilingual data.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison of English and multilingual SFT data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.T7.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T7.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T7.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.2.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.2.1">GLM4-9B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.2.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.3.1">Gemma2-9B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.2.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.4.1">Mistral-12B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.2.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.5.1">Llama3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.2.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.6.1">Qwen2.5-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.2.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.1.1.7.1">Babel-9B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T7.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S7.T7.2.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MMMLU</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">53.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.2.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.2.1.7.1">59.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T7.2.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">M3Exam</th>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">55.0</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.3.2.3.1">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.1</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.1.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">58.0</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">62.9</td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T7.2.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">XCOPA</th>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">86.2</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">87.4</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.5</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.1.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">80.4</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.4.3.7.1">88.9</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T7.2.1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">MGSM</th>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">52.2</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.1.5.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.1</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.5.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.5.4.7.1">64.3</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T7.2.1.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">XNLI</th>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.6.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.2</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.6.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.6.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">56.1</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.6.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">55.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.1.6.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">68.3</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.6.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.6.5.7.1">72.4</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T7.2.1.7.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">Flores-200</th>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.7.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.7.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.7.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">48.9</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.7.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.1.7.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">45.8</td>
<td class="ltx_td ltx_align_center" id="S7.T7.2.1.7.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.7.6.7.1">56.7</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.2.1.8.7" style="background-color:#E6F2FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T7.2.1.8.7.1.1" style="background-color:#E6F2FF;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T7.2.1.8.7.2.1" style="background-color:#E6F2FF;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T7.2.1.8.7.3.1" style="background-color:#E6F2FF;">65.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T7.2.1.8.7.4.1" style="background-color:#E6F2FF;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T7.2.1.8.7.5.1" style="background-color:#E6F2FF;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.2.1.8.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T7.2.1.8.7.6.1" style="background-color:#E6F2FF;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.2.1.8.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.2.1.8.7.7.1" style="background-color:#E6F2FF;">67.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Babel-9B-Chat, a 10B parameter instruct model, against other 10B parameter instruction-tuned multilingual large language models across six benchmark datasets.  The datasets evaluate various aspects of language understanding, including world knowledge, commonsense reasoning, natural language inference, and cross-lingual understanding. The comparison allows for a quantitative assessment of Babel-9B-Chat's capabilities relative to other similar-sized models in the open-source domain.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance of 10B-Size Instruct Models vs. Babel-9B-Chat
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.T8.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T8.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T8.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T8.2.1.1.1.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.1.1.2.1" style="background-color:#DCDCDC;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T8.2.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.1.1.3.1">Qwen2.5-72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T8.2.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.1.1.4.1">Llama3.1-70B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T8.2.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.1.1.5.1">Babel-83B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T8.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S7.T8.2.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MMMLU</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.2.1.2.1.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.2.1.2.1" style="background-color:#DCDCDC;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.2.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T8.2.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.2.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.2.1.5.1">76.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T8.2.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">M3Exam</th>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.3.2.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.3.2.2.1" style="background-color:#DCDCDC;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T8.2.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">69.5</td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.3.2.5.1">73.2</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T8.2.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">XCOPA</th>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.4.3.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.4.3.2.1" style="background-color:#DCDCDC;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">89.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T8.2.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">92.2</td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.4.3.5.1">92.7</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T8.2.1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">MGSM</th>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.5.4.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.5.4.2.1" style="background-color:#DCDCDC;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.5.4.3.1">75.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T8.2.1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">72.5</td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T8.2.1.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">XNLI</th>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.6.5.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.6.5.2.1" style="background-color:#DCDCDC;">69.6</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.6.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T8.2.1.6.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">55.8</td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.6.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.6.5.5.1">76.3</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T8.2.1.7.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">Flores-200</th>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.7.6.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.7.6.2.1" style="background-color:#DCDCDC;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.7.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T8.2.1.7.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.7.6.4.1">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.2.1.7.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">54.8</td>
</tr>
<tr class="ltx_tr" id="S7.T8.2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S7.T8.2.1.8.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T8.2.1.8.7.1.1">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T8.2.1.8.7.2" style="background-color:#DCDCDC;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S7.T8.2.1.8.7.2.1" style="background-color:#DCDCDC;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T8.2.1.8.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T8.2.1.8.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T8.2.1.8.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.2.1.8.7.5.1">74.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Babel-83B-Chat against leading open-source multilingual large language models (LLMs) and a top commercial model across several benchmark datasets.  The datasets assess various aspects of language understanding, such as multilingual reasoning, translation, and commonsense knowledge.  The best performing open-source model for each dataset is highlighted in bold, providing a clear visual indication of Babel's competitive standing compared to existing alternatives.
> <details>
> <summary>read the caption</summary>
> Table 8: Babel-83B-Chat vs. Leading Open Multilingual LLMs and the Top Commercial Model. Results for the best open multilingual models are bolded.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.00865/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00865/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}