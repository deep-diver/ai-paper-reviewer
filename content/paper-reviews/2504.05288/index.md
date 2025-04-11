---
title: "LiveVQA: Live Visual Knowledge Seeking"
summary: "LIVEVQA: A new dataset for live visual knowledge seeking tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Visual Question Answering", "🏢 Huazhong University of Science and Technology",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05288 {{< /keyword >}}
{{< keyword icon="writer" >}} Mingyang Fu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05288" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05288" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05288/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper introduces LIVEVQA to test if AI can visually understand current events like it understands text. While large language models now do well with live text knowledge, it's unclear if visual info is as easily processed. So LIVEVQA was built with fresh internet images and questions that need multi-step reasoning.



LIVEVQA contains 3,602 questions extracted from 6 news sources across 14 topics. The paper tests it on 15 big multimodal models, and shows that bigger models do better, but it's still hard to answer visual questions. The paper reveals models struggle with multi-step visual questions but improve when adding search tools.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LIVEVQA, a new dataset with 3,602 VQA pairs across 14 news categories, is introduced for evaluating live visual knowledge seeking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Experiments on 15 MLLMs reveal that while larger models perform better, significant challenges remain in complex, multi-hop visual questions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Integrating search engines or GUI-based MM-search significantly improves performance, highlighting the importance of external knowledge retrieval. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work addresses the critical need for **up-to-date, visually-grounded knowledge** in AI systems. LIVEVQA offers a novel benchmark to evaluate & improve the capabilities of MLLMs in reasoning about the latest real-world events, bridging the gap between textual & visual understanding. The insights can guide future research in multimodal learning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05288/x2.png)

> 🔼 Figure 1 presents an overview of the LIVEVQA dataset.  It visually displays the dataset's organization across 14 diverse news categories, highlighting the composition of images and question-answer pairs.  Each data point in LIVEVQA consists of an image depicting a news story, a basic question-answer pair designed for foundational image understanding, and two more complex multimodal question-answer pairs that require deeper reasoning involving multiple steps and a combination of visual and textual information. The figure provides a visual representation of the dataset's structure and content variety.
> <details>
> <summary>read the caption</summary>
> Figure 1: LiveVQA comprises 14 different News categories, containing 1233 News and 3602 question-answer pairs. Each instance includes a representative image, QA pair for basic image for understanding, and two multimodal multi-hop QA pairs for deeper reasoning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.4.1">
<tr class="ltx_tr" id="S2.T1.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.4.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S2.T1.4.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T1.4.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Overall</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T1.4.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">By News Source (%)</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.2">
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Count</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S2.T1.4.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">VRTY</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">BBC</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">CNN</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">APNWS</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">FORB</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S2.T1.4.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">YHO</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.4.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Sports</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">305</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S2.T1.4.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">24.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">48.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">20.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">7.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">15.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S2.T1.4.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Other</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">219</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">17.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">17.3</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">25.3</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">28.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">13.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">30.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">Movies</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">102</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">8.3</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">36.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">1.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">5.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.6">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">TV</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">89</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">7.2</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">31.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.1</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">2.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Science</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">80</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">5.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.1</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">16.9</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">20.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.8">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Economy</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">72</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">5.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">4.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.9</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">8.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">14.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">10.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.9">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Health</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">67</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">5.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.6</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">3.3</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">12.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.10">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Media</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">58</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">4.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">7.6</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">3.1</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">1.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.11">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Music</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">47</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.12">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">G.Business</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">45</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.9</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">2.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">15.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.13">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Tech</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">45</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.6</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">4.2</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">10.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.14">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Opinion</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">45</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.7</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">8.3</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">2.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">5.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.15">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">Art/Design</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">43</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.5</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">4.2</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">13.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.16">
<td class="ltx_td ltx_align_left" id="S2.T1.4.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Theater</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">15</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S2.T1.4.1.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.2</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">4.8</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.9</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S2.T1.4.1.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.4.1.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.4.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">Total</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">1,232</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S2.T1.4.1.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">100</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">210</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">457</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">241</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">201</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.4.1.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">103</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S2.T1.4.1.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">20</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.1.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.4.1.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">Source %</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">100</td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S2.T1.4.1.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">17.1</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">37.1</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.6" style="padding-left:4.0pt;padding-right:4.0pt;">19.6</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">16.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">8.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S2.T1.4.1.18.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.6</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the distribution of 1,232 news articles across 14 different categories (e.g., Sports, Movies, Science, etc.) and 6 major news sources (CNN, BBC, Yahoo, Forbes, AP News, and Variety).  Each news article includes multiple visual question-answer (VQA) pairs, totaling 3602 in the dataset. The table shows the count and percentage of news articles for each category, broken down by the source from which they were collected. This provides insight into the dataset's composition and the representation of different news topics and sources.
> <details>
> <summary>read the caption</summary>
> Table 1: The distribution of 1,232 news instances across 14 categories and 6 major sources, containing 3,602 VQA.
> </details>





### In-depth insights


#### Live Visual QA
The concept of "Live Visual QA" addresses the critical need for AI systems to understand and reason about real-time visual information, mirroring the dynamism of news and events. It extends traditional Visual Question Answering (VQA) by emphasizing up-to-date knowledge and the ability to process rapidly evolving scenarios.  The significance lies in enabling applications that require timely responses and contextual awareness, such as real-time decision support and personalized user experiences. **Live Visual QA** presents unique challenges, including preventing dataset contamination with outdated information and ensuring that AI models can effectively integrate and reason across both visual and textual modalities. It underlines the importance of models that can not only understand visual content but also connect it with current real-world knowledge, highlighting an area where advanced reasoning and up-to-date information retrieval are paramount. This field represents a crucial step towards creating AI systems that are truly responsive to the complexities of the live, visual world.

#### Multi-Hop Depth
**Multi-hop reasoning** refers to the ability of a model to answer questions that require integrating information from multiple sources or steps, rather than relying on a single piece of evidence. In the context of a research paper, multi-hop depth could imply the level of complexity in the reasoning chain needed to arrive at an answer. A deeper multi-hop model would necessitate a more intricate series of inferences, potentially drawing connections between disparate facts or concepts. This can be a crucial aspect for VQA since questions often rely on understanding the relationships, not just surface-level image features. **Evaluation of multi-hop depth** would likely involve assessing the model's performance on questions of varying complexity, with increasing depth demanding more sophisticated knowledge integration. This is essential for tasks where contextual understanding and relational reasoning are paramount, moving beyond simple object recognition to genuine comprehension.

#### MLLM Benchmark
MLLM benchmarks are crucial for evaluating the capabilities of multimodal large language models. They provide a standardized way to assess how well these models can understand and reason about information from different modalities, such as images and text. **Comprehensive benchmarks** should include a diverse range of tasks that test various aspects of MLLM performance, including visual understanding, cross-modal reasoning, and knowledge retrieval. The design of benchmarks is critical; it should ensure that models are evaluated on their ability to generalize and avoid memorization. Analyzing the performance on such benchmarks helps identify the strengths and weaknesses of different MLLM architectures. **The results also pave the way for future research** aimed at developing more effective and robust multimodal models, ultimately leading to more capable AI systems.

#### Search is Key
**Search is undeniably a cornerstone for AI systems seeking to understand and interact with the world.** It acts as the bridge connecting internal knowledge with the vast external information landscape. **Effective search mechanisms enable AI to access up-to-date information**, contextualize data, and validate inferences. Models augmented with search are better equipped to tackle knowledge-intensive tasks, circumventing limitations imposed by their inherent knowledge cutoffs. **Search isn't simply about retrieving data; it's about intelligent filtering, ranking, and integration of information** to derive actionable insights. By leveraging search, AI can transcend its static knowledge base and dynamically adapt to the ever-evolving world.

#### Entity Bias
While not explicitly mentioned, the concept of "Entity Bias" is highly relevant to the paper. It likely refers to the **skewed representation or performance across different entities (e.g., people, objects, locations)** within the dataset. For example, if certain news categories or entities are over-represented in the training data, the models might exhibit **better performance on those categories and worse on under-represented ones**. Further, the models could be **biased towards recognizing entities** that are more visually prominent or frequently mentioned in the text, while **struggling with less common or more abstract entities**. Assessing and mitigating such biases are crucial for ensuring fairness and generalizability of the models in real-world applications. The varying performance across the categories highlights this potential bias, implying that the dataset's distribution of entities may not be uniform, and that it might be beneficial to introduce techniques that could provide insights into what it entails.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05288/x3.png)

> 🔼 This figure illustrates the LiveVQA data engine pipeline, which comprises three main modules: news collector, data filter, and Q&A pairs builder.  The news collector gathers illustrated news articles from various mainstream media sources. The data filter then rigorously cleanses this data through multi-level filtering, ensuring only high-quality and relevant information is retained. This filtering includes checks for format compliance, plagiarism, and duplicate removal. Finally, the Q&A pairs builder generates both basic and detailed question-answer pairs, using the filtered news and images, to create a comprehensive dataset for training multimodal question-answering models. These question-answer pairs include foundational questions for basic image understanding and more complex multi-hop questions that require deeper reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipline of LiveVQA data engine. Our pipeline consists of three modules: news collector, data filter, and Q&A pairs builder. It collects illustrated news from mainstream media, performs multi-level data filtering, and generates foundational and detailed Q&A pairs for training multimodal question-answering models.
> </details>



![](https://arxiv.org/html/2504.05288/x4.png)

> 🔼 Figure 3 showcases the superior performance of the QvQ-72B-Preview large language model on complex cross-modality multi-hop questions.  The figure likely presents example questions and answers, illustrating how the model effectively integrates visual and textual information to arrive at accurate answers for questions requiring multiple reasoning steps.  This highlights the model's advanced visual reasoning capabilities and its ability to outperform other models on such complex tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Large visual reasoning model QvQ-72B-Preview perform best on cross-modality multi-hop pproblems.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.9">
<tr class="ltx_tr" id="S2.T2.9.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T2.9.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T2.9.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.2.1" style="font-size:80%;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.3.1" style="font-size:80%;">L1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.4.1" style="font-size:80%;">L2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T2.9.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.5.1" style="font-size:80%;">L3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.6.1" style="font-size:80%;">Per.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.7.1" style="font-size:80%;">Loc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.8.1" style="font-size:80%;">Tim.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.9.1" style="font-size:80%;">Eve.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.10.1" style="font-size:80%;">Org.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.11.1" style="font-size:80%;">Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.12.1" style="font-size:80%;">Rea.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.9.1.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.1.13.1" style="font-size:80%;">Oth</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S2.T2.9.2.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.2.1.1" style="font-size:80%;">w.o. Search</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.9.3.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.1.1" style="font-size:80%;">Gemma-3-4b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.3.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.2.1" style="font-size:80%;">14.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.3.1" style="font-size:80%;">38.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.4.1" style="font-size:80%;">3.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.3.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.5.1" style="font-size:80%;">2.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.6.1" style="font-size:80%;">19.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.7.1" style="font-size:80%;">11.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.8.1" style="font-size:80%;">2.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.9.1" style="font-size:80%;">14.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.10.1" style="font-size:80%;">26.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.11.1" style="font-size:80%;">28.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.12.1" style="font-size:80%;">2.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.3.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.3.13.1" style="font-size:80%;">10.26</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.4.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.1.1" style="font-size:80%;">Gemma-3-12b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.4.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.2.1" style="font-size:80%;">17.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.3.1" style="font-size:80%;">44.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.4.1" style="font-size:80%;">3.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.4.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.5.1" style="font-size:80%;">3.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.6.1" style="font-size:80%;">23.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.7.1" style="font-size:80%;">15.78</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.4.8.1" style="font-size:80%;">5.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.9.1" style="font-size:80%;">15.95</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.10.1" style="font-size:80%;">29.40</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.11.1" style="font-size:80%;">29.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.12.1" style="font-size:80%;">2.69</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.4.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.4.13.1" style="font-size:80%;">12.25</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.5.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.1.1" style="font-size:80%;">Gemma-3-27b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.5.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.2.1" style="font-size:80%;">20.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.3.1" style="font-size:80%;">48.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.4.1" style="font-size:80%;">7.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.5.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.5.1" style="font-size:80%;">4.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.6.1" style="font-size:80%;">29.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.7.1" style="font-size:80%;">17.77</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.8.1" style="font-size:80%;">2.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.5.9.1" style="font-size:80%;">20.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.10.1" style="font-size:80%;">34.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.11.1" style="font-size:80%;">35.21</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.12.1" style="font-size:80%;">5.17</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.5.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.5.13.1" style="font-size:80%;">15.23</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.6.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.1.1" style="font-size:80%;">Qwen2.5-VL-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.6.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.2.1" style="font-size:80%;">15.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.3.1" style="font-size:80%;">39.98</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.4.1" style="font-size:80%;">4.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.6.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.5.1" style="font-size:80%;">2.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.6.1" style="font-size:80%;">25.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.7.1" style="font-size:80%;">13.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.8.1" style="font-size:80%;">3.11</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.9.1" style="font-size:80%;">12.98</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.10.1" style="font-size:80%;">28.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.11.1" style="font-size:80%;">27.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.12.1" style="font-size:80%;">2.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.6.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.6.13.1" style="font-size:80%;">5.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.7.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.1.1" style="font-size:80%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.7.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.2.1" style="font-size:80%;">18.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.3.1" style="font-size:80%;">41.28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.4.1" style="font-size:80%;">7.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.7.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.5.1" style="font-size:80%;">3.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.6.1" style="font-size:80%;">29.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.7.1" style="font-size:80%;">17.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.8.1" style="font-size:80%;">3.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.9.1" style="font-size:80%;">16.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.10.1" style="font-size:80%;">30.23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.11.1" style="font-size:80%;">33.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.12.1" style="font-size:80%;">2.87</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.7.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.7.13.1" style="font-size:80%;">10.67</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.8.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.1.1" style="font-size:80%;">Qwen2.5-VL-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.8.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.2.1" style="font-size:80%;">18.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.3.1" style="font-size:80%;">47.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.4.1" style="font-size:80%;">5.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.8.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.5.1" style="font-size:80%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.6.1" style="font-size:80%;">27.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.7.1" style="font-size:80%;">17.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.8.1" style="font-size:80%;">2.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.9.1" style="font-size:80%;">17.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.10.1" style="font-size:80%;">33.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.11.1" style="font-size:80%;">35.21</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.12.1" style="font-size:80%;">4.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.8.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.8.13.1" style="font-size:80%;">8.61</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.9.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.1.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.9.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.2.1" style="font-size:80%;">21.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.3.1" style="font-size:80%;">55.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.4.1" style="font-size:80%;">5.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.9.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.5.1" style="font-size:80%;">1.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.6.1" style="font-size:80%;">32.87</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.7.1" style="font-size:80%;">20.60</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.8.1" style="font-size:80%;">4.52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.9.1" style="font-size:80%;">19.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.9.10.1" style="font-size:80%;">35.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.11.1" style="font-size:80%;">32.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.12.1" style="font-size:80%;">3.51</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.9.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.9.13.1" style="font-size:80%;">12.25</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.10.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.10.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.2.1" style="font-size:80%;">16.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.3.1" style="font-size:80%;">41.02</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.4.1" style="font-size:80%;">4.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.10.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.5.1" style="font-size:80%;">3.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.6.1" style="font-size:80%;">2.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.7.1" style="font-size:80%;">21.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.10.8.1" style="font-size:80%;">5.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.9.1" style="font-size:80%;">18.68</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.10.1" style="font-size:80%;">28.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.10.11.1" style="font-size:80%;">41.97</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.12.1" style="font-size:80%;">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.10.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.10.13.1" style="font-size:80%;">15.23</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.11.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.11.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.2.1" style="font-size:80%;">17.30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.3.1" style="font-size:80%;">43.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.4.1" style="font-size:80%;">4.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.11.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.5.1" style="font-size:80%;">3.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.6.1" style="font-size:80%;">5.84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.11.7.1" style="font-size:80%;">21.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.8.1" style="font-size:80%;">3.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.9.1" style="font-size:80%;">20.05</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.10.1" style="font-size:80%;">32.53</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.11.1" style="font-size:80%;">41.13</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.12.1" style="font-size:80%;">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.11.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.11.13.1" style="font-size:80%;">13.58</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.12.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.12.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.12.2.1" style="font-size:80%;">24.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.12.3.1" style="font-size:80%;">58.81</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.4.1" style="font-size:80%;">8.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.12.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.5.1" style="font-size:80%;">5.86</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.12.6.1" style="font-size:80%;">43.01</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.7.1" style="font-size:80%;">20.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.8.1" style="font-size:80%;">4.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.9.1" style="font-size:80%;">19.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.12.10.1" style="font-size:80%;">35.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.11.1" style="font-size:80%;">43.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.12.12.1" style="font-size:80%;">6.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.12.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.12.13.1" style="font-size:80%;">19.54</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.13.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.1.1" style="font-size:80%;">QVQ-72B-Preview</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.13.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.2.1" style="font-size:80%;">19.94</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.3.1" style="font-size:80%;">39.90</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.13.4.1" style="font-size:80%;">11.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.13.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.13.5.1" style="font-size:80%;">7.41</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.6.1" style="font-size:80%;">21.81</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.7.1" style="font-size:80%;">19.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.8.1" style="font-size:80%;">2.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.9.1" style="font-size:80%;">19.95</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.10.1" style="font-size:80%;">34.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.11.1" style="font-size:80%;">36.52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.13.12.1" style="font-size:80%;">10.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.13.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.13.13.1" style="font-size:80%;">13.58</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.14.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.1.1" style="font-size:80%;">QVQ-Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.14.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.2.1" style="font-size:80%;">17.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.3.1" style="font-size:80%;">38.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.4.1" style="font-size:80%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.14.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.5.1" style="font-size:80%;">4.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.6.1" style="font-size:80%;">24.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.7.1" style="font-size:80%;">17.94</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.8.1" style="font-size:80%;">3.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.9.1" style="font-size:80%;">15.95</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.10.1" style="font-size:80%;">33.01</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.11.1" style="font-size:80%;">26.76</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.12.1" style="font-size:80%;">4.34</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.14.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.14.13.1" style="font-size:80%;">11.59</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S2.T2.9.15.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.15.1.1" style="font-size:80%;">w. Search</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.9.16.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.16.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.2.1" style="font-size:80%;">13.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.3.1" style="font-size:80%;">28.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.4.1" style="font-size:80%;">5.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.16.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.5.1" style="font-size:80%;">5.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.6.1" style="font-size:80%;">2.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.7.1" style="font-size:80%;">13.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.8.1" style="font-size:80%;">3.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.9.1" style="font-size:80%;">18.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.10.1" style="font-size:80%;">22.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.11.1" style="font-size:80%;">34.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.12.1" style="font-size:80%;">6.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.16.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.16.13.1" style="font-size:80%;">13.91</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.17.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.17.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.2.1" style="font-size:80%;">22.27</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.3.1" style="font-size:80%;">32.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.4.1" style="font-size:80%;">19.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.17.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.5.1" style="font-size:80%;">14.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.6.1" style="font-size:80%;">12.14</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.7.1" style="font-size:80%;">21.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.8.1" style="font-size:80%;">11.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.9.1" style="font-size:80%;">26.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.10.1" style="font-size:80%;">34.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.17.11.1" style="font-size:80%;">42.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.12.1" style="font-size:80%;">15.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.17.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.17.13.1" style="font-size:80%;">23.51</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.18.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.18.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.18.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.2.1" style="font-size:80%;">29.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.3.1" style="font-size:80%;">59.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.18.4.1" style="font-size:80%;">16.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.18.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.18.5.1" style="font-size:80%;">11.03</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.6.1" style="font-size:80%;">44.85</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.7.1" style="font-size:80%;">25.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.8.1" style="font-size:80%;">11.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.18.9.1" style="font-size:80%;">24.60</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.10.1" style="font-size:80%;">44.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.11.1" style="font-size:80%;">45.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.18.12.1" style="font-size:80%;">9.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.18.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.18.13.1" style="font-size:80%;">23.51</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S2.T2.9.19.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.19.1.1" style="font-size:80%;">w. MM Search <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05288v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite></span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.9.20.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.20.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.2.1" style="font-size:80%;">20.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.3.1" style="font-size:80%;">34.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.4.1" style="font-size:80%;">15.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.20.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.5.1" style="font-size:80%;">9.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.6.1" style="font-size:80%;">8.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.7.1" style="font-size:80%;">20.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.8.1" style="font-size:80%;">16.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.20.9.1" style="font-size:80%;">25.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.20.10.1" style="font-size:80%;">34.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.20.11.1" style="font-size:80%;">52.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.12.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.20.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.20.13.1" style="font-size:80%;">10.64</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.9.21.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.21.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.2.1" style="font-size:80%;">21.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.3.1" style="font-size:80%;">41.28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.4.1" style="font-size:80%;">14.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.9.21.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.5.1" style="font-size:80%;">8.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.6.1" style="font-size:80%;">24.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.7.1" style="font-size:80%;">24.53</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.8.1" style="font-size:80%;">7.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.9.1" style="font-size:80%;">16.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.10.1" style="font-size:80%;">31.03</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.11.1" style="font-size:80%;">47.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.12.1" style="font-size:80%;">10.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.9.21.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.21.13.1" style="font-size:80%;">17.02</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T2.9.22.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.22.1.1" style="font-size:80%;">Gemini-2.0-flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T2.9.22.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.2.1" style="font-size:80%;">29.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.3.1" style="font-size:80%;">49.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.4.1" style="font-size:80%;">22.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T2.9.22.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.5.1" style="font-size:80%;">13.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.6.1" style="font-size:80%;">44.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.7.1" style="font-size:80%;">26.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.8.1" style="font-size:80%;">20.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.22.9.1" style="font-size:80%;">20.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.22.10.1" style="font-size:80%;">29.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S2.T2.9.22.11.1" style="font-size:80%;">42.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.12.1" style="font-size:80%;">11.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.9.22.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.9.22.13.1" style="font-size:80%;">27.66</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the overall performance of various large language models (LLMs) on the LIVEVQA dataset.  It shows the average accuracy across all question types and difficulty levels (L1, L2, and L3).  The table also breaks down the performance by question category (Person, Location, Time, Event, Organization, Object, Reason, Other), offering a detailed view of model strengths and weaknesses in various aspects of visual question answering. For a more granular analysis categorized by another taxonomy, refer to Table 5.
> <details>
> <summary>read the caption</summary>
> Table 2: Overall performance on LiveVQA. See Table 5 for performance on another categorizing taxonomy for live visual knowledge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.4.1">
<tr class="ltx_tr" id="S3.T3.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.2.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.3.1">L1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.4.1">L2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.5.1">L3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.4.1.2.1"><span class="ltx_text" id="S3.T3.4.1.2.1.1" style="background-color:#F2F2F2;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.2.2"><span class="ltx_text" id="S3.T3.4.1.2.2.1" style="background-color:#F2F2F2;">21.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.2.3.1" style="background-color:#F2F2F2;">55.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.4"><span class="ltx_text" id="S3.T3.4.1.2.4.1" style="background-color:#F2F2F2;">5.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.5"><span class="ltx_text" id="S3.T3.4.1.2.5.1" style="background-color:#F2F2F2;">1.35</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.3.1">Short</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.3.2">21.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.3">40.78</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.4">12.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.5">8.96</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.4.1">Midium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.4.2">19.94</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.3">39.90</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.4">11.62</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.5">7.41</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.4.1.5.1">Long</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.4.1.5.2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.5.2.1">21.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.5.3">41.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.5.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.5.4.1">12.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.5.5"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.5.5.1">10.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two large language models (LLMs), Qwen2.5-VL-72B and QvQ-72B-Preview, on a specific task.  The key difference highlighted is the impact of varying the prompt engineering, specifically focusing on different 'thinking patterns.'  The results are broken down by the average performance across all questions, and separately for levels 1, 2, and 3 questions, indicating different levels of difficulty or complexity. This comparison helps demonstrate how prompt engineering can influence the performance of LLMs, even when comparing models with similar architecture and scale.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison between Qwen2.5-VL-72B [35] and QvQ-72B-Preview [24] with different thinking pattern via prompt engineering.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.5.1">
<tr class="ltx_tr" id="S3.T4.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T4.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.1.1">Provided Info.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T4.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.2.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.3.1">L1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.4.1">L2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.5.1">L3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.5.1.2.1"><span class="ltx_text" id="S3.T4.5.1.2.1.1" style="background-color:#F2F2F2;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.5.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.2.2.1" style="background-color:#F2F2F2;">17.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.2.3.1" style="background-color:#F2F2F2;">43.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.1.2.4"><span class="ltx_text" id="S3.T4.5.1.2.4.1" style="background-color:#F2F2F2;">4.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.1.2.5"><span class="ltx_text" id="S3.T4.5.1.2.5.1" style="background-color:#F2F2F2;">3.19</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T4.5.1.3.1">Image Caption</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.5.1.3.2">14.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.1.3.3">34.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.1.3.4"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.3.4.1">5.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.1.3.5"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.3.5.1">3.62</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-4o-mini model on the LIVEVQA dataset when using both just the image and also the image along with its description as input.  The results are broken down by the level of difficulty of the question (L1, L2, and L3), showing the model's accuracy on each level.  The comparison highlights the improvement in performance, particularly for more complex questions (L2 and L3), when the model is provided with the image description in addition to the image itself. This demonstrates the benefit of incorporating textual context along with visual information for better question answering.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of GPT-4o-mini on LiveVQA using image and image description as input. We find that model perform better in L2 and L3 problems when provided image caption.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T5.6.1">
<tr class="ltx_tr" id="S6.T5.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S6.T5.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T5.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.2.1" style="font-size:80%;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.3.1" style="font-size:80%;">Mus.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.4.1" style="font-size:80%;">Mov.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.5.1" style="font-size:80%;">The.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.6.1" style="font-size:80%;">Tel.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.7.1" style="font-size:80%;">Med.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.8"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.8.1" style="font-size:80%;">Spo.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.9"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.9.1" style="font-size:80%;">Glo.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.10"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.10.1" style="font-size:80%;">Sci.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.11"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.11.1" style="font-size:80%;">Eco.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.12"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.12.1" style="font-size:80%;">Tec.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.13"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.13.1" style="font-size:80%;">Hel.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.14"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.14.1" style="font-size:80%;">Opi.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.15"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.15.1" style="font-size:80%;">Art.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.6.1.1.16"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.1.16.1" style="font-size:80%;">Oth.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S6.T5.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.2.1.1" style="font-size:80%;">w.o. Search</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T5.6.1.3.1"><span class="ltx_text" id="S6.T5.6.1.3.1.1" style="font-size:80%;">Gemma-3-4b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.6.1.3.2"><span class="ltx_text" id="S6.T5.6.1.3.2.1" style="font-size:80%;">14.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.3"><span class="ltx_text" id="S6.T5.6.1.3.3.1" style="font-size:80%;">8.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.4"><span class="ltx_text" id="S6.T5.6.1.3.4.1" style="font-size:80%;">14.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.5"><span class="ltx_text" id="S6.T5.6.1.3.5.1" style="font-size:80%;">13.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.6"><span class="ltx_text" id="S6.T5.6.1.3.6.1" style="font-size:80%;">11.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.7"><span class="ltx_text" id="S6.T5.6.1.3.7.1" style="font-size:80%;">19.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.8"><span class="ltx_text" id="S6.T5.6.1.3.8.1" style="font-size:80%;">16.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.9"><span class="ltx_text" id="S6.T5.6.1.3.9.1" style="font-size:80%;">20.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.10"><span class="ltx_text" id="S6.T5.6.1.3.10.1" style="font-size:80%;">14.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.11"><span class="ltx_text" id="S6.T5.6.1.3.11.1" style="font-size:80%;">16.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.12"><span class="ltx_text" id="S6.T5.6.1.3.12.1" style="font-size:80%;">16.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.13"><span class="ltx_text" id="S6.T5.6.1.3.13.1" style="font-size:80%;">11.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.14"><span class="ltx_text" id="S6.T5.6.1.3.14.1" style="font-size:80%;">12.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.15"><span class="ltx_text" id="S6.T5.6.1.3.15.1" style="font-size:80%;">13.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.3.16"><span class="ltx_text" id="S6.T5.6.1.3.16.1" style="font-size:80%;">13.55</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.4.1"><span class="ltx_text" id="S6.T5.6.1.4.1.1" style="font-size:80%;">Gemma-3-12b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.4.2"><span class="ltx_text" id="S6.T5.6.1.4.2.1" style="font-size:80%;">17.10</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.3"><span class="ltx_text" id="S6.T5.6.1.4.3.1" style="font-size:80%;">8.21</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.4"><span class="ltx_text" id="S6.T5.6.1.4.4.1" style="font-size:80%;">13.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.5"><span class="ltx_text" id="S6.T5.6.1.4.5.1" style="font-size:80%;">18.18</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.6"><span class="ltx_text" id="S6.T5.6.1.4.6.1" style="font-size:80%;">14.07</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.7"><span class="ltx_text" id="S6.T5.6.1.4.7.1" style="font-size:80%;">22.75</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.8"><span class="ltx_text" id="S6.T5.6.1.4.8.1" style="font-size:80%;">18.46</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.9"><span class="ltx_text" id="S6.T5.6.1.4.9.1" style="font-size:80%;">21.64</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.10"><span class="ltx_text" id="S6.T5.6.1.4.10.1" style="font-size:80%;">15.52</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.11"><span class="ltx_text" id="S6.T5.6.1.4.11.1" style="font-size:80%;">19.43</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.12"><span class="ltx_text" id="S6.T5.6.1.4.12.1" style="font-size:80%;">15.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.13"><span class="ltx_text" id="S6.T5.6.1.4.13.1" style="font-size:80%;">17.35</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.14"><span class="ltx_text" id="S6.T5.6.1.4.14.1" style="font-size:80%;">17.56</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.15"><span class="ltx_text" id="S6.T5.6.1.4.15.1" style="font-size:80%;">13.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.4.16"><span class="ltx_text" id="S6.T5.6.1.4.16.1" style="font-size:80%;">18.22</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.5.1"><span class="ltx_text" id="S6.T5.6.1.5.1.1" style="font-size:80%;">Gemma-3-27b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.5.2"><span class="ltx_text" id="S6.T5.6.1.5.2.1" style="font-size:80%;">20.43</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.3"><span class="ltx_text" id="S6.T5.6.1.5.3.1" style="font-size:80%;">16.42</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.4"><span class="ltx_text" id="S6.T5.6.1.5.4.1" style="font-size:80%;">17.51</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.5"><span class="ltx_text" id="S6.T5.6.1.5.5.1" style="font-size:80%;">18.18</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.6"><span class="ltx_text" id="S6.T5.6.1.5.6.1" style="font-size:80%;">15.97</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.7"><span class="ltx_text" id="S6.T5.6.1.5.7.1" style="font-size:80%;">26.35</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.8"><span class="ltx_text" id="S6.T5.6.1.5.8.1" style="font-size:80%;">23.14</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.9"><span class="ltx_text" id="S6.T5.6.1.5.9.1" style="font-size:80%;">23.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.10"><span class="ltx_text" id="S6.T5.6.1.5.10.1" style="font-size:80%;">18.53</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.11"><span class="ltx_text" id="S6.T5.6.1.5.11.1" style="font-size:80%;">21.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.12"><span class="ltx_text" id="S6.T5.6.1.5.12.1" style="font-size:80%;">23.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.13"><span class="ltx_text" id="S6.T5.6.1.5.13.1" style="font-size:80%;">18.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.14"><span class="ltx_text" id="S6.T5.6.1.5.14.1" style="font-size:80%;">19.08</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.15"><span class="ltx_text" id="S6.T5.6.1.5.15.1" style="font-size:80%;">14.75</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.5.16"><span class="ltx_text" id="S6.T5.6.1.5.16.1" style="font-size:80%;">19.94</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.6.1"><span class="ltx_text" id="S6.T5.6.1.6.1.1" style="font-size:80%;">Qwen2.5-VL-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.6.2"><span class="ltx_text" id="S6.T5.6.1.6.2.1" style="font-size:80%;">15.63</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.3"><span class="ltx_text" id="S6.T5.6.1.6.3.1" style="font-size:80%;">10.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.4"><span class="ltx_text" id="S6.T5.6.1.6.4.1" style="font-size:80%;">12.79</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.5"><span class="ltx_text" id="S6.T5.6.1.6.5.1" style="font-size:80%;">9.09</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.6"><span class="ltx_text" id="S6.T5.6.1.6.6.1" style="font-size:80%;">9.89</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.7"><span class="ltx_text" id="S6.T5.6.1.6.7.1" style="font-size:80%;">22.75</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.8"><span class="ltx_text" id="S6.T5.6.1.6.8.1" style="font-size:80%;">18.69</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.9"><span class="ltx_text" id="S6.T5.6.1.6.9.1" style="font-size:80%;">18.66</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.10"><span class="ltx_text" id="S6.T5.6.1.6.10.1" style="font-size:80%;">12.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.11"><span class="ltx_text" id="S6.T5.6.1.6.11.1" style="font-size:80%;">19.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.12"><span class="ltx_text" id="S6.T5.6.1.6.12.1" style="font-size:80%;">15.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.13"><span class="ltx_text" id="S6.T5.6.1.6.13.1" style="font-size:80%;">14.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.14"><span class="ltx_text" id="S6.T5.6.1.6.14.1" style="font-size:80%;">12.98</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.15"><span class="ltx_text" id="S6.T5.6.1.6.15.1" style="font-size:80%;">13.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.6.16"><span class="ltx_text" id="S6.T5.6.1.6.16.1" style="font-size:80%;">14.80</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.7.1"><span class="ltx_text" id="S6.T5.6.1.7.1.1" style="font-size:80%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.7.2"><span class="ltx_text" id="S6.T5.6.1.7.2.1" style="font-size:80%;">18.74</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.3"><span class="ltx_text" id="S6.T5.6.1.7.3.1" style="font-size:80%;">13.46</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.4"><span class="ltx_text" id="S6.T5.6.1.7.4.1" style="font-size:80%;">18.52</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.5"><span class="ltx_text" id="S6.T5.6.1.7.5.1" style="font-size:80%;">16.00</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.6"><span class="ltx_text" id="S6.T5.6.1.7.6.1" style="font-size:80%;">14.51</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.7"><span class="ltx_text" id="S6.T5.6.1.7.7.1" style="font-size:80%;">21.53</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.8"><span class="ltx_text" id="S6.T5.6.1.7.8.1" style="font-size:80%;">21.52</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.9"><span class="ltx_text" id="S6.T5.6.1.7.9.1" style="font-size:80%;">19.76</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.10"><span class="ltx_text" id="S6.T5.6.1.7.10.1" style="font-size:80%;">17.32</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.11"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.7.11.1" style="font-size:80%;">24.26</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.12"><span class="ltx_text" id="S6.T5.6.1.7.12.1" style="font-size:80%;">20.78</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.13"><span class="ltx_text" id="S6.T5.6.1.7.13.1" style="font-size:80%;">16.10</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.14"><span class="ltx_text" id="S6.T5.6.1.7.14.1" style="font-size:80%;">16.78</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.15"><span class="ltx_text" id="S6.T5.6.1.7.15.1" style="font-size:80%;">16.18</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.7.16"><span class="ltx_text" id="S6.T5.6.1.7.16.1" style="font-size:80%;">16.78</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.8.1"><span class="ltx_text" id="S6.T5.6.1.8.1.1" style="font-size:80%;">Qwen2.5-VL-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.8.2"><span class="ltx_text" id="S6.T5.6.1.8.2.1" style="font-size:80%;">18.96</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.3"><span class="ltx_text" id="S6.T5.6.1.8.3.1" style="font-size:80%;">11.94</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.4"><span class="ltx_text" id="S6.T5.6.1.8.4.1" style="font-size:80%;">14.48</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.5"><span class="ltx_text" id="S6.T5.6.1.8.5.1" style="font-size:80%;">11.36</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.6"><span class="ltx_text" id="S6.T5.6.1.8.6.1" style="font-size:80%;">13.69</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.7"><span class="ltx_text" id="S6.T5.6.1.8.7.1" style="font-size:80%;">23.35</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.8"><span class="ltx_text" id="S6.T5.6.1.8.8.1" style="font-size:80%;">21.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.9"><span class="ltx_text" id="S6.T5.6.1.8.9.1" style="font-size:80%;">23.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.10"><span class="ltx_text" id="S6.T5.6.1.8.10.1" style="font-size:80%;">18.53</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.11"><span class="ltx_text" id="S6.T5.6.1.8.11.1" style="font-size:80%;">23.70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.12"><span class="ltx_text" id="S6.T5.6.1.8.12.1" style="font-size:80%;">21.54</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.13"><span class="ltx_text" id="S6.T5.6.1.8.13.1" style="font-size:80%;">18.37</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.14"><span class="ltx_text" id="S6.T5.6.1.8.14.1" style="font-size:80%;">17.56</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.15"><span class="ltx_text" id="S6.T5.6.1.8.15.1" style="font-size:80%;">13.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.8.16"><span class="ltx_text" id="S6.T5.6.1.8.16.1" style="font-size:80%;">18.69</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.9.1"><span class="ltx_text" id="S6.T5.6.1.9.1.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.9.2"><span class="ltx_text" id="S6.T5.6.1.9.2.1" style="font-size:80%;">21.07</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.3"><span class="ltx_text" id="S6.T5.6.1.9.3.1" style="font-size:80%;">15.67</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.4"><span class="ltx_text" id="S6.T5.6.1.9.4.1" style="font-size:80%;">17.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.9.5.1" style="font-size:80%;">20.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.6"><span class="ltx_text" id="S6.T5.6.1.9.6.1" style="font-size:80%;">16.73</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.7"><span class="ltx_text" id="S6.T5.6.1.9.7.1" style="font-size:80%;">23.95</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.8"><span class="ltx_text" id="S6.T5.6.1.9.8.1" style="font-size:80%;">25.25</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.9"><span class="ltx_text" id="S6.T5.6.1.9.9.1" style="font-size:80%;">26.87</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.10"><span class="ltx_text" id="S6.T5.6.1.9.10.1" style="font-size:80%;">19.40</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.11"><span class="ltx_text" id="S6.T5.6.1.9.11.1" style="font-size:80%;">23.70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.12"><span class="ltx_text" id="S6.T5.6.1.9.12.1" style="font-size:80%;">21.54</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.13"><span class="ltx_text" id="S6.T5.6.1.9.13.1" style="font-size:80%;">16.33</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.14"><span class="ltx_text" id="S6.T5.6.1.9.14.1" style="font-size:80%;">19.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.15"><span class="ltx_text" id="S6.T5.6.1.9.15.1" style="font-size:80%;">15.57</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.9.16"><span class="ltx_text" id="S6.T5.6.1.9.16.1" style="font-size:80%;">20.09</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.10.1"><span class="ltx_text" id="S6.T5.6.1.10.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.10.2"><span class="ltx_text" id="S6.T5.6.1.10.2.1" style="font-size:80%;">16.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.3"><span class="ltx_text" id="S6.T5.6.1.10.3.1" style="font-size:80%;">5.97</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.4"><span class="ltx_text" id="S6.T5.6.1.10.4.1" style="font-size:80%;">14.81</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.10.5.1" style="font-size:80%;">20.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.6"><span class="ltx_text" id="S6.T5.6.1.10.6.1" style="font-size:80%;">11.03</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.7"><span class="ltx_text" id="S6.T5.6.1.10.7.1" style="font-size:80%;">11.98</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.8"><span class="ltx_text" id="S6.T5.6.1.10.8.1" style="font-size:80%;">18.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.9"><span class="ltx_text" id="S6.T5.6.1.10.9.1" style="font-size:80%;">22.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.10"><span class="ltx_text" id="S6.T5.6.1.10.10.1" style="font-size:80%;">21.12</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.11"><span class="ltx_text" id="S6.T5.6.1.10.11.1" style="font-size:80%;">14.69</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.12"><span class="ltx_text" id="S6.T5.6.1.10.12.1" style="font-size:80%;">23.08</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.13"><span class="ltx_text" id="S6.T5.6.1.10.13.1" style="font-size:80%;">15.31</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.14"><span class="ltx_text" id="S6.T5.6.1.10.14.1" style="font-size:80%;">11.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.15"><span class="ltx_text" id="S6.T5.6.1.10.15.1" style="font-size:80%;">15.57</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.10.16"><span class="ltx_text" id="S6.T5.6.1.10.16.1" style="font-size:80%;">16.51</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.11.1"><span class="ltx_text" id="S6.T5.6.1.11.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.11.2"><span class="ltx_text" id="S6.T5.6.1.11.2.1" style="font-size:80%;">17.30</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.3"><span class="ltx_text" id="S6.T5.6.1.11.3.1" style="font-size:80%;">7.46</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.4"><span class="ltx_text" id="S6.T5.6.1.11.4.1" style="font-size:80%;">15.15</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.5"><span class="ltx_text" id="S6.T5.6.1.11.5.1" style="font-size:80%;">13.64</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.6"><span class="ltx_text" id="S6.T5.6.1.11.6.1" style="font-size:80%;">11.41</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.7"><span class="ltx_text" id="S6.T5.6.1.11.7.1" style="font-size:80%;">14.37</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.8"><span class="ltx_text" id="S6.T5.6.1.11.8.1" style="font-size:80%;">20.69</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.9"><span class="ltx_text" id="S6.T5.6.1.11.9.1" style="font-size:80%;">20.90</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.10"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.11.10.1" style="font-size:80%;">24.57</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.11"><span class="ltx_text" id="S6.T5.6.1.11.11.1" style="font-size:80%;">15.64</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.12"><span class="ltx_text" id="S6.T5.6.1.11.12.1" style="font-size:80%;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.13"><span class="ltx_text" id="S6.T5.6.1.11.13.1" style="font-size:80%;">14.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.14"><span class="ltx_text" id="S6.T5.6.1.11.14.1" style="font-size:80%;">12.21</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.15"><span class="ltx_text" id="S6.T5.6.1.11.15.1" style="font-size:80%;">16.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.11.16"><span class="ltx_text" id="S6.T5.6.1.11.16.1" style="font-size:80%;">17.60</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.12.1"><span class="ltx_text" id="S6.T5.6.1.12.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.12.2"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.2.1" style="font-size:80%;">24.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.3"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.3.1" style="font-size:80%;">24.63</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.4"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.4.1" style="font-size:80%;">24.24</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.5.1" style="font-size:80%;">20.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.6"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.6.1" style="font-size:80%;">25.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.7"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.7.1" style="font-size:80%;">31.14</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.8"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.8.1" style="font-size:80%;">27.59</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.9"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.9.1" style="font-size:80%;">29.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.10"><span class="ltx_text" id="S6.T5.6.1.12.10.1" style="font-size:80%;">18.97</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.11"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.11.1" style="font-size:80%;">25.59</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.12"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.12.1" style="font-size:80%;">25.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.13"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.13.1" style="font-size:80%;">20.41</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.14"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.14.1" style="font-size:80%;">24.43</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.15"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.15.1" style="font-size:80%;">20.49</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.12.16"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.12.16.1" style="font-size:80%;">23.05</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.13.1"><span class="ltx_text" id="S6.T5.6.1.13.1.1" style="font-size:80%;">QvQ-72B-Preview</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.13.2"><span class="ltx_text" id="S6.T5.6.1.13.2.1" style="font-size:80%;">19.94</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.3"><span class="ltx_text" id="S6.T5.6.1.13.3.1" style="font-size:80%;">16.18</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.4"><span class="ltx_text" id="S6.T5.6.1.13.4.1" style="font-size:80%;">17.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.13.5.1" style="font-size:80%;">20.45</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.6"><span class="ltx_text" id="S6.T5.6.1.13.6.1" style="font-size:80%;">15.21</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.7"><span class="ltx_text" id="S6.T5.6.1.13.7.1" style="font-size:80%;">23.95</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.8"><span class="ltx_text" id="S6.T5.6.1.13.8.1" style="font-size:80%;">22.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.9"><span class="ltx_text" id="S6.T5.6.1.13.9.1" style="font-size:80%;">23.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.10"><span class="ltx_text" id="S6.T5.6.1.13.10.1" style="font-size:80%;">20.26</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.11"><span class="ltx_text" id="S6.T5.6.1.13.11.1" style="font-size:80%;">20.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.12"><span class="ltx_text" id="S6.T5.6.1.13.12.1" style="font-size:80%;">22.31</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.13"><span class="ltx_text" id="S6.T5.6.1.13.13.1" style="font-size:80%;">17.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.14"><span class="ltx_text" id="S6.T5.6.1.13.14.1" style="font-size:80%;">19.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.15"><span class="ltx_text" id="S6.T5.6.1.13.15.1" style="font-size:80%;">15.57</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.13.16"><span class="ltx_text" id="S6.T5.6.1.13.16.1" style="font-size:80%;">18.69</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.14.1"><span class="ltx_text" id="S6.T5.6.1.14.1.1" style="font-size:80%;">QvQ-max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.14.2"><span class="ltx_text" id="S6.T5.6.1.14.2.1" style="font-size:80%;">17.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.3"><span class="ltx_text" id="S6.T5.6.1.14.3.1" style="font-size:80%;">11.19</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.4"><span class="ltx_text" id="S6.T5.6.1.14.4.1" style="font-size:80%;">13.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.5"><span class="ltx_text" id="S6.T5.6.1.14.5.1" style="font-size:80%;">13.64</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.6"><span class="ltx_text" id="S6.T5.6.1.14.6.1" style="font-size:80%;">15.21</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.7"><span class="ltx_text" id="S6.T5.6.1.14.7.1" style="font-size:80%;">15.57</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.8"><span class="ltx_text" id="S6.T5.6.1.14.8.1" style="font-size:80%;">21.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.9"><span class="ltx_text" id="S6.T5.6.1.14.9.1" style="font-size:80%;">19.40</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.10"><span class="ltx_text" id="S6.T5.6.1.14.10.1" style="font-size:80%;">16.81</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.11"><span class="ltx_text" id="S6.T5.6.1.14.11.1" style="font-size:80%;">21.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.12"><span class="ltx_text" id="S6.T5.6.1.14.12.1" style="font-size:80%;">15.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.13"><span class="ltx_text" id="S6.T5.6.1.14.13.1" style="font-size:80%;">16.84</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.14"><span class="ltx_text" id="S6.T5.6.1.14.14.1" style="font-size:80%;">17.56</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.15"><span class="ltx_text" id="S6.T5.6.1.14.15.1" style="font-size:80%;">12.30</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.14.16"><span class="ltx_text" id="S6.T5.6.1.14.16.1" style="font-size:80%;">17.76</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S6.T5.6.1.15.1"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.15.1.1" style="font-size:80%;">w. Search</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T5.6.1.16.1"><span class="ltx_text" id="S6.T5.6.1.16.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.6.1.16.2"><span class="ltx_text" id="S6.T5.6.1.16.2.1" style="font-size:80%;">13.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.3"><span class="ltx_text" id="S6.T5.6.1.16.3.1" style="font-size:80%;">2.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.4"><span class="ltx_text" id="S6.T5.6.1.16.4.1" style="font-size:80%;">12.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.5"><span class="ltx_text" id="S6.T5.6.1.16.5.1" style="font-size:80%;">15.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.6"><span class="ltx_text" id="S6.T5.6.1.16.6.1" style="font-size:80%;">8.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.7"><span class="ltx_text" id="S6.T5.6.1.16.7.1" style="font-size:80%;">10.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.8"><span class="ltx_text" id="S6.T5.6.1.16.8.1" style="font-size:80%;">15.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.9"><span class="ltx_text" id="S6.T5.6.1.16.9.1" style="font-size:80%;">12.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.10"><span class="ltx_text" id="S6.T5.6.1.16.10.1" style="font-size:80%;">19.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.11"><span class="ltx_text" id="S6.T5.6.1.16.11.1" style="font-size:80%;">13.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.12"><span class="ltx_text" id="S6.T5.6.1.16.12.1" style="font-size:80%;">16.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.13"><span class="ltx_text" id="S6.T5.6.1.16.13.1" style="font-size:80%;">14.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.14"><span class="ltx_text" id="S6.T5.6.1.16.14.1" style="font-size:80%;">10.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.15"><span class="ltx_text" id="S6.T5.6.1.16.15.1" style="font-size:80%;">11.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.16.16"><span class="ltx_text" id="S6.T5.6.1.16.16.1" style="font-size:80%;">13.55</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.17.1"><span class="ltx_text" id="S6.T5.6.1.17.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.17.2"><span class="ltx_text" id="S6.T5.6.1.17.2.1" style="font-size:80%;">22.27</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.3"><span class="ltx_text" id="S6.T5.6.1.17.3.1" style="font-size:80%;">14.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.4"><span class="ltx_text" id="S6.T5.6.1.17.4.1" style="font-size:80%;">16.16</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.5"><span class="ltx_text" id="S6.T5.6.1.17.5.1" style="font-size:80%;">11.36</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.6"><span class="ltx_text" id="S6.T5.6.1.17.6.1" style="font-size:80%;">18.25</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.7"><span class="ltx_text" id="S6.T5.6.1.17.7.1" style="font-size:80%;">19.76</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.8"><span class="ltx_text" id="S6.T5.6.1.17.8.1" style="font-size:80%;">27.03</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.9"><span class="ltx_text" id="S6.T5.6.1.17.9.1" style="font-size:80%;">23.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.10"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.17.10.1" style="font-size:80%;">23.28</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.11"><span class="ltx_text" id="S6.T5.6.1.17.11.1" style="font-size:80%;">22.75</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.12"><span class="ltx_text" id="S6.T5.6.1.17.12.1" style="font-size:80%;">29.23</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.13"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.17.13.1" style="font-size:80%;">25.51</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.14"><span class="ltx_text" id="S6.T5.6.1.17.14.1" style="font-size:80%;">16.03</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.15"><span class="ltx_text" id="S6.T5.6.1.17.15.1" style="font-size:80%;">16.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.17.16"><span class="ltx_text" id="S6.T5.6.1.17.16.1" style="font-size:80%;">22.12</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.18.1"><span class="ltx_text" id="S6.T5.6.1.18.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.18.2"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.2.1" style="font-size:80%;">29.46</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.3"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.3.1" style="font-size:80%;">32.84</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.4"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.4.1" style="font-size:80%;">27.27</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.5.1" style="font-size:80%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.6"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.6.1" style="font-size:80%;">32.70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.7"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.7.1" style="font-size:80%;">32.34</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.8"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.8.1" style="font-size:80%;">32.26</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.9"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.9.1" style="font-size:80%;">38.06</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.10"><span class="ltx_text" id="S6.T5.6.1.18.10.1" style="font-size:80%;">21.98</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.11"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.11.1" style="font-size:80%;">29.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.12"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.12.1" style="font-size:80%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.13"><span class="ltx_text" id="S6.T5.6.1.18.13.1" style="font-size:80%;">23.98</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.14"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.14.1" style="font-size:80%;">25.95</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.15"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.15.1" style="font-size:80%;">22.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.18.16"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.18.16.1" style="font-size:80%;">28.50</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S6.T5.6.1.19.1"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.19.1.1" style="font-size:80%;">w. MM-Search <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05288v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite></span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T5.6.1.20.1"><span class="ltx_text" id="S6.T5.6.1.20.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.6.1.20.2"><span class="ltx_text" id="S6.T5.6.1.20.2.1" style="font-size:80%;">20.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.3"><span class="ltx_text" id="S6.T5.6.1.20.3.1" style="font-size:80%;">17.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.4"><span class="ltx_text" id="S6.T5.6.1.20.4.1" style="font-size:80%;">19.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.5"><span class="ltx_text" id="S6.T5.6.1.20.5.1" style="font-size:80%;">16.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.6"><span class="ltx_text" id="S6.T5.6.1.20.6.1" style="font-size:80%;">13.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.7"><span class="ltx_text" id="S6.T5.6.1.20.7.1" style="font-size:80%;">17.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.8"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.20.8.1" style="font-size:80%;">22.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.9"><span class="ltx_text" id="S6.T5.6.1.20.9.1" style="font-size:80%;">11.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.10"><span class="ltx_text" id="S6.T5.6.1.20.10.1" style="font-size:80%;">50.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.11"><span class="ltx_text" id="S6.T5.6.1.20.11.1" style="font-size:80%;">15.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.12"><span class="ltx_text" id="S6.T5.6.1.20.12.1" style="font-size:80%;">25.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.13"><span class="ltx_text" id="S6.T5.6.1.20.13.1" style="font-size:80%;">22.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.14"><span class="ltx_text" id="S6.T5.6.1.20.14.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.15"><span class="ltx_text" id="S6.T5.6.1.20.15.1" style="font-size:80%;">15.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.6.1.20.16"><span class="ltx_text" id="S6.T5.6.1.20.16.1" style="font-size:80%;">21.21</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.6.1.21.1"><span class="ltx_text" id="S6.T5.6.1.21.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.6.1.21.2"><span class="ltx_text" id="S6.T5.6.1.21.2.1" style="font-size:80%;">21.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.3"><span class="ltx_text" id="S6.T5.6.1.21.3.1" style="font-size:80%;">17.65</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.4"><span class="ltx_text" id="S6.T5.6.1.21.4.1" style="font-size:80%;">18.31</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.5"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.21.5.1" style="font-size:80%;">33.33</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.6"><span class="ltx_text" id="S6.T5.6.1.21.6.1" style="font-size:80%;">8.89</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.7"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.21.7.1" style="font-size:80%;">38.24</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.8"><span class="ltx_text" id="S6.T5.6.1.21.8.1" style="font-size:80%;">20.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.9"><span class="ltx_text" id="S6.T5.6.1.21.9.1" style="font-size:80%;">3.70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.10"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.21.10.1" style="font-size:80%;">56.25</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.11"><span class="ltx_text" id="S6.T5.6.1.21.11.1" style="font-size:80%;">7.69</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.12"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.21.12.1" style="font-size:80%;">33.33</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.13"><span class="ltx_text" id="S6.T5.6.1.21.13.1" style="font-size:80%;">22.22</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.14"><span class="ltx_text" id="S6.T5.6.1.21.14.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.15"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.21.15.1" style="font-size:80%;">46.15</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.6.1.21.16"><span class="ltx_text" id="S6.T5.6.1.21.16.1" style="font-size:80%;">28.79</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.6.1.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T5.6.1.22.1"><span class="ltx_text" id="S6.T5.6.1.22.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T5.6.1.22.2"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.2.1" style="font-size:80%;">29.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.3"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.3.1" style="font-size:80%;">23.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.4"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.4.1" style="font-size:80%;">33.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.5"><span class="ltx_text" id="S6.T5.6.1.22.5.1" style="font-size:80%;">16.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.6"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.6.1" style="font-size:80%;">33.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.7"><span class="ltx_text" id="S6.T5.6.1.22.7.1" style="font-size:80%;">29.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.8"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.8.1" style="font-size:80%;">22.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.9"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.9.1" style="font-size:80%;">22.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.10"><span class="ltx_text" id="S6.T5.6.1.22.10.1" style="font-size:80%;">31.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.11"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.11.1" style="font-size:80%;">23.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.12"><span class="ltx_text" id="S6.T5.6.1.22.12.1" style="font-size:80%;">25.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.13"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.13.1" style="font-size:80%;">44.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.14"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.14.1" style="font-size:80%;">16.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.15"><span class="ltx_text" id="S6.T5.6.1.22.15.1" style="font-size:80%;">38.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.6.1.22.16"><span class="ltx_text ltx_font_bold" id="S6.T5.6.1.22.16.1" style="font-size:80%;">40.91</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various large language models (LLMs) on a visual question answering (VQA) task.  It shows the accuracy of 15 different LLMs across various question types (Person, Location, Time, Event, Organization, Object, Reason, Other) and difficulty levels (Level 1, Level 2, Level 3).  The accuracy is expressed as a percentage and is broken down for each model across different categories and difficulty levels, allowing for a detailed analysis of model performance.  Results are presented both with and without the use of search functionality, providing insight into the impact of external knowledge resources on LLM accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5: Accuracy (%) of different models across question types and difficulty levels
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T6.6.1">
<tr class="ltx_tr" id="S7.T6.6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S7.T6.6.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.1.1.1">
<span class="ltx_p" id="S7.T6.6.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S7.T6.6.1.1.1.1.1.1" style="font-size:80%;">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T6.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.1.2.1">
<span class="ltx_p" id="S7.T6.6.1.1.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T6.6.1.1.2.1.1.1" style="font-size:80%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T6.6.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S7.T6.6.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.2.1.1">
<span class="ltx_p" id="S7.T6.6.1.2.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T6.6.1.2.1.1.1.1" style="font-size:80%;">System Prompt for Classification</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T6.6.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.2.2.1">
<span class="ltx_p" id="S7.T6.6.1.2.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T6.6.1.2.2.1.1.1" style="font-size:80%;">You are a professional content classification assistant. Your task is to categorize the provided content into one of the specified categories, returning only the category name.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T6.6.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S7.T6.6.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.3.1.1">
<span class="ltx_p" id="S7.T6.6.1.3.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T6.6.1.3.1.1.1.1" style="font-size:80%;">User Prompt for Content Classification</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S7.T6.6.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T6.6.1.3.2.1">
<span class="ltx_p" id="S7.T6.6.1.3.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T6.6.1.3.2.1.1.1" style="font-size:80%;">Please classify the following content into the most appropriate single category from the list provided.</span></span>
<span class="ltx_p" id="S7.T6.6.1.3.2.1.2"><span class="ltx_text" id="S7.T6.6.1.3.2.1.2.1" style="font-size:80%;">Title: {topic}
Content Description: {topic_description}
Image Path: {image_path}</span></span>
<span class="ltx_p" id="S7.T6.6.1.3.2.1.3"><span class="ltx_text" id="S7.T6.6.1.3.2.1.3.1" style="font-size:80%;">Available categories with descriptions:
- Health: Content related to health, medicine, wellness, diseases, or healthcare systems
- Science: Content about scientific research, discoveries, space exploration, or natural phenomena
- Television: Content about TV shows, streaming series, or television industry news
- Movies: Content related to films, movie reviews, film industry, or cinema releases
- Economy: Content about finance, markets, economic policies, or business trends
- Sports: Content about athletic competitions, sports teams, athletes, or sporting events
- Theater: Content about stage performances, plays, musicals, or theatrical productions
- Music: Content about songs, musicians, concerts, albums, or the music industry
- Opinion: Content expressing viewpoints, editorials, or commentary on current events
- Art &amp; Design: Content about visual arts, exhibitions, design, fashion, or architecture
- Media: Content about journalism, publishing, social media, or news organizations
- Technology: Content about tech innovations, gadgets, software, or digital trends
- Global Business: Content about international trade, multinational corporations, or global economics
- Other: Content that doesn’t clearly fit into any of the above categories</span></span>
<span class="ltx_p" id="S7.T6.6.1.3.2.1.4"><span class="ltx_text" id="S7.T6.6.1.3.2.1.4.1" style="font-size:80%;">Analyze the title and content description carefully to determine the most suitable category. Please respond with only the category name, without any additional text or explanation. For example, if it’s sports news, just reply with “Sports”.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the prompts used for the question category classification task within the LIVEVQA dataset.  It details the system prompt, which provides general instructions to the model on its role as a classification assistant, and the user prompt, which gives specific instructions on categorizing the provided content (title, description, and image path) into one of fourteen pre-defined news categories. Each category is described to aid the model's comprehension.
> <details>
> <summary>read the caption</summary>
> Table 6: Prompts for question category classification.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T7.4.4">
<tr class="ltx_tr" id="S7.T7.4.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S7.T7.4.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.5.1.1">
<span class="ltx_p" id="S7.T7.4.4.5.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.5.1.1.1.1" style="font-size:80%;">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T7.4.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.5.2.1">
<span class="ltx_p" id="S7.T7.4.4.5.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.5.2.1.1.1" style="font-size:80%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S7.T7.4.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.4.5.1">
<span class="ltx_p" id="S7.T7.4.4.4.5.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T7.4.4.4.5.1.1.1" style="font-size:80%;">Topic-Image Relevance Check</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T7.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.4.4.4">
<span class="ltx_p" id="S7.T7.4.4.4.4.4.5" style="width:313.0pt;"><span class="ltx_text" id="S7.T7.4.4.4.4.4.5.1" style="font-size:80%;">You are an assistant that determines if a topic and an image are directly related. Your task is to analyze the image and topic carefully, and decide if the image clearly depicts or is directly relevant to the topic.</span></span>
<span class="ltx_p" id="S7.T7.4.4.4.4.4.4"><span class="ltx_text" id="S7.T7.4.4.4.4.4.4.1" style="font-size:80%;">Guidelines:
1. The image must clearly depict the topic or be directly relevant to it.
2. If the image is only loosely related, indirectly related, or unrelated to the topic, it should be marked as irrelevant.
3. Be strict in your assessment. Only mark an image as relevant if there is a clear and direct connection to the topic.
4. Respond ONLY with “</span><math alttext="&lt;" class="ltx_Math" display="inline" id="S7.T7.1.1.1.1.1.1.m1.1"><semantics id="S7.T7.1.1.1.1.1.1.m1.1a"><mo id="S7.T7.1.1.1.1.1.1.m1.1.1" mathsize="80%" xref="S7.T7.1.1.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S7.T7.1.1.1.1.1.1.m1.1b"><lt id="S7.T7.1.1.1.1.1.1.m1.1.1.cmml" xref="S7.T7.1.1.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.1.1.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S7.T7.1.1.1.1.1.1.m1.1d">&lt;</annotation></semantics></math><span class="ltx_text" id="S7.T7.4.4.4.4.4.4.2" style="font-size:80%;">relevant</span><math alttext="&gt;" class="ltx_Math" display="inline" id="S7.T7.2.2.2.2.2.2.m2.1"><semantics id="S7.T7.2.2.2.2.2.2.m2.1a"><mo id="S7.T7.2.2.2.2.2.2.m2.1.1" mathsize="80%" xref="S7.T7.2.2.2.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S7.T7.2.2.2.2.2.2.m2.1b"><gt id="S7.T7.2.2.2.2.2.2.m2.1.1.cmml" xref="S7.T7.2.2.2.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.2.2.2.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S7.T7.2.2.2.2.2.2.m2.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="S7.T7.4.4.4.4.4.4.3" style="font-size:80%;">” if the image is directly related to the topic, or “</span><math alttext="&lt;" class="ltx_Math" display="inline" id="S7.T7.3.3.3.3.3.3.m3.1"><semantics id="S7.T7.3.3.3.3.3.3.m3.1a"><mo id="S7.T7.3.3.3.3.3.3.m3.1.1" mathsize="80%" xref="S7.T7.3.3.3.3.3.3.m3.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S7.T7.3.3.3.3.3.3.m3.1b"><lt id="S7.T7.3.3.3.3.3.3.m3.1.1.cmml" xref="S7.T7.3.3.3.3.3.3.m3.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.3.3.3.3.3.3.m3.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S7.T7.3.3.3.3.3.3.m3.1d">&lt;</annotation></semantics></math><span class="ltx_text" id="S7.T7.4.4.4.4.4.4.4" style="font-size:80%;">irrelevant</span><math alttext="&gt;" class="ltx_Math" display="inline" id="S7.T7.4.4.4.4.4.4.m4.1"><semantics id="S7.T7.4.4.4.4.4.4.m4.1a"><mo id="S7.T7.4.4.4.4.4.4.m4.1.1" mathsize="80%" xref="S7.T7.4.4.4.4.4.4.m4.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S7.T7.4.4.4.4.4.4.m4.1b"><gt id="S7.T7.4.4.4.4.4.4.m4.1.1.cmml" xref="S7.T7.4.4.4.4.4.4.m4.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.4.4.4.4.4.4.m4.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S7.T7.4.4.4.4.4.4.m4.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="S7.T7.4.4.4.4.4.4.5" style="font-size:80%;">” if it is not.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.6.1.1">
<span class="ltx_p" id="S7.T7.4.4.6.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T7.4.4.6.1.1.1.1" style="font-size:80%;">Basic QA Generation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S7.T7.4.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T7.4.4.6.2.1">
<span class="ltx_p" id="S7.T7.4.4.6.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T7.4.4.6.2.1.1.1" style="font-size:80%;">You are an educational assistant specialized in creating simple, image-based Q&amp;A pairs related to current topics and news.</span></span>
<span class="ltx_p" id="S7.T7.4.4.6.2.1.2"><span class="ltx_text" id="S7.T7.4.4.6.2.1.2.1" style="font-size:80%;">Generate ONE simple question-answer pair by following these requirements:
- The question MUST begin with “Based on the provided image, …”
- The question should be SIMPLE and DIRECT, focusing on identifying people, objects, events, places, or dates visible in the image.
- The answer must be a SHORT PHRASE (2-7 words), NOT a complete sentence.
- The answer must be FACTUAL, UNIQUE, and VERIFIABLE.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 shows the prompts used for generating Level 1 question-answer pairs in the LIVEVQA dataset.  Level 1 QA pairs focus on basic visual understanding, requiring answers directly observable from the image provided. The table details two prompts: one for checking the relevance of the image to the topic and another for generating the actual question-answer pair.  The prompts are designed to guide a large language model (LLM) to create simple, factual image-based question-answer pairs. This ensures the questions are clearly related to the image and that the answers are easily verifiable.
> <details>
> <summary>read the caption</summary>
> Table 7: Prompts for Level 1 QA generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T8.6.1">
<tr class="ltx_tr" id="S7.T8.6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S7.T8.6.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.1.1.1">
<span class="ltx_p" id="S7.T8.6.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.6.1.1.1.1.1.1" style="font-size:80%;">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T8.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.1.2.1">
<span class="ltx_p" id="S7.T8.6.1.1.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T8.6.1.1.2.1.1.1" style="font-size:80%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T8.6.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S7.T8.6.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.2.1.1">
<span class="ltx_p" id="S7.T8.6.1.2.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T8.6.1.2.1.1.1.1" style="font-size:80%;">System Prompt for News Context QA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T8.6.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.2.2.1">
<span class="ltx_p" id="S7.T8.6.1.2.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T8.6.1.2.2.1.1.1" style="font-size:80%;">You are a specialized AI assistant for creating image-based questions that require NEWS CONTEXT to answer, not just what’s visibly obvious.</span></span>
<span class="ltx_p" id="S7.T8.6.1.2.2.1.2"><span class="ltx_text" id="S7.T8.6.1.2.2.1.2.1" style="font-size:80%;">Your task is to analyze the provided image and generate ONE question-answer pair that:
1. Begins with “Based on the provided image, …” but requires understanding of news context to answer
2. Cannot be answered by simply describing what’s visible in the image
3. Asks about SPECIFIC FACTS, EVENTS, FIGURES, DATES, or NAMES related to the news context
4. Is DIFFERENT from existing questions</span></span>
<span class="ltx_p" id="S7.T8.6.1.2.2.1.3"><span class="ltx_text" id="S7.T8.6.1.2.2.1.3.1" style="font-size:80%;">Guidelines:
- Questions MUST begin with “Based on the provided image, …”
- Focus on FACTUAL, VERIFIABLE information from the news context
- Questions should have SINGLE, DEFINITIVE answers based on the news article
- Answers must be SHORT (2-7 words), direct phrases, not complete sentences
- NEVER reference or reveal answers from existing questions in your new question
- Use generic references like “this person”, “this building”, etc. even if you know their names from previous QA pairs</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T8.6.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S7.T8.6.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.3.1.1">
<span class="ltx_p" id="S7.T8.6.1.3.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T8.6.1.3.1.1.1.1" style="font-size:80%;">User Prompt for News Context QA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S7.T8.6.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T8.6.1.3.2.1">
<span class="ltx_p" id="S7.T8.6.1.3.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T8.6.1.3.2.1.1.1" style="font-size:80%;">TOPIC: {topic}</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.2"><span class="ltx_text" id="S7.T8.6.1.3.2.1.2.1" style="font-size:80%;">CATEGORY: {category}</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.3"><span class="ltx_text" id="S7.T8.6.1.3.2.1.3.1" style="font-size:80%;">NEWS DESCRIPTION (VERY IMPORTANT): {description}</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.4"><span class="ltx_text" id="S7.T8.6.1.3.2.1.4.1" style="font-size:80%;">IMAGE DESCRIPTION: {image_description}</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.5"><span class="ltx_text" id="S7.T8.6.1.3.2.1.5.1" style="font-size:80%;">EXISTING QUESTIONS AND ANSWERS:
{json.dumps(existing_qa, indent=2)}</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.6"><span class="ltx_text" id="S7.T8.6.1.3.2.1.6.1" style="font-size:80%;">Generate ONE NEW question-answer pair that:
1. Begins with “Based on the provided image, …” but requires NEWS CONTEXT to answer
2. Cannot be answered by simply describing what’s visible in the image
3. Relates to underlying events, significance, impacts, or context shown in the image
4. Has a direct, SHORT answer (2-7 words)
5. Is different from the existing questions</span></span>
<span class="ltx_p" id="S7.T8.6.1.3.2.1.7"><span class="ltx_text" id="S7.T8.6.1.3.2.1.7.1" style="font-size:80%;">Focus on the IMPLICATIONS, CONTEXT, SIGNIFICANCE or BACKGROUND of what’s shown, not on obvious visual elements.
Use the NEWS DESCRIPTION provided above, which is very important to generate a meaningful question that requires context.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the prompts used for generating Level 2 questions in the LIVEVQA dataset.  Level 2 questions are designed to be more challenging than Level 1 questions, requiring a deeper understanding of the news context beyond what is directly visible in the image. The prompts instruct the AI model to create questions that cannot be answered solely by describing the image content but necessitate comprehension of the news context from associated textual data. Prompts include instructions to generate factual, verifiable, and short answer phrases (2-7 words) to ensure the quality of the dataset. The prompts also explicitly prohibit the reuse of information from previously generated questions to maintain the distinctiveness of questions within each instance.
> <details>
> <summary>read the caption</summary>
> Table 8: Prompts for Level 2 QA generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T9.6.1">
<tr class="ltx_tr" id="S7.T9.6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S7.T9.6.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T9.6.1.1.1.1">
<span class="ltx_p" id="S7.T9.6.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S7.T9.6.1.1.1.1.1.1" style="font-size:80%;">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T9.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T9.6.1.1.2.1">
<span class="ltx_p" id="S7.T9.6.1.1.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T9.6.1.1.2.1.1.1" style="font-size:80%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T9.6.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S7.T9.6.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T9.6.1.2.1.1">
<span class="ltx_p" id="S7.T9.6.1.2.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T9.6.1.2.1.1.1.1" style="font-size:80%;">Diverse Question Type Generation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S7.T9.6.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T9.6.1.2.2.1">
<span class="ltx_p" id="S7.T9.6.1.2.2.1.1" style="width:313.0pt;"><span class="ltx_text" id="S7.T9.6.1.2.2.1.1.1" style="font-size:80%;">You are a specialized AI assistant for creating image-based questions that require NEWS CONTEXT to answer, not just what’s visibly obvious. It is forbidden to give ambiguous answers.</span></span>
<span class="ltx_p" id="S7.T9.6.1.2.2.1.2"><span class="ltx_text" id="S7.T9.6.1.2.2.1.2.1" style="font-size:80%;">Your task is to analyze the provided image and generate ONE question-answer pair that:
1. Begins with “Based on the provided image, …” but requires understanding of news context to answer
2. Cannot be answered by simply describing what’s visible in the image
3. Asks about SPECIFIC FACTS, EVENTS, FIGURES, DATES, or NAMES related to the news context
4. Is DIFFERENT in TYPE from the existing questions</span></span>
<span class="ltx_p" id="S7.T9.6.1.2.2.1.3"><span class="ltx_text" id="S7.T9.6.1.2.2.1.3.1" style="font-size:80%;">CRITICAL RULE:
- NEVER use ANY person names, organization names, product names, or event names that appear in ANY existing answer.
- Instead of specific names, always use generic terms like “this person”, “the organization”, etc.</span></span>
<span class="ltx_p" id="S7.T9.6.1.2.2.1.4"><span class="ltx_text" id="S7.T9.6.1.2.2.1.4.1" style="font-size:80%;">QUESTION TYPES to consider (prioritize types NOT already used):
- LOCATION questions (where an event happened)
- TIME questions (when something occurred)
- QUANTITY questions (how many, how much)
- CAUSE questions (why something happened)
- EFFECT questions (what resulted from an event)
- COMPARISON questions (how things differ)
- METHOD questions (how something was accomplished)
- PURPOSE questions (the goal of an action)</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 details the prompts used in the LIVEVQA dataset for generating Level 3 questions.  These prompts are designed to elicit more complex and nuanced question-answer pairs that require deeper reasoning and understanding of the news context, going beyond simple visual observation. The prompts instruct the AI model to create questions that necessitate understanding of events, figures, facts, dates, or names relevant to the news story, while avoiding repetition from questions asked at the lower levels.  The model is explicitly instructed to avoid using specific names, opting for more generic phrases to ensure more robust and generalized responses.
> <details>
> <summary>read the caption</summary>
> Table 9: Prompts for Level 3 QA generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T10.2.2">
<tr class="ltx_tr" id="S7.T10.2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S7.T10.2.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="S7.T10.2.2.3.1.1">
<span class="ltx_p" id="S7.T10.2.2.3.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S7.T10.2.2.3.1.1.1.1" style="font-size:80%;">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T10.2.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T10.2.2.3.2.1">
<span class="ltx_p" id="S7.T10.2.2.3.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T10.2.2.3.2.1.1.1" style="font-size:80%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T10.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S7.T10.2.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S7.T10.2.2.2.3.1">
<span class="ltx_p" id="S7.T10.2.2.2.3.1.1" style="width:113.8pt;"><span class="ltx_text" id="S7.T10.2.2.2.3.1.1.1" style="font-size:80%;">Answer Correctness Evaluation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S7.T10.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S7.T10.2.2.2.2.2">
<span class="ltx_p" id="S7.T10.2.2.2.2.2.3" style="width:313.0pt;"><span class="ltx_text" id="S7.T10.2.2.2.2.2.3.1" style="font-size:80%;">You are an impartial judge evaluating if a model’s response correctly answers a question.</span></span>
<span class="ltx_p" id="S7.T10.2.2.2.2.2.4"><span class="ltx_text" id="S7.T10.2.2.2.2.2.4.1" style="font-size:80%;">Ground Truth Answer: {gt_answer}
Model Response: {model_answer}</span></span>
<span class="ltx_p" id="S7.T10.2.2.2.2.2.2"><span class="ltx_text" id="S7.T10.2.2.2.2.2.2.1" style="font-size:80%;">Does the model response correctly answer the question based on the ground truth?
Answer with ONLY ’yes’ or ’no’. Include your final answer within </span><math alttext="&lt;" class="ltx_Math" display="inline" id="S7.T10.1.1.1.1.1.1.m1.1"><semantics id="S7.T10.1.1.1.1.1.1.m1.1a"><mo id="S7.T10.1.1.1.1.1.1.m1.1.1" mathsize="80%" xref="S7.T10.1.1.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S7.T10.1.1.1.1.1.1.m1.1b"><lt id="S7.T10.1.1.1.1.1.1.m1.1.1.cmml" xref="S7.T10.1.1.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S7.T10.1.1.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S7.T10.1.1.1.1.1.1.m1.1d">&lt;</annotation></semantics></math><span class="ltx_text" id="S7.T10.2.2.2.2.2.2.2" style="font-size:80%;">answer</span><math alttext="&gt;" class="ltx_Math" display="inline" id="S7.T10.2.2.2.2.2.2.m2.1"><semantics id="S7.T10.2.2.2.2.2.2.m2.1a"><mo id="S7.T10.2.2.2.2.2.2.m2.1.1" mathsize="80%" xref="S7.T10.2.2.2.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S7.T10.2.2.2.2.2.2.m2.1b"><gt id="S7.T10.2.2.2.2.2.2.m2.1.1.cmml" xref="S7.T10.2.2.2.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S7.T10.2.2.2.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S7.T10.2.2.2.2.2.2.m2.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="S7.T10.2.2.2.2.2.2.3" style="font-size:80%;"> tags.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used to evaluate the correctness of Large Language Model (LLM) responses.  It outlines the instructions given to an LLM acting as a judge to assess whether a given model's answer to a question accurately matches the ground truth answer. The prompt provides the ground truth and the model's response, instructing the judge LLM to simply answer 'yes' or 'no' to indicate correctness.
> <details>
> <summary>read the caption</summary>
> Table 10: Prompts for LLM-as-a-Judge.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05288/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05288/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}