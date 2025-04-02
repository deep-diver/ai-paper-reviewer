---
title: "FinAudio: A Benchmark for Audio Large Language Models in Financial Applications"
summary: "FINAUDIO: First benchmark for financial audio LLMs, enhancing financial audio analysis and investment decisions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Speech Recognition", "🏢 Stevens Institute of Technology",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20990 {{< /keyword >}}
{{< keyword icon="writer" >}} Yupeng Cao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20990" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20990" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20990/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Audio Large Language Models (AudioLLMs) have improved audio tasks, but lack benchmarks in finance where audio data (earnings calls) is key for decisions. Financial evaluation suites exist for LLMs in NLP tasks, but there's a gap: no audio-focused financial LLM or benchmark. Multimodal financial LLMs can't handle audio data yet. General AudioLLMs have progressed, enabling tasks like ASR, but a financial audio benchmark is missing, limiting research community's ability to evaluate and improve strategies.



To address this, the paper introduces **FINAUDIO, the first AudioLLM benchmark for finance**. It defines three tasks: ASR for short/long financial audio, and summarization of long audio. Four open-source datasets were collected, and a new dataset for financial audio summarization was created. Seven AudioLLMs were evaluated, revealing limitations and insights for improvement. The benchmark offers a low-cost, privacy-preserving ASR solution.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AudioLLMs perform better on short financial audio clips compared to longer recordings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The performance of long-audio ASR limits audio summarization quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Open-source AudioLLMs like Whisper-v3 can outperform closed-source models in financial audio tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel benchmark to evaluate and advance audio LLMs, **crucial for financial AI research**. It offers valuable datasets and insights, paving the way for more effective and reliable financial audio analysis tools.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1">Dataset Name</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.2">Type</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.3">#Samples</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.4"># Hours</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.5">Task</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.6">Metrics</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.1">MDRM-test</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.2">Short Clips</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.3">22,208</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.4">87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.5">short financial clip ASR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.6">WER</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.3.2.1">SPGISpeech-test</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.2.2">Short Clips</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.3.2.3">39,341</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.3.2.4">130</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.2.5">short financial clip ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.6">WER</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.4.3.1">Earning-21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.3.2">Long Audio</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.4.3.3">44</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.4.3.4">39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.3.5">long financial audio ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3.6">WER</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.5.4.1">Earning-22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.4.2">Long Audio</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.5.4.3">125</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.1.5.4.4">120</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.4.5">long financial audio ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4.6">WER</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.1.1.6.5.1">FinAudioSum</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.6.5.2">Long Audio</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S3.T1.1.1.6.5.3">64</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S3.T1.1.1.6.5.4">55</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.6.5.5">long financial audio Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.6.5.6">Rouge-L &amp; BertScore</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the datasets used in the FinAudio benchmark.  It shows the name of each dataset, its type (short audio clips or long audio recordings, including a summarization dataset), the number of samples in the dataset, the total duration of audio in hours, the specific task the dataset is used for within the benchmark (ASR for short audio, ASR for long audio, or summarization), and the evaluation metrics used for each task.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the datasets in the FinAudio benchmark.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20990/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20990/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}