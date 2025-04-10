---
title: "Multi-SWE-bench: A Multilingual Benchmark for Issue Resolving"
summary: "Multi-SWE-bench: A new benchmark to evaluate multilingual issue resolving across diverse software ecosystems, vital for advancing AGI."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 ByteDance",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02605 {{< /keyword >}}
{{< keyword icon="writer" >}} Daoguang Zan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02605" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02605" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02605/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing benchmarks for issue resolving, like SWE-bench, predominantly focus on Python, neglecting the diversity in software ecosystems. This paper introduces Multi-SWE-bench, a multilingual benchmark encompassing Java, TypeScript, JavaScript, Go, Rust, C, and C++. It contains 1,632 high-quality instances annotated by experts to ensure accurate evaluation. It evaluates the performance of state-of-the-art models and provides a comprehensive analysis of empirical insights. 



The paper launches Multi-SWE-RL, an open-source community, aimed at building RL training datasets for issue-resolving tasks, releasing 4,723 structured instances across seven languages. The goal is to encourage community contributions, and to expand the dataset. The paper envisions Multi-SWE-bench and the Multi-SWE-RL community as catalysts for advancing RL, to bring us closer to AGI. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-SWE-bench enables comprehensive evaluation of LLMs across various programming languages, addressing limitations in existing benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The research identifies key factors influencing model performance, such as issue description length and fix patch characteristics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Multi-SWE-RL community fosters open-source collaboration for scalable RL data creation in software engineering. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents Multi-SWE-bench, **a crucial benchmark for multilingual code repair**. It fosters research in code intelligence and automated software engineering with diverse languages and real-world scenarios. It propels forward practical AI development and the development of autonomous intelligent systems.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02605/x1.png)

> 🔼 The figure displays the success rate of the Claude-3.5-Sonnet model in resolving issues across various programming languages included in the Multi-SWE-bench benchmark.  The results are presented in two formats: a radar chart showing the overall resolved rate for each language and a bar chart illustrating resolved rates across different difficulty levels (easy, medium, hard). The radar chart helps visualize the model's performance across languages, while the bar chart allows for a more detailed analysis of its capability relative to the complexity of the issues.
> <details>
> <summary>read the caption</summary>
> Figure 1: Resolved rate (%) on Multi-SWE-bench (Claude-3.5-Sonnet).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.9.1">
<tr class="ltx_tr" id="S3.T1.9.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.9.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.9.1.1.1.1">Repository</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.9.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.9.1.1.2.1">Instance</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.9.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.1.1.3.1">Issue description</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.9.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.1.1.4.1">Fix patches</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.9.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.9.1.1.5.1">Unit tests</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.9.1.2.1">Org/Repo</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.2">#Files</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.1.2.3">#LoC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.1.2.4">#Num</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.1.2.5">Avg. #Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.6">Avg. #Lines</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.7">Avg. #Hunks</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.1.2.8">Avg. #Files</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.9">#A2P2P</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.10">#A2F2P</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.1.2.11">#A2N2P</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.3.1"><span class="ltx_text" id="S3.T1.9.1.3.1.1" style="background-color:#E6E6E6;">Java</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.4.1"><a class="ltx_ref ltx_href" href="https://github.com/alibaba/fastjson2" title="">alibaba/fastjson2</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.2">4244</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.4.3">443.8k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.4.4">6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.4.5">459.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.6">10.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.7">1.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.4.8">1.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.9">1243.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.10">0.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.4.11">1020.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.5.1"><a class="ltx_ref ltx_href" href="https://github.com/elastic/logstash" title="">elastic/logstash</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.2">562</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.5.3">59.9k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.5.4">38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.5.5">1600.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.6">212.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.7">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.5.8">4.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.9">554.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.10">1.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.5.11">256.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.6.1"><a class="ltx_ref ltx_href" href="https://github.com/mockito/mockito" title="">mockito/mockito</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.2">986</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.6.3">84.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.6.4">6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.6.5">315.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.6">92.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.7">10.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.6.8">4.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.9">97.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.10">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.6.11">3.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.7.1"><a class="ltx_ref ltx_href" href="https://github.com/apache/dubbo" title="">apache/dubbo</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.2">3939</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.7.3">402.1k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.7.4">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.7.5">774.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.6">9.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.7">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.7.8">1.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.10">57.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.7.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.8.1"><a class="ltx_ref ltx_href" href="https://github.com/fasterxml/jackson-core" title="">fasterxml/j-core</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.2">366</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.8.3">105.7k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.8.4">18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.8.5">304.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.6">33.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.7">4.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.8.8">2.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.10">85.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.8.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.9">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.9.1"><a class="ltx_ref ltx_href" href="https://github.com/fasterxml/jackson-databind" title="">fasterxml/j-dbind</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.2">1230</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.9.3">217.5k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.9.4">42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.9.5">621.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.6">35.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.7">3.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.9.8">2.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.10">73.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.9.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.10">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.10.1"><a class="ltx_ref ltx_href" href="https://github.com/fasterxml/jackson-dataformat-xml" title="">fasterxml/j-dfmt-xml</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.2">206</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.10.3">23.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.10.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.10.5">1071.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.6">98.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.7">10.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.10.8">3.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.10">94.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.10.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.11">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.11.1"><a class="ltx_ref ltx_href" href="https://github.com/google/gson" title="">google/gson</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.2">261</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.11.3">48.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.11.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.11.5">365.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.6">35.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.7">4.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.11.8">1.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.10">62.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.11.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.12">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.12.1"><a class="ltx_ref ltx_href" href="https://github.com/googlecontainertools/jib" title="">google-ct/jib</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.2">604</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.12.3">75.5k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.12.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.12.5">1094.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.6">15.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.7">3.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.12.8">2.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.9">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.10">96.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.12.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.13.1"><span class="ltx_text" id="S3.T1.9.1.13.1.1" style="background-color:#E6E6E6;">TypeScript</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.14">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.14.1"><a class="ltx_ref ltx_href" href="https://github.com/darkreader/darkreader" title="">darkreader/darkreader</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.2">189</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.14.3">26.2k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.14.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.14.5">749.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.6">13.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.7">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.14.8">1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.9">41.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.10">3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.14.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.15">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.15.1"><a class="ltx_ref ltx_href" href="https://github.com/mui/material-ui" title="">mui/material-ui</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.2">27632</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.15.3">698.6k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.15.4">174</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.15.5">508.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.6">331.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.7">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.15.8">12.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.9">5001.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.10">2.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.15.11">836.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.16">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.16.1"><a class="ltx_ref ltx_href" href="https://github.com/vuejs/core" title="">vuejs/core</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.2">509</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.16.3">128.2k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.16.4">48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.16.5">694.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.6">22.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.7">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.16.8">1.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.9">2920.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.10">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.16.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.17.1"><span class="ltx_text" id="S3.T1.9.1.17.1.1" style="background-color:#E6E6E6;">JavaScript</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.18">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.18.1"><a class="ltx_ref ltx_href" href="https://github.com/anuraghazra/github-readme-stats" title="">ag/gh-rdme-stats</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.2">69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.18.3">11.8k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.18.4">19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.18.5">287.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.6">123.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.7">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.18.8">4.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.9">108.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.10">3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.18.11">3.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.19">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.19.1"><a class="ltx_ref ltx_href" href="https://github.com/axios/axios" title="">axios/axios</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.2">166</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.19.3">21.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.19.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.19.5">490.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.6">179.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.7">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.19.8">4.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.9">68.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.10">1.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.19.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.20">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.20.1"><a class="ltx_ref ltx_href" href="https://github.com/expressjs/express" title="">expressjs/express</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.2">142</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.20.3">17.3k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.20.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.20.5">177.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.6">7.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.7">2.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.20.8">1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.9">808.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.10">1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.20.11">65.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.21">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.21.1"><a class="ltx_ref ltx_href" href="https://github.com/iamkun/dayjs" title="">iamkun/dayjs</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.2">324</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.21.3">17.1k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.21.4">56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.21.5">325.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.6">21.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.7">2.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.21.8">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.9">60.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.10">1.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.21.11">3.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.22">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.22.1"><a class="ltx_ref ltx_href" href="https://github.com/Kong/insomnia" title="">Kong/insomnia</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.2">526</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.22.3">182.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.22.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.22.5">709.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.6">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.7">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.22.8">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.9">105.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.10">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.22.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.23">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.23.1"><a class="ltx_ref ltx_href" href="https://github.com/sveltejs/svelte" title="">sveltejs/svelte</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.2">2800</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.23.3">105.9k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.23.4">272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.23.5">618.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.6">72.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.7">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.23.8">4.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.9">4904.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.10">5.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.23.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.24" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.24.1"><span class="ltx_text" id="S3.T1.9.1.24.1.1" style="background-color:#E6E6E6;">Go</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.25">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.25.1"><a class="ltx_ref ltx_href" href="https://github.com/cli/cli" title="">cli/cli</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.2">737</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.25.3">165.1k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.25.4">397</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.25.5">347.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.6">103.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.7">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.25.8">3.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.9">1997.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.10">2.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.25.11">31.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.26">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.26.1"><a class="ltx_ref ltx_href" href="https://github.com/grpc/grpc-go" title="">grpc/grpc-go</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.2">981</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.26.3">260.8k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.26.4">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.26.5">276.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.6">81.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.7">7.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.26.8">2.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.9">230.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.10">0.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.26.11">6.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.27">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.27.1"><a class="ltx_ref ltx_href" href="https://github.com/zeromicro/go-zero" title="">zeromicro/go-zero</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.2">960</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.27.3">117.6k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.27.4">15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.27.5">205.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.6">52.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.7">4.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.27.8">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.9">1318.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.10">0.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.27.11">43.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.28" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.28.1"><span class="ltx_text" id="S3.T1.9.1.28.1.1" style="background-color:#E6E6E6;">Rust</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.29">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.29.1"><a class="ltx_ref ltx_href" href="https://github.com/BurntSushi/ripgrep" title="">BurntSushi/ripgrep</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.2">98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.29.3">45.4k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.29.4">14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.29.5">553.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.6">1604.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.7">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.29.8">7.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.9">233.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.10">1.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.29.11">8.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.30">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.30.1"><a class="ltx_ref ltx_href" href="https://github.com/clap-rs/clap" title="">clap-rs/clap</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.2">321</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.30.3">70.4k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.30.4">132</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.30.5">987.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.6">147.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.7">15.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.30.8">4.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.9">489.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.10">3.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.30.11">378.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.31">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.31.1"><a class="ltx_ref ltx_href" href="https://github.com/nushell/nushell" title="">nushell/nushell</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.2">1479</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.31.3">264.2k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.31.4">14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.31.5">795.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.6">155.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.7">10.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.31.8">4.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.9">798.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.10">2.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.31.11">336.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.32">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.32.1"><a class="ltx_ref ltx_href" href="https://github.com/rayon-rs/rayon" title="">rayon-rs/rayon</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.2">191</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.32.3">36.9k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.32.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.32.5">153.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.6">637.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.7">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.32.8">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.9">113.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.10">0.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.32.11">171.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.33">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.33.1"><a class="ltx_ref ltx_href" href="https://github.com/serde-rs/serde" title="">serde-rs/serde</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.2">188</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.33.3">36.5k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.33.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.33.5">171.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.6">72.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.7">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.33.8">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.9">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.10">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.33.11">294.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.34">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.34.1"><a class="ltx_ref ltx_href" href="https://github.com/sharkdp/bat" title="">sharkdp/bat</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.2">83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.34.3">22.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.34.4">10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.34.5">638.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.6">239.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.7">14.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.34.8">5.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.9">152.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.10">1.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.34.11">33.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.35">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.35.1"><a class="ltx_ref ltx_href" href="https://github.com/sharkdp/fd" title="">sharkdp/fd</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.2">24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.35.3">6.7k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.35.4">14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.35.5">167.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.6">55.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.7">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.35.8">4.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.9">186.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.10">1.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.35.11">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.36">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.36.1"><a class="ltx_ref ltx_href" href="https://github.com/tokio-rs/bytes" title="">tokio-rs/bytes</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.2">33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.36.3">11.9k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.36.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.36.5">188.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.6">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.7">5.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.36.8">1.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.9">23.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.10">0.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.36.11">91.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.37">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.37.1"><a class="ltx_ref ltx_href" href="https://github.com/tokio-rs/tokio" title="">tokio-rs/tokio</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.2">727</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.37.3">141.5k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.37.4">25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.37.5">590.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.6">139.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.7">10.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.37.8">3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.9">26.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.10">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.37.11">287.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.38">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.38.1"><a class="ltx_ref ltx_href" href="https://github.com/tokio-rs/tracing" title="">tokio-rs/tracing</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.2">241</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.38.3">60.9k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.38.4">21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.38.5">472.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.6">597.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.7">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.38.8">7.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.9">30.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.10">0.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.38.11">182.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.39" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.39.1"><span class="ltx_text" id="S3.T1.9.1.39.1.1" style="background-color:#E6E6E6;">C</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.40">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.40.1"><a class="ltx_ref ltx_href" href="https://github.com/facebook/zstd" title="">facebook/zstd</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.2">276</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.40.3">119.8k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.40.4">29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.40.5">496.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.6">67.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.7">10.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.40.8">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.9">0.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.10">0.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.40.11">5.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.41">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.41.1"><a class="ltx_ref ltx_href" href="https://github.com/jqlang/jq" title="">jqlang/jq</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.2">80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.41.3">43.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.41.4">17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.41.5">429.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.6">26.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.7">2.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.41.8">1.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.9">27.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.10">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.41.11">0.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.42">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.42.1"><a class="ltx_ref ltx_href" href="https://github.com/ponylang/ponyc" title="">ponylang/ponyc</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.2">285</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.42.3">80.2k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.42.4">82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.42.5">480.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.6">205.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.7">15.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.42.8">5.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.9">997.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.10">1.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.42.11">388.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.43" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T1.9.1.43.1"><span class="ltx_text" id="S3.T1.9.1.43.1.1" style="background-color:#E6E6E6;">C++</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.44">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.44.1"><a class="ltx_ref ltx_href" href="https://github.com/catchorg/Catch2" title="">catchorg/Catch2</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.2">399</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.44.3">58.0k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.44.4">12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.44.5">357.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.6">469.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.7">15.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.44.8">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.9">19.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.10">0.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.44.11">17.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.45">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.45.1"><a class="ltx_ref ltx_href" href="https://github.com/fmtlib/fmt" title="">fmtlib/fmt</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.2">25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.45.3">36.4k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.45.4">41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.45.5">397.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.6">36.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.7">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.45.8">1.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.9">9.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.10">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.45.11">9.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.46">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.46.1"><a class="ltx_ref ltx_href" href="https://github.com/nlohmann/json" title="">nlohmann/json</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.2">477</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.46.3">124.7k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.46.4">55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.46.5">905.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.6">405.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.7">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.46.8">6.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.9">26.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.10">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.46.11">42.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.47">
<td class="ltx_td ltx_align_left" id="S3.T1.9.1.47.1"><a class="ltx_ref ltx_href" href="https://github.com/simdjson/simdjson" title="">simdjson/simdjson</a></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.2">455</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.47.3">229.7k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.47.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.47.5">320.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.6">768.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.7">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.1.47.8">11.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.9">18.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.10">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.1.47.11">41.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.1.48">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.9.1.48.1"><a class="ltx_ref ltx_href" href="https://github.com/yhirose/cpp-httplib" title="">yhirose/cpp-httplib</a></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.2">33</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.1.48.3">50.9k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.1.48.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.1.48.5">240.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.6">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.7">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.1.48.8">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.9">272.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.10">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.1.48.11">0.0</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive statistical overview of the Multi-SWE-bench dataset.  It details the number of instances, issue descriptions, fix patches, and unit tests for each repository across seven programming languages (Java, TypeScript, JavaScript, Go, Rust, C, and C++).  The table also provides average metrics such as the number of tokens in issue descriptions, lines of code modified in fix patches, number of hunks (changesets), and number of files involved.  Key metrics focusing on test result transitions are included, showing the average counts of 'Any→PASSED→FAILED→PASSED' unit tests, providing insights into the robustness and reliability of the dataset's annotations. This detailed breakdown allows for a thorough understanding of the characteristics and complexity of the Multi-SWE-bench dataset, facilitating a more robust analysis of the results obtained from the LLM evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the Multi-SWE-bench. #A2P2P, #A2F2P, and #A2N2P represent the average counts of Any→PASSED&FAILED&NONE→PASSED unit tests.
> </details>





### In-depth insights


#### Beyond Python
The limitation of existing benchmarks, such as SWE-bench, which focuses almost exclusively on Python, highlights a crucial need to evaluate LLMs across diverse software ecosystems. This is important since different programming languages follow distinct paradigms and idiomatic patterns, impacting the effectiveness of LLMs. **Multi-SWE-bench addresses this gap by including Java, TypeScript, JavaScript, Go, Rust, C, and C++, offering a more comprehensive evaluation platform**. This expansion acknowledges that real-world software development involves a multitude of languages, each with its own complexities and challenges. **By evaluating LLMs on a broader range of languages, Multi-SWE-bench provides insights into their cross-language capabilities and generalizability**, pushing the boundaries of LLM-based software agents towards more realistic and versatile applications.

#### Multi-lingual RL
While the paper doesn't have a section explicitly titled "Multi-lingual RL," the concept is central to its core contribution through the Multi-SWE-RL. **The paper emphasizes the need to extend RL beyond Python-centric environments, advocating for the creation of multi-lingual datasets and benchmarks.** This acknowledges the limitations of existing models in generalizing across diverse programming paradigms and runtime behaviors. By releasing a dataset of containerized issue-resolving instances spanning seven languages, the authors aim to spark community collaboration and accelerate the development of RL agents capable of handling the nuances of different programming ecosystems.  **The community-driven approach is key to scale data creation and bridge the gap in high-quality RL environments. This initiative helps foster further progress in multilingual software agent development.**

#### Patch Granularity
**Patch granularity** significantly influences the effectiveness of issue resolving. **Finer-grained patches**, making small, precise changes, are generally easier for LLMs to handle due to their limited context window and reasoning capabilities. These patches require less understanding of the overall codebase and fewer dependencies between files. Conversely, **coarser-grained patches**, involving larger code blocks and multiple files, demand a more comprehensive understanding of the system, complex dependency analysis, and accurate cross-file reasoning, exceeding the capabilities of many current LLMs. Identifying the optimal granularity is crucial; too fine-grained, and the LLM might miss crucial dependencies, too coarse, and it struggles with complexity. **The ideal patch should be modular**, addressing a specific issue with minimal side effects and within a manageable scope for the LLM's reasoning abilities.

#### Locate or Edit?
The act of pinpointing the exact location of an issue within a codebase and then manipulating the code to achieve the desired resolution is crucial. **Accurate localization dramatically reduces the scope of necessary edits, leading to simpler and more reliable code changes**. If the fault localization struggles, even the most ingenious editing techniques are unlikely to succeed. While some AI agents may excel at pinpointing bugs. This underscores the importance of finding a balanced approach. It's essential to recognize that **accurate localization reduces the scope of necessary edits** and the complexity involved in resolving an issue. Techniques that blend high-precision localization with intelligent editing capabilities are essential for achieving robust and effective software repair, underscoring that a solution must be both *precise and intelligent*. It also makes the editing process simpler.

#### Data-Centric AGI
The concept of "Data-Centric AGI" emphasizes the **crucial role of data** in achieving Artificial General Intelligence. Instead of solely focusing on model architectures or algorithms, it prioritizes the **quality, quantity, and diversity of data** used to train AGI systems. This approach recognizes that even the most advanced models are limited by the data they learn from. Key aspects include **curating large, high-quality datasets** representing a wide range of real-world scenarios, ensuring data **diversity** to avoid biases and promote generalization, and developing **methods for efficient data utilization** such as active learning or data augmentation. A data-centric perspective also highlights the importance of **data governance, privacy, and security** in the development of AGI systems. By focusing on data, researchers can unlock new capabilities and address existing limitations in AGI, paving the way for systems that are more robust, reliable, and aligned with human values. Emphasizing data quality and representativeness can enhance AGI's adaptability and problem-solving across various domains, ultimately fostering more **human-like intelligence**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02605/x2.png)

> 🔼 This figure details the five phases involved in constructing the Multi-SWE-bench dataset. Phase 1 focuses on selecting high-quality, well-maintained GitHub repositories across multiple programming languages.  Phase 2 crawls and filters pull requests (PRs) related to issues, ensuring they have proper tests and are merged. Phase 3 builds Dockerized development environments for each PR, accounting for its dependencies.  Phase 4 filters PRs based on test results, focusing on those clearly fixing bugs. Finally, Phase 5 involves manual verification of the remaining PRs by expert annotators, ensuring high-quality data for the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Construction of Multi-SWE-bench.
> </details>



![](https://arxiv.org/html/2504.02605/x3.png)

> 🔼 This bar chart visualizes the distribution of estimated time needed to resolve issues within the Multi-SWE-bench dataset.  The x-axis categorizes issues by programming language (Java, TypeScript, JavaScript, Go, Rust, C, C++), while the y-axis represents the number of issues. Each language is further broken down into four time categories, representing the estimated time an expert would need to resolve each issue: ≤15 minutes, 15 minutes - 1 hour, 1 hour - 4 hours, and ≥4 hours. This allows for a comparison of issue resolution time across different programming languages within the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of estimated time consumption of issues in Multi-SWE-bench.
> </details>



![](https://arxiv.org/html/2504.02605/x4.png)

> 🔼 This figure visualizes the process of resolving software issues using various LLMs and methods. It breaks down the issue resolution process into three stages: issue location, successful resolution, and unsuccessful attempts. For each method (MagentLess, MSWE-agent, and MopenHands) and each LLM, the figure shows the proportion of issues that were successfully located, successfully resolved, unresolved, or not even located in several programming languages such as Python, Java, TypeScript, JavaScript, Go, Rust, C, and C++. This provides a visual representation of the performance of different LLMs and methods on various programming languages.
> <details>
> <summary>read the caption</summary>
> Figure 4: Issue flow from locating to resolving.
> </details>



![](https://arxiv.org/html/2504.02605/x5.png)

> 🔼 This figure presents box plots illustrating the number of turns required by two different agent-based methods (MSWE-agent and MopenHands) to successfully resolve issues across various programming languages.  Each box plot represents a programming language, and the distribution of turns is shown for each method across different LLMs.  The plots allow for a visual comparison of the efficiency and consistency of the two methods across different languages and LLMs.  Outliers are also shown to highlight cases where the number of turns deviated significantly from the median.
> <details>
> <summary>read the caption</summary>
> Figure 5: Number of turns required across different programming languages.
> </details>



![](https://arxiv.org/html/2504.02605/x6.png)

> 🔼 This figure displays the correlation between the success rate of resolving issues in a code repository and the repository's popularity metrics (number of stars and forks).  Each point represents a repository, with its x-coordinate indicating the number of stars and its y-coordinate showing the number of forks. The color intensity of each point represents the average resolution rate achieved for issues within that repository across various large language models and resolving methods. This visualization helps in understanding how repository popularity may influence the effectiveness of large language models in resolving issues.
> <details>
> <summary>read the caption</summary>
> Figure 6: Relationship between resolved rate and the number of stars and forks of a repository.
> </details>



![](https://arxiv.org/html/2504.02605/x7.png)

> 🔼 This figure examines the correlation between the success rate of resolving issues in software repositories and the number of issues and pull requests (PRs) within those repositories.  It visualizes how the activity and community engagement, represented by the count of issues and PRs, potentially influences the effectiveness of Large Language Models (LLMs) in resolving issues. Higher numbers of issues and PRs might indicate greater community involvement and potentially more mature codebases, leading to higher success rates.
> <details>
> <summary>read the caption</summary>
> Figure 7: Relationship between resolved rate and the number of issues and PRs of a repository.
> </details>



![](https://arxiv.org/html/2504.02605/x8.png)

> 🔼 This figure visualizes the correlation between the success rate of resolving issues and the complexity of the software repositories in the Multi-SWE-bench.  It shows how different aspects of repository complexity, such as the number of lines of code, the number of files, and language entropy, impact the ability of large language models (LLMs) to effectively resolve issues.  The charts illustrate the performance across different programming languages, highlighting the varying degrees of complexity and the corresponding impact on issue resolution.
> <details>
> <summary>read the caption</summary>
> Figure 8: Relation between resolved rate and the repository complexity on Multi-SWE-bench.
> </details>



![](https://arxiv.org/html/2504.02605/x9.png)

> 🔼 This histogram shows the distribution of issue description lengths (measured in the number of tokens) within the Multi-SWE-bench dataset.  The x-axis represents the number of tokens, and the y-axis represents the frequency of issues with that token length. The distribution generally follows a power law, meaning that most issue descriptions have a relatively small number of tokens while fewer descriptions have a much larger number of tokens. This visualization helps understand the variability in issue description length and its potential impact on the effectiveness of large language models in resolving those issues.
> <details>
> <summary>read the caption</summary>
> Figure 9: Histogram of issue description length (#tokens).
> </details>



![](https://arxiv.org/html/2504.02605/x10.png)

> 🔼 This figure (Figure 10) shows the effect of issue description length on the success rate of resolving issues using three different methods: MagentLess, MSWE-agent, and MopenHands across various programming languages.  Each bar represents a language, with different colors representing the methods. The x-axis shows different ranges of issue description lengths (in tokens), and the y-axis shows the resolved rate (%).  It illustrates how the resolution success changes depending on the length of issue descriptions and highlights the differences between the three methods.
> <details>
> <summary>read the caption</summary>
> Figure 10: Influence of issue description length on resolved rate.
> </details>



![](https://arxiv.org/html/2504.02605/x11.png)

> 🔼 This histogram visualizes the distribution of the lengths of fix patches (measured in the number of tokens) in the Multi-SWE-bench dataset.  The x-axis represents the length of fix patches, and the y-axis indicates the frequency or count of patches with that specific length. The distribution helps to understand the characteristics of fix patches and how their length might influence the difficulty of issue resolution tasks.
> <details>
> <summary>read the caption</summary>
> Figure 11: Histogram of fix patches length (#tokens).
> </details>



![](https://arxiv.org/html/2504.02605/x12.png)

> 🔼 This histogram illustrates the distribution of the number of files altered within the fix patches across the Multi-SWE-bench dataset.  It provides a visual representation of how often a code fix involves modifying a single file, multiple files, or a large number of files. This is relevant to understanding the complexity of the code changes and the challenges posed to large language models (LLMs) in correctly implementing such changes.
> <details>
> <summary>read the caption</summary>
> Figure 12: Histogram of the number of files modified by fix patches.
> </details>



![](https://arxiv.org/html/2504.02605/x13.png)

> 🔼 This figure displays the effect of the length of fix patches on the success rate of resolving issues, categorized into several length ranges.  It shows that shorter fix patches generally lead to higher success rates for various programming languages and methods used.  The success rate often significantly decreases as the fix patch length increases, indicating that longer, more complex patches are more challenging for the models to resolve effectively.  This suggests that the complexity of code changes required to resolve issues is an important factor influencing the effectiveness of AI models for software development tasks.
> <details>
> <summary>read the caption</summary>
> Figure 13: Influence of fix patch length on resolved rate.
> </details>



![](https://arxiv.org/html/2504.02605/x14.png)

> 🔼 This figure displays the relationship between the number of files modified in a fix patch and the success rate of resolving issues.  Separate bar charts are shown for each programming language (Python, Java, TypeScript, JavaScript, Go, Rust, C, and C++) for three different methods: MagentLess, MSWE-agent, and MopenHands.  The x-axis represents the number of files modified (categorized into 1, 1-5, 5-10, and >10), and the y-axis shows the resolved rate (%). The chart visualizes how the complexity of the patch (number of files changed) affects the likelihood of a successful resolution using different LLMs and methods.
> <details>
> <summary>read the caption</summary>
> Figure 14: Influence of the number of files modified by fix patches on resolved rate.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.4.1">
<tr class="ltx_tr" id="S3.T2.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.2.1">Instance</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.3.1">Issue description</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T2.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.4.1">Fix patches</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.5.1">Unit tests</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.1">#Num</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2">Avg. #Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.3">Avg. #Lines</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.4">Avg. #Hunks</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.5">Avg. #Files</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.6">#A2P2P</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.7">#A2F2P</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.8">#A2N2P</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.3.1"><span class="ltx_text" id="S3.T2.4.1.3.1.1" style="background-color:#E6E6E6;">Python</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.4.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.4.2">194</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.4.3">417.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.4">5.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.5">1.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.4.6">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.7">116.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.8">3.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.9">0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.5.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.2">261</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.3">555.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.4">14.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.5">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.6">1.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.7">115.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.8">2.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.9">0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.6.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.2">45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.3">589.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.4">55.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.5">6.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.7">166.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.8">2.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.9">0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.7.1"><span class="ltx_text" id="S3.T2.4.1.7.1.1" style="background-color:#E6E6E6;">Java</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.8.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.2">27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.3">733.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.4">12.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.5">2.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.6">1.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.7">126.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.8">58.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.9">76.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.9.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.9.2">65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.9.3">843.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.4">36.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.5">4.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.9.6">2.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.7">182.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.8">58.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.9">136.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.10.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.10.2">36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.10.3">1039.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.4">246.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.5">11.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.10.6">5.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.7">389.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.8">21.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.9">136.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.11" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.11.1"><span class="ltx_text" id="S3.T2.4.1.11.1.1" style="background-color:#E6E6E6;">TypeScript</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.12.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.12.2">72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.12.3">600.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.12.4">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.12.5">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.12.6">1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.12.7">4806.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.12.8">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.12.9">0.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.13.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.13.2">88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.13.3">566.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.13.4">74.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.13.5">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.13.6">4.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.13.7">4854.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.13.8">2.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.13.9">214.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.14.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.14.2">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.14.3">472.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.14.4">806.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.14.5">43.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.14.6">26.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.14.7">3706.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.14.8">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.14.9">1980.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.15" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.15.1"><span class="ltx_text" id="S3.T2.4.1.15.1.1" style="background-color:#E6E6E6;">JavaScript</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.16.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.16.2">10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.16.3">282.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.16.4">4.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.16.5">1.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.16.6">1.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.16.7">616.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.16.8">1.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.16.9">35.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.17.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.17.2">105</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.17.3">505.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.17.4">15.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.17.5">2.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.17.6">2.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.17.7">3161.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.17.8">3.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.17.9">0.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.18.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.18.2">241</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.18.3">578.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.18.4">92.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.18.5">10.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.18.6">4.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.18.7">4169.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.18.8">5.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.18.9">0.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.19" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.19.1"><span class="ltx_text" id="S3.T2.4.1.19.1.1" style="background-color:#E6E6E6;">Go</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.20.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.20.2">141</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.20.3">411.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.20.4">26.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.20.5">4.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.20.6">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.20.7">2181.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.20.8">2.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.20.9">20.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.21.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.21.2">153</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.21.3">331.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.21.4">49.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.21.5">6.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.21.6">2.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.21.7">1832.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.21.8">2.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.21.9">25.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.22.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.22.2">134</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.22.3">274.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.22.4">238.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.22.5">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.22.6">6.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.22.7">1704.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.22.8">3.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.22.9">46.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.23" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.23.1"><span class="ltx_text" id="S3.T2.4.1.23.1.1" style="background-color:#E6E6E6;">Rust</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.24.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.24.2">66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.24.3">808.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.24.4">318.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.24.5">7.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.24.6">3.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.24.7">465.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.24.8">3.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.24.9">212.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.25.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.25.2">126</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.25.3">814.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.25.4">113.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.25.5">10.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.25.6">3.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.25.7">343.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.25.8">1.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.25.9">300.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.26.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.26.2">47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.26.3">599.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.26.4">629.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.26.5">45.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.26.6">10.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.26.7">232.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.26.8">1.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.26.9">334.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.27" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.27.1"><span class="ltx_text" id="S3.T2.4.1.27.1.1" style="background-color:#E6E6E6;">C</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.28.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.28.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.28.3">551.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.28.4">16.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.28.5">3.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.28.6">2.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.28.7">424.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.28.8">0.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.28.9">208.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.29.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.29.2">54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.29.3">449.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.29.4">36.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.29.5">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.29.6">2.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.29.7">715.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.29.8">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.29.9">228.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.30.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.30.2">44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.30.3">460.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.30.4">381.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.30.5">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.30.6">8.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.30.7">702.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.30.8">2.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.30.9">306.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.31" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.4.1.31.1"><span class="ltx_text" id="S3.T2.4.1.31.1.1" style="background-color:#E6E6E6;">C++</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.32.1">Easy</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.32.2">28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.32.3">494.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.32.4">25.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.32.5">4.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.32.6">2.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.32.7">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.32.8">0.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.32.9">15.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.1.33.1">Medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.33.2">59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.33.3">427.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.33.4">204.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.33.5">7.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.33.6">3.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.33.7">18.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.33.8">0.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.33.9">23.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.34">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.4.1.34.1">Hard</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.4.1.34.2">42</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.4.1.34.3">904.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.34.4">763.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.34.5">47.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.4.1.34.6">11.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.34.7">9.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.34.8">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.34.9">47.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the Multi-SWE-bench dataset, categorized by difficulty level (easy, medium, hard) and programming language. For each category, it shows the average number of tokens in issue descriptions, the average number of lines, hunks, and files in fix patches, and the average number of A2P2P, A2F2P, and A2N2P unit tests.  This allows for a comprehensive understanding of the dataset's characteristics across different programming languages and difficulty levels.
> <details>
> <summary>read the caption</summary>
> Table 2: Feature distribution of Multi-SWE-bench instances by difficulty and language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.4.1">
<tr class="ltx_tr" id="S3.T3.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.1">Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.2.1">Q2.1 Serious Issue Flag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S3.T3.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.3.1">Q3.1 Clarity of Issue Description</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T3.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.4.1">Q4.1 Coverage of Unit Tests</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.1">#Score 0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.2.2">#Score 1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.3">#Score 0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.4">#Score 1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.5">#Score 2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.2.6">#Score 3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.7">#Score 0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.8">#Score 1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.9">#Score 2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.10">#Score 3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.4.1.3.1">Java</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.2">146</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.3.3">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.5">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.6">44</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.3.7">98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.8">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.9">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.10">17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.3.11">114</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.4.1">TypeScript</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.2">382</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.4.3">8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.4">5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.5">56</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.6">121</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.4.7">200</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.8">31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.9">76</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.10">133</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.11">142</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.5.1">JavaScript</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.2">586</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.5.3">4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.4">0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.5">6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.6">13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.5.7">567</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.8">55</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.9">172</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.10">305</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.11">54</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.6.1">Go</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.2">579</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.6.3">26</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.4">5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.5">10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.6">276</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.6.7">288</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.8">44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.9">100</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.10">151</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.11">284</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.7.1">Rust</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.2">328</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.7.3">11</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.4">4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.5">20</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.6">165</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.7.7">139</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.8">23</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.9">50</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.10">74</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.7.11">181</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.8.1">C</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.2">200</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.8.3">6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.4">2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.5">4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.6">115</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.8.7">79</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.8">13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.9">55</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.10">83</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.8.11">49</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.4.1.9.1">C++</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.2">162</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.4.1.9.3">7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.5">6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.6">96</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.4.1.9.7">60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.8">7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.9">21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.10">45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.9.11">89</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the quality assessment scores obtained from the manual verification of the Multi-SWE-bench dataset.  It shows the distribution of scores across various quality metrics (Serious Issue, Clarity of Issue Description, and Coverage of Unit Tests) for each of the seven programming languages included in the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 3: Scoring statistics for Multi-SWE-bench from the verification questionnaire.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T4.4.1">
<tr class="ltx_tr" id="S6.T4.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.4.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.2.1">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.3.1">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.4.1">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.5.1">JS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.6.1">Go</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.7.1">Rust</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.8.1">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.4.1.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.1.9.1">C++</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T4.4.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.2.1.1" style="background-color:#E6E6E6;">MagentLess</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.3">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">36.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.72</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.23</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.86</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.98</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.4">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">48.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.09</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.06</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.44</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.11</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.43</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.5">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">46.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.47</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.81</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.95</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.55</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.6">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">42.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.14</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.02</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.88</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.7">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.06</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.57</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.44</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.10</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.8">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">41.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.03</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.70</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.02</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.55</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.9">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">42.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">22.66</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.25</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.49</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.74</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.69</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.10</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.10">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">10.94</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.46</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.51</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.11">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.47</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.23</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.12</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.10</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.18</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T4.4.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.12.1.1" style="background-color:#E6E6E6;">MSWE-agent</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.13">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">18.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.50</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.09</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.33</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.14">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">28.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.88</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.02</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.21</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.67</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.18</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.88</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.15">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">28.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">16.41</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.21</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.02</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.43</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.16">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">24.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">20.31</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.04</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.21</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.69</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.69</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.98</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.17">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">45.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">23.44</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.16</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.69</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.59</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.63</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.18">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.72</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.68</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.53</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.44</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.86</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.75</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.19">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.38</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.10</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.09</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.20</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.20">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.42</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.21">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.03</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.79</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.10</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.67</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.20</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.22" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T4.4.1.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.4.1.22.1.1" style="background-color:#E6E6E6;">MopenHands</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.23">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.38</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.50</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.35</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.23.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.88</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.24">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">16.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.65</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.74</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.51</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.24.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.88</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.25">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">20.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">10.16</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.02</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.25.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.98</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.26">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.26.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.61</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.26.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.40</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.27">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.27.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.88</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.23</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.06</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.48</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.90</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.59</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.27.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.73</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.28">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.28.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.38</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.12</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.28.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.75</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.29">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.29.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.59</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.53</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.29.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.65</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.30">
<td class="ltx_td ltx_align_left" id="S6.T4.4.1.30.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.67</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S6.T4.4.1.30.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.33</td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.1.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.4.1.31.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.4.1.31.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.10</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the overall success rate of various large language models (LLMs) in resolving software issues across different programming languages.  It compares the performance of different LLMs using three different methods (MagentLess, MSWE-agent, and MopenHands) on a benchmark dataset called Multi-SWE-bench. The languages include Python, Java, TypeScript, JavaScript, Go, Rust, C, and C++.  The resolved rate is expressed as a percentage for each LLM and method combination within each language, allowing for a detailed comparison of their effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 4: Resolved rate (%) of different models on Multi-SWE-bench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.4.1">
<tr class="ltx_tr" id="S6.T6.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S6.T6.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.1.1.1.1">Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S6.T6.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.1.1.2.1">MagentLess</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S6.T6.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T6.4.1.1.3.1">MSWE-agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S6.T6.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T6.4.1.1.4.1">MopenHands</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.1">Bug Fix</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.2">New Feat.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.1.2.3">Feat. Opt.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.4">Bug Fix</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.5">New Feat.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.1.2.6">Feat. Opt.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.7">Bug Fix</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.8">New Feat.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.2.9">Feat. Opt.</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T6.4.1.3.1">Java</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.2">10.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.3">2.34</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.1.3.4">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.5">17.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.6">3.91</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.1.3.7">1.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.8">17.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.9">3.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.1.3.10">0.78</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.4.1.4.1">TypeScript</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.2">2.68</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.3">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.4.4">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.5">9.38</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.6">1.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.4.7">0.45</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.8">1.79</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.9">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.4.10">0.45</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.4.1.5.1">JavaScript</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.2">1.97</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.5.4">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.5">4.21</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.6">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.5.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.8">3.65</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.9">1.12</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.5.10">0.28</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.4.1.6.1">Go</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.2">3.74</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.3">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.6.4">1.17</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.5">3.27</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.6">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.6.7">1.40</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.8">4.44</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.9">2.10</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.6.10">0.93</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.4.1.7.1">Rust</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.2">4.60</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.3">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.7.4">0.42</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.5">5.44</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.6">1.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.7.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.8">12.97</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.9">2.93</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.7.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T6.4.1.8.1">C</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.2">6.25</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.8.4">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.5">7.81</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.6">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.1.8.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.8">7.81</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.9">0.78</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.1.8.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T6.4.1.9.1">C++</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.2">2.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.3">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.1.9.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.5">7.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.6">3.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.1.9.7">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.8">10.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.9">3.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.1.9.10">0.78</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Claude-3.7-Sonnet model on Multi-SWE-bench, broken down by issue type and programming language.  The three issue types are: bug fix, new feature, and feature optimization. For each issue type and language, the table shows the success rate (percentage of successfully resolved issues). This allows for a comparison of model performance across different types of issues and programming languages, providing insights into the model's strengths and weaknesses in various software engineering tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Resolved rate(%) on Multi-SWE-bench across different issue types (Claude-3.7-Sonnet).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T7.4.1">
<tr class="ltx_tr" id="S6.T7.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S6.T7.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.2.1">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.3.1">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.4.1">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.5.1">JS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.6.1">Go</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.7.1">Rust</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T7.4.1.1.8"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.8.1">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T7.4.1.1.9"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.1.9.1">C++</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.1">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.2">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.3">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.4">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.5">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.6">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.7">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.8">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.9">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.10">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.11">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.12">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.13">In.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.4.1.2.14">Out.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.15">In.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.4.1.2.16">Out.</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S6.T7.4.1.3.1"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.3.1.1" style="background-color:#E6E6E6;">MagentLess</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.4.1">GPT<span class="ltx_text" id="S6.T7.4.1.4.1.1">-</span>4o</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.2">36.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.3">4.20</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.4">52.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.5">2.74</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.6">241.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.7">2.01</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.8">29.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.9">2.53</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.10">25.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.11">2.72</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.12">48.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.13">2.71</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.14">50.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.4.15">2.64</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.16">76.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.4.17">2.44</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.5.1">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.2">34.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.3">3.76</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.4">50.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.5">1.92</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.6">240.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.7">1.21</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.8">36.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.9">1.26</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.10">24.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.11">1.70</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.12">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.13">1.49</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.14">48.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.5.15">1.57</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.16">119.64</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.5.17">1.31</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.6.1">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.2">31.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.3">4.50</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.4">79.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.5">2.36</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.6">245.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.7">1.54</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.8">38.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.9">1.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.10">31.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.11">1.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.12">68.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.13">2.05</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.14">73.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.6.15">1.99</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.16">200.29</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.6.17">1.91</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.7.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.2">39.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.3">5.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.4">48.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.5">2.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.6">239.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.7">1.86</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.8">28.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.9">2.39</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.10">22.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.11">2.79</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.12">51.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.13">2.66</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.14">49.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.7.15">2.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.16">96.85</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.7.17">2.49</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.8.1">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.2">27.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.3">6.54</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.4">63.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.5">3.16</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.6">248.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.7">2.08</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.8">26.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.9">3.17</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.10">22.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.11">3.63</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.12">81.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.13">3.33</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.14">50.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.8.15">3.19</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.16">129.34</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.8.17">2.91</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.9.1">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.2">39.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.3">4.26</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.4">42.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.5">2.70</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.6">244.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.7">1.92</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.8">26.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.9">2.51</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.10">22.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.11">2.65</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.12">83.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.13">2.47</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.14">92.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.9.15">2.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.16">189.08</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.9.17">2.11</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.10.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.2">31.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.3">2.80</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.4">70.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.5">1.76</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.6">249.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.7">1.10</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.8">28.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.9">1.30</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.10">21.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.11">1.79</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.12">88.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.13">1.52</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.14">100.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.10.15">1.39</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.16">177.66</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.10.17">1.41</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.11.1">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.2">28.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.3">3.46</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.4">62.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.5">2.52</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.6">243.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.7">1.65</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.8">26.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.9">2.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.10">24.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.11">3.36</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.12">50.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.13">2.89</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.14">55.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.11.15">2.78</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.16">150.44</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.11.17">2.19</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.12.1">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.2">42.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.3">2.91</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.4">116.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.5">1.36</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.6">249.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.7">1.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.8">36.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.9">2.07</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.10">29.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.11">3.15</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.12">124.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.13">1.62</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.14">121.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.12.15">1.52</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.16">216.21</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.12.17">0.76</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S6.T7.4.1.13.1"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.13.1.1" style="background-color:#E6E6E6;">MSWE-agent</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.14.1">GPT<span class="ltx_text" id="S6.T7.4.1.14.1.1">-</span>4o</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.2">166.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.3">3.08</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.4">51.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.5">4.54</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.6">46.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.7">4.63</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.8">32.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.9">4.36</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.10">36.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.11">4.71</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.12">43.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.13">4.71</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.14">39.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.14.15">4.57</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.16">55.49</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.14.17">4.96</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.15.1">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.2">243.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.3">1.64</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.4">33.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.5">2.99</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.6">30.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.7">3.56</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.8">25.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.9">3.19</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.10">37.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.11">3.49</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.12">39.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.13">3.71</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.14">34.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.15.15">3.17</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.16">29.24</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.15.17">3.28</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.16.1">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.2">240.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.3">1.82</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.4">26.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.5">3.64</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.6">18.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.7">3.39</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.8">21.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.9">3.99</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.10">26.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.11">3.41</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.12">32.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.13">4.03</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.14">23.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.16.15">3.78</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.16">32.39</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.16.17">4.90</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.17.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.2">33.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.3">5.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.4">32.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.5">3.89</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.6">21.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.7">3.10</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.8">23.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.9">3.66</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.10">21.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.11">3.06</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.12">35.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.13">4.03</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.14">31.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.17.15">3.44</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.16">38.22</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.17.17">4.32</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.18.1">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.2">31.86</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.3">4.46</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.4">38.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.5">4.79</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.6">32.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.7">4.92</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.8">32.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.9">4.60</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.10">33.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.11">4.56</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.12">40.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.13">4.56</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.14">38.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.18.15">4.34</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.16">36.96</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.18.17">4.67</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.19.1">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.2">12.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.3">22.83</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.4">35.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.5">4.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.6">15.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.7">2.15</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.8">19.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.9">3.23</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.10">15.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.11">2.43</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.12">33.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.13">5.47</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.14">16.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.19.15">2.07</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.16">31.28</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.19.17">4.18</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.20.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.2">11.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.3">2.65</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.4">17.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.5">2.69</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.6">9.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.7">1.66</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.8">9.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.9">2.43</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.10">10.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.11">1.85</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.12">13.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.13">2.86</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.14">11.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.20.15">2.44</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.16">14.64</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.20.17">3.06</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.21.1">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.2">164.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.3">6.69</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.4">53.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.5">9.26</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.6">39.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.7">7.82</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.8">35.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.9">6.45</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.10">22.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.11">8.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.12">36.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.13">7.93</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.14">28.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.21.15">5.76</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.16">67.29</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.21.17">11.69</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.22.1">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.2">72.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.3">1.30</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.4">37.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.5">3.73</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.6">19.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.7">2.46</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.8">32.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.9">3.68</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.10">25.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.11">3.91</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.12">38.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.13">4.04</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.14">29.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.22.15">3.65</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.16">32.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.22.17">3.59</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.23" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S6.T7.4.1.23.1"><span class="ltx_text ltx_font_bold" id="S6.T7.4.1.23.1.1" style="background-color:#E6E6E6;">MopenHands</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.24.1">GPT<span class="ltx_text" id="S6.T7.4.1.24.1.1">-</span>4o</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.2">25.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.3">1.24</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.4">22.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.5">1.32</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.6">35.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.7">1.60</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.8">35.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.9">1.50</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.10">23.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.11">1.52</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.12">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.13">1.45</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.14">34.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.24.15">2.08</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.16">34.61</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.24.17">1.66</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.25.1">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.2">19.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.3">1.20</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.4">18.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.5">1.27</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.6">27.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.7">2.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.8">30.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.9">2.07</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.10">21.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.11">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.12">28.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.13">1.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.14">27.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.25.15">1.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.16">21.55</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.25.17">1.57</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.26.1">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.2">21.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.3">5.18</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.4">22.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.5">3.88</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.6">30.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.7">4.32</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.8">36.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.9">4.06</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.10">25.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.11">4.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.12">30.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.13">3.15</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.14">23.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.26.15">3.26</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.16">23.76</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.26.17">4.26</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.27.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.2">32.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.3">7.69</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.4">31.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.5">5.35</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.6">35.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.7">6.43</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.8">38.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.9">6.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.10">27.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.11">7.26</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.12">55.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.13">6.23</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.14">55.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.27.15">5.66</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.16">35.85</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.27.17">6.74</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.28.1">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.2">26.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.3">7.84</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.4">28.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.5">7.86</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.6">31.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.7">7.31</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.8">38.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.9">7.46</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.10">30.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.11">7.86</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.12">48.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.13">7.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.14">35.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.28.15">6.30</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.16">33.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.28.17">7.76</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.29.1">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.2">18.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.3">5.16</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.4">26.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.5">3.65</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.6">26.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.7">3.69</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.8">29.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.9">4.43</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.10">15.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.11">3.31</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.12">32.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.13">5.05</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.14">21.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.29.15">3.53</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.16">30.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.29.17">5.36</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.30.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.2">11.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.3">5.13</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.4">17.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.5">5.04</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.6">12.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.7">4.33</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.8">17.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.9">5.29</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.10">12.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.11">5.14</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.12">17.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.13">6.95</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.14">24.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.30.15">6.11</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.16">17.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.30.17">7.62</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T7.4.1.31.1">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.2">27.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.3">10.38</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.4">33.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.5">11.80</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.6">36.86</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.7">9.12</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.8">28.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.9">9.07</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.10">21.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.11">11.35</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.12">37.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.13">10.99</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.14">35.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.4.1.31.15">9.69</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.16">35.34</td>
<td class="ltx_td ltx_align_center" id="S6.T7.4.1.31.17">10.88</td>
</tr>
<tr class="ltx_tr" id="S6.T7.4.1.32">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.1">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.2">23.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.3">3.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.4">24.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.5">3.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.6">18.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.7">1.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.8">23.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.9">2.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.10">18.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.11">3.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.12">27.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.13">2.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.14">26.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.4.1.32.15">2.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.16">26.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.4.1.32.17">3.44</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the average number of input and output tokens consumed by various large language models (LLMs) and methods across different programming languages within the Multi-SWE-bench benchmark.  'In' signifies the average number of input tokens (in thousands), and 'Out' represents the average number of output tokens (in thousands). It helps to understand the computational resource demands of different models on various programming languages in the Multi-SWE-bench dataset.
> <details>
> <summary>read the caption</summary>
> Table 7: Average token consumption on Multi-SWE-bench. In. represents the average number of input tokens (in thousands), and Out. is the average number of output tokens (in thousands).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T8.4.1">
<tr class="ltx_tr" id="S6.T8.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T8.4.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.2.1">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.3.1">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.4.1">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.5.1">JS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.6.1">Go</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.7.1">Rust</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.8.1">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T8.4.1.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.1.9.1">C++</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T8.4.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.2.1.1" style="background-color:#E6E6E6;">MagentLess</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.3">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1324</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1576</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6230</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0990</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0900</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1476</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1520</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2153</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.4">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7417</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.8680</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.6795</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6233</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4698</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9682</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.8153</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.8734</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.5">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0543</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0978</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2767</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0489</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0421</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0847</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0896</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2287</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.6">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1981</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1853</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7478</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1213</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1102</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1937</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1856</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3280</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.7">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1821</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2393</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7763</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1275</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1229</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2933</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1994</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4317</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.8">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0075</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0059</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0192</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0046</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0045</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0085</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0091</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0156</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.9">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0105</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0137</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0373</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0068</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0070</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0158</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0172</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0280</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.10">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0051</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0092</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0324</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0042</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0046</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0077</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0084</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0204</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.11">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0055</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0132</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0279</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0046</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0041</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0142</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0138</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0240</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T8.4.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.12.1.1" style="background-color:#E6E6E6;">MSWE-agent</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.13">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4480</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1731</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1623</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1236</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1390</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1565</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1444</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1883</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.14">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.7499</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6797</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6644</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5772</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7749</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.8151</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7010</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6353</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.15">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2722</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0450</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0350</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0410</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0441</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0538</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0422</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0572</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.16">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1831</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1546</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1110</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1266</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1091</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1669</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1451</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1794</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.17">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1626</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1887</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1700</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1654</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1698</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1901</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1803</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1810</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.18">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0260</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0070</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0035</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0049</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0037</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0084</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0034</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0068</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.19">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0075</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0083</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0050</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0066</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0055</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0082</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0069</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0088</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.20">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0241</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0106</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0083</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0072</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0063</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0079</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0061</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0134</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.21">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0083</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0052</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0028</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0046</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0039</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0053</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0042</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0046</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.22" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S6.T8.4.1.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.4.1.22.1.1" style="background-color:#E6E6E6;">MopenHands</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.23">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0758</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0682</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1054</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1038</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0751</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1155</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1078</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.23.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1031</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.24">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3608</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3564</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5374</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5885</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4099</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5262</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5081</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.24.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4171</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.25">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OpenAI-o3-mini-high</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0465</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0422</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0528</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0581</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0462</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0476</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0407</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.25.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0449</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.26">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.26.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2124</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1761</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2041</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2089</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1908</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2601</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2523</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.26.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2086</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.27">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.27.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1957</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2032</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2028</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2261</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2080</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2500</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2002</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.27.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.2158</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.28">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.28.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0070</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0059</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0059</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0069</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0047</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0079</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0054</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.28.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0080</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.29">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.29.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0128</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0134</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0113</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0141</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0130</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0177</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0168</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.29.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0191</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.30">
<td class="ltx_td ltx_align_left" id="S6.T8.4.1.30.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0077</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0090</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0084</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0074</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0073</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0092</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0084</td>
<td class="ltx_td ltx_align_center" id="S6.T8.4.1.30.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0089</td>
</tr>
<tr class="ltx_tr" id="S6.T8.4.1.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T8.4.1.31.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Doubao-1.5-pro</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0037</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0036</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0025</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0034</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0031</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0036</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0037</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.4.1.31.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0038</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive cost analysis of various large language models (LLMs) and their associated methods when applied to the Multi-SWE-bench benchmark for issue resolution.  It details the average cost in US dollars ($) incurred per issue for each model and method across different programming languages (Python, Java, TypeScript, JavaScript, Go, Rust, C, and C++). This allows for a direct comparison of the economic efficiency of different approaches to automated software issue resolution.
> <details>
> <summary>read the caption</summary>
> Table 8: Average cost ($) per issue of different models and methods on Multi-SWE-bench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02605/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02605/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}