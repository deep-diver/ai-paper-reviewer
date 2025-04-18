---
title: "PRIMA.CPP: Speeding Up 70B-Scale LLM Inference on Low-Resource Everyday Home Clusters"
summary: "prima.cpp: Enables 70B-scale LLM inference on low-resource home clusters, using CPU/GPU mix, low RAM, and piped-ring parallelism."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Mohamed bin Zayed University of Artificial Intelligence",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08791 {{< /keyword >}}
{{< keyword icon="writer" >}} Zonghang Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08791" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08791" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08791/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

As consumer hardware becomes stronger and model quantization improves, end-side solutions still demand heavy resources. This paper addresses the challenge of running large language models (LLMs) on resource-limited home devices, which typically struggle with existing solutions. Limited RAM/VRAM, GPU clusters, and high bandwidth demands make it difficult to run frontier models efficiently. The existing solutions struggle to balance workload distribution and prevent out-of-memory errors.



The paper introduces prima.cpp, a distributed inference system designed for low-resource home clusters. It uses mmap for model weights and introduces piped-ring parallelism with prefetching. The Halda algorithm optimizes layer assignments to devices. The system supports CPU/GPU mix and cross-platform deployment. Evaluation shows prima.cpp outperforms llama.cpp, exo, and dllama, achieving 15x speedup on 70B models with minimal memory pressure. It makes frontier models accessible to individuals.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} prima.cpp, a distributed inference system, enables 70B-scale LLMs on low-resource devices. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Halda, an efficient algorithm for layer-to-device assignment, optimizes workload distribution across CPU and GPU. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Piped-ring parallelism with prefetching hides disk loading latency, improving inference speed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces prima.cpp, enabling 70B-scale LLMs on low-resource devices, which significantly lowers the barrier to entry for advanced AI, fostering broader accessibility and innovation. This also enables researchers to **investigate edge-AI** and **collaborative computing** for the next generation of AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08791/x1.png)

> 🔼 The figure illustrates the concept of piped-ring parallelism in a distributed inference system.  A 36-layer language model is divided into 18 segments (layer window size of 2).  Six devices are arranged in a ring, each responsible for processing a subset of the segments. To predict a single token, each device executes three rounds, passing its results to the next device in the ring for further processing. This approach allows for the efficient distribution of the computational load across multiple devices, hiding latency and improving overall performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Piped-ring parallelism. In this case, 6 devices handle a 36-layer model. With a layer window size of 2, the model is splitted into 18 segments, which are assigned to 6 devices in a ring order, so each device needs 3 rounds to predict one token.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.6.1">
<tr class="ltx_tr" id="S1.T1.6.1.1">
<td class="ltx_td ltx_border_tt" id="S1.T1.6.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.2">
<span class="ltx_text" id="S1.T1.6.1.1.2.1" style="font-size:80%;">Type</span><sup class="ltx_sup" id="S1.T1.6.1.1.2.2"><span class="ltx_text" id="S1.T1.6.1.1.2.2.1" style="font-size:80%;">1</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.3">
<span class="ltx_text" id="S1.T1.6.1.1.3.1" style="font-size:80%;">Backends</span><sup class="ltx_sup" id="S1.T1.6.1.1.3.2"><span class="ltx_text" id="S1.T1.6.1.1.3.2.1" style="font-size:80%;">2</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.4">
<span class="ltx_text" id="S1.T1.6.1.1.4.1" style="font-size:80%;">Mem</span><sup class="ltx_sup" id="S1.T1.6.1.1.4.2"><span class="ltx_text" id="S1.T1.6.1.1.4.2.1" style="font-size:80%;">3</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.5"><span class="ltx_text" id="S1.T1.6.1.1.5.1" style="font-size:80%;">Quantization</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.6">
<span class="ltx_text" id="S1.T1.6.1.1.6.1" style="font-size:80%;">Mem Pressure</span><sup class="ltx_sup" id="S1.T1.6.1.1.6.2"><span class="ltx_text" id="S1.T1.6.1.1.6.2.1" style="font-size:80%;">4</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.7"><span class="ltx_text" id="S1.T1.6.1.1.7.1" style="font-size:80%;">Speed</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.6.1.1.8">
<span class="ltx_text" id="S1.T1.6.1.1.8.1" style="font-size:80%;">Heterogeneity</span><sup class="ltx_sup" id="S1.T1.6.1.1.8.2"><span class="ltx_text" id="S1.T1.6.1.1.8.2.1" style="font-size:80%;">5</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.1">
<span class="ltx_text" id="S1.T1.6.1.2.1.1" style="font-size:80%;">dllama </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.2.1.2.1" style="font-size:80%;">(</span>Tadych<span class="ltx_text" id="S1.T1.6.1.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib13" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.2"><span class="ltx_text" id="S1.T1.6.1.2.2.1" style="font-size:80%;">TP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.3"><span class="ltx_text" id="S1.T1.6.1.2.3.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.4"><span class="ltx_text" id="S1.T1.6.1.2.4.1" style="font-size:80%;">RAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.5"><span class="ltx_text" id="S1.T1.6.1.2.5.1" style="font-size:80%;">Q4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.6"><span class="ltx_text" id="S1.T1.6.1.2.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.7"><span class="ltx_text" id="S1.T1.6.1.2.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.8"><span class="ltx_text" id="S1.T1.6.1.2.8.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.3">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.1"><cite class="ltx_cite ltx_citemacro_cite">Zhang et al. <span class="ltx_text" id="S1.T1.6.1.3.1.1.1.1.1" style="font-size:80%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib15" title="">2025</a><span class="ltx_text" id="S1.T1.6.1.3.1.2.2.2.1" style="font-size:80%;">)</span></cite></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.2"><span class="ltx_text" id="S1.T1.6.1.3.2.1" style="font-size:80%;">TP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.3"><span class="ltx_text" id="S1.T1.6.1.3.3.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.4"><span class="ltx_text" id="S1.T1.6.1.3.4.1" style="font-size:80%;">RAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.5"><span class="ltx_text" id="S1.T1.6.1.3.5.1" style="font-size:80%;">FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.6"><span class="ltx_text" id="S1.T1.6.1.3.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.7"><span class="ltx_text" id="S1.T1.6.1.3.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.8"><span class="ltx_text" id="S1.T1.6.1.3.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.4">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.1">
<span class="ltx_text" id="S1.T1.6.1.4.1.1" style="font-size:80%;">Hepti </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.4.1.2.1" style="font-size:80%;">(</span>Lee et al.<span class="ltx_text" id="S1.T1.6.1.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib7" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.2"><span class="ltx_text" id="S1.T1.6.1.4.2.1" style="font-size:80%;">TP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.3"><span class="ltx_text" id="S1.T1.6.1.4.3.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.4"><span class="ltx_text" id="S1.T1.6.1.4.4.1" style="font-size:80%;">RAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.5"><span class="ltx_text" id="S1.T1.6.1.4.5.1" style="font-size:80%;">FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.6"><span class="ltx_text" id="S1.T1.6.1.4.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.7"><span class="ltx_text" id="S1.T1.6.1.4.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.8"><span class="ltx_text" id="S1.T1.6.1.4.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.5">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.1">
<span class="ltx_text" id="S1.T1.6.1.5.1.1" style="font-size:80%;">Galaxy </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.5.1.2.1" style="font-size:80%;">(</span>Ye et al.<span class="ltx_text" id="S1.T1.6.1.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib14" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.2"><span class="ltx_text" id="S1.T1.6.1.5.2.1" style="font-size:80%;">TP+SP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.3"><span class="ltx_text" id="S1.T1.6.1.5.3.1" style="font-size:80%;">CPU / GPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.4"><span class="ltx_text" id="S1.T1.6.1.5.4.1" style="font-size:80%;">RAM / VRAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.5"><span class="ltx_text" id="S1.T1.6.1.5.5.1" style="font-size:80%;">FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.6"><span class="ltx_text" id="S1.T1.6.1.5.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.7"><span class="ltx_text" id="S1.T1.6.1.5.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.8"><span class="ltx_text" id="S1.T1.6.1.5.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.6">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.1">
<span class="ltx_text" id="S1.T1.6.1.6.1.1" style="font-size:80%;">TPI-LLM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.6.1.2.1" style="font-size:80%;">(</span>Li et al.<span class="ltx_text" id="S1.T1.6.1.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib9" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.2"><span class="ltx_text" id="S1.T1.6.1.6.2.1" style="font-size:80%;">TP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.3"><span class="ltx_text" id="S1.T1.6.1.6.3.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.4"><span class="ltx_text" id="S1.T1.6.1.6.4.1" style="font-size:80%;">RAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.5"><span class="ltx_text" id="S1.T1.6.1.6.5.1" style="font-size:80%;">FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.6"><span class="ltx_text" id="S1.T1.6.1.6.6.1" style="font-size:80%;">Medium</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.7"><span class="ltx_text" id="S1.T1.6.1.6.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.8"><span class="ltx_text" id="S1.T1.6.1.6.8.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.1">
<span class="ltx_text" id="S1.T1.6.1.7.1.1" style="font-size:80%;">exo </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.7.1.2.1" style="font-size:80%;">(</span>Exo<span class="ltx_text" id="S1.T1.6.1.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib2" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.2"><span class="ltx_text" id="S1.T1.6.1.7.2.1" style="font-size:80%;">PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.3"><span class="ltx_text" id="S1.T1.6.1.7.3.1" style="font-size:80%;">CPU / GPU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.4"><span class="ltx_text" id="S1.T1.6.1.7.4.1" style="font-size:80%;">RAM / VRAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.5"><span class="ltx_text" id="S1.T1.6.1.7.5.1" style="font-size:80%;">Q4+FP32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.6"><span class="ltx_text" id="S1.T1.6.1.7.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.7"><span class="ltx_text" id="S1.T1.6.1.7.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.7.8"><span class="ltx_text" id="S1.T1.6.1.7.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.8">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.1">
<span class="ltx_text" id="S1.T1.6.1.8.1.1" style="font-size:80%;">LinguaLinked </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.8.1.2.1" style="font-size:80%;">(</span>Zhao et al.<span class="ltx_text" id="S1.T1.6.1.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib17" title="">2023</a><span class="ltx_text" id="S1.T1.6.1.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.2"><span class="ltx_text" id="S1.T1.6.1.8.2.1" style="font-size:80%;">PP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.3"><span class="ltx_text" id="S1.T1.6.1.8.3.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.4"><span class="ltx_text" id="S1.T1.6.1.8.4.1" style="font-size:80%;">RAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.5"><span class="ltx_text" id="S1.T1.6.1.8.5.1" style="font-size:80%;">Q8 / FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.6"><span class="ltx_text" id="S1.T1.6.1.8.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.7"><span class="ltx_text" id="S1.T1.6.1.8.7.1" style="font-size:80%;">Slow</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.8.8"><span class="ltx_text" id="S1.T1.6.1.8.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.9">
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.1">
<span class="ltx_text" id="S1.T1.6.1.9.1.1" style="font-size:80%;">EdgeShard </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.6.1.9.1.2.1" style="font-size:80%;">(</span>Zhang et al.<span class="ltx_text" id="S1.T1.6.1.9.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.08791v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S1.T1.6.1.9.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.2"><span class="ltx_text" id="S1.T1.6.1.9.2.1" style="font-size:80%;">PP</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.3"><span class="ltx_text" id="S1.T1.6.1.9.3.1" style="font-size:80%;">CPU / GPU</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.4"><span class="ltx_text" id="S1.T1.6.1.9.4.1" style="font-size:80%;">RAM / VRAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.5"><span class="ltx_text" id="S1.T1.6.1.9.5.1" style="font-size:80%;">FP32</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.6"><span class="ltx_text" id="S1.T1.6.1.9.6.1" style="font-size:80%;">Critical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.7"><span class="ltx_text" id="S1.T1.6.1.9.7.1" style="font-size:80%;">Fast</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.9.8"><span class="ltx_text" id="S1.T1.6.1.9.8.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.1"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.1.1" style="font-size:80%;">prima.cpp (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.2"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.2.1" style="font-size:80%;">PRP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.3"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.3.1" style="font-size:80%;">CPU &amp; GPU</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.4"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.4.1" style="font-size:80%;">RAM &amp; VRAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.5"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.5.1" style="font-size:80%;">Q4 / IQ1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.6"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.6.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.7"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.10.7.1" style="font-size:80%;">Fast</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.10.8"><span class="ltx_text" id="S1.T1.6.1.10.8.1" style="font-size:80%;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares various distributed large language model (LLM) inference systems designed for edge devices.  The systems are evaluated based on several key characteristics, including the type of parallelism employed (tensor, pipeline, or sequential), the computing backends used (CPU and/or GPU), the memory resources required (RAM and/or VRAM), the level of model quantization used (e.g., Q4, FP32), the criticality of memory pressure, the speed of inference, and whether the system explicitly addresses the heterogeneity of devices in a cluster.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of distributed LLM inference systems at the edge.
> </details>





### In-depth insights


#### Low-Resource LLM
The paper tackles the challenge of running large language models (LLMs) on **low-resource home clusters**, a significant departure from cloud-based or high-end hardware solutions. This is achieved by introducing prima.cpp, a distributed inference system that intelligently manages resources like CPU/GPU, RAM/VRAM, and even disk I/O. Key to this approach is addressing the limitations of existing end-side solutions that often demand substantial resources beyond typical home setups. By focusing on **efficient resource utilization** and cross-platform compatibility, prima.cpp makes advanced AI accessible to individual users. The system's ability to run 70B-scale models on everyday devices opens up possibilities for personal AI assistants and other applications that were previously constrained by hardware limitations. **Optimizing memory usage** and latency are also key.

#### Halda's Algorithm
**Halda's Algorithm is designed for the layer-to-device assignment (LDA) problem in distributed LLM inference.** It aims to optimally distribute model layers across heterogeneous devices in a home cluster, considering CPU/GPU capabilities, memory constraints, disk I/O speeds, and network bandwidth. The algorithm transforms the NP-hard LDA problem into a set of standard integer linear programming (ILP) problems, enabling efficient workload distribution. It iteratively optimizes set assignments (M1~M4) based on device characteristics, ensuring that RAM and VRAM usage stay within limits. It also addresses the challenge of cases when a GPU is underutilized, by forcing a re-construct the sets to solve the problem. By solving the ILP for different valid factors of the model, it ensures the total complexity stays within acceptable limits.

#### Piped-Ring Design
**Piped-ring parallelism** enhances distributed inference, forming a ring-like structure where devices process model segments iteratively. Unlike traditional pipelines, devices in this design can undertake multiple rounds for a single token prediction, facilitated by a defined **layer window size**. This window dictates the number of model layers a device handles per round, varying based on device capability. **Prefetching** plays a crucial role, loading layers in advance to overlap disk loading with computation, thereby reducing latency. The design addresses limitations of standard pipelines in resource-constrained environments by optimizing memory usage and computation distribution, enabling faster inference in heterogeneous clusters. The dynamic window sizes are optimized for performance.

#### Memory Pressure
**Memory pressure is a critical factor for user experience**, as excessive memory usage can lead to application slowdowns or even device crashes, a concern often overlooked by existing systems. A key insight is that merely having sufficient total memory is not enough; **how that memory is managed and utilized is equally important**. The paper introduces a novel metric that calculates memory pressure by assessing the reduction in available memory during runtime, emphasizing that this metric only accounts for non-reclaimable pages, providing a more precise understanding of memory constraints. By prioritizing user experience and maintaining low memory pressure, the system aims to provide a smoother experience that doesn't compromise other apps. The result underscores the need to consider system level optimization beyond raw computing power when building localized LLMs, to avoid the trade-off between memory resources and the potential for a degraded user experience.

#### Home Siri?
The notion of a 'Home Siri?' as implied by this paper evokes a compelling vision of **democratized AI accessibility**. Instead of relying on cloud-based solutions, the authors' work on prima.cpp aims to bring powerful LLMs like Llama 3 and DeepSeek R1 directly to everyday home clusters, making advanced AI capabilities accessible to individuals via a local assistant.  This raises interesting questions about the future of personal AI. The paper's emphasis on **low-resource environments** suggests a desire to make AI available even on less powerful devices, broadening its reach beyond those with high-end hardware. Overcoming hardware limitations while maintaining acceptable performance is a key challenge. By enabling 70B-scale models on home clusters, the system could power more sophisticated and personalized interactions than currently possible with existing voice assistants. The focus on privacy, through local processing, aligns with increasing user concerns about data security and control over personal information. Further optimization and broader hardware compatibility will be critical to realizing the full potential of a truly localized and powerful 'Home Siri?' experience.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.08791/)

> 🔼 This figure shows how the normalized token latency changes with different values of k (the number of rounds to predict one token in piped-ring parallelism).  It demonstrates the impact of piped-ring parallelism on latency, particularly in scenarios with insufficient memory.  The results indicate that smaller values of k are more efficient when sufficient memory is available, while larger k values become necessary and beneficial when memory is limited, effectively leveraging disk offloading and preventing memory overload.
> <details>
> <summary>read the caption</summary>
> Figure 2: Normalized token latency over k𝑘kitalic_k.
> </details>



![](https://arxiv.org/html/2504.08791/x3.png)

> 🔼 This figure illustrates the prefetch-release effect in pipeline parallelism.  A device with limited memory (only 3 layers) is attempting to process 6 layers using prefetching.  Prefetching loads layers in anticipation of computation, but because the device's memory is constrained, it releases already loaded layers to make space for new ones. The effect is that layers need to be loaded multiple times, negating the benefits of prefetching and causing extra disk I/O latency. Green blocks represent layers currently in memory, white blocks represent layers not yet loaded.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of model layers loaded into memory in pipeline parallelism with prefetching. In this case, the device handles 6 model layers but its available memory can only hold 3. The green blocks show the layers loaded into memory, while white blocks indicate those not yet loaded.
> </details>



![](https://arxiv.org/html/2504.08791/x4.png)

> 🔼 In piped-ring parallelism with a fast disk, prefetching completes before computation begins.  A device loads two layers (window size =2) before starting computations. After completing the computation of those two layers, it immediately begins prefetching the next two.  This overlap continues until the inference is complete. This prevents the issue of page faults and improves overall efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of model layers loaded into memory in piped-ring parallelism with fast disk.
> </details>



![](https://arxiv.org/html/2504.08791/x5.png)

> 🔼 This figure illustrates the memory management in piped-ring parallelism when the disk is slow. Unlike fast disk scenarios, where prefetching can load all required layers before computation, slow disks cause page faults as layers are released by the OS before they're used. This leads to a cycle of prefetching, page faults, and reloading, which adds unnecessary disk overhead. The figure visually depicts this process, highlighting how the slow disk I/O impacts the efficiency of the system.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of model layers loaded into memory in piped-ring parallelism with slow disk.
> </details>



![](https://arxiv.org/html/2504.08791/x6.png)

> 🔼 This figure illustrates different parallelization strategies for large language model (LLM) inference across multiple devices.  Panels (a) and (b) show piped-ring parallelism on devices with uniform hardware specifications, but differing disk speeds. Panels (c) and (e) demonstrate piped-ring parallelism on heterogeneous devices with varying processing capabilities and the same or different layer processing windows.  Panels (d) and (e) compare vanilla pipeline parallelism on heterogeneous devices, with and without prefetching enabled.
> <details>
> <summary>read the caption</summary>
> Figure 6: Timeline of (a,b) piped-ring parallelism on homogeneous devices with fast and slow disks; (c,e) piped-ring parallelism on heterogeneous devices with same and different window sizes; and (d,e) vanilla pipeline parallelism on heterogeneous devices with and without prefetching.
> </details>



![](https://arxiv.org/html/2504.08791/x7.png)

> 🔼 This figure compares the performance of four different large language model (LLM) inference systems: llama.cpp, exo, dllama, and prima.cpp.  The comparison is made across a range of model sizes, showing token latency (the time it takes to process a single token) and time-to-first-token (TTFT) (the time it takes to generate the first token).  The results illustrate the relative speed and efficiency of each system in handling different sized LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of token latency and TTFT for llama.cpp, exo, dllama, and prima.cpp.
> </details>



![](https://arxiv.org/html/2504.08791/x8.png)

> 🔼 This figure illustrates how the assignment of model layers to devices and the resulting token latency change as the number of devices in the cluster varies.  It demonstrates the impact of adding more or fewer devices on performance, showing that more devices are not always better if those devices have limited computational resources. It specifically examines a Llama 3-70B model and highlights how layer assignment adapts across different numbers of devices, reflecting the strategies used by the prima.cpp system to optimize inference speed.
> <details>
> <summary>read the caption</summary>
> Figure 8: Layer assignment and token latency over different number of devices.
> </details>



![](https://arxiv.org/html/2504.08791/x9.png)

> 🔼 This figure shows the memory usage of each device for llama.cpp when running different sizes of Llama models.  It visually represents the RAM and VRAM consumption on each device (D1-D3) for Llama models ranging from 8B to 70B parameters. The graph allows for a comparison of memory usage across different model sizes, highlighting potential memory pressure issues.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2504.08791/x10.png)

> 🔼 This figure displays the memory usage of each device when running different sized Llama models using the exo inference system.  It shows the breakdown of memory usage for CPUs and GPUs on each device, highlighting the differences in memory consumption across various models and devices. The bars represent the amount of memory used in GiB (Gigabytes), categorized by device and model size, distinguishing between CPU-bound and GPU-bound processes. This visualization helps in understanding the memory efficiency of exo and how different models and devices impact resource utilization.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2504.08791/x11.png)

> 🔼 This figure shows the memory usage on each device for the dllama model across different model sizes (Llama 3-8B to Llama 3-70B).  The bars represent the memory usage for each device's CPU and GPU, while the horizontal line indicates the maximum available memory for that device. It helps visualize memory pressure and potential for out-of-memory (OOM) errors across the cluster of different devices.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2504.08791/x12.png)

> 🔼 This figure displays memory usage for each device across different Llama model sizes when using prima.cpp.  It contrasts with Figures 9a, 9b, and 9c, showing prima.cpp's efficient memory management.  The bars represent the RAM usage (in GiB) for each device (D1-D4), broken down by CPU and GPU usage.  'Bound' indicates the memory that is not reclaimable. The low memory usage demonstrates prima.cpp's ability to prevent out-of-memory (OOM) errors even with large models.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_minipage ltx_align_middle" id="S4.T2.6" style="width:433.6pt;">
<tr class="ltx_tr" id="S4.T2.6.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.6.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.2"><span class="ltx_text" id="S4.T2.6.1.2.1" style="font-size:80%;">D1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.3"><span class="ltx_text" id="S4.T2.6.1.3.1" style="font-size:80%;">D2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.4"><span class="ltx_text" id="S4.T2.6.1.4.1" style="font-size:80%;">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.5"><span class="ltx_text" id="S4.T2.6.1.5.1" style="font-size:80%;">D4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.6"><span class="ltx_text" id="S4.T2.6.1.6.1" style="font-size:80%;">D5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.7"><span class="ltx_text" id="S4.T2.6.1.7.1" style="font-size:80%;">D6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.1"><span class="ltx_text" id="S4.T2.6.2.1.1" style="font-size:80%;">Device</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.2"><span class="ltx_text" id="S4.T2.6.2.2.1" style="font-size:80%;">Mac M1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.3"><span class="ltx_text" id="S4.T2.6.2.3.1" style="font-size:80%;">Laptop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4"><span class="ltx_text" id="S4.T2.6.2.4.1" style="font-size:80%;">Desktop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.5"><span class="ltx_text" id="S4.T2.6.2.5.1" style="font-size:80%;">Mate40Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.6"><span class="ltx_text" id="S4.T2.6.2.6.1" style="font-size:80%;">Honor Pad</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7"><span class="ltx_text" id="S4.T2.6.2.7.1" style="font-size:80%;">Mac Air</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.3">
<td class="ltx_td ltx_align_left" id="S4.T2.6.3.1"><span class="ltx_text" id="S4.T2.6.3.1.1" style="font-size:80%;">OS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.2"><span class="ltx_text" id="S4.T2.6.3.2.1" style="font-size:80%;">MacOS (UMA)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.3"><span class="ltx_text" id="S4.T2.6.3.3.1" style="font-size:80%;">Linux</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.4"><span class="ltx_text" id="S4.T2.6.3.4.1" style="font-size:80%;">Linux</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.5"><span class="ltx_text" id="S4.T2.6.3.5.1" style="font-size:80%;">Linux (on HarmonyOS)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.6"><span class="ltx_text" id="S4.T2.6.3.6.1" style="font-size:80%;">Linux (on Android)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.7"><span class="ltx_text" id="S4.T2.6.3.7.1" style="font-size:80%;">MacOS (NUMA)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4">
<td class="ltx_td ltx_align_left" id="S4.T2.6.4.1"><span class="ltx_text" id="S4.T2.6.4.1.1" style="font-size:80%;">CPU</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.2"><span class="ltx_text" id="S4.T2.6.4.2.1" style="font-size:80%;">Apple M1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.3"><span class="ltx_text" id="S4.T2.6.4.3.1" style="font-size:80%;">Intel i9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4"><span class="ltx_text" id="S4.T2.6.4.4.1" style="font-size:80%;">Intel i9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.5"><span class="ltx_text" id="S4.T2.6.4.5.1" style="font-size:80%;">Kirin 9000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6"><span class="ltx_text" id="S4.T2.6.4.6.1" style="font-size:80%;">Dimensity 8100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.7"><span class="ltx_text" id="S4.T2.6.4.7.1" style="font-size:80%;">Intel i5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.5">
<td class="ltx_td ltx_align_left" id="S4.T2.6.5.1"><span class="ltx_text" id="S4.T2.6.5.1.1" style="font-size:80%;">CPU Cores</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.2"><span class="ltx_text" id="S4.T2.6.5.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.3"><span class="ltx_text" id="S4.T2.6.5.3.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.4"><span class="ltx_text" id="S4.T2.6.5.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.5"><span class="ltx_text" id="S4.T2.6.5.5.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.6"><span class="ltx_text" id="S4.T2.6.5.6.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.7"><span class="ltx_text" id="S4.T2.6.5.7.1" style="font-size:80%;">4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.1"><span class="ltx_text" id="S4.T2.6.6.1.1" style="font-size:80%;">RAM (available)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.2"><span class="ltx_text" id="S4.T2.6.6.2.1" style="font-size:80%;">2.4 GiB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.3"><span class="ltx_text" id="S4.T2.6.6.3.1" style="font-size:80%;">4.1 GiB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.4"><span class="ltx_text" id="S4.T2.6.6.4.1" style="font-size:80%;">9.7 GiB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.5"><span class="ltx_text" id="S4.T2.6.6.5.1" style="font-size:80%;">1.9 GiB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6"><span class="ltx_text" id="S4.T2.6.6.6.1" style="font-size:80%;">5.1 GiB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.7"><span class="ltx_text" id="S4.T2.6.6.7.1" style="font-size:80%;">6.8 GiB</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.7">
<td class="ltx_td ltx_align_left" id="S4.T2.6.7.1"><span class="ltx_text" id="S4.T2.6.7.1.1" style="font-size:80%;">Disk Read Speed</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.2"><span class="ltx_text" id="S4.T2.6.7.2.1" style="font-size:80%;">0.72 GB/s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.3"><span class="ltx_text" id="S4.T2.6.7.3.1" style="font-size:80%;">2.98 GB/s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.4"><span class="ltx_text" id="S4.T2.6.7.4.1" style="font-size:80%;">3.17 GB/s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.5"><span class="ltx_text" id="S4.T2.6.7.5.1" style="font-size:80%;">1.37 GB/s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.6"><span class="ltx_text" id="S4.T2.6.7.6.1" style="font-size:80%;">2.00 GB/s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.7"><span class="ltx_text" id="S4.T2.6.7.7.1" style="font-size:80%;">0.39 GB/s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.8">
<td class="ltx_td ltx_align_left" id="S4.T2.6.8.1"><span class="ltx_text" id="S4.T2.6.8.1.1" style="font-size:80%;">GPU Type</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.2"><span class="ltx_text" id="S4.T2.6.8.2.1" style="font-size:80%;">Apple Metal</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.3"><span class="ltx_text" id="S4.T2.6.8.3.1" style="font-size:80%;">3070</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.4"><span class="ltx_text" id="S4.T2.6.8.4.1" style="font-size:80%;">2080TI</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.5"><span class="ltx_text" id="S4.T2.6.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.6"><span class="ltx_text" id="S4.T2.6.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.8.7"><span class="ltx_text" id="S4.T2.6.8.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.6.9.1"><span class="ltx_text" id="S4.T2.6.9.1.1" style="font-size:80%;">VRAM (available)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.2"><span class="ltx_text" id="S4.T2.6.9.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.3"><span class="ltx_text" id="S4.T2.6.9.3.1" style="font-size:80%;">8 GiB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.4"><span class="ltx_text" id="S4.T2.6.9.4.1" style="font-size:80%;">11 GiB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.5"><span class="ltx_text" id="S4.T2.6.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.6"><span class="ltx_text" id="S4.T2.6.9.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.7"><span class="ltx_text" id="S4.T2.6.9.7.1" style="font-size:80%;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hardware and software configurations of the six devices used in the experiments of the PRIMA.CPP system.  Each device is identified by a number (D1-D6), and information includes the operating system, CPU type and number of cores, available RAM, disk read speed, and GPU type and available VRAM.
> <details>
> <summary>read the caption</summary>
> Table 2: Configurations on experimental device
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_minipage ltx_align_middle" id="S4.T3.6" style="width:433.6pt;">
<tr class="ltx_tr" id="S4.T3.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.6.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.6.1.2"><span class="ltx_text" id="S4.T3.6.1.2.1" style="font-size:80%;">llama.cpp</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.6.1.3"><span class="ltx_text" id="S4.T3.6.1.3.1" style="font-size:80%;">exo</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.6.1.4"><span class="ltx_text" id="S4.T3.6.1.4.1" style="font-size:80%;">dllama</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.6.1.5">
<span class="ltx_inline-block" id="S4.T3.6.1.5.1">
<span class="ltx_p" id="S4.T3.6.1.5.1.1"><span class="ltx_text" id="S4.T3.6.1.5.1.1.1" style="font-size:80%;">prima.cpp</span></span>
<span class="ltx_p" id="S4.T3.6.1.5.1.2"><span class="ltx_text" id="S4.T3.6.1.5.1.2.1" style="font-size:80%;">(w/o halda)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.6.1.6">
<span class="ltx_inline-block" id="S4.T3.6.1.6.1">
<span class="ltx_p" id="S4.T3.6.1.6.1.1"><span class="ltx_text" id="S4.T3.6.1.6.1.1.1" style="font-size:80%;">prima.cpp</span></span>
<span class="ltx_p" id="S4.T3.6.1.6.1.2"><span class="ltx_text" id="S4.T3.6.1.6.1.2.1" style="font-size:80%;">(w/o prefetch)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.6.1.7"><span class="ltx_text" id="S4.T3.6.1.7.1" style="font-size:80%;">prima.cpp</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.1"><span class="ltx_text" id="S4.T3.6.2.1.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.2"><span class="ltx_text" id="S4.T3.6.2.2.1" style="font-size:80%;">TTFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.3"><span class="ltx_text" id="S4.T3.6.2.3.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.4"><span class="ltx_text" id="S4.T3.6.2.4.1" style="font-size:80%;">TTFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.5"><span class="ltx_text" id="S4.T3.6.2.5.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.6"><span class="ltx_text" id="S4.T3.6.2.6.1" style="font-size:80%;">TTFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.7"><span class="ltx_text" id="S4.T3.6.2.7.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.2.8"><span class="ltx_text" id="S4.T3.6.2.8.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.9"><span class="ltx_text" id="S4.T3.6.2.9.1" style="font-size:80%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.10"><span class="ltx_text" id="S4.T3.6.2.10.1" style="font-size:80%;">TTFT</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.6.3.1"><span class="ltx_text" id="S4.T3.6.3.1.1" style="font-size:80%;">Llama 3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.3.2.1" style="font-size:80%;">15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.3.3.1" style="font-size:80%;">18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.3.4"><span class="ltx_text" id="S4.T3.6.3.4.1" style="font-size:80%;">263</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.3.5"><span class="ltx_text" id="S4.T3.6.3.5.1" style="font-size:80%;">960</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.3.6"><span class="ltx_text" id="S4.T3.6.3.6.1" style="font-size:80%;">459</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.3.7"><span class="ltx_text" id="S4.T3.6.3.7.1" style="font-size:80%;">1845</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.3.8"><span class="ltx_text" id="S4.T3.6.3.8.1" style="font-size:80%;">78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.3.9"><span class="ltx_text" id="S4.T3.6.3.9.1" style="font-size:80%;">53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.3.10"><span class="ltx_text" id="S4.T3.6.3.10.1" style="font-size:80%;">54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.3.11"><span class="ltx_text" id="S4.T3.6.3.11.1" style="font-size:80%;">78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.4.1"><span class="ltx_text" id="S4.T3.6.4.1.1" style="font-size:80%;">Llama 3-14B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.4.2.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.4.3.1" style="font-size:80%;">25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.4"><span class="ltx_text" id="S4.T3.6.4.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.5"><span class="ltx_text" id="S4.T3.6.4.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.6"><span class="ltx_text" id="S4.T3.6.4.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.7"><span class="ltx_text" id="S4.T3.6.4.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.8"><span class="ltx_text" id="S4.T3.6.4.8.1" style="font-size:80%;">131</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.9"><span class="ltx_text" id="S4.T3.6.4.9.1" style="font-size:80%;">62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.10"><span class="ltx_text" id="S4.T3.6.4.10.1" style="font-size:80%;">65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.11"><span class="ltx_text" id="S4.T3.6.4.11.1" style="font-size:80%;">134</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.6.5.1"><span class="ltx_text" id="S4.T3.6.5.1.1" style="font-size:80%;">Llama 1-30B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.5.2"><span class="ltx_text" id="S4.T3.6.5.2.1" style="font-size:80%;">202</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.5.3"><span class="ltx_text" id="S4.T3.6.5.3.1" style="font-size:80%;">611</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.5.4"><span class="ltx_text" id="S4.T3.6.5.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.5.5"><span class="ltx_text" id="S4.T3.6.5.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.5.6"><span class="ltx_text" id="S4.T3.6.5.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.5.7"><span class="ltx_text" id="S4.T3.6.5.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.5.8"><span class="ltx_text" id="S4.T3.6.5.8.1" style="font-size:80%;">258</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.5.9"><span class="ltx_text" id="S4.T3.6.5.9.1" style="font-size:80%;">79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.5.10"><span class="ltx_text ltx_font_bold" id="S4.T3.6.5.10.1" style="font-size:80%;">72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.5.11"><span class="ltx_text ltx_font_bold" id="S4.T3.6.5.11.1" style="font-size:80%;">214</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.6.1"><span class="ltx_text" id="S4.T3.6.6.1.1" style="font-size:80%;">Llama 3-45B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2"><span class="ltx_text" id="S4.T3.6.6.2.1" style="font-size:80%;">328</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.3"><span class="ltx_text" id="S4.T3.6.6.3.1" style="font-size:80%;">712</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.4"><span class="ltx_text" id="S4.T3.6.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.5"><span class="ltx_text" id="S4.T3.6.6.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6"><span class="ltx_text" id="S4.T3.6.6.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.7"><span class="ltx_text" id="S4.T3.6.6.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.8"><span class="ltx_text" id="S4.T3.6.6.8.1" style="font-size:80%;">409</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.9"><span class="ltx_text" id="S4.T3.6.6.9.1" style="font-size:80%;">263</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.1" style="font-size:80%;">233</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.11"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.1" style="font-size:80%;">440</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.7.1"><span class="ltx_text" id="S4.T3.6.7.1.1" style="font-size:80%;">Llama 3-60B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.2"><span class="ltx_text" id="S4.T3.6.7.2.1" style="font-size:80%;">7965</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.3"><span class="ltx_text" id="S4.T3.6.7.3.1" style="font-size:80%;">8350</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.4"><span class="ltx_text" id="S4.T3.6.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.5"><span class="ltx_text" id="S4.T3.6.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.6"><span class="ltx_text" id="S4.T3.6.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.7"><span class="ltx_text" id="S4.T3.6.7.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.8"><span class="ltx_text" id="S4.T3.6.7.8.1" style="font-size:80%;">7053</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.9"><span class="ltx_text" id="S4.T3.6.7.9.1" style="font-size:80%;">532</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.10"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.10.1" style="font-size:80%;">468</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.11"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.11.1" style="font-size:80%;">990</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.8.1"><span class="ltx_text" id="S4.T3.6.8.1.1" style="font-size:80%;">Llama 1-65B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2"><span class="ltx_text" id="S4.T3.6.8.2.1" style="font-size:80%;">8807</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.3"><span class="ltx_text" id="S4.T3.6.8.3.1" style="font-size:80%;">9662</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.4"><span class="ltx_text" id="S4.T3.6.8.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.5"><span class="ltx_text" id="S4.T3.6.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.6"><span class="ltx_text" id="S4.T3.6.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.7"><span class="ltx_text" id="S4.T3.6.8.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.8"><span class="ltx_text" id="S4.T3.6.8.8.1" style="font-size:80%;">12253</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.9"><span class="ltx_text" id="S4.T3.6.8.9.1" style="font-size:80%;">688</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.10"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.10.1" style="font-size:80%;">569</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.11"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.11.1" style="font-size:80%;">1770</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.6.9.1"><span class="ltx_text" id="S4.T3.6.9.1.1" style="font-size:80%;">Llama 3-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.9.2"><span class="ltx_text" id="S4.T3.6.9.2.1" style="font-size:80%;">10120</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.9.3"><span class="ltx_text" id="S4.T3.6.9.3.1" style="font-size:80%;">10806</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.9.4"><span class="ltx_text" id="S4.T3.6.9.4.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.9.5"><span class="ltx_text" id="S4.T3.6.9.5.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.9.6"><span class="ltx_text" id="S4.T3.6.9.6.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.9.7"><span class="ltx_text" id="S4.T3.6.9.7.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.9.8"><span class="ltx_text" id="S4.T3.6.9.8.1" style="font-size:80%;">20848</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.9.9"><span class="ltx_text" id="S4.T3.6.9.9.1" style="font-size:80%;">755</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.9.10"><span class="ltx_text ltx_font_bold" id="S4.T3.6.9.10.1" style="font-size:80%;">674</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.9.11"><span class="ltx_text ltx_font_bold" id="S4.T3.6.9.11.1" style="font-size:80%;">1793</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different large language model (LLM) inference systems: llama.cpp, exo, dllama, and prima.cpp.  For each system, it shows the token latency (the time it takes to process a single token) and the time-to-first-token (TTFT) for various sizes of Llama 3 language models, ranging from 8B to 70B parameters.  The results are presented in milliseconds per token. The table highlights the differences in performance between the systems across different model sizes.
> <details>
> <summary>read the caption</summary>
> Table 3: Token latency and TTFT (in millisecond/token) for llama.cpp, exo, dllama, and prima.cpp.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.10.10">
<tr class="ltx_tr" id="S4.T4.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T4.10.10.11.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.11.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.10.10.11.2"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.11.2.1" style="font-size:80%;">llama.cpp</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T4.10.10.11.3"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.11.3.1" style="font-size:80%;">exo</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T4.10.10.11.4"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.11.4.1" style="font-size:80%;">dllama</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T4.10.10.11.5"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.11.5.1" style="font-size:80%;">prima.cpp</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.10.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.10.10.12.1"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.1.1" style="font-size:80%;">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.2"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.2.1" style="font-size:80%;">D1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.3"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.3.1" style="font-size:80%;">D2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.10.10.12.4"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.4.1" style="font-size:80%;">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.5"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.5.1" style="font-size:80%;">D1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.6"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.6.1" style="font-size:80%;">D2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.7"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.7.1" style="font-size:80%;">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.10.10.12.8"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.8.1" style="font-size:80%;">D4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.9"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.9.1" style="font-size:80%;">D1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.10"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.10.1" style="font-size:80%;">D2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.11"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.11.1" style="font-size:80%;">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.12.12"><span class="ltx_text ltx_font_bold" id="S4.T4.10.10.12.12.1" style="font-size:80%;">D4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.1.1.2"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:80%;">Llama 3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.3"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:80%;">2.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.4"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:80%;">20.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.5"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:80%;">51.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.6"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:80%;">42.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.7"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:80%;">13.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.8"><span class="ltx_text" id="S4.T4.1.1.1.8.1" style="font-size:80%;">12.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.9"><span class="ltx_text" id="S4.T4.1.1.1.9.1" style="font-size:80%;">55.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.10"><span class="ltx_text" id="S4.T4.1.1.1.10.1" style="font-size:80%;">12.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.11"><span class="ltx_text" id="S4.T4.1.1.1.11.1" style="font-size:80%;">5.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.12"><span class="ltx_text" id="S4.T4.1.1.1.12.1" style="font-size:80%;">5.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.13"><span class="ltx_text" id="S4.T4.1.1.1.13.1" style="font-size:80%;">2.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><leq id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.2.2.2.2"><span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:80%;">Llama 3-14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.3"><span class="ltx_text" id="S4.T4.2.2.2.3.1" style="font-size:80%;">2.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.4"><span class="ltx_text" id="S4.T4.2.2.2.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.5"><span class="ltx_text" id="S4.T4.2.2.2.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.6"><span class="ltx_text" id="S4.T4.2.2.2.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.7"><span class="ltx_text" id="S4.T4.2.2.2.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.8"><span class="ltx_text" id="S4.T4.2.2.2.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.9"><span class="ltx_text" id="S4.T4.2.2.2.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.10"><span class="ltx_text" id="S4.T4.2.2.2.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.11"><span class="ltx_text" id="S4.T4.2.2.2.11.1" style="font-size:80%;">5.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.12"><span class="ltx_text" id="S4.T4.2.2.2.12.1" style="font-size:80%;">4.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.13"><span class="ltx_text" id="S4.T4.2.2.2.13.1" style="font-size:80%;">2.2%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.1.m1.1.1" mathsize="80%" xref="S4.T4.2.2.2.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><leq id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.1.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.3.3.3.2"><span class="ltx_text" id="S4.T4.3.3.3.2.1" style="font-size:80%;">Llama 1-30B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3.3"><span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:80%;">8.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4"><span class="ltx_text" id="S4.T4.3.3.3.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.5"><span class="ltx_text" id="S4.T4.3.3.3.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3.6"><span class="ltx_text" id="S4.T4.3.3.3.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.7"><span class="ltx_text" id="S4.T4.3.3.3.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.8"><span class="ltx_text" id="S4.T4.3.3.3.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.9"><span class="ltx_text" id="S4.T4.3.3.3.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3.10"><span class="ltx_text" id="S4.T4.3.3.3.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.11"><span class="ltx_text" id="S4.T4.3.3.3.11.1" style="font-size:80%;">3.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.12"><span class="ltx_text" id="S4.T4.3.3.3.12.1" style="font-size:80%;">5.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.13"><span class="ltx_text" id="S4.T4.3.3.3.13.1" style="font-size:80%;">2.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.1.m1.1.1" mathsize="80%" xref="S4.T4.3.3.3.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><leq id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.3.3.3.1.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.5.3"><span class="ltx_text" id="S4.T4.5.5.5.3.1" style="font-size:80%;">Llama 3-45B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.4"><span class="ltx_text" id="S4.T4.5.5.5.4.1" style="font-size:80%;">3.9%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5"><span class="ltx_text" id="S4.T4.5.5.5.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.6"><span class="ltx_text" id="S4.T4.5.5.5.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.7"><span class="ltx_text" id="S4.T4.5.5.5.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.8"><span class="ltx_text" id="S4.T4.5.5.5.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.9"><span class="ltx_text" id="S4.T4.5.5.5.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.10"><span class="ltx_text" id="S4.T4.5.5.5.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.11"><span class="ltx_text" id="S4.T4.5.5.5.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.12"><span class="ltx_text" id="S4.T4.5.5.5.12.1" style="font-size:80%;">4.9%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.1.m1.1.1" mathsize="80%" xref="S4.T4.4.4.4.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><leq id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.4.4.4.1.1" style="font-size:80%;">1.0%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.13"><span class="ltx_text" id="S4.T4.5.5.5.13.1" style="font-size:80%;">6.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.2">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.5.5.5.2.m1.1"><semantics id="S4.T4.5.5.5.2.m1.1a"><mo id="S4.T4.5.5.5.2.m1.1.1" mathsize="80%" xref="S4.T4.5.5.5.2.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.2.m1.1b"><leq id="S4.T4.5.5.5.2.m1.1.1.cmml" xref="S4.T4.5.5.5.2.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.2.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.2.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.5.5.5.2.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.6.6.6.2"><span class="ltx_text" id="S4.T4.6.6.6.2.1" style="font-size:80%;">Llama 3-60B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.6.6.3"><span class="ltx_text" id="S4.T4.6.6.6.3.1" style="font-size:80%;">5.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.4"><span class="ltx_text" id="S4.T4.6.6.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.5"><span class="ltx_text" id="S4.T4.6.6.6.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.6.6.6"><span class="ltx_text" id="S4.T4.6.6.6.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.7"><span class="ltx_text" id="S4.T4.6.6.6.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.8"><span class="ltx_text" id="S4.T4.6.6.6.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.9"><span class="ltx_text" id="S4.T4.6.6.6.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.6.6.6.10"><span class="ltx_text" id="S4.T4.6.6.6.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.11"><span class="ltx_text" id="S4.T4.6.6.6.11.1" style="font-size:80%;">6.3%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.12"><span class="ltx_text" id="S4.T4.6.6.6.12.1" style="font-size:80%;">4.7%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.13"><span class="ltx_text" id="S4.T4.6.6.6.13.1" style="font-size:80%;">4.7%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.6.6.6.1.m1.1"><semantics id="S4.T4.6.6.6.1.m1.1a"><mo id="S4.T4.6.6.6.1.m1.1.1" mathsize="80%" xref="S4.T4.6.6.6.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.1.m1.1b"><leq id="S4.T4.6.6.6.1.m1.1.1.cmml" xref="S4.T4.6.6.6.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.6.6.6.1.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.9.9.9.4"><span class="ltx_text" id="S4.T4.9.9.9.4.1" style="font-size:80%;">Llama 1-65B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.9.5"><span class="ltx_text" id="S4.T4.9.9.9.5.1" style="font-size:80%;">15.6%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.6"><span class="ltx_text" id="S4.T4.9.9.9.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.7"><span class="ltx_text" id="S4.T4.9.9.9.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.9.8"><span class="ltx_text" id="S4.T4.9.9.9.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.9"><span class="ltx_text" id="S4.T4.9.9.9.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.10"><span class="ltx_text" id="S4.T4.9.9.9.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.11"><span class="ltx_text" id="S4.T4.9.9.9.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.9.12"><span class="ltx_text" id="S4.T4.9.9.9.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.13"><span class="ltx_text" id="S4.T4.9.9.9.13.1" style="font-size:80%;">3.9%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><mo id="S4.T4.7.7.7.1.m1.1.1" mathsize="80%" xref="S4.T4.7.7.7.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><leq id="S4.T4.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.7.7.7.1.1" style="font-size:80%;">1.0%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.8.2">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.8.8.8.2.m1.1"><semantics id="S4.T4.8.8.8.2.m1.1a"><mo id="S4.T4.8.8.8.2.m1.1.1" mathsize="80%" xref="S4.T4.8.8.8.2.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.2.m1.1b"><leq id="S4.T4.8.8.8.2.m1.1.1.cmml" xref="S4.T4.8.8.8.2.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.2.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.2.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.8.8.8.2.1" style="font-size:80%;">1.0%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.3">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.9.9.9.3.m1.1"><semantics id="S4.T4.9.9.9.3.m1.1a"><mo id="S4.T4.9.9.9.3.m1.1.1" mathsize="80%" xref="S4.T4.9.9.9.3.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.3.m1.1b"><leq id="S4.T4.9.9.9.3.m1.1.1.cmml" xref="S4.T4.9.9.9.3.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.3.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.3.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.9.9.9.3.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.10.10.10.2"><span class="ltx_text" id="S4.T4.10.10.10.2.1" style="font-size:80%;">Llama 3-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.10.10.10.3"><span class="ltx_text" id="S4.T4.10.10.10.3.1" style="font-size:80%;">6.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.4"><span class="ltx_text" id="S4.T4.10.10.10.4.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.5"><span class="ltx_text" id="S4.T4.10.10.10.5.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.10.10.10.6"><span class="ltx_text" id="S4.T4.10.10.10.6.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.7"><span class="ltx_text" id="S4.T4.10.10.10.7.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.8"><span class="ltx_text" id="S4.T4.10.10.10.8.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.9"><span class="ltx_text" id="S4.T4.10.10.10.9.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.10.10.10.10"><span class="ltx_text" id="S4.T4.10.10.10.10.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.11"><span class="ltx_text" id="S4.T4.10.10.10.11.1" style="font-size:80%;">4.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.12"><span class="ltx_text" id="S4.T4.10.10.10.12.1" style="font-size:80%;">4.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.13"><span class="ltx_text" id="S4.T4.10.10.10.13.1" style="font-size:80%;">4.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.1">
<math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.10.10.10.1.m1.1"><semantics id="S4.T4.10.10.10.1.m1.1a"><mo id="S4.T4.10.10.10.1.m1.1.1" mathsize="80%" xref="S4.T4.10.10.10.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.1.m1.1b"><leq id="S4.T4.10.10.10.1.m1.1.1.cmml" xref="S4.T4.10.10.10.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S4.T4.10.10.10.1.1" style="font-size:80%;">1.0%</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the memory pressure observed on each device (D1-D4) when running different Llama models using four different inference systems: llama.cpp, exo, dllama, and prima.cpp. Memory pressure is expressed as a percentage, indicating the proportion of total available memory that is in use, offering insight into the memory efficiency of each system.  High memory pressure can lead to performance degradation or even crashes, emphasizing the importance of efficient memory management.
> <details>
> <summary>read the caption</summary>
> Table 4: Memory pressure for llama.cpp, exo, dllama, and prima.cpp on each device.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.35">
<tr class="ltx_tr" id="A1.T5.35.36">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.35.36.1"><span class="ltx_text ltx_font_bold" id="A1.T5.35.36.1.1" style="font-size:80%;">Symbol</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.35.36.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.35.36.2.1">
<span class="ltx_p" id="A1.T5.35.36.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.35.36.2.1.1.1" style="font-size:80%;">Explanation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T5.1.1.1"><math alttext="M" class="ltx_Math" display="inline" id="A1.T5.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.m1.1a"><mi id="A1.T5.1.1.1.m1.1.1" mathsize="80%" xref="A1.T5.1.1.1.m1.1.1.cmml">M</mi><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.m1.1b"><ci id="A1.T5.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.m1.1.1">𝑀</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.m1.1c">M</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.m1.1d">italic_M</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T5.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.2.1">
<span class="ltx_p" id="A1.T5.1.1.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.1.1" style="font-size:80%;">Number of devices.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.2.1"><math alttext="w_{m}" class="ltx_Math" display="inline" id="A1.T5.2.2.1.m1.1"><semantics id="A1.T5.2.2.1.m1.1a"><msub id="A1.T5.2.2.1.m1.1.1" xref="A1.T5.2.2.1.m1.1.1.cmml"><mi id="A1.T5.2.2.1.m1.1.1.2" mathsize="80%" xref="A1.T5.2.2.1.m1.1.1.2.cmml">w</mi><mi id="A1.T5.2.2.1.m1.1.1.3" mathsize="80%" xref="A1.T5.2.2.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.1.m1.1b"><apply id="A1.T5.2.2.1.m1.1.1.cmml" xref="A1.T5.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.2.2.1.m1.1.1.1.cmml" xref="A1.T5.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T5.2.2.1.m1.1.1.2.cmml" xref="A1.T5.2.2.1.m1.1.1.2">𝑤</ci><ci id="A1.T5.2.2.1.m1.1.1.3.cmml" xref="A1.T5.2.2.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.1.m1.1c">w_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.3.2.1">
<span class="ltx_p" id="A1.T5.3.3.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.3.3.2.1.1.1" style="font-size:80%;">Layer window size on device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.3.3.2.1.1.m1.1"><semantics id="A1.T5.3.3.2.1.1.m1.1a"><msub id="A1.T5.3.3.2.1.1.m1.1.1" xref="A1.T5.3.3.2.1.1.m1.1.1.cmml"><mi id="A1.T5.3.3.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.3.3.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.3.3.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.3.3.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.2.1.1.m1.1b"><apply id="A1.T5.3.3.2.1.1.m1.1.1.cmml" xref="A1.T5.3.3.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.3.3.2.1.1.m1.1.1.1.cmml" xref="A1.T5.3.3.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.3.3.2.1.1.m1.1.1.2.cmml" xref="A1.T5.3.3.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.3.3.2.1.1.m1.1.1.3.cmml" xref="A1.T5.3.3.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.3.3.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.4.4.1"><math alttext="n_{m}" class="ltx_Math" display="inline" id="A1.T5.4.4.1.m1.1"><semantics id="A1.T5.4.4.1.m1.1a"><msub id="A1.T5.4.4.1.m1.1.1" xref="A1.T5.4.4.1.m1.1.1.cmml"><mi id="A1.T5.4.4.1.m1.1.1.2" mathsize="80%" xref="A1.T5.4.4.1.m1.1.1.2.cmml">n</mi><mi id="A1.T5.4.4.1.m1.1.1.3" mathsize="80%" xref="A1.T5.4.4.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.1.m1.1b"><apply id="A1.T5.4.4.1.m1.1.1.cmml" xref="A1.T5.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.4.4.1.m1.1.1.1.cmml" xref="A1.T5.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T5.4.4.1.m1.1.1.2.cmml" xref="A1.T5.4.4.1.m1.1.1.2">𝑛</ci><ci id="A1.T5.4.4.1.m1.1.1.3.cmml" xref="A1.T5.4.4.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.1.m1.1c">n_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.5.5.2.1">
<span class="ltx_p" id="A1.T5.5.5.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.5.5.2.1.1.1" style="font-size:80%;">Number of GPU layers on device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.5.5.2.1.1.m1.1"><semantics id="A1.T5.5.5.2.1.1.m1.1a"><msub id="A1.T5.5.5.2.1.1.m1.1.1" xref="A1.T5.5.5.2.1.1.m1.1.1.cmml"><mi id="A1.T5.5.5.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.5.5.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.5.5.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.5.5.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.2.1.1.m1.1b"><apply id="A1.T5.5.5.2.1.1.m1.1.1.cmml" xref="A1.T5.5.5.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.5.5.2.1.1.m1.1.1.1.cmml" xref="A1.T5.5.5.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.5.5.2.1.1.m1.1.1.2.cmml" xref="A1.T5.5.5.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.5.5.2.1.1.m1.1.1.3.cmml" xref="A1.T5.5.5.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.5.5.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.6.6.1"><math alttext="T" class="ltx_Math" display="inline" id="A1.T5.6.6.1.m1.1"><semantics id="A1.T5.6.6.1.m1.1a"><mi id="A1.T5.6.6.1.m1.1.1" mathsize="80%" xref="A1.T5.6.6.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.1.m1.1b"><ci id="A1.T5.6.6.1.m1.1.1.cmml" xref="A1.T5.6.6.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.1.m1.1d">italic_T</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.6.6.2.1">
<span class="ltx_p" id="A1.T5.6.6.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.6.6.2.1.1.1" style="font-size:80%;">Token latency.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.7.7.1"><math alttext="l_{m}" class="ltx_Math" display="inline" id="A1.T5.7.7.1.m1.1"><semantics id="A1.T5.7.7.1.m1.1a"><msub id="A1.T5.7.7.1.m1.1.1" xref="A1.T5.7.7.1.m1.1.1.cmml"><mi id="A1.T5.7.7.1.m1.1.1.2" mathsize="80%" xref="A1.T5.7.7.1.m1.1.1.2.cmml">l</mi><mi id="A1.T5.7.7.1.m1.1.1.3" mathsize="80%" xref="A1.T5.7.7.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.1.m1.1b"><apply id="A1.T5.7.7.1.m1.1.1.cmml" xref="A1.T5.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.7.7.1.m1.1.1.1.cmml" xref="A1.T5.7.7.1.m1.1.1">subscript</csymbol><ci id="A1.T5.7.7.1.m1.1.1.2.cmml" xref="A1.T5.7.7.1.m1.1.1.2">𝑙</ci><ci id="A1.T5.7.7.1.m1.1.1.3.cmml" xref="A1.T5.7.7.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.1.m1.1c">l_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.1.m1.1d">italic_l start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.2.1">
<span class="ltx_p" id="A1.T5.8.8.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.8.8.2.1.1.1" style="font-size:80%;">Total model layers processed by device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.8.8.2.1.1.m1.1"><semantics id="A1.T5.8.8.2.1.1.m1.1a"><msub id="A1.T5.8.8.2.1.1.m1.1.1" xref="A1.T5.8.8.2.1.1.m1.1.1.cmml"><mi id="A1.T5.8.8.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.8.8.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.8.8.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.8.8.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.2.1.1.m1.1b"><apply id="A1.T5.8.8.2.1.1.m1.1.1.cmml" xref="A1.T5.8.8.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.8.8.2.1.1.m1.1.1.1.cmml" xref="A1.T5.8.8.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.8.8.2.1.1.m1.1.1.2.cmml" xref="A1.T5.8.8.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.8.8.2.1.1.m1.1.1.3.cmml" xref="A1.T5.8.8.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.8.8.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.9.9.1"><math alttext="l_{m}^{\text{gpu}}" class="ltx_Math" display="inline" id="A1.T5.9.9.1.m1.1"><semantics id="A1.T5.9.9.1.m1.1a"><msubsup id="A1.T5.9.9.1.m1.1.1" xref="A1.T5.9.9.1.m1.1.1.cmml"><mi id="A1.T5.9.9.1.m1.1.1.2.2" mathsize="80%" xref="A1.T5.9.9.1.m1.1.1.2.2.cmml">l</mi><mi id="A1.T5.9.9.1.m1.1.1.2.3" mathsize="80%" xref="A1.T5.9.9.1.m1.1.1.2.3.cmml">m</mi><mtext id="A1.T5.9.9.1.m1.1.1.3" mathsize="80%" xref="A1.T5.9.9.1.m1.1.1.3a.cmml">gpu</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A1.T5.9.9.1.m1.1b"><apply id="A1.T5.9.9.1.m1.1.1.cmml" xref="A1.T5.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.9.9.1.m1.1.1.1.cmml" xref="A1.T5.9.9.1.m1.1.1">superscript</csymbol><apply id="A1.T5.9.9.1.m1.1.1.2.cmml" xref="A1.T5.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.9.9.1.m1.1.1.2.1.cmml" xref="A1.T5.9.9.1.m1.1.1">subscript</csymbol><ci id="A1.T5.9.9.1.m1.1.1.2.2.cmml" xref="A1.T5.9.9.1.m1.1.1.2.2">𝑙</ci><ci id="A1.T5.9.9.1.m1.1.1.2.3.cmml" xref="A1.T5.9.9.1.m1.1.1.2.3">𝑚</ci></apply><ci id="A1.T5.9.9.1.m1.1.1.3a.cmml" xref="A1.T5.9.9.1.m1.1.1.3"><mtext id="A1.T5.9.9.1.m1.1.1.3.cmml" mathsize="56%" xref="A1.T5.9.9.1.m1.1.1.3">gpu</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.9.1.m1.1c">l_{m}^{\text{gpu}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.9.1.m1.1d">italic_l start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT start_POSTSUPERSCRIPT gpu end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.10.10.2.1">
<span class="ltx_p" id="A1.T5.10.10.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.10.10.2.1.1.1" style="font-size:80%;">Total GPU layers processed by device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.10.10.2.1.1.m1.1"><semantics id="A1.T5.10.10.2.1.1.m1.1a"><msub id="A1.T5.10.10.2.1.1.m1.1.1" xref="A1.T5.10.10.2.1.1.m1.1.1.cmml"><mi id="A1.T5.10.10.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.10.10.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.10.10.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.10.10.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.10.10.2.1.1.m1.1b"><apply id="A1.T5.10.10.2.1.1.m1.1.1.cmml" xref="A1.T5.10.10.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.10.10.2.1.1.m1.1.1.1.cmml" xref="A1.T5.10.10.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.10.10.2.1.1.m1.1.1.2.cmml" xref="A1.T5.10.10.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.10.10.2.1.1.m1.1.1.3.cmml" xref="A1.T5.10.10.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.10.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.10.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.10.10.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.11.11.1"><math alttext="L" class="ltx_Math" display="inline" id="A1.T5.11.11.1.m1.1"><semantics id="A1.T5.11.11.1.m1.1a"><mi id="A1.T5.11.11.1.m1.1.1" mathsize="80%" xref="A1.T5.11.11.1.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A1.T5.11.11.1.m1.1b"><ci id="A1.T5.11.11.1.m1.1.1.cmml" xref="A1.T5.11.11.1.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.11.11.1.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="A1.T5.11.11.1.m1.1d">italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.11.11.2.1">
<span class="ltx_p" id="A1.T5.11.11.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.11.11.2.1.1.1" style="font-size:80%;">Total number of model layers.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.13.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.12.12.1"><math alttext="W" class="ltx_Math" display="inline" id="A1.T5.12.12.1.m1.1"><semantics id="A1.T5.12.12.1.m1.1a"><mi id="A1.T5.12.12.1.m1.1.1" mathsize="80%" xref="A1.T5.12.12.1.m1.1.1.cmml">W</mi><annotation-xml encoding="MathML-Content" id="A1.T5.12.12.1.m1.1b"><ci id="A1.T5.12.12.1.m1.1.1.cmml" xref="A1.T5.12.12.1.m1.1.1">𝑊</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.12.12.1.m1.1c">W</annotation><annotation encoding="application/x-llamapun" id="A1.T5.12.12.1.m1.1d">italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.13.13.2.1">
<span class="ltx_p" id="A1.T5.13.13.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.13.13.2.1.1.1" style="font-size:80%;">Total layer window size across all devices (</span><math alttext="W=\sum_{m=1}^{M}w_{m}" class="ltx_Math" display="inline" id="A1.T5.13.13.2.1.1.m1.1"><semantics id="A1.T5.13.13.2.1.1.m1.1a"><mrow id="A1.T5.13.13.2.1.1.m1.1.1" xref="A1.T5.13.13.2.1.1.m1.1.1.cmml"><mi id="A1.T5.13.13.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.2.cmml">W</mi><mo id="A1.T5.13.13.2.1.1.m1.1.1.1" mathsize="80%" rspace="0.111em" xref="A1.T5.13.13.2.1.1.m1.1.1.1.cmml">=</mo><mrow id="A1.T5.13.13.2.1.1.m1.1.1.3" xref="A1.T5.13.13.2.1.1.m1.1.1.3.cmml"><msubsup id="A1.T5.13.13.2.1.1.m1.1.1.3.1" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.cmml"><mo id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.2" maxsize="80%" minsize="80%" stretchy="true" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.2.cmml">∑</mo><mrow id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.cmml"><mi id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.2" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.2.cmml">m</mi><mo id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.1" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.1.cmml">=</mo><mn id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.3" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.3.cmml">1</mn></mrow><mi id="A1.T5.13.13.2.1.1.m1.1.1.3.1.3" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.3.cmml">M</mi></msubsup><msub id="A1.T5.13.13.2.1.1.m1.1.1.3.2" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2.cmml"><mi id="A1.T5.13.13.2.1.1.m1.1.1.3.2.2" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2.2.cmml">w</mi><mi id="A1.T5.13.13.2.1.1.m1.1.1.3.2.3" mathsize="80%" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2.3.cmml">m</mi></msub></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.13.13.2.1.1.m1.1b"><apply id="A1.T5.13.13.2.1.1.m1.1.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1"><eq id="A1.T5.13.13.2.1.1.m1.1.1.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.1"></eq><ci id="A1.T5.13.13.2.1.1.m1.1.1.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.2">𝑊</ci><apply id="A1.T5.13.13.2.1.1.m1.1.1.3.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3"><apply id="A1.T5.13.13.2.1.1.m1.1.1.3.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1"><csymbol cd="ambiguous" id="A1.T5.13.13.2.1.1.m1.1.1.3.1.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1">superscript</csymbol><apply id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1"><csymbol cd="ambiguous" id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1">subscript</csymbol><sum id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.2"></sum><apply id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3"><eq id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.1"></eq><ci id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.2">𝑚</ci><cn id="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.3.cmml" type="integer" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.2.3.3">1</cn></apply></apply><ci id="A1.T5.13.13.2.1.1.m1.1.1.3.1.3.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.1.3">𝑀</ci></apply><apply id="A1.T5.13.13.2.1.1.m1.1.1.3.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2"><csymbol cd="ambiguous" id="A1.T5.13.13.2.1.1.m1.1.1.3.2.1.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2">subscript</csymbol><ci id="A1.T5.13.13.2.1.1.m1.1.1.3.2.2.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2.2">𝑤</ci><ci id="A1.T5.13.13.2.1.1.m1.1.1.3.2.3.cmml" xref="A1.T5.13.13.2.1.1.m1.1.1.3.2.3">𝑚</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.13.13.2.1.1.m1.1c">W=\sum_{m=1}^{M}w_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.13.13.2.1.1.m1.1d">italic_W = ∑ start_POSTSUBSCRIPT italic_m = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_M end_POSTSUPERSCRIPT italic_w start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.13.13.2.1.1.2" style="font-size:80%;">).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.14.14.1"><math alttext="h_{k},h_{v}" class="ltx_Math" display="inline" id="A1.T5.14.14.1.m1.2"><semantics id="A1.T5.14.14.1.m1.2a"><mrow id="A1.T5.14.14.1.m1.2.2.2" xref="A1.T5.14.14.1.m1.2.2.3.cmml"><msub id="A1.T5.14.14.1.m1.1.1.1.1" xref="A1.T5.14.14.1.m1.1.1.1.1.cmml"><mi id="A1.T5.14.14.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.14.14.1.m1.1.1.1.1.2.cmml">h</mi><mi id="A1.T5.14.14.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.14.14.1.m1.1.1.1.1.3.cmml">k</mi></msub><mo id="A1.T5.14.14.1.m1.2.2.2.3" mathsize="80%" xref="A1.T5.14.14.1.m1.2.2.3.cmml">,</mo><msub id="A1.T5.14.14.1.m1.2.2.2.2" xref="A1.T5.14.14.1.m1.2.2.2.2.cmml"><mi id="A1.T5.14.14.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.14.14.1.m1.2.2.2.2.2.cmml">h</mi><mi id="A1.T5.14.14.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.14.14.1.m1.2.2.2.2.3.cmml">v</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.14.14.1.m1.2b"><list id="A1.T5.14.14.1.m1.2.2.3.cmml" xref="A1.T5.14.14.1.m1.2.2.2"><apply id="A1.T5.14.14.1.m1.1.1.1.1.cmml" xref="A1.T5.14.14.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.14.14.1.m1.1.1.1.1.1.cmml" xref="A1.T5.14.14.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T5.14.14.1.m1.1.1.1.1.2.cmml" xref="A1.T5.14.14.1.m1.1.1.1.1.2">ℎ</ci><ci id="A1.T5.14.14.1.m1.1.1.1.1.3.cmml" xref="A1.T5.14.14.1.m1.1.1.1.1.3">𝑘</ci></apply><apply id="A1.T5.14.14.1.m1.2.2.2.2.cmml" xref="A1.T5.14.14.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.14.14.1.m1.2.2.2.2.1.cmml" xref="A1.T5.14.14.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T5.14.14.1.m1.2.2.2.2.2.cmml" xref="A1.T5.14.14.1.m1.2.2.2.2.2">ℎ</ci><ci id="A1.T5.14.14.1.m1.2.2.2.2.3.cmml" xref="A1.T5.14.14.1.m1.2.2.2.2.3">𝑣</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.14.14.1.m1.2c">h_{k},h_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.14.14.1.m1.2d">italic_h start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT , italic_h start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.14.14.2.1">
<span class="ltx_p" id="A1.T5.14.14.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.14.14.2.1.1.1" style="font-size:80%;">Number of attention heads for keys and values.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.15.15.1"><math alttext="e_{k},e_{v}" class="ltx_Math" display="inline" id="A1.T5.15.15.1.m1.2"><semantics id="A1.T5.15.15.1.m1.2a"><mrow id="A1.T5.15.15.1.m1.2.2.2" xref="A1.T5.15.15.1.m1.2.2.3.cmml"><msub id="A1.T5.15.15.1.m1.1.1.1.1" xref="A1.T5.15.15.1.m1.1.1.1.1.cmml"><mi id="A1.T5.15.15.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.15.15.1.m1.1.1.1.1.2.cmml">e</mi><mi id="A1.T5.15.15.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.15.15.1.m1.1.1.1.1.3.cmml">k</mi></msub><mo id="A1.T5.15.15.1.m1.2.2.2.3" mathsize="80%" xref="A1.T5.15.15.1.m1.2.2.3.cmml">,</mo><msub id="A1.T5.15.15.1.m1.2.2.2.2" xref="A1.T5.15.15.1.m1.2.2.2.2.cmml"><mi id="A1.T5.15.15.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.15.15.1.m1.2.2.2.2.2.cmml">e</mi><mi id="A1.T5.15.15.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.15.15.1.m1.2.2.2.2.3.cmml">v</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.15.15.1.m1.2b"><list id="A1.T5.15.15.1.m1.2.2.3.cmml" xref="A1.T5.15.15.1.m1.2.2.2"><apply id="A1.T5.15.15.1.m1.1.1.1.1.cmml" xref="A1.T5.15.15.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.15.15.1.m1.1.1.1.1.1.cmml" xref="A1.T5.15.15.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T5.15.15.1.m1.1.1.1.1.2.cmml" xref="A1.T5.15.15.1.m1.1.1.1.1.2">𝑒</ci><ci id="A1.T5.15.15.1.m1.1.1.1.1.3.cmml" xref="A1.T5.15.15.1.m1.1.1.1.1.3">𝑘</ci></apply><apply id="A1.T5.15.15.1.m1.2.2.2.2.cmml" xref="A1.T5.15.15.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.15.15.1.m1.2.2.2.2.1.cmml" xref="A1.T5.15.15.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T5.15.15.1.m1.2.2.2.2.2.cmml" xref="A1.T5.15.15.1.m1.2.2.2.2.2">𝑒</ci><ci id="A1.T5.15.15.1.m1.2.2.2.2.3.cmml" xref="A1.T5.15.15.1.m1.2.2.2.2.3">𝑣</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.15.15.1.m1.2c">e_{k},e_{v}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.15.15.1.m1.2d">italic_e start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT , italic_e start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.15.15.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.15.15.2.1">
<span class="ltx_p" id="A1.T5.15.15.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.15.15.2.1.1.1" style="font-size:80%;">Embedding size per attention head.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.16.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.16.16.1"><math alttext="e" class="ltx_Math" display="inline" id="A1.T5.16.16.1.m1.1"><semantics id="A1.T5.16.16.1.m1.1a"><mi id="A1.T5.16.16.1.m1.1.1" mathsize="80%" xref="A1.T5.16.16.1.m1.1.1.cmml">e</mi><annotation-xml encoding="MathML-Content" id="A1.T5.16.16.1.m1.1b"><ci id="A1.T5.16.16.1.m1.1.1.cmml" xref="A1.T5.16.16.1.m1.1.1">𝑒</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.16.16.1.m1.1c">e</annotation><annotation encoding="application/x-llamapun" id="A1.T5.16.16.1.m1.1d">italic_e</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.16.16.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.16.16.2.1">
<span class="ltx_p" id="A1.T5.16.16.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.16.16.2.1.1.1" style="font-size:80%;">Embedding size.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.17.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.17.17.1"><math alttext="b,b_{i},b_{o}" class="ltx_Math" display="inline" id="A1.T5.17.17.1.m1.3"><semantics id="A1.T5.17.17.1.m1.3a"><mrow id="A1.T5.17.17.1.m1.3.3.2" xref="A1.T5.17.17.1.m1.3.3.3.cmml"><mi id="A1.T5.17.17.1.m1.1.1" mathsize="80%" xref="A1.T5.17.17.1.m1.1.1.cmml">b</mi><mo id="A1.T5.17.17.1.m1.3.3.2.3" mathsize="80%" xref="A1.T5.17.17.1.m1.3.3.3.cmml">,</mo><msub id="A1.T5.17.17.1.m1.2.2.1.1" xref="A1.T5.17.17.1.m1.2.2.1.1.cmml"><mi id="A1.T5.17.17.1.m1.2.2.1.1.2" mathsize="80%" xref="A1.T5.17.17.1.m1.2.2.1.1.2.cmml">b</mi><mi id="A1.T5.17.17.1.m1.2.2.1.1.3" mathsize="80%" xref="A1.T5.17.17.1.m1.2.2.1.1.3.cmml">i</mi></msub><mo id="A1.T5.17.17.1.m1.3.3.2.4" mathsize="80%" xref="A1.T5.17.17.1.m1.3.3.3.cmml">,</mo><msub id="A1.T5.17.17.1.m1.3.3.2.2" xref="A1.T5.17.17.1.m1.3.3.2.2.cmml"><mi id="A1.T5.17.17.1.m1.3.3.2.2.2" mathsize="80%" xref="A1.T5.17.17.1.m1.3.3.2.2.2.cmml">b</mi><mi id="A1.T5.17.17.1.m1.3.3.2.2.3" mathsize="80%" xref="A1.T5.17.17.1.m1.3.3.2.2.3.cmml">o</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.17.17.1.m1.3b"><list id="A1.T5.17.17.1.m1.3.3.3.cmml" xref="A1.T5.17.17.1.m1.3.3.2"><ci id="A1.T5.17.17.1.m1.1.1.cmml" xref="A1.T5.17.17.1.m1.1.1">𝑏</ci><apply id="A1.T5.17.17.1.m1.2.2.1.1.cmml" xref="A1.T5.17.17.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="A1.T5.17.17.1.m1.2.2.1.1.1.cmml" xref="A1.T5.17.17.1.m1.2.2.1.1">subscript</csymbol><ci id="A1.T5.17.17.1.m1.2.2.1.1.2.cmml" xref="A1.T5.17.17.1.m1.2.2.1.1.2">𝑏</ci><ci id="A1.T5.17.17.1.m1.2.2.1.1.3.cmml" xref="A1.T5.17.17.1.m1.2.2.1.1.3">𝑖</ci></apply><apply id="A1.T5.17.17.1.m1.3.3.2.2.cmml" xref="A1.T5.17.17.1.m1.3.3.2.2"><csymbol cd="ambiguous" id="A1.T5.17.17.1.m1.3.3.2.2.1.cmml" xref="A1.T5.17.17.1.m1.3.3.2.2">subscript</csymbol><ci id="A1.T5.17.17.1.m1.3.3.2.2.2.cmml" xref="A1.T5.17.17.1.m1.3.3.2.2.2">𝑏</ci><ci id="A1.T5.17.17.1.m1.3.3.2.2.3.cmml" xref="A1.T5.17.17.1.m1.3.3.2.2.3">𝑜</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.17.17.1.m1.3c">b,b_{i},b_{o}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.17.17.1.m1.3d">italic_b , italic_b start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT , italic_b start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.17.17.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.17.17.2.1">
<span class="ltx_p" id="A1.T5.17.17.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.17.17.2.1.1.1" style="font-size:80%;">Bytes of weight data for each layer, input, and output.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.18.18.1"><math alttext="n_{kv}" class="ltx_Math" display="inline" id="A1.T5.18.18.1.m1.1"><semantics id="A1.T5.18.18.1.m1.1a"><msub id="A1.T5.18.18.1.m1.1.1" xref="A1.T5.18.18.1.m1.1.1.cmml"><mi id="A1.T5.18.18.1.m1.1.1.2" mathsize="80%" xref="A1.T5.18.18.1.m1.1.1.2.cmml">n</mi><mrow id="A1.T5.18.18.1.m1.1.1.3" xref="A1.T5.18.18.1.m1.1.1.3.cmml"><mi id="A1.T5.18.18.1.m1.1.1.3.2" mathsize="80%" xref="A1.T5.18.18.1.m1.1.1.3.2.cmml">k</mi><mo id="A1.T5.18.18.1.m1.1.1.3.1" xref="A1.T5.18.18.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A1.T5.18.18.1.m1.1.1.3.3" mathsize="80%" xref="A1.T5.18.18.1.m1.1.1.3.3.cmml">v</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T5.18.18.1.m1.1b"><apply id="A1.T5.18.18.1.m1.1.1.cmml" xref="A1.T5.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.18.18.1.m1.1.1.1.cmml" xref="A1.T5.18.18.1.m1.1.1">subscript</csymbol><ci id="A1.T5.18.18.1.m1.1.1.2.cmml" xref="A1.T5.18.18.1.m1.1.1.2">𝑛</ci><apply id="A1.T5.18.18.1.m1.1.1.3.cmml" xref="A1.T5.18.18.1.m1.1.1.3"><times id="A1.T5.18.18.1.m1.1.1.3.1.cmml" xref="A1.T5.18.18.1.m1.1.1.3.1"></times><ci id="A1.T5.18.18.1.m1.1.1.3.2.cmml" xref="A1.T5.18.18.1.m1.1.1.3.2">𝑘</ci><ci id="A1.T5.18.18.1.m1.1.1.3.3.cmml" xref="A1.T5.18.18.1.m1.1.1.3.3">𝑣</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.18.18.1.m1.1c">n_{kv}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.18.18.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k italic_v end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.18.18.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.18.18.2.1">
<span class="ltx_p" id="A1.T5.18.18.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.18.18.2.1.1.1" style="font-size:80%;">Number of tokens stored in key-value cache.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.19.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.19.19.1"><math alttext="V" class="ltx_Math" display="inline" id="A1.T5.19.19.1.m1.1"><semantics id="A1.T5.19.19.1.m1.1a"><mi id="A1.T5.19.19.1.m1.1.1" mathsize="80%" xref="A1.T5.19.19.1.m1.1.1.cmml">V</mi><annotation-xml encoding="MathML-Content" id="A1.T5.19.19.1.m1.1b"><ci id="A1.T5.19.19.1.m1.1.1.cmml" xref="A1.T5.19.19.1.m1.1.1">𝑉</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.19.19.1.m1.1c">V</annotation><annotation encoding="application/x-llamapun" id="A1.T5.19.19.1.m1.1d">italic_V</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.19.19.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.19.19.2.1">
<span class="ltx_p" id="A1.T5.19.19.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.19.19.2.1.1.1" style="font-size:80%;">Vocabulary size.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.21.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.20.20.1"><math alttext="d_{m}^{\text{avail}}" class="ltx_Math" display="inline" id="A1.T5.20.20.1.m1.1"><semantics id="A1.T5.20.20.1.m1.1a"><msubsup id="A1.T5.20.20.1.m1.1.1" xref="A1.T5.20.20.1.m1.1.1.cmml"><mi id="A1.T5.20.20.1.m1.1.1.2.2" mathsize="80%" xref="A1.T5.20.20.1.m1.1.1.2.2.cmml">d</mi><mi id="A1.T5.20.20.1.m1.1.1.2.3" mathsize="80%" xref="A1.T5.20.20.1.m1.1.1.2.3.cmml">m</mi><mtext id="A1.T5.20.20.1.m1.1.1.3" mathsize="80%" xref="A1.T5.20.20.1.m1.1.1.3a.cmml">avail</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A1.T5.20.20.1.m1.1b"><apply id="A1.T5.20.20.1.m1.1.1.cmml" xref="A1.T5.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.20.20.1.m1.1.1.1.cmml" xref="A1.T5.20.20.1.m1.1.1">superscript</csymbol><apply id="A1.T5.20.20.1.m1.1.1.2.cmml" xref="A1.T5.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.20.20.1.m1.1.1.2.1.cmml" xref="A1.T5.20.20.1.m1.1.1">subscript</csymbol><ci id="A1.T5.20.20.1.m1.1.1.2.2.cmml" xref="A1.T5.20.20.1.m1.1.1.2.2">𝑑</ci><ci id="A1.T5.20.20.1.m1.1.1.2.3.cmml" xref="A1.T5.20.20.1.m1.1.1.2.3">𝑚</ci></apply><ci id="A1.T5.20.20.1.m1.1.1.3a.cmml" xref="A1.T5.20.20.1.m1.1.1.3"><mtext id="A1.T5.20.20.1.m1.1.1.3.cmml" mathsize="56%" xref="A1.T5.20.20.1.m1.1.1.3">avail</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.20.20.1.m1.1c">d_{m}^{\text{avail}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.20.20.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT start_POSTSUPERSCRIPT avail end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.21.21.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.21.21.2.1">
<span class="ltx_p" id="A1.T5.21.21.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.21.21.2.1.1.1" style="font-size:80%;">Available memory on device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.21.21.2.1.1.m1.1"><semantics id="A1.T5.21.21.2.1.1.m1.1a"><msub id="A1.T5.21.21.2.1.1.m1.1.1" xref="A1.T5.21.21.2.1.1.m1.1.1.cmml"><mi id="A1.T5.21.21.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.21.21.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.21.21.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.21.21.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.21.21.2.1.1.m1.1b"><apply id="A1.T5.21.21.2.1.1.m1.1.1.cmml" xref="A1.T5.21.21.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.21.21.2.1.1.m1.1.1.1.cmml" xref="A1.T5.21.21.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.21.21.2.1.1.m1.1.1.2.cmml" xref="A1.T5.21.21.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.21.21.2.1.1.m1.1.1.3.cmml" xref="A1.T5.21.21.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.21.21.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.21.21.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.21.21.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.22.22">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.22.22.1"><math alttext="c^{\text{cpu}},c^{\text{gpu}}" class="ltx_Math" display="inline" id="A1.T5.22.22.1.m1.2"><semantics id="A1.T5.22.22.1.m1.2a"><mrow id="A1.T5.22.22.1.m1.2.2.2" xref="A1.T5.22.22.1.m1.2.2.3.cmml"><msup id="A1.T5.22.22.1.m1.1.1.1.1" xref="A1.T5.22.22.1.m1.1.1.1.1.cmml"><mi id="A1.T5.22.22.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.22.22.1.m1.1.1.1.1.2.cmml">c</mi><mtext id="A1.T5.22.22.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.22.22.1.m1.1.1.1.1.3a.cmml">cpu</mtext></msup><mo id="A1.T5.22.22.1.m1.2.2.2.3" mathsize="80%" xref="A1.T5.22.22.1.m1.2.2.3.cmml">,</mo><msup id="A1.T5.22.22.1.m1.2.2.2.2" xref="A1.T5.22.22.1.m1.2.2.2.2.cmml"><mi id="A1.T5.22.22.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.22.22.1.m1.2.2.2.2.2.cmml">c</mi><mtext id="A1.T5.22.22.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.22.22.1.m1.2.2.2.2.3a.cmml">gpu</mtext></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.22.22.1.m1.2b"><list id="A1.T5.22.22.1.m1.2.2.3.cmml" xref="A1.T5.22.22.1.m1.2.2.2"><apply id="A1.T5.22.22.1.m1.1.1.1.1.cmml" xref="A1.T5.22.22.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.22.22.1.m1.1.1.1.1.1.cmml" xref="A1.T5.22.22.1.m1.1.1.1.1">superscript</csymbol><ci id="A1.T5.22.22.1.m1.1.1.1.1.2.cmml" xref="A1.T5.22.22.1.m1.1.1.1.1.2">𝑐</ci><ci id="A1.T5.22.22.1.m1.1.1.1.1.3a.cmml" xref="A1.T5.22.22.1.m1.1.1.1.1.3"><mtext id="A1.T5.22.22.1.m1.1.1.1.1.3.cmml" mathsize="56%" xref="A1.T5.22.22.1.m1.1.1.1.1.3">cpu</mtext></ci></apply><apply id="A1.T5.22.22.1.m1.2.2.2.2.cmml" xref="A1.T5.22.22.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.22.22.1.m1.2.2.2.2.1.cmml" xref="A1.T5.22.22.1.m1.2.2.2.2">superscript</csymbol><ci id="A1.T5.22.22.1.m1.2.2.2.2.2.cmml" xref="A1.T5.22.22.1.m1.2.2.2.2.2">𝑐</ci><ci id="A1.T5.22.22.1.m1.2.2.2.2.3a.cmml" xref="A1.T5.22.22.1.m1.2.2.2.2.3"><mtext id="A1.T5.22.22.1.m1.2.2.2.2.3.cmml" mathsize="56%" xref="A1.T5.22.22.1.m1.2.2.2.2.3">gpu</mtext></ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.22.22.1.m1.2c">c^{\text{cpu}},c^{\text{gpu}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.22.22.1.m1.2d">italic_c start_POSTSUPERSCRIPT cpu end_POSTSUPERSCRIPT , italic_c start_POSTSUPERSCRIPT gpu end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.22.22.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.22.22.2.1">
<span class="ltx_p" id="A1.T5.22.22.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.22.22.2.1.1.1" style="font-size:80%;">Buffer sizes for CPU/GPU computations.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.24.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.23.23.1"><math alttext="s_{m}^{\text{disk}}" class="ltx_Math" display="inline" id="A1.T5.23.23.1.m1.1"><semantics id="A1.T5.23.23.1.m1.1a"><msubsup id="A1.T5.23.23.1.m1.1.1" xref="A1.T5.23.23.1.m1.1.1.cmml"><mi id="A1.T5.23.23.1.m1.1.1.2.2" mathsize="80%" xref="A1.T5.23.23.1.m1.1.1.2.2.cmml">s</mi><mi id="A1.T5.23.23.1.m1.1.1.2.3" mathsize="80%" xref="A1.T5.23.23.1.m1.1.1.2.3.cmml">m</mi><mtext id="A1.T5.23.23.1.m1.1.1.3" mathsize="80%" xref="A1.T5.23.23.1.m1.1.1.3a.cmml">disk</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A1.T5.23.23.1.m1.1b"><apply id="A1.T5.23.23.1.m1.1.1.cmml" xref="A1.T5.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.23.23.1.m1.1.1.1.cmml" xref="A1.T5.23.23.1.m1.1.1">superscript</csymbol><apply id="A1.T5.23.23.1.m1.1.1.2.cmml" xref="A1.T5.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.23.23.1.m1.1.1.2.1.cmml" xref="A1.T5.23.23.1.m1.1.1">subscript</csymbol><ci id="A1.T5.23.23.1.m1.1.1.2.2.cmml" xref="A1.T5.23.23.1.m1.1.1.2.2">𝑠</ci><ci id="A1.T5.23.23.1.m1.1.1.2.3.cmml" xref="A1.T5.23.23.1.m1.1.1.2.3">𝑚</ci></apply><ci id="A1.T5.23.23.1.m1.1.1.3a.cmml" xref="A1.T5.23.23.1.m1.1.1.3"><mtext id="A1.T5.23.23.1.m1.1.1.3.cmml" mathsize="56%" xref="A1.T5.23.23.1.m1.1.1.3">disk</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.23.23.1.m1.1c">s_{m}^{\text{disk}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.23.23.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT start_POSTSUPERSCRIPT disk end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.24.24.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.24.24.2.1">
<span class="ltx_p" id="A1.T5.24.24.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.24.24.2.1.1.1" style="font-size:80%;">Disk read throughput for device </span><math alttext="d_{m}" class="ltx_Math" display="inline" id="A1.T5.24.24.2.1.1.m1.1"><semantics id="A1.T5.24.24.2.1.1.m1.1a"><msub id="A1.T5.24.24.2.1.1.m1.1.1" xref="A1.T5.24.24.2.1.1.m1.1.1.cmml"><mi id="A1.T5.24.24.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.24.24.2.1.1.m1.1.1.2.cmml">d</mi><mi id="A1.T5.24.24.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.24.24.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.24.24.2.1.1.m1.1b"><apply id="A1.T5.24.24.2.1.1.m1.1.1.cmml" xref="A1.T5.24.24.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.24.24.2.1.1.m1.1.1.1.cmml" xref="A1.T5.24.24.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.24.24.2.1.1.m1.1.1.2.cmml" xref="A1.T5.24.24.2.1.1.m1.1.1.2">𝑑</ci><ci id="A1.T5.24.24.2.1.1.m1.1.1.3.cmml" xref="A1.T5.24.24.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.24.24.2.1.1.m1.1c">d_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.24.24.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.24.24.2.1.1.2" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.25.25">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.25.25.1"><math alttext="s_{\text{threshold}}^{\text{disk}}" class="ltx_Math" display="inline" id="A1.T5.25.25.1.m1.1"><semantics id="A1.T5.25.25.1.m1.1a"><msubsup id="A1.T5.25.25.1.m1.1.1" xref="A1.T5.25.25.1.m1.1.1.cmml"><mi id="A1.T5.25.25.1.m1.1.1.2.2" mathsize="80%" xref="A1.T5.25.25.1.m1.1.1.2.2.cmml">s</mi><mtext id="A1.T5.25.25.1.m1.1.1.2.3" mathsize="80%" xref="A1.T5.25.25.1.m1.1.1.2.3a.cmml">threshold</mtext><mtext id="A1.T5.25.25.1.m1.1.1.3" mathsize="80%" xref="A1.T5.25.25.1.m1.1.1.3a.cmml">disk</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A1.T5.25.25.1.m1.1b"><apply id="A1.T5.25.25.1.m1.1.1.cmml" xref="A1.T5.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.25.25.1.m1.1.1.1.cmml" xref="A1.T5.25.25.1.m1.1.1">superscript</csymbol><apply id="A1.T5.25.25.1.m1.1.1.2.cmml" xref="A1.T5.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.25.25.1.m1.1.1.2.1.cmml" xref="A1.T5.25.25.1.m1.1.1">subscript</csymbol><ci id="A1.T5.25.25.1.m1.1.1.2.2.cmml" xref="A1.T5.25.25.1.m1.1.1.2.2">𝑠</ci><ci id="A1.T5.25.25.1.m1.1.1.2.3a.cmml" xref="A1.T5.25.25.1.m1.1.1.2.3"><mtext id="A1.T5.25.25.1.m1.1.1.2.3.cmml" mathsize="56%" xref="A1.T5.25.25.1.m1.1.1.2.3">threshold</mtext></ci></apply><ci id="A1.T5.25.25.1.m1.1.1.3a.cmml" xref="A1.T5.25.25.1.m1.1.1.3"><mtext id="A1.T5.25.25.1.m1.1.1.3.cmml" mathsize="56%" xref="A1.T5.25.25.1.m1.1.1.3">disk</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.25.25.1.m1.1c">s_{\text{threshold}}^{\text{disk}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.25.25.1.m1.1d">italic_s start_POSTSUBSCRIPT threshold end_POSTSUBSCRIPT start_POSTSUPERSCRIPT disk end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.25.25.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.25.25.2.1">
<span class="ltx_p" id="A1.T5.25.25.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.25.25.2.1.1.1" style="font-size:80%;">A threshold for disk speed. If the disk speed is below this threshold, it is considered too slow.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.26.26">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.26.26.1"><math alttext="\mathcal{M}_{1},\mathcal{M}_{2},\mathcal{M}_{3},\mathcal{M}_{4}" class="ltx_Math" display="inline" id="A1.T5.26.26.1.m1.4"><semantics id="A1.T5.26.26.1.m1.4a"><mrow id="A1.T5.26.26.1.m1.4.4.4" xref="A1.T5.26.26.1.m1.4.4.5.cmml"><msub id="A1.T5.26.26.1.m1.1.1.1.1" xref="A1.T5.26.26.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T5.26.26.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.26.26.1.m1.1.1.1.1.2.cmml">ℳ</mi><mn id="A1.T5.26.26.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.26.26.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T5.26.26.1.m1.4.4.4.5" mathsize="80%" xref="A1.T5.26.26.1.m1.4.4.5.cmml">,</mo><msub id="A1.T5.26.26.1.m1.2.2.2.2" xref="A1.T5.26.26.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T5.26.26.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.26.26.1.m1.2.2.2.2.2.cmml">ℳ</mi><mn id="A1.T5.26.26.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.26.26.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="A1.T5.26.26.1.m1.4.4.4.6" mathsize="80%" xref="A1.T5.26.26.1.m1.4.4.5.cmml">,</mo><msub id="A1.T5.26.26.1.m1.3.3.3.3" xref="A1.T5.26.26.1.m1.3.3.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T5.26.26.1.m1.3.3.3.3.2" mathsize="80%" xref="A1.T5.26.26.1.m1.3.3.3.3.2.cmml">ℳ</mi><mn id="A1.T5.26.26.1.m1.3.3.3.3.3" mathsize="80%" xref="A1.T5.26.26.1.m1.3.3.3.3.3.cmml">3</mn></msub><mo id="A1.T5.26.26.1.m1.4.4.4.7" mathsize="80%" xref="A1.T5.26.26.1.m1.4.4.5.cmml">,</mo><msub id="A1.T5.26.26.1.m1.4.4.4.4" xref="A1.T5.26.26.1.m1.4.4.4.4.cmml"><mi class="ltx_font_mathcaligraphic" id="A1.T5.26.26.1.m1.4.4.4.4.2" mathsize="80%" xref="A1.T5.26.26.1.m1.4.4.4.4.2.cmml">ℳ</mi><mn id="A1.T5.26.26.1.m1.4.4.4.4.3" mathsize="80%" xref="A1.T5.26.26.1.m1.4.4.4.4.3.cmml">4</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.26.26.1.m1.4b"><list id="A1.T5.26.26.1.m1.4.4.5.cmml" xref="A1.T5.26.26.1.m1.4.4.4"><apply id="A1.T5.26.26.1.m1.1.1.1.1.cmml" xref="A1.T5.26.26.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.26.26.1.m1.1.1.1.1.1.cmml" xref="A1.T5.26.26.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T5.26.26.1.m1.1.1.1.1.2.cmml" xref="A1.T5.26.26.1.m1.1.1.1.1.2">ℳ</ci><cn id="A1.T5.26.26.1.m1.1.1.1.1.3.cmml" type="integer" xref="A1.T5.26.26.1.m1.1.1.1.1.3">1</cn></apply><apply id="A1.T5.26.26.1.m1.2.2.2.2.cmml" xref="A1.T5.26.26.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.26.26.1.m1.2.2.2.2.1.cmml" xref="A1.T5.26.26.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T5.26.26.1.m1.2.2.2.2.2.cmml" xref="A1.T5.26.26.1.m1.2.2.2.2.2">ℳ</ci><cn id="A1.T5.26.26.1.m1.2.2.2.2.3.cmml" type="integer" xref="A1.T5.26.26.1.m1.2.2.2.2.3">2</cn></apply><apply id="A1.T5.26.26.1.m1.3.3.3.3.cmml" xref="A1.T5.26.26.1.m1.3.3.3.3"><csymbol cd="ambiguous" id="A1.T5.26.26.1.m1.3.3.3.3.1.cmml" xref="A1.T5.26.26.1.m1.3.3.3.3">subscript</csymbol><ci id="A1.T5.26.26.1.m1.3.3.3.3.2.cmml" xref="A1.T5.26.26.1.m1.3.3.3.3.2">ℳ</ci><cn id="A1.T5.26.26.1.m1.3.3.3.3.3.cmml" type="integer" xref="A1.T5.26.26.1.m1.3.3.3.3.3">3</cn></apply><apply id="A1.T5.26.26.1.m1.4.4.4.4.cmml" xref="A1.T5.26.26.1.m1.4.4.4.4"><csymbol cd="ambiguous" id="A1.T5.26.26.1.m1.4.4.4.4.1.cmml" xref="A1.T5.26.26.1.m1.4.4.4.4">subscript</csymbol><ci id="A1.T5.26.26.1.m1.4.4.4.4.2.cmml" xref="A1.T5.26.26.1.m1.4.4.4.4.2">ℳ</ci><cn id="A1.T5.26.26.1.m1.4.4.4.4.3.cmml" type="integer" xref="A1.T5.26.26.1.m1.4.4.4.4.3">4</cn></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.26.26.1.m1.4c">\mathcal{M}_{1},\mathcal{M}_{2},\mathcal{M}_{3},\mathcal{M}_{4}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.26.26.1.m1.4d">caligraphic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , caligraphic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , caligraphic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT , caligraphic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.26.26.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.26.26.2.1">
<span class="ltx_p" id="A1.T5.26.26.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.26.26.2.1.1.1" style="font-size:80%;">Set assignments, corresponding to cases 1-4.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.27.27">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.27.27.1"><math alttext="{\bm{a}},{\bm{b}},{\bm{c}}" class="ltx_Math" display="inline" id="A1.T5.27.27.1.m1.3"><semantics id="A1.T5.27.27.1.m1.3a"><mrow id="A1.T5.27.27.1.m1.3.4.2" xref="A1.T5.27.27.1.m1.3.4.1.cmml"><mi id="A1.T5.27.27.1.m1.1.1" mathsize="80%" xref="A1.T5.27.27.1.m1.1.1.cmml">𝒂</mi><mo id="A1.T5.27.27.1.m1.3.4.2.1" mathsize="80%" xref="A1.T5.27.27.1.m1.3.4.1.cmml">,</mo><mi id="A1.T5.27.27.1.m1.2.2" mathsize="80%" xref="A1.T5.27.27.1.m1.2.2.cmml">𝒃</mi><mo id="A1.T5.27.27.1.m1.3.4.2.2" mathsize="80%" xref="A1.T5.27.27.1.m1.3.4.1.cmml">,</mo><mi id="A1.T5.27.27.1.m1.3.3" mathsize="80%" xref="A1.T5.27.27.1.m1.3.3.cmml">𝒄</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.27.27.1.m1.3b"><list id="A1.T5.27.27.1.m1.3.4.1.cmml" xref="A1.T5.27.27.1.m1.3.4.2"><ci id="A1.T5.27.27.1.m1.1.1.cmml" xref="A1.T5.27.27.1.m1.1.1">𝒂</ci><ci id="A1.T5.27.27.1.m1.2.2.cmml" xref="A1.T5.27.27.1.m1.2.2">𝒃</ci><ci id="A1.T5.27.27.1.m1.3.3.cmml" xref="A1.T5.27.27.1.m1.3.3">𝒄</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.27.27.1.m1.3c">{\bm{a}},{\bm{b}},{\bm{c}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.27.27.1.m1.3d">bold_italic_a , bold_italic_b , bold_italic_c</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.27.27.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.27.27.2.1">
<span class="ltx_p" id="A1.T5.27.27.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.27.27.2.1.1.1" style="font-size:80%;">Coefficient vectors for the objective function.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.30.30">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.28.28.1"><math alttext="{\bm{P}}_{w},{\bm{P}}_{n}" class="ltx_Math" display="inline" id="A1.T5.28.28.1.m1.2"><semantics id="A1.T5.28.28.1.m1.2a"><mrow id="A1.T5.28.28.1.m1.2.2.2" xref="A1.T5.28.28.1.m1.2.2.3.cmml"><msub id="A1.T5.28.28.1.m1.1.1.1.1" xref="A1.T5.28.28.1.m1.1.1.1.1.cmml"><mi id="A1.T5.28.28.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.28.28.1.m1.1.1.1.1.2.cmml">𝑷</mi><mi id="A1.T5.28.28.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.28.28.1.m1.1.1.1.1.3.cmml">w</mi></msub><mo id="A1.T5.28.28.1.m1.2.2.2.3" mathsize="80%" xref="A1.T5.28.28.1.m1.2.2.3.cmml">,</mo><msub id="A1.T5.28.28.1.m1.2.2.2.2" xref="A1.T5.28.28.1.m1.2.2.2.2.cmml"><mi id="A1.T5.28.28.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.28.28.1.m1.2.2.2.2.2.cmml">𝑷</mi><mi id="A1.T5.28.28.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.28.28.1.m1.2.2.2.2.3.cmml">n</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.28.28.1.m1.2b"><list id="A1.T5.28.28.1.m1.2.2.3.cmml" xref="A1.T5.28.28.1.m1.2.2.2"><apply id="A1.T5.28.28.1.m1.1.1.1.1.cmml" xref="A1.T5.28.28.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.28.28.1.m1.1.1.1.1.1.cmml" xref="A1.T5.28.28.1.m1.1.1.1.1">subscript</csymbol><ci id="A1.T5.28.28.1.m1.1.1.1.1.2.cmml" xref="A1.T5.28.28.1.m1.1.1.1.1.2">𝑷</ci><ci id="A1.T5.28.28.1.m1.1.1.1.1.3.cmml" xref="A1.T5.28.28.1.m1.1.1.1.1.3">𝑤</ci></apply><apply id="A1.T5.28.28.1.m1.2.2.2.2.cmml" xref="A1.T5.28.28.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.28.28.1.m1.2.2.2.2.1.cmml" xref="A1.T5.28.28.1.m1.2.2.2.2">subscript</csymbol><ci id="A1.T5.28.28.1.m1.2.2.2.2.2.cmml" xref="A1.T5.28.28.1.m1.2.2.2.2.2">𝑷</ci><ci id="A1.T5.28.28.1.m1.2.2.2.2.3.cmml" xref="A1.T5.28.28.1.m1.2.2.2.2.3">𝑛</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.28.28.1.m1.2c">{\bm{P}}_{w},{\bm{P}}_{n}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.28.28.1.m1.2d">bold_italic_P start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT , bold_italic_P start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.30.30.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.30.30.3.2">
<span class="ltx_p" id="A1.T5.30.30.3.2.2" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.30.30.3.2.2.1" style="font-size:80%;">Constraint coefficients for </span><math alttext="w_{m}" class="ltx_Math" display="inline" id="A1.T5.29.29.2.1.1.m1.1"><semantics id="A1.T5.29.29.2.1.1.m1.1a"><msub id="A1.T5.29.29.2.1.1.m1.1.1" xref="A1.T5.29.29.2.1.1.m1.1.1.cmml"><mi id="A1.T5.29.29.2.1.1.m1.1.1.2" mathsize="80%" xref="A1.T5.29.29.2.1.1.m1.1.1.2.cmml">w</mi><mi id="A1.T5.29.29.2.1.1.m1.1.1.3" mathsize="80%" xref="A1.T5.29.29.2.1.1.m1.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.29.29.2.1.1.m1.1b"><apply id="A1.T5.29.29.2.1.1.m1.1.1.cmml" xref="A1.T5.29.29.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.29.29.2.1.1.m1.1.1.1.cmml" xref="A1.T5.29.29.2.1.1.m1.1.1">subscript</csymbol><ci id="A1.T5.29.29.2.1.1.m1.1.1.2.cmml" xref="A1.T5.29.29.2.1.1.m1.1.1.2">𝑤</ci><ci id="A1.T5.29.29.2.1.1.m1.1.1.3.cmml" xref="A1.T5.29.29.2.1.1.m1.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.29.29.2.1.1.m1.1c">w_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.29.29.2.1.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.30.30.3.2.2.2" style="font-size:80%;"> and </span><math alttext="n_{m}" class="ltx_Math" display="inline" id="A1.T5.30.30.3.2.2.m2.1"><semantics id="A1.T5.30.30.3.2.2.m2.1a"><msub id="A1.T5.30.30.3.2.2.m2.1.1" xref="A1.T5.30.30.3.2.2.m2.1.1.cmml"><mi id="A1.T5.30.30.3.2.2.m2.1.1.2" mathsize="80%" xref="A1.T5.30.30.3.2.2.m2.1.1.2.cmml">n</mi><mi id="A1.T5.30.30.3.2.2.m2.1.1.3" mathsize="80%" xref="A1.T5.30.30.3.2.2.m2.1.1.3.cmml">m</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T5.30.30.3.2.2.m2.1b"><apply id="A1.T5.30.30.3.2.2.m2.1.1.cmml" xref="A1.T5.30.30.3.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T5.30.30.3.2.2.m2.1.1.1.cmml" xref="A1.T5.30.30.3.2.2.m2.1.1">subscript</csymbol><ci id="A1.T5.30.30.3.2.2.m2.1.1.2.cmml" xref="A1.T5.30.30.3.2.2.m2.1.1.2">𝑛</ci><ci id="A1.T5.30.30.3.2.2.m2.1.1.3.cmml" xref="A1.T5.30.30.3.2.2.m2.1.1.3">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.30.30.3.2.2.m2.1c">n_{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.30.30.3.2.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.30.30.3.2.2.3" style="font-size:80%;">, should be diagonal matrices.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.31.31">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.31.31.1"><math alttext="{\bm{P}}_{n}^{\text{gpu}}" class="ltx_Math" display="inline" id="A1.T5.31.31.1.m1.1"><semantics id="A1.T5.31.31.1.m1.1a"><msubsup id="A1.T5.31.31.1.m1.1.1" xref="A1.T5.31.31.1.m1.1.1.cmml"><mi id="A1.T5.31.31.1.m1.1.1.2.2" mathsize="80%" xref="A1.T5.31.31.1.m1.1.1.2.2.cmml">𝑷</mi><mi id="A1.T5.31.31.1.m1.1.1.2.3" mathsize="80%" xref="A1.T5.31.31.1.m1.1.1.2.3.cmml">n</mi><mtext id="A1.T5.31.31.1.m1.1.1.3" mathsize="80%" xref="A1.T5.31.31.1.m1.1.1.3a.cmml">gpu</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A1.T5.31.31.1.m1.1b"><apply id="A1.T5.31.31.1.m1.1.1.cmml" xref="A1.T5.31.31.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.31.31.1.m1.1.1.1.cmml" xref="A1.T5.31.31.1.m1.1.1">superscript</csymbol><apply id="A1.T5.31.31.1.m1.1.1.2.cmml" xref="A1.T5.31.31.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.31.31.1.m1.1.1.2.1.cmml" xref="A1.T5.31.31.1.m1.1.1">subscript</csymbol><ci id="A1.T5.31.31.1.m1.1.1.2.2.cmml" xref="A1.T5.31.31.1.m1.1.1.2.2">𝑷</ci><ci id="A1.T5.31.31.1.m1.1.1.2.3.cmml" xref="A1.T5.31.31.1.m1.1.1.2.3">𝑛</ci></apply><ci id="A1.T5.31.31.1.m1.1.1.3a.cmml" xref="A1.T5.31.31.1.m1.1.1.3"><mtext id="A1.T5.31.31.1.m1.1.1.3.cmml" mathsize="56%" xref="A1.T5.31.31.1.m1.1.1.3">gpu</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.31.31.1.m1.1c">{\bm{P}}_{n}^{\text{gpu}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.31.31.1.m1.1d">bold_italic_P start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT start_POSTSUPERSCRIPT gpu end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.31.31.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.31.31.2.1">
<span class="ltx_p" id="A1.T5.31.31.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.31.31.2.1.1.1" style="font-size:80%;">A diagonal binary matrix that indicates whether a device uses a GPU.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.34.34">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.32.32.1"><math alttext="{\bm{w}}^{\prime},{\bm{n}}^{\prime}" class="ltx_Math" display="inline" id="A1.T5.32.32.1.m1.2"><semantics id="A1.T5.32.32.1.m1.2a"><mrow id="A1.T5.32.32.1.m1.2.2.2" xref="A1.T5.32.32.1.m1.2.2.3.cmml"><msup id="A1.T5.32.32.1.m1.1.1.1.1" xref="A1.T5.32.32.1.m1.1.1.1.1.cmml"><mi id="A1.T5.32.32.1.m1.1.1.1.1.2" mathsize="80%" xref="A1.T5.32.32.1.m1.1.1.1.1.2.cmml">𝒘</mi><mo id="A1.T5.32.32.1.m1.1.1.1.1.3" mathsize="80%" xref="A1.T5.32.32.1.m1.1.1.1.1.3.cmml">′</mo></msup><mo id="A1.T5.32.32.1.m1.2.2.2.3" mathsize="80%" xref="A1.T5.32.32.1.m1.2.2.3.cmml">,</mo><msup id="A1.T5.32.32.1.m1.2.2.2.2" xref="A1.T5.32.32.1.m1.2.2.2.2.cmml"><mi id="A1.T5.32.32.1.m1.2.2.2.2.2" mathsize="80%" xref="A1.T5.32.32.1.m1.2.2.2.2.2.cmml">𝒏</mi><mo id="A1.T5.32.32.1.m1.2.2.2.2.3" mathsize="80%" xref="A1.T5.32.32.1.m1.2.2.2.2.3.cmml">′</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.32.32.1.m1.2b"><list id="A1.T5.32.32.1.m1.2.2.3.cmml" xref="A1.T5.32.32.1.m1.2.2.2"><apply id="A1.T5.32.32.1.m1.1.1.1.1.cmml" xref="A1.T5.32.32.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T5.32.32.1.m1.1.1.1.1.1.cmml" xref="A1.T5.32.32.1.m1.1.1.1.1">superscript</csymbol><ci id="A1.T5.32.32.1.m1.1.1.1.1.2.cmml" xref="A1.T5.32.32.1.m1.1.1.1.1.2">𝒘</ci><ci id="A1.T5.32.32.1.m1.1.1.1.1.3.cmml" xref="A1.T5.32.32.1.m1.1.1.1.1.3">′</ci></apply><apply id="A1.T5.32.32.1.m1.2.2.2.2.cmml" xref="A1.T5.32.32.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.32.32.1.m1.2.2.2.2.1.cmml" xref="A1.T5.32.32.1.m1.2.2.2.2">superscript</csymbol><ci id="A1.T5.32.32.1.m1.2.2.2.2.2.cmml" xref="A1.T5.32.32.1.m1.2.2.2.2.2">𝒏</ci><ci id="A1.T5.32.32.1.m1.2.2.2.2.3.cmml" xref="A1.T5.32.32.1.m1.2.2.2.2.3">′</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.32.32.1.m1.2c">{\bm{w}}^{\prime},{\bm{n}}^{\prime}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.32.32.1.m1.2d">bold_italic_w start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT , bold_italic_n start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.34.34.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.34.34.3.2">
<span class="ltx_p" id="A1.T5.34.34.3.2.2" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.34.34.3.2.2.1" style="font-size:80%;">Extended vectors for </span><math alttext="{\bm{w}}" class="ltx_Math" display="inline" id="A1.T5.33.33.2.1.1.m1.1"><semantics id="A1.T5.33.33.2.1.1.m1.1a"><mi id="A1.T5.33.33.2.1.1.m1.1.1" mathsize="80%" xref="A1.T5.33.33.2.1.1.m1.1.1.cmml">𝒘</mi><annotation-xml encoding="MathML-Content" id="A1.T5.33.33.2.1.1.m1.1b"><ci id="A1.T5.33.33.2.1.1.m1.1.1.cmml" xref="A1.T5.33.33.2.1.1.m1.1.1">𝒘</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.33.33.2.1.1.m1.1c">{\bm{w}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.33.33.2.1.1.m1.1d">bold_italic_w</annotation></semantics></math><span class="ltx_text" id="A1.T5.34.34.3.2.2.2" style="font-size:80%;"> and </span><math alttext="{\bm{n}}" class="ltx_Math" display="inline" id="A1.T5.34.34.3.2.2.m2.1"><semantics id="A1.T5.34.34.3.2.2.m2.1a"><mi id="A1.T5.34.34.3.2.2.m2.1.1" mathsize="80%" xref="A1.T5.34.34.3.2.2.m2.1.1.cmml">𝒏</mi><annotation-xml encoding="MathML-Content" id="A1.T5.34.34.3.2.2.m2.1b"><ci id="A1.T5.34.34.3.2.2.m2.1.1.cmml" xref="A1.T5.34.34.3.2.2.m2.1.1">𝒏</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.34.34.3.2.2.m2.1c">{\bm{n}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.34.34.3.2.2.m2.1d">bold_italic_n</annotation></semantics></math><span class="ltx_text" id="A1.T5.34.34.3.2.2.3" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.35.35">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T5.35.35.1"><math alttext="{\bm{z}},{\bm{z}}^{\text{gpu}}" class="ltx_Math" display="inline" id="A1.T5.35.35.1.m1.2"><semantics id="A1.T5.35.35.1.m1.2a"><mrow id="A1.T5.35.35.1.m1.2.2.1" xref="A1.T5.35.35.1.m1.2.2.2.cmml"><mi id="A1.T5.35.35.1.m1.1.1" mathsize="80%" xref="A1.T5.35.35.1.m1.1.1.cmml">𝒛</mi><mo id="A1.T5.35.35.1.m1.2.2.1.2" mathsize="80%" xref="A1.T5.35.35.1.m1.2.2.2.cmml">,</mo><msup id="A1.T5.35.35.1.m1.2.2.1.1" xref="A1.T5.35.35.1.m1.2.2.1.1.cmml"><mi id="A1.T5.35.35.1.m1.2.2.1.1.2" mathsize="80%" xref="A1.T5.35.35.1.m1.2.2.1.1.2.cmml">𝒛</mi><mtext id="A1.T5.35.35.1.m1.2.2.1.1.3" mathsize="80%" xref="A1.T5.35.35.1.m1.2.2.1.1.3a.cmml">gpu</mtext></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.35.35.1.m1.2b"><list id="A1.T5.35.35.1.m1.2.2.2.cmml" xref="A1.T5.35.35.1.m1.2.2.1"><ci id="A1.T5.35.35.1.m1.1.1.cmml" xref="A1.T5.35.35.1.m1.1.1">𝒛</ci><apply id="A1.T5.35.35.1.m1.2.2.1.1.cmml" xref="A1.T5.35.35.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="A1.T5.35.35.1.m1.2.2.1.1.1.cmml" xref="A1.T5.35.35.1.m1.2.2.1.1">superscript</csymbol><ci id="A1.T5.35.35.1.m1.2.2.1.1.2.cmml" xref="A1.T5.35.35.1.m1.2.2.1.1.2">𝒛</ci><ci id="A1.T5.35.35.1.m1.2.2.1.1.3a.cmml" xref="A1.T5.35.35.1.m1.2.2.1.1.3"><mtext id="A1.T5.35.35.1.m1.2.2.1.1.3.cmml" mathsize="56%" xref="A1.T5.35.35.1.m1.2.2.1.1.3">gpu</mtext></ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.35.35.1.m1.2c">{\bm{z}},{\bm{z}}^{\text{gpu}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.35.35.1.m1.2d">bold_italic_z , bold_italic_z start_POSTSUPERSCRIPT gpu end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A1.T5.35.35.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.35.35.2.1">
<span class="ltx_p" id="A1.T5.35.35.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="A1.T5.35.35.2.1.1.1" style="font-size:80%;">Vectors of RAM/VRAM upper bounds for constraints.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists key symbols used in the paper and their corresponding explanations.  It includes symbols representing the number of devices, layer window sizes, number of GPU layers, token latency, computation and memory access latencies, disk loading latency, and communication latency.  It also defines parameters related to memory usage, device categories, and constraint coefficients used in the optimization model.
> <details>
> <summary>read the caption</summary>
> Table 5: Summary of key symbols and their explanations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A1.T6.6">
<tr class="ltx_tr" id="A1.T6.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T6.6.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.6.1.2"><span class="ltx_text" id="A1.T6.6.1.2.1" style="font-size:80%;">llama.cpp</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.6.1.3">
<span class="ltx_text" id="A1.T6.6.1.3.1" style="font-size:80%;">exo</span><sup class="ltx_sup" id="A1.T6.6.1.3.2"><span class="ltx_text" id="A1.T6.6.1.3.2.1" style="font-size:80%;">1</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.6.1.4"><span class="ltx_text" id="A1.T6.6.1.4.1" style="font-size:80%;">dllama</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.5"><span class="ltx_text" id="A1.T6.6.1.5.1" style="font-size:80%;">prima.cpp</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.6.2.1"><span class="ltx_text" id="A1.T6.6.2.1.1" style="font-size:80%;">Qwen-2.5-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.2.2"><span class="ltx_text ltx_font_bold" id="A1.T6.6.2.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.2.3"><span class="ltx_text" id="A1.T6.6.2.3.1" style="font-size:80%;">86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.2.4"><span class="ltx_text" id="A1.T6.6.2.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.2.5"><span class="ltx_text" id="A1.T6.6.2.5.1" style="font-size:80%;">44</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.3.1"><span class="ltx_text" id="A1.T6.6.3.1.1" style="font-size:80%;">DeepSeek-R1-Distill-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.3.2"><span class="ltx_text ltx_font_bold" id="A1.T6.6.3.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.3.3">
<span class="ltx_text" id="A1.T6.6.3.3.1" style="font-size:80%;">68</span><sup class="ltx_sup" id="A1.T6.6.3.3.2"><span class="ltx_text" id="A1.T6.6.3.3.2.1" style="font-size:80%;">2</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.3.4"><span class="ltx_text" id="A1.T6.6.3.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.3.5"><span class="ltx_text" id="A1.T6.6.3.5.1" style="font-size:80%;">52</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.4.1"><span class="ltx_text" id="A1.T6.6.4.1.1" style="font-size:80%;">DeepSeek-R1-Distill-Llama-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.4.2"><span class="ltx_text ltx_font_bold" id="A1.T6.6.4.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.4.3">
<span class="ltx_text" id="A1.T6.6.4.3.1" style="font-size:80%;">77</span><sup class="ltx_sup" id="A1.T6.6.4.3.2"><span class="ltx_text" id="A1.T6.6.4.3.2.1" style="font-size:80%;">2</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.4.4"><span class="ltx_text" id="A1.T6.6.4.4.1" style="font-size:80%;">435</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.4.5"><span class="ltx_text" id="A1.T6.6.4.5.1" style="font-size:80%;">59</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.5.1"><span class="ltx_text" id="A1.T6.6.5.1.1" style="font-size:80%;">Qwen-2.5-14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.5.2"><span class="ltx_text ltx_font_bold" id="A1.T6.6.5.2.1" style="font-size:80%;">23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.5.3">
<span class="ltx_text" id="A1.T6.6.5.3.1" style="font-size:80%;">31710</span><sup class="ltx_sup" id="A1.T6.6.5.3.2"><span class="ltx_text" id="A1.T6.6.5.3.2.1" style="font-size:80%;">3</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.5.4"><span class="ltx_text" id="A1.T6.6.5.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.5.5"><span class="ltx_text" id="A1.T6.6.5.5.1" style="font-size:80%;">65</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.6.1"><span class="ltx_text" id="A1.T6.6.6.1.1" style="font-size:80%;">DeepSeek-R1-Distill-Qwen-14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.6.2"><span class="ltx_text ltx_font_bold" id="A1.T6.6.6.2.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.6.3">
<span class="ltx_text" id="A1.T6.6.6.3.1" style="font-size:80%;">23475</span><sup class="ltx_sup" id="A1.T6.6.6.3.2"><span class="ltx_text" id="A1.T6.6.6.3.2.1" style="font-size:80%;">3</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.6.4"><span class="ltx_text" id="A1.T6.6.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.6.5"><span class="ltx_text" id="A1.T6.6.6.5.1" style="font-size:80%;">76</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.6.7.1"><span class="ltx_text" id="A1.T6.6.7.1.1" style="font-size:80%;">Qwen-2.5-32B and QwQ-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.7.2"><span class="ltx_text" id="A1.T6.6.7.2.1" style="font-size:80%;">224</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.7.3"><span class="ltx_text" id="A1.T6.6.7.3.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.7.4"><span class="ltx_text" id="A1.T6.6.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.7.5"><span class="ltx_text ltx_font_bold" id="A1.T6.6.7.5.1" style="font-size:80%;">89</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.8.1"><span class="ltx_text" id="A1.T6.6.8.1.1" style="font-size:80%;">DeepSeek-R1-Distill-Qwen-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.8.2"><span class="ltx_text" id="A1.T6.6.8.2.1" style="font-size:80%;">232</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.8.3"><span class="ltx_text" id="A1.T6.6.8.3.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.8.4"><span class="ltx_text" id="A1.T6.6.8.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.8.5"><span class="ltx_text ltx_font_bold" id="A1.T6.6.8.5.1" style="font-size:80%;">93</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.6.9.1"><span class="ltx_text" id="A1.T6.6.9.1.1" style="font-size:80%;">DeepSeek-R1-Distill-Llama-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.9.2"><span class="ltx_text" id="A1.T6.6.9.2.1" style="font-size:80%;">10978</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.9.3"><span class="ltx_text" id="A1.T6.6.9.3.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.9.4"><span class="ltx_text" id="A1.T6.6.9.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.9.5"><span class="ltx_text ltx_font_bold" id="A1.T6.6.9.5.1" style="font-size:80%;">724</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T6.6.10.1"><span class="ltx_text" id="A1.T6.6.10.1.1" style="font-size:80%;">Qwen-2.5-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.6.10.2"><span class="ltx_text" id="A1.T6.6.10.2.1" style="font-size:80%;">12227</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.6.10.3"><span class="ltx_text" id="A1.T6.6.10.3.1" style="font-size:80%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.6.10.4"><span class="ltx_text" id="A1.T6.6.10.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.10.5"><span class="ltx_text ltx_font_bold" id="A1.T6.6.10.5.1" style="font-size:80%;">867</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the token latency results in milliseconds for various large language models (LLMs), specifically focusing on the Qwen, QwQ, and distilled DeepSeek R1 model families.  It shows how the latency varies based on the model size, demonstrating the performance of the proposed prima.cpp system in comparison to other existing systems, such as llama.cpp, exo, and dllama.
> <details>
> <summary>read the caption</summary>
> Table 6: Token latency (in millisecond/token) for Qwen, QwQ and distilled DeepSeek R1 models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08791/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08791/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}