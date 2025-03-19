---
title: "PEBench: A Fictitious Dataset to Benchmark Machine Unlearning for Multimodal Large Language Models"
summary: "PEBench: A new benchmark for machine unlearning in multimodal language models, enhancing secure multimodal model development."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 HIT",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12545 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhaopan Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12545" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12545" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12545/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models have shown great improvements. However, their dependence on vast amounts of internet data raises privacy concerns. Machine unlearning(MU) is a solution, allowing removal of knowledge from trained models without retraining. Existing MU evaluations are incomplete and poorly defined, hindering secure system development. Prior benchmarks are limited to discrete entities and overlook the coupling of concepts within images.



This paper introduces **a new benchmark designed to evaluate machine unlearning(MU) performance in Multimodal Large Language Models(MLLMs)**. The benchmark assesses both personal entity and general event unlearning, revealing limitations of current MU methods. It benchmarks MU methods, revealing strengths and weaknesses, providing guidance for future improvements and enhances the security of multimodal models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PEBench, a novel benchmark, aids in evaluating machine unlearning (MU) for multimodal large language models (MLLMs). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study identifies strengths and weaknesses in current MU methods, providing guidance for future improvements in MU methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PEBench facilitates the evaluation of both private information removal and concept unlearning by using consistent imagery across diverse entities and scenes. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces **PEBench**, a new benchmark for assessing machine unlearning in multimodal models. By providing a comprehensive dataset, it addresses gaps in current evaluations. This work will advance secure multimodal models and opens avenues for further investigation into the challenges and opportunities of machine unlearning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12545/x2.png)

> 🔼 Figure 1 illustrates the concept of machine unlearning (MU) in multimodal large language models (MLLMs) using an example image of Joe Biden speaking at the White House.  Panel (a) shows that before unlearning, the MLLM correctly identifies both the person (Joe Biden) and the event (speaking at the White House).  The goal of MU is to selectively remove specific information from the model without retraining. Panel (b) demonstrates the result when the unlearning target is the 'Identity' of Joe Biden; the model incorrectly identifies him as someone else. Panel (c) shows the outcome when the unlearning target is the 'Event'; the model misinterprets the event as a concert. This figure highlights the challenge of MU in MLLMs, where removing specific information can unintentionally affect related concepts.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of an image of Joe Biden speaking at the White House. Before unlearning (a) MLLMs have the ability to generate responses related to various visual concepts (Identify and Event). The goal of Machine Unlearning (MU) for MLLMs is to selectively forget specific concepts within the model. When the unlearning target is Identity (b), the model mistakenly identifies Joe Biden as a different person. When the unlearning target is Event (c), the model misinterprets the speech as a concert.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1">Person Unlearning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1">Events Unlearning</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.1.1">Efficacy</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.2.1">Generality</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.3.1">Retain</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.4.1">Scope</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.5.1">Real</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.2.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.6.1">World Fact</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.7"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.7.1">Efficacy</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.8"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.8.1">Generality</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.9"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.9.1">Retain</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.10"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.10.1">Scope</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.11"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.11.1">Real</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.12"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.12.1">World Fact</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.1"><span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.3"><span class="ltx_text" id="S3.T1.2.1.3.3.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.4"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="font-size:90%;">ROUGE-L</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.5"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.3.6"><span class="ltx_text" id="S3.T1.2.1.3.6.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.7"><span class="ltx_text" id="S3.T1.2.1.3.7.1" style="font-size:90%;">G-Eval</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.8"><span class="ltx_text" id="S3.T1.2.1.3.8.1" style="font-size:90%;">G-Eval</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.9"><span class="ltx_text" id="S3.T1.2.1.3.9.1" style="font-size:90%;">G-Eval</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.10"><span class="ltx_text" id="S3.T1.2.1.3.10.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.11"><span class="ltx_text" id="S3.T1.2.1.3.11.1" style="font-size:90%;">ROUGE-L</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.12"><span class="ltx_text" id="S3.T1.2.1.3.12.1" style="font-size:90%;">POPE</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.4.1"><span class="ltx_text" id="S3.T1.2.1.4.1.1" style="background-color:#BFBFBF;">Finetune (Base)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.2"><span class="ltx_text" id="S3.T1.2.1.4.2.1" style="background-color:#BFBFBF;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.3"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="background-color:#BFBFBF;">2.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.4"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="background-color:#BFBFBF;">97.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.5"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="background-color:#BFBFBF;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.6"><span class="ltx_text" id="S3.T1.2.1.4.6.1" style="background-color:#BFBFBF;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.4.7"><span class="ltx_text" id="S3.T1.2.1.4.7.1" style="background-color:#BFBFBF;">85.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.8"><span class="ltx_text" id="S3.T1.2.1.4.8.1" style="background-color:#BFBFBF;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.9"><span class="ltx_text" id="S3.T1.2.1.4.9.1" style="background-color:#BFBFBF;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.10"><span class="ltx_text" id="S3.T1.2.1.4.10.1" style="background-color:#BFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.11"><span class="ltx_text" id="S3.T1.2.1.4.11.1" style="background-color:#BFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.12"><span class="ltx_text" id="S3.T1.2.1.4.12.1" style="background-color:#BFBFBF;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.13"><span class="ltx_text" id="S3.T1.2.1.4.13.1" style="background-color:#BFBFBF;">85.88</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.5.1">PO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.2.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.3.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4">4.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.5">0.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.6.1">86.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.5.7">78.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.8">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.9">0.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.10"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.10.1">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.11"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.11.1">98.86</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.12">0.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.13">77.23</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.6.1">GA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.6.2.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.6.3.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.4">3.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.5">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.6">71.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.6.7">78.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.8">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.9">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.10">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.11">78.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.12">0.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.13">78.82</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.7.1">GD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2">98.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3">98.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.7.4.1">21.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.5">0.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.6">76.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.7.7">77.08</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.8"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.7.8.1">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.9"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.7.9.1">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.10">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.11">81.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.12">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.13">79.07</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.8.1">KL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.8.2.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.3">99.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.4">5.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.5">0.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.6">73.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.8.7">78.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.8">0.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.9">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.10">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.11">80.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.12">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.13">78.75</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.9.1">SIU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.9.2.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.9.3.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.4">10.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.5">0.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.6">80.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.9.7.1">79.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.8">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.9">0.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.10">0.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.11">84.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.12"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.9.12.1">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.13"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.9.13.1">80.07</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.10.1">DPO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.10.2.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.10.3.1">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.4">8.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.10.5.1">0.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.10.6.1">82.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.10.7">78.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.8">0.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.9">0.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.10">0.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.11">83.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.12">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.13">79.28</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11" style="background-color:#FFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.2.1.11.1"><span class="ltx_text" id="S3.T1.2.1.11.1.1" style="background-color:#FFBFBF;">Goal (Upper Bound)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.2"><span class="ltx_text" id="S3.T1.2.1.11.2.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.3"><span class="ltx_text" id="S3.T1.2.1.11.3.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.4"><span class="ltx_text" id="S3.T1.2.1.11.4.1" style="background-color:#FFBFBF;">96.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.5"><span class="ltx_text" id="S3.T1.2.1.11.5.1" style="background-color:#FFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.6"><span class="ltx_text" id="S3.T1.2.1.11.6.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.2.1.11.7"><span class="ltx_text" id="S3.T1.2.1.11.7.1" style="background-color:#FFBFBF;">87.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.8"><span class="ltx_text" id="S3.T1.2.1.11.8.1" style="background-color:#FFBFBF;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.9"><span class="ltx_text" id="S3.T1.2.1.11.9.1" style="background-color:#FFBFBF;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.10"><span class="ltx_text" id="S3.T1.2.1.11.10.1" style="background-color:#FFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.11"><span class="ltx_text" id="S3.T1.2.1.11.11.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.12"><span class="ltx_text" id="S3.T1.2.1.11.12.1" style="background-color:#FFBFBF;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.11.13"><span class="ltx_text" id="S3.T1.2.1.11.13.1" style="background-color:#FFBFBF;">87.52</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive evaluation of six different machine unlearning (MU) methods on the PEBench benchmark dataset.  The evaluation focuses on the task of removing specific personal entities and event information from a multimodal large language model (MLLM).  For each method, the table reports four key metrics: Efficacy (how well the model forgets the targeted information), Generality (how well the forgetting generalizes to unseen data), Retain (how well the model retains knowledge of untargeted information), and World Fact (how well the model performs on general world knowledge). The 'Finetune' row provides the baseline performance of the model without unlearning, and the 'Goal' row represents the ideal performance if the unwanted data could be perfectly removed without retraining.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance overview of different MU methods evaluated on PEBench. The performance metrics include Efficacy, Generality, Retain, Real, and World Fact. A higher score represents better performance. Finetune represents the baseline performance (lower bound for unlearning), and Goal represents the ideal unlearning model (upper bound).
> </details>





### In-depth insights


#### MU for MLLMs
**MU for MLLMs** presents unique challenges. Erasing knowledge from these models requires careful consideration due to their multimodal nature. Current benchmarks may not fully capture the complexity of real-world scenarios, especially the intricate relationships between entities and events. Selective forgetting, without impacting related concepts, is crucial for practical applications like privacy protection and content moderation. Further research is needed to develop more robust and nuanced MU techniques tailored to MLLMs.

#### PEBench Intro
**PEBench**, as introduced in the abstract, is a new benchmark designed to rigorously assess machine unlearning (MU) techniques specifically within Multimodal Large Language Models (MLLMs). The necessity of PEBench arises from the limitations of current MU evaluations, which often lack comprehensiveness and a clear problem definition, hindering advancements in secure and trustworthy AI systems. The **dataset is personal entities and event scenes**, it aims to provide a standardized framework for MU research in MLLMs, which should make advancing privacy-preserving multimodal models much easier. The experiments done reveal strengths, limitations of MU methods, also key areas for progress in MLLM unlearning.

#### SynthData+MU
**Synthetic data offers a controlled environment** for machine unlearning (MU) research, allowing researchers to systematically manipulate data characteristics and assess MU methods' effectiveness. This approach addresses the challenge of data dependencies, ensuring reliable evaluation. By focusing on data absent from pre-training, benchmarks can establish an 'unlearned' state, facilitating comparisons. **Synthetic data also enables targeted generation of specific scenarios**, like harmful content. This aids in stress-testing MU algorithms. **Challenges** include bridging the gap between synthetic and real-world data, ensuring that lessons learned from synthetic datasets generalize effectively. Further work might focus on transfer learning techniques or domain adaptation methods to improve the applicability of synthetic data to real-world MU scenarios. 

#### G-Eval: Event MU
**G-Eval for Event MU** is a key metric for assessing the effectiveness of machine unlearning, specifically focusing on how well a model "forgets" or removes specific events. This evaluation likely employs **GPT-4** to assess the similarity between the unlearned model's output, a 'ground truth,' and an ideal 'goal' model's output. The G-Eval score likely ranges from 0 to 1. **A score closer to 1** could signify the unlearned output closely matches the ideal model, indicating effective event removal, while a lower score suggests the unlearned model retains undesirable information or leans towards the original state. It's crucial in multimodal scenarios as it considers how unlearning affects the overall context.

#### BGD+Balancing
While 'BGD+Balancing' isn't explicitly a heading in the paper, the concept is present, likely referring to a balanced gradient difference approach incorporating data and task balancing, as introduced in the paper.  A BGD approach aims to enhance machine unlearning by addressing data imbalance challenges. **It focuses on dynamically adjusting the sampling ratio between event and individual data to avoid one dominating the learning process.** Multi-task balancing will include applying separate loss functions to the individual and event unlearning. This strategy helps in **mitigating interference** when learning both targets. **Combining BGD with Gradient Difference allows for better fine-tuning while unlearning, leading to higher effectiveness for the unlearning performance** in both personal entities and event scenes. Also, this approach will prevent a potential 'collapse' of performance by carefully balancing the learning signals. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12545/x6.png)

> 🔼 This figure compares PEBench with two other multimodal machine unlearning (MU) benchmarks for large language models (LLMs): MMUBench and CLEAR.  MMUBench uses real-world entities and images, while CLEAR uses synthetic data.  PEBench, in contrast, utilizes synthetic data to avoid data leakage issues and enables a fairer comparison of MU methods. The figure highlights that existing benchmarks focus on discrete entities, whereas PEBench expands the scope to encompass both identities and event scenes (broader visual concepts) commonly found together within images. This allows for a more comprehensive and realistic evaluation of MU in MLLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison between previous MU benchmarks for MLLMs and our PEBench.
> </details>



![](https://arxiv.org/html/2503.12545/x7.png)

> 🔼 Figure 3 provides a detailed overview of the PEBench framework, illustrating the complete data curation and evaluation pipeline. The framework consists of two main stages. The first stage focuses on data curation: generating text descriptions for diverse person-event pairs using GPT-4 and generating corresponding images to ensure consistency and coupling in visual concepts. The second stage is the evaluation pipeline which involves splitting the dataset, training the goal model and the finetuned model, and finally evaluating their performance to assess the effectiveness of the unlearning methods using metrics like Efficacy, Generality, Scope, and more. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the PEBench framework, illustrating the data curation and evaluation processes.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.22.22">
<tr class="ltx_tr" id="S4.T2.22.22.23">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.22.22.23.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.23.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T2.22.22.23.2"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.23.2.1">Person Unlearning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T2.22.22.23.3"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.23.3.1">Events Unlearning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.24">
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.1"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.1.1">Efficacy</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.2"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.2.1">Generality</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.3"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.3.1">Retain</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.4"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.4.1">Real</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.22.24.5"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.5.1">World Fact</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.6"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.6.1">Efficacy</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.7"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.7.1">Generality</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.8"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.8.1">Retain</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.9"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.9.1">Real</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.24.10"><span class="ltx_text ltx_font_bold" id="S4.T2.22.22.24.10.1">World Fact</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.25" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.22.22.25.1"><span class="ltx_text" id="S4.T2.22.22.25.1.1" style="background-color:#BFBFBF;">Finetune (Base)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.2"><span class="ltx_text" id="S4.T2.22.22.25.2.1" style="background-color:#BFBFBF;">0.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.3"><span class="ltx_text" id="S4.T2.22.22.25.3.1" style="background-color:#BFBFBF;">2.24</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.4"><span class="ltx_text" id="S4.T2.22.22.25.4.1" style="background-color:#BFBFBF;">97.53</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.5"><span class="ltx_text" id="S4.T2.22.22.25.5.1" style="background-color:#BFBFBF;">100.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.22.22.25.6"><span class="ltx_text" id="S4.T2.22.22.25.6.1" style="background-color:#BFBFBF;">85.88</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.7"><span class="ltx_text" id="S4.T2.22.22.25.7.1" style="background-color:#BFBFBF;">0.18</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.8"><span class="ltx_text" id="S4.T2.22.22.25.8.1" style="background-color:#BFBFBF;">0.20</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.9"><span class="ltx_text" id="S4.T2.22.22.25.9.1" style="background-color:#BFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.10"><span class="ltx_text" id="S4.T2.22.22.25.10.1" style="background-color:#BFBFBF;">0.56</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.22.22.25.11"><span class="ltx_text" id="S4.T2.22.22.25.11.1" style="background-color:#BFBFBF;">85.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.26.1">GD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.2">55.00</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.3">55.00</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.4">39.72</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.5">95.80</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.22.26.6">77.08</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.7">0.36</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.8">0.34</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.9">0.88</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.10">0.37</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.26.11">77.08</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.1.1">GD<sub class="ltx_sub" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1.1.1">+BGD</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.2.2.2.2">63.50<sub class="ltx_sub" id="S4.T2.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.2.1.1">+8.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.3">62.58<sub class="ltx_sub" id="S4.T2.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.3.3.3.3.1.1">+7.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.4.4">28.32<sub class="ltx_sub" id="S4.T2.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.4.4.1.1">-11.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.5.5">88.65<sub class="ltx_sub" id="S4.T2.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.5.5.1.1">-7.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.6.6.6">78.56<sub class="ltx_sub" id="S4.T2.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.6.6.1.1">+1.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.7.7.7.7">0.47<sub class="ltx_sub" id="S4.T2.7.7.7.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.7.7.7.7.1.1">+0.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.8.8.8.8">0.50<sub class="ltx_sub" id="S4.T2.8.8.8.8.1"><span class="ltx_text ltx_font_italic" id="S4.T2.8.8.8.8.1.1">+0.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.9.9.9.9">0.73<sub class="ltx_sub" id="S4.T2.9.9.9.9.1"><span class="ltx_text ltx_font_italic" id="S4.T2.9.9.9.9.1.1">-0.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.10.10.10.10">0.45<sub class="ltx_sub" id="S4.T2.10.10.10.10.1"><span class="ltx_text ltx_font_italic" id="S4.T2.10.10.10.10.1.1">+0.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.11.11.11.11">78.36<sub class="ltx_sub" id="S4.T2.11.11.11.11.1"><span class="ltx_text ltx_font_italic" id="S4.T2.11.11.11.11.1.1">+1.3</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.27.1">KL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12545v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.2">36.36</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.3">36.36</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.4">22.41</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.5">58.88</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.22.27.6">70.23</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.7">0.34</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.8">0.32</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.9">0.82</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.10">0.40</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.27.11">66.54</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.1">KL<sub class="ltx_sub" id="S4.T2.12.12.12.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.12.12.12.1.1.1">+BGD</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.13.2">48.10<sub class="ltx_sub" id="S4.T2.13.13.13.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.13.13.13.2.1.1">+11.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.14.14.3">48.10<sub class="ltx_sub" id="S4.T2.14.14.14.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.14.14.14.3.1.1">+11.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.15.15.4">18.67<sub class="ltx_sub" id="S4.T2.15.15.15.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.15.15.15.4.1.1">-3.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.16.16.16.5">55.34<sub class="ltx_sub" id="S4.T2.16.16.16.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.16.16.16.5.1.1">-3.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.17.17.6">68.62<sub class="ltx_sub" id="S4.T2.17.17.17.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.17.17.17.6.1.1">-1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.18.7">0.42<sub class="ltx_sub" id="S4.T2.18.18.18.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.18.18.18.7.1.1">+0.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.19.19.8">0.41<sub class="ltx_sub" id="S4.T2.19.19.19.8.1"><span class="ltx_text ltx_font_italic" id="S4.T2.19.19.19.8.1.1">+0.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.20.20.20.9">0.76<sub class="ltx_sub" id="S4.T2.20.20.20.9.1"><span class="ltx_text ltx_font_italic" id="S4.T2.20.20.20.9.1.1">-0.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.21.21.10">0.42<sub class="ltx_sub" id="S4.T2.21.21.21.10.1"><span class="ltx_text ltx_font_italic" id="S4.T2.21.21.21.10.1.1">+0.02</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.22.11">67.04<sub class="ltx_sub" id="S4.T2.22.22.22.11.1"><span class="ltx_text ltx_font_italic" id="S4.T2.22.22.22.11.1.1">+0.5</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.28" style="background-color:#FFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.22.22.28.1"><span class="ltx_text" id="S4.T2.22.22.28.1.1" style="background-color:#FFBFBF;">Goal (Upper Bound)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.2"><span class="ltx_text" id="S4.T2.22.22.28.2.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.3"><span class="ltx_text" id="S4.T2.22.22.28.3.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.4"><span class="ltx_text" id="S4.T2.22.22.28.4.1" style="background-color:#FFBFBF;">96.38</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.5"><span class="ltx_text" id="S4.T2.22.22.28.5.1" style="background-color:#FFBFBF;">100.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.22.22.28.6"><span class="ltx_text" id="S4.T2.22.22.28.6.1" style="background-color:#FFBFBF;">87.52</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.7"><span class="ltx_text" id="S4.T2.22.22.28.7.1" style="background-color:#FFBFBF;">0.97</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.8"><span class="ltx_text" id="S4.T2.22.22.28.8.1" style="background-color:#FFBFBF;">0.98</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.9"><span class="ltx_text" id="S4.T2.22.22.28.9.1" style="background-color:#FFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.10"><span class="ltx_text" id="S4.T2.22.22.28.10.1" style="background-color:#FFBFBF;">0.55</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.28.11"><span class="ltx_text" id="S4.T2.22.22.28.11.1" style="background-color:#FFBFBF;">87.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a performance comparison of six different machine unlearning methods when applied to simultaneously remove both personal entities and event information from a multimodal large language model.  It shows the efficacy, generality (how well the unlearning generalizes to unseen data), retention (how well the model retains knowledge of other, unlearned data), and real-world performance (on a separate, real-world dataset) for each method.  The '+' symbol indicates improvement over the baseline, while '-' shows a decrease in performance for a given metric.  This table highlights the challenges of simultaneous unlearning and the need for better-performing methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance overview of simultaneously unlearn people and events. +{\color[rgb]{0.22265625,0.7109375,0.2890625}\definecolor[named]{pgfstrokecolor% }{rgb}{0.22265625,0.7109375,0.2890625}+}+ (or −{\color[rgb]{1,0,0}\definecolor[named]{pgfstrokecolor}{rgb}{1,0,0}-}-) indicates the performance gain (or decrease) compared to the base method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T3.4.1">
<tr class="ltx_tr" id="A2.T3.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.1" style="padding:-1pt 4.0pt;">Num Outputs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.2" style="padding:-1pt 4.0pt;">Num Inference Steps</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.3" style="padding:-1pt 4.0pt;">Guidance</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.4" style="padding:-1pt 4.0pt;">True Gs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.5" style="padding:-1pt 4.0pt;">Width</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.4.1.1.6" style="padding:-1pt 4.0pt;">Height</td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.1" style="padding:-1pt 4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.2" style="padding:-1pt 4.0pt;">40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.3" style="padding:-1pt 4.0pt;">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.4" style="padding:-1pt 4.0pt;">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.5" style="padding:-1pt 4.0pt;">512</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.2.6" style="padding:-1pt 4.0pt;">512</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the Flux image generation model.  These parameters control various aspects of the image generation process, including the number of images generated, the number of inference steps used, and the dimensions (width and height) of the output images. Understanding these settings is crucial for interpreting the quality and characteristics of the generated images within the PEBench dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Flux hyper-parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.2">
<tr class="ltx_tr" id="A2.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.2.1.1.1" style="font-size:80%;">Task Name</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.1.2.1">
<span class="ltx_p" id="A2.T4.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.2.1.2.1.1.1" style="font-size:80%;">General Prompt Format</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.2.1"><span class="ltx_text" id="A2.T4.2.2.1.1" style="font-size:80%;">Science &amp; Research</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.2.2.1">
<span class="ltx_p" id="A2.T4.2.2.2.1.1"><span class="ltx_text" id="A2.T4.2.2.2.1.1.1" style="font-size:80%;">Biologist, Physicist, Archaeologist, Ecologist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.3.1"><span class="ltx_text" id="A2.T4.2.3.1.1" style="font-size:80%;">Healthcare &amp; Medicine</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.3.2.1">
<span class="ltx_p" id="A2.T4.2.3.2.1.1"><span class="ltx_text" id="A2.T4.2.3.2.1.1.1" style="font-size:80%;">Doctor, Nurse, Physical Therapist, Psychologist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.4.1"><span class="ltx_text" id="A2.T4.2.4.1.1" style="font-size:80%;">Technology &amp; Engineering</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.4.2.1">
<span class="ltx_p" id="A2.T4.2.4.2.1.1"><span class="ltx_text" id="A2.T4.2.4.2.1.1.1" style="font-size:80%;">Software Developer, Electrical Engineer, Mechanical Engineer, Cybersecurity Specialist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.5.1"><span class="ltx_text" id="A2.T4.2.5.1.1" style="font-size:80%;">Environmental &amp; Agriculture</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.5.2.1">
<span class="ltx_p" id="A2.T4.2.5.2.1.1"><span class="ltx_text" id="A2.T4.2.5.2.1.1.1" style="font-size:80%;">Environmental Scientist, Agronomist, Forester, Soil Scientist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.6.1"><span class="ltx_text" id="A2.T4.2.6.1.1" style="font-size:80%;">Arts &amp; Creative Fields</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.6.2.1">
<span class="ltx_p" id="A2.T4.2.6.2.1.1"><span class="ltx_text" id="A2.T4.2.6.2.1.1.1" style="font-size:80%;">Painter, Musician, Writer, Graphic Designer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.7.1"><span class="ltx_text" id="A2.T4.2.7.1.1" style="font-size:80%;">Business &amp; Finance</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.7.2.1">
<span class="ltx_p" id="A2.T4.2.7.2.1.1"><span class="ltx_text" id="A2.T4.2.7.2.1.1.1" style="font-size:80%;">Accountant, Market Analyst, Financial Advisor, Project Manager</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.8.1"><span class="ltx_text" id="A2.T4.2.8.1.1" style="font-size:80%;">Public Service &amp; Community Support</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.8.2.1">
<span class="ltx_p" id="A2.T4.2.8.2.1.1"><span class="ltx_text" id="A2.T4.2.8.2.1.1.1" style="font-size:80%;">Police Officer, Firefighter, Social Worker, Nonprofit Coordinator</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.9">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.9.1"><span class="ltx_text" id="A2.T4.2.9.1.1" style="font-size:80%;">Education &amp; Culture</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.9.2.1">
<span class="ltx_p" id="A2.T4.2.9.2.1.1"><span class="ltx_text" id="A2.T4.2.9.2.1.1.1" style="font-size:80%;">Teacher, Trainer, Librarian, Museum Curator</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.10">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.10.1"><span class="ltx_text" id="A2.T4.2.10.1.1" style="font-size:80%;">Media &amp; Communications</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.10.2.1">
<span class="ltx_p" id="A2.T4.2.10.2.1.1"><span class="ltx_text" id="A2.T4.2.10.2.1.1.1" style="font-size:80%;">Journalist, Broadcaster, Content Creator, Public Relations Specialist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.11">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.11.1"><span class="ltx_text" id="A2.T4.2.11.1.1" style="font-size:80%;">Architecture &amp; Construction</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.11.2.1">
<span class="ltx_p" id="A2.T4.2.11.2.1.1"><span class="ltx_text" id="A2.T4.2.11.2.1.1.1" style="font-size:80%;">Architect, Civil Engineer, Construction Worker, Surveyor</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.12">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.12.1"><span class="ltx_text" id="A2.T4.2.12.1.1" style="font-size:80%;">Law &amp; Policy</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.12.2.1">
<span class="ltx_p" id="A2.T4.2.12.2.1.1"><span class="ltx_text" id="A2.T4.2.12.2.1.1.1" style="font-size:80%;">Lawyer, Judge, Policy Analyst, Legislative Assistant</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.13">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.13.1"><span class="ltx_text" id="A2.T4.2.13.1.1" style="font-size:80%;">Retail &amp; Services</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.13.2.1">
<span class="ltx_p" id="A2.T4.2.13.2.1.1"><span class="ltx_text" id="A2.T4.2.13.2.1.1.1" style="font-size:80%;">Retail Manager, Customer Service Representative, Hotel Concierge, Sales Associate</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.14">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.14.1"><span class="ltx_text" id="A2.T4.2.14.1.1" style="font-size:80%;">Sports &amp; Fitness</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.14.2.1">
<span class="ltx_p" id="A2.T4.2.14.2.1.1"><span class="ltx_text" id="A2.T4.2.14.2.1.1.1" style="font-size:80%;">Athlete, Fitness Coach, Physical Trainer, Yoga Instructor</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.15">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.15.1"><span class="ltx_text" id="A2.T4.2.15.1.1" style="font-size:80%;">Logistics &amp; Transportation</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.15.2.1">
<span class="ltx_p" id="A2.T4.2.15.2.1.1"><span class="ltx_text" id="A2.T4.2.15.2.1.1.1" style="font-size:80%;">Logistics Manager, Truck Driver, Pilot, Shipping Coordinator</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.16">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.16.1"><span class="ltx_text" id="A2.T4.2.16.1.1" style="font-size:80%;">Energy &amp; Natural Resources</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.16.2.1">
<span class="ltx_p" id="A2.T4.2.16.2.1.1"><span class="ltx_text" id="A2.T4.2.16.2.1.1.1" style="font-size:80%;">Petroleum Engineer, Geologist, Renewable Energy Consultant, Miner</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.17">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.17.1"><span class="ltx_text" id="A2.T4.2.17.1.1" style="font-size:80%;">Unemployed</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T4.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.17.2.1">
<span class="ltx_p" id="A2.T4.2.17.2.1.1"><span class="ltx_text" id="A2.T4.2.17.2.1.1.1" style="font-size:80%;">Job Seeker, Stay-at-home Parent, Retired, Freelancer, Entrepreneur, Consultant, Artist</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.18">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T4.2.18.1"><span class="ltx_text" id="A2.T4.2.18.1.1" style="font-size:80%;">Students</span></td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T4.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.18.2.1">
<span class="ltx_p" id="A2.T4.2.18.2.1.1"><span class="ltx_text" id="A2.T4.2.18.2.1.1.1" style="font-size:80%;">Primary School Student, Junior High Student, High School Junior, Undergraduate Student, Community College Student, Master’s Student, Doctoral Student, Research Assistant, Apprentice, Technical School Student</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a detailed categorization of occupations across various sectors, including science, healthcare, technology, arts, and public services.  Each category includes several specific job examples, providing a comprehensive illustration of the diverse range of professions represented in the dataset. This ensures a realistic and representative portrayal of the occupational landscape.
> <details>
> <summary>read the caption</summary>
> Table 4: The categorization of jobs across various domains, including science, healthcare, technology, arts, and public services. The second column provides specific examples of jobs within each category, offering a comprehensive overview of the dataset’s occupational diversity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.2">
<tr class="ltx_tr" id="A2.T5.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.1" style="font-size:80%;">Region</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.1.2.1">
<span class="ltx_p" id="A2.T5.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.1.1.1" style="font-size:80%;">Cities</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.2.1"><span class="ltx_text" id="A2.T5.2.2.1.1" style="font-size:80%;">North America</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.2.1">
<span class="ltx_p" id="A2.T5.2.2.2.1.1"><span class="ltx_text" id="A2.T5.2.2.2.1.1.1" style="font-size:80%;">New York City, USA; Toronto, Canada; Mexico City, Mexico; Vancouver, Canada; San Juan, Puerto Rico</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.3.1"><span class="ltx_text" id="A2.T5.2.3.1.1" style="font-size:80%;">South America</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.3.2.1">
<span class="ltx_p" id="A2.T5.2.3.2.1.1"><span class="ltx_text" id="A2.T5.2.3.2.1.1.1" style="font-size:80%;">São Paulo, Brazil; Buenos Aires, Argentina; Caracas, Venezuela; Quito, Ecuador; Lima, Peru</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.4.1"><span class="ltx_text" id="A2.T5.2.4.1.1" style="font-size:80%;">Europe</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.4.2.1">
<span class="ltx_p" id="A2.T5.2.4.2.1.1"><span class="ltx_text" id="A2.T5.2.4.2.1.1.1" style="font-size:80%;">Paris, France; Berlin, Germany; Stockholm, Sweden; Helsinki, Finland; Zurich, Switzerland; Lisbon, Portugal; Dublin, Ireland; Warsaw, Poland; Vienna, Austria; Reykjavik, Iceland; Bucharest, Romania</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.5.1"><span class="ltx_text" id="A2.T5.2.5.1.1" style="font-size:80%;">Africa</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.5.2.1">
<span class="ltx_p" id="A2.T5.2.5.2.1.1"><span class="ltx_text" id="A2.T5.2.5.2.1.1.1" style="font-size:80%;">Cairo, Egypt; Cape Town, South Africa; Lagos, Nigeria; Nairobi, Kenya; Accra, Ghana; Dakar, Senegal; Addis Ababa, Ethiopia; Casablanca, Morocco; Kigali, Rwanda</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.6.1"><span class="ltx_text" id="A2.T5.2.6.1.1" style="font-size:80%;">Asia</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.6.2.1">
<span class="ltx_p" id="A2.T5.2.6.2.1.1"><span class="ltx_text" id="A2.T5.2.6.2.1.1.1" style="font-size:80%;">Tokyo, Japan; Mumbai, India; Seoul, South Korea; Bangkok, Thailand; Istanbul, Turkey; Dubai, United Arab Emirates; Jakarta, Indonesia; Hanoi, Vietnam; Amman, Jordan; Doha, Qatar; Ulaanbaatar, Mongolia; Male, Maldives; Phnom Penh, Cambodia; Beijing, China; Shanghai, China</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.7.1"><span class="ltx_text" id="A2.T5.2.7.1.1" style="font-size:80%;">Australia &amp; Oceania</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T5.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.7.2.1">
<span class="ltx_p" id="A2.T5.2.7.2.1.1"><span class="ltx_text" id="A2.T5.2.7.2.1.1.1" style="font-size:80%;">Sydney, Australia; Wellington, New Zealand; Brisbane, Australia; Suva, Fiji; Port Moresby, Papua New Guinea</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.8">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T5.2.8.1"><span class="ltx_text" id="A2.T5.2.8.1.1" style="font-size:80%;">Middle East</span></td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T5.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.8.2.1">
<span class="ltx_p" id="A2.T5.2.8.2.1.1"><span class="ltx_text" id="A2.T5.2.8.2.1.1.1" style="font-size:80%;">Riyadh, Saudi Arabia; Tehran, Iran; Baghdad, Iraq; Beirut, Lebanon; Muscat, Oman</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a list of cities categorized by their respective continents and regions.  This categorization is designed to showcase the geographic diversity encompassed within the PEBench dataset. The inclusion of a wide range of cities from different continents and regions emphasizes the global nature of the data and its representation of diverse geographic locations.
> <details>
> <summary>read the caption</summary>
> Table 5: Cities categorized by their respective regions, highlighting diverse geographical.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.2">
<tr class="ltx_tr" id="A2.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.1.1" style="font-size:80%;">Event</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.2.1">
<span class="ltx_p" id="A2.T6.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.2.1.1.1" style="font-size:80%;">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.3.1">
<span class="ltx_p" id="A2.T6.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.3.1.1.1" style="font-size:80%;">Keywords</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.2.1"><span class="ltx_text" id="A2.T6.2.2.1.1" style="font-size:80%;">media interview</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.2.1">
<span class="ltx_p" id="A2.T6.2.2.2.1.1"><span class="ltx_text" id="A2.T6.2.2.2.1.1.1" style="font-size:80%;">Participating in an interview with a local media outlet. The setting is a well-lit studio or casual setup, depending on the person’s profession. The conversation is captured by a small crew with minimal background distractions.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.3.1">
<span class="ltx_p" id="A2.T6.2.2.3.1.1"><span class="ltx_text" id="A2.T6.2.2.3.1.1.1" style="font-size:80%;">”interview”, ”local media”, ”studio”, ”casual setup”, ”conversation”, ”crew”, ”minimal distractions”, ”well-lit”, ”profession”, ”professional”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.3.1"><span class="ltx_text" id="A2.T6.2.3.1.1" style="font-size:80%;">park jogging</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.2.1">
<span class="ltx_p" id="A2.T6.2.3.2.1.1"><span class="ltx_text" id="A2.T6.2.3.2.1.1.1" style="font-size:80%;">Exercising or relaxing in a nearby park. The park is peaceful with trees and walking paths, a serene backdrop for professionals, students, or retirees enjoying nature.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.3.1">
<span class="ltx_p" id="A2.T6.2.3.3.1.1"><span class="ltx_text" id="A2.T6.2.3.3.1.1.1" style="font-size:80%;">”park”, ”jogging”, ”exercising”, ”relaxing”, ”nature”, ”trees”, ”walking paths”, ”serene”, ”peaceful”, ”outdoors”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.4.1"><span class="ltx_text" id="A2.T6.2.4.1.1" style="font-size:80%;">farm visit</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.2.1">
<span class="ltx_p" id="A2.T6.2.4.2.1.1"><span class="ltx_text" id="A2.T6.2.4.2.1.1.1" style="font-size:80%;">Visiting a local farm, surrounded by green fields and farm animals. The atmosphere is peaceful and natural, perfect for relaxing or learning about agriculture.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.3.1">
<span class="ltx_p" id="A2.T6.2.4.3.1.1"><span class="ltx_text" id="A2.T6.2.4.3.1.1.1" style="font-size:80%;">”farm”, ”visit”, ”green fields”, ”farm animals”, ”peaceful”, ”natural”, ”agriculture”, ”learning”, ”outdoors”, ”relaxing”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.5.1"><span class="ltx_text" id="A2.T6.2.5.1.1" style="font-size:80%;">dinner with friends</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.2.1">
<span class="ltx_p" id="A2.T6.2.5.2.1.1"><span class="ltx_text" id="A2.T6.2.5.2.1.1.1" style="font-size:80%;">Enjoying a meal with friends or family at a local restaurant. The restaurant has a cozy, informal setting, suitable for unwinding after a busy day.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.3.1">
<span class="ltx_p" id="A2.T6.2.5.3.1.1"><span class="ltx_text" id="A2.T6.2.5.3.1.1.1" style="font-size:80%;">”dinner”, ”friends”, ”family”, ”restaurant”, ”cozy”, ”informal”, ”meal”, ”unwinding”, ”relaxed”, ”evening”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.6.1"><span class="ltx_text" id="A2.T6.2.6.1.1" style="font-size:80%;">landmark visit</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.6.2.1">
<span class="ltx_p" id="A2.T6.2.6.2.1.1"><span class="ltx_text" id="A2.T6.2.6.2.1.1.1" style="font-size:80%;">Visiting a notable city landmark, adding a cultural aspect to their day. The clear weather and bustling tourist atmosphere offer a nice break from their routine.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.6.3.1">
<span class="ltx_p" id="A2.T6.2.6.3.1.1"><span class="ltx_text" id="A2.T6.2.6.3.1.1.1" style="font-size:80%;">”landmark”, ”city”, ”tourist”, ”cultural”, ”visit”, ”weather”, ”atmosphere”, ”bustling”, ”break”, ”routine”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.7.1"><span class="ltx_text" id="A2.T6.2.7.1.1" style="font-size:80%;">zoo visit</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.7.2.1">
<span class="ltx_p" id="A2.T6.2.7.2.1.1"><span class="ltx_text" id="A2.T6.2.7.2.1.1.1" style="font-size:80%;">Exploring a local zoo, observing animals in their habitats. The setting is educational and family-friendly, perfect for learning about wildlife.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.7.3.1">
<span class="ltx_p" id="A2.T6.2.7.3.1.1"><span class="ltx_text" id="A2.T6.2.7.3.1.1.1" style="font-size:80%;">”zoo”, ”animals”, ”habitats”, ”education”, ”family-friendly”, ”wildlife”, ”exploring”, ”local”, ”learning”, ”nature”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.8.1"><span class="ltx_text" id="A2.T6.2.8.1.1" style="font-size:80%;">shopping mall</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.8.2.1">
<span class="ltx_p" id="A2.T6.2.8.2.1.1"><span class="ltx_text" id="A2.T6.2.8.2.1.1.1" style="font-size:80%;">Walking through a busy shopping mall, either to relax or purchase essentials. The mall is brightly lit, with various stores and other people enjoying a bustling atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.8.3.1">
<span class="ltx_p" id="A2.T6.2.8.3.1.1"><span class="ltx_text" id="A2.T6.2.8.3.1.1.1" style="font-size:80%;">”shopping”, ”mall”, ”bustling”, ”stores”, ”shopping experience”, ”brightly lit”, ”people”, ”relaxing”, ”purchasing”, ”atmosphere”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.9">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.9.1"><span class="ltx_text" id="A2.T6.2.9.1.1" style="font-size:80%;">public lecture</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.9.2.1">
<span class="ltx_p" id="A2.T6.2.9.2.1.1"><span class="ltx_text" id="A2.T6.2.9.2.1.1.1" style="font-size:80%;">Attending or presenting a lecture at a university or community center. The atmosphere is formal, with people attentively listening, suitable for professionals, students, or anyone interested in continuous learning.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.9.3.1">
<span class="ltx_p" id="A2.T6.2.9.3.1.1"><span class="ltx_text" id="A2.T6.2.9.3.1.1.1" style="font-size:80%;">”lecture”, ”public”, ”university”, ”community center”, ”formal”, ”attendees”, ”presentation”, ”education”, ”learning”, ”professional”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.10">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.10.1"><span class="ltx_text" id="A2.T6.2.10.1.1" style="font-size:80%;">gym workout</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.10.2.1">
<span class="ltx_p" id="A2.T6.2.10.2.1.1"><span class="ltx_text" id="A2.T6.2.10.2.1.1.1" style="font-size:80%;">Engaging in a workout at a local gym. The gym has spacious areas for various exercises and equipment, creating a focused and energetic environment for fitness enthusiasts of all ages.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.10.3.1">
<span class="ltx_p" id="A2.T6.2.10.3.1.1"><span class="ltx_text" id="A2.T6.2.10.3.1.1.1" style="font-size:80%;">”gym”, ”workout”, ”exercises”, ”fitness”, ”spacious”, ”equipment”, ”energetic”, ”environment”, ”focus”, ”physical”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.11">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.11.1"><span class="ltx_text" id="A2.T6.2.11.1.1" style="font-size:80%;">dance event</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.11.2.1">
<span class="ltx_p" id="A2.T6.2.11.2.1.1"><span class="ltx_text" id="A2.T6.2.11.2.1.1.1" style="font-size:80%;">Dancing or socializing at a club or festive event. The atmosphere is vibrant, with colorful lights and music setting a lively mood.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.11.3.1">
<span class="ltx_p" id="A2.T6.2.11.3.1.1"><span class="ltx_text" id="A2.T6.2.11.3.1.1.1" style="font-size:80%;">”dance”, ”event”, ”club”, ”music”, ”socializing”, ”vibrant”, ”colorful”, ”lights”, ”festive”, ”lively”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.12">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.12.1"><span class="ltx_text" id="A2.T6.2.12.1.1" style="font-size:80%;">coffee shop reading</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.12.2.1">
<span class="ltx_p" id="A2.T6.2.12.2.1.1"><span class="ltx_text" id="A2.T6.2.12.2.1.1.1" style="font-size:80%;">Enjoying a coffee break in a cozy café. The ambiance is quiet and relaxed, perfect for reading, working on a laptop, or chatting with friends.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.12.3.1">
<span class="ltx_p" id="A2.T6.2.12.3.1.1"><span class="ltx_text" id="A2.T6.2.12.3.1.1.1" style="font-size:80%;">”coffee shop”, ”reading”, ”cozy”, ”relaxed”, ”ambient”, ”quiet”, ”laptop”, ”break”, ”friends”, ”work”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.13">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.13.1"><span class="ltx_text" id="A2.T6.2.13.1.1" style="font-size:80%;">airport waiting</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.13.2.1">
<span class="ltx_p" id="A2.T6.2.13.2.1.1"><span class="ltx_text" id="A2.T6.2.13.2.1.1.1" style="font-size:80%;">Waiting at an airport terminal for a flight, surrounded by other travelers. The modern, glass-walled terminal offers views of the runway, creating a calm and organized atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.13.3.1">
<span class="ltx_p" id="A2.T6.2.13.3.1.1"><span class="ltx_text" id="A2.T6.2.13.3.1.1.1" style="font-size:80%;">”airport”, ”waiting”, ”travel”, ”terminal”, ”flight”, ”runway”, ”modern”, ”organized”, ”passengers”, ”calm”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.14">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.14.1"><span class="ltx_text" id="A2.T6.2.14.1.1" style="font-size:80%;">concert attendance</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.14.2.1">
<span class="ltx_p" id="A2.T6.2.14.2.1.1"><span class="ltx_text" id="A2.T6.2.14.2.1.1.1" style="font-size:80%;">Attending a live concert in an open-air or indoor venue. The crowd is lively, cheering and enjoying the music in a spirited environment.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.14.3.1">
<span class="ltx_p" id="A2.T6.2.14.3.1.1"><span class="ltx_text" id="A2.T6.2.14.3.1.1.1" style="font-size:80%;">”concert”, ”live music”, ”crowd”, ”lively”, ”spirited”, ”performance”, ”audience”, ”indoor”, ”outdoor”, ”energy”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.15">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.15.1"><span class="ltx_text" id="A2.T6.2.15.1.1" style="font-size:80%;">beach relaxing</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.15.2.1">
<span class="ltx_p" id="A2.T6.2.15.2.1.1"><span class="ltx_text" id="A2.T6.2.15.2.1.1.1" style="font-size:80%;">Relaxing by the seaside, with gentle waves and a clear sky. This peaceful setting is ideal for a break from their routine, whether alone or with family.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.15.3.1">
<span class="ltx_p" id="A2.T6.2.15.3.1.1"><span class="ltx_text" id="A2.T6.2.15.3.1.1.1" style="font-size:80%;">”beach”, ”relaxing”, ”seaside”, ”waves”, ”clear sky”, ”peaceful”, ”break”, ”family”, ”serene”, ”outdoors”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.16">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.16.1"><span class="ltx_text" id="A2.T6.2.16.1.1" style="font-size:80%;">business meeting</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.16.2.1">
<span class="ltx_p" id="A2.T6.2.16.2.1.1"><span class="ltx_text" id="A2.T6.2.16.2.1.1.1" style="font-size:80%;">Participating in a business or professional meeting in a modern conference room. The background shows large windows with a city view, creating a productive atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.16.3.1">
<span class="ltx_p" id="A2.T6.2.16.3.1.1"><span class="ltx_text" id="A2.T6.2.16.3.1.1.1" style="font-size:80%;">”business”, ”meeting”, ”conference room”, ”professional”, ”city view”, ”windows”, ”productive”, ”discussion”, ”corporate”, ”formal”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.17">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.17.1"><span class="ltx_text" id="A2.T6.2.17.1.1" style="font-size:80%;">museum tour</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.17.2.1">
<span class="ltx_p" id="A2.T6.2.17.2.1.1"><span class="ltx_text" id="A2.T6.2.17.2.1.1.1" style="font-size:80%;">Exploring a museum filled with historical or artistic exhibits. The lighting is dim with spotlights on displays, creating a reflective environment for visitors.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.17.3.1">
<span class="ltx_p" id="A2.T6.2.17.3.1.1"><span class="ltx_text" id="A2.T6.2.17.3.1.1.1" style="font-size:80%;">”museum”, ”tour”, ”historical”, ”artistic”, ”exhibits”, ”spotlights”, ”dim lighting”, ”reflective”, ”atmosphere”, ”culture”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.18">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.18.1"><span class="ltx_text" id="A2.T6.2.18.1.1" style="font-size:80%;">car driving</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.18.2.1">
<span class="ltx_p" id="A2.T6.2.18.2.1.1"><span class="ltx_text" id="A2.T6.2.18.2.1.1.1" style="font-size:80%;">Driving through a scenic area, either in the city or countryside, during sunset. The road is lined with buildings or natural landscapes, creating a calm and picturesque atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T6.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.18.3.1">
<span class="ltx_p" id="A2.T6.2.18.3.1.1"><span class="ltx_text" id="A2.T6.2.18.3.1.1.1" style="font-size:80%;">”car”, ”driving”, ”scenic”, ”sunset”, ”road”, ”landscapes”, ”city”, ”countryside”, ”picturesque”, ”travel”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.19">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.2.19.1"><span class="ltx_text" id="A2.T6.2.19.1.1" style="font-size:80%;">grocery shopping</span></td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T6.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.19.2.1">
<span class="ltx_p" id="A2.T6.2.19.2.1.1"><span class="ltx_text" id="A2.T6.2.19.2.1.1.1" style="font-size:80%;">Picking up essentials at a well-organized grocery store. The bright lighting and neatly stocked shelves create a comfortable and efficient shopping experience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T6.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.19.3.1">
<span class="ltx_p" id="A2.T6.2.19.3.1.1"><span class="ltx_text" id="A2.T6.2.19.3.1.1.1" style="font-size:80%;">”grocery”, ”shopping”, ”store”, ”essentials”, ”organized”, ”bright lighting”, ”efficient”, ”comfortable”, ”experience”, ”shopping”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comprehensive list of 40 different event scenarios, each described in detail.  For each scenario, a set of keywords has been extracted to concisely summarize its key features and characteristics. These keywords are not simply descriptive; they are carefully selected to be relevant for evaluating the effectiveness of the machine unlearning process in the context of the PEBench framework.  The table thus serves as a crucial component of the evaluation methodology, providing a structured and standardized way to assess the model's ability to forget specific concepts while retaining other knowledge.
> <details>
> <summary>read the caption</summary>
> Table 6: Event Descriptions with Corresponding Keywords (part one). Each event description provides a detailed explanation of the scenario and is associated with a list of extracted keywords that capture the essence of the scene. These keywords are used for evaluation purposes in our framework.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.2">
<tr class="ltx_tr" id="A2.T7.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.1.1" style="font-size:80%;">Event</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.1.2.1">
<span class="ltx_p" id="A2.T7.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.2.1.1.1" style="font-size:80%;">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.1.3.1">
<span class="ltx_p" id="A2.T7.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.3.1.1.1" style="font-size:80%;">Keywords</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.2.1"><span class="ltx_text" id="A2.T7.2.2.1.1" style="font-size:80%;">marathon running</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.2.2.1">
<span class="ltx_p" id="A2.T7.2.2.2.1.1"><span class="ltx_text" id="A2.T7.2.2.2.1.1.1" style="font-size:80%;">Running in a local marathon event. The streets are lined with cheering crowds, and the weather is clear, creating an energetic and community-oriented environment.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.2.3.1">
<span class="ltx_p" id="A2.T7.2.2.3.1.1"><span class="ltx_text" id="A2.T7.2.2.3.1.1.1" style="font-size:80%;">”marathon”, ”running”, ”event”, ”streets”, ”cheering”, ”crowds”, ”clear weather”, ”community”, ”energy”, ”fitness”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.3.1"><span class="ltx_text" id="A2.T7.2.3.1.1" style="font-size:80%;">art gallery visit</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.3.2.1">
<span class="ltx_p" id="A2.T7.2.3.2.1.1"><span class="ltx_text" id="A2.T7.2.3.2.1.1.1" style="font-size:80%;">Strolling through an art gallery or exhibition. The gallery has soft lighting and showcases various artworks, allowing for a calm, introspective experience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.3.3.1">
<span class="ltx_p" id="A2.T7.2.3.3.1.1"><span class="ltx_text" id="A2.T7.2.3.3.1.1.1" style="font-size:80%;">”art gallery”, ”visit”, ”exhibits”, ”artwork”, ”soft lighting”, ”calm”, ”introspective”, ”atmosphere”, ”culture”, ”reflection”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.4.1"><span class="ltx_text" id="A2.T7.2.4.1.1" style="font-size:80%;">family gathering</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.4.2.1">
<span class="ltx_p" id="A2.T7.2.4.2.1.1"><span class="ltx_text" id="A2.T7.2.4.2.1.1.1" style="font-size:80%;">Spending time with family at a comfortable home setting. The room is warmly lit with family mementos and a friendly, welcoming atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.4.3.1">
<span class="ltx_p" id="A2.T7.2.4.3.1.1"><span class="ltx_text" id="A2.T7.2.4.3.1.1.1" style="font-size:80%;">”family”, ”gathering”, ”home”, ”warmly lit”, ”mementos”, ”friendly”, ”welcoming”, ”atmosphere”, ”comfort”, ”together”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.5.1"><span class="ltx_text" id="A2.T7.2.5.1.1" style="font-size:80%;">bookstore browsing</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.5.2.1">
<span class="ltx_p" id="A2.T7.2.5.2.1.1"><span class="ltx_text" id="A2.T7.2.5.2.1.1.1" style="font-size:80%;">Browsing through books in a quaint bookstore. The small, quiet setting is filled with shelves of books, perfect for leisurely exploration.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.5.3.1">
<span class="ltx_p" id="A2.T7.2.5.3.1.1"><span class="ltx_text" id="A2.T7.2.5.3.1.1.1" style="font-size:80%;">”bookstore”, ”browsing”, ”books”, ”quaint”, ”quiet”, ”shelves”, ”exploration”, ”reading”, ”leisure”, ”relaxed”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.6.1"><span class="ltx_text" id="A2.T7.2.6.1.1" style="font-size:80%;">mountain cabin retreat</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.6.2.1">
<span class="ltx_p" id="A2.T7.2.6.2.1.1"><span class="ltx_text" id="A2.T7.2.6.2.1.1.1" style="font-size:80%;">Relaxing at a cabin in the mountains. The area is peaceful, surrounded by trees and distant mountain views, creating a tranquil and refreshing setting.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.6.3.1">
<span class="ltx_p" id="A2.T7.2.6.3.1.1"><span class="ltx_text" id="A2.T7.2.6.3.1.1.1" style="font-size:80%;">”mountain”, ”cabin”, ”retreat”, ”peaceful”, ”trees”, ”views”, ”tranquil”, ”refreshing”, ”nature”, ”serene”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.7.1"><span class="ltx_text" id="A2.T7.2.7.1.1" style="font-size:80%;">office working</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.7.2.1">
<span class="ltx_p" id="A2.T7.2.7.2.1.1"><span class="ltx_text" id="A2.T7.2.7.2.1.1.1" style="font-size:80%;">Working or studying at a desk in a modern office. The room has large windows with natural light, creating a productive and quiet atmosphere for focused tasks.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.7.3.1">
<span class="ltx_p" id="A2.T7.2.7.3.1.1"><span class="ltx_text" id="A2.T7.2.7.3.1.1.1" style="font-size:80%;">”office”, ”working”, ”desk”, ”modern”, ”conference room”, ”windows”, ”natural light”, ”focused”, ”quiet”, ”productive”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.8.1"><span class="ltx_text" id="A2.T7.2.8.1.1" style="font-size:80%;">train commute</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.8.2.1">
<span class="ltx_p" id="A2.T7.2.8.2.1.1"><span class="ltx_text" id="A2.T7.2.8.2.1.1.1" style="font-size:80%;">Traveling on a busy train, either standing or seated, surrounded by passengers absorbed in various activities. The setting is organized, creating a routine commute experience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.8.3.1">
<span class="ltx_p" id="A2.T7.2.8.3.1.1"><span class="ltx_text" id="A2.T7.2.8.3.1.1.1" style="font-size:80%;">”train”, ”commute”, ”busy”, ”seated”, ”standing”, ”passengers”, ”routine”, ”travel”, ”organized”, ”routine”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.9">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.9.1"><span class="ltx_text" id="A2.T7.2.9.1.1" style="font-size:80%;">mountain hiking</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.9.2.1">
<span class="ltx_p" id="A2.T7.2.9.2.1.1"><span class="ltx_text" id="A2.T7.2.9.2.1.1.1" style="font-size:80%;">Hiking along a scenic mountain trail. The view of mountains and clear sky adds a refreshing and peaceful ambiance to the experience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.9.3.1">
<span class="ltx_p" id="A2.T7.2.9.3.1.1"><span class="ltx_text" id="A2.T7.2.9.3.1.1.1" style="font-size:80%;">”mountain”, ”hiking”, ”trail”, ”scenic”, ”view”, ”clear sky”, ”peaceful”, ”refreshing”, ”nature”, ”outdoors”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.10">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.10.1"><span class="ltx_text" id="A2.T7.2.10.1.1" style="font-size:80%;">school presentation</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.10.2.1">
<span class="ltx_p" id="A2.T7.2.10.2.1.1"><span class="ltx_text" id="A2.T7.2.10.2.1.1.1" style="font-size:80%;">Delivering or observing a presentation in a classroom. The students are attentive, creating an academic atmosphere suited for sharing knowledge.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.10.3.1">
<span class="ltx_p" id="A2.T7.2.10.3.1.1"><span class="ltx_text" id="A2.T7.2.10.3.1.1.1" style="font-size:80%;">”school”, ”presentation”, ”classroom”, ”students”, ”attentive”, ”academic”, ”learning”, ”sharing knowledge”, ”formal”, ”education”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.11">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.11.1"><span class="ltx_text" id="A2.T7.2.11.1.1" style="font-size:80%;">restaurant dining</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.11.2.1">
<span class="ltx_p" id="A2.T7.2.11.2.1.1"><span class="ltx_text" id="A2.T7.2.11.2.1.1.1" style="font-size:80%;">Dining at an upscale restaurant. The lighting is dim, and the decor is elegant, creating an intimate and refined ambiance.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.11.3.1">
<span class="ltx_p" id="A2.T7.2.11.3.1.1"><span class="ltx_text" id="A2.T7.2.11.3.1.1.1" style="font-size:80%;">”restaurant”, ”dining”, ”upscale”, ”dim lighting”, ”elegant”, ”refined”, ”intimate”, ”ambiance”, ”meal”, ”gourmet”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.12">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.12.1"><span class="ltx_text" id="A2.T7.2.12.1.1" style="font-size:80%;">night sky stargazing</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.12.2.1">
<span class="ltx_p" id="A2.T7.2.12.2.1.1"><span class="ltx_text" id="A2.T7.2.12.2.1.1.1" style="font-size:80%;">Observing the night sky at an outdoor stargazing event. Telescopes are set up, and the setting is quiet with a clear view of the stars, creating a magical atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.12.3.1">
<span class="ltx_p" id="A2.T7.2.12.3.1.1"><span class="ltx_text" id="A2.T7.2.12.3.1.1.1" style="font-size:80%;">”night sky”, ”stargazing”, ”outdoors”, ”telescopes”, ”quiet”, ”clear view”, ”stars”, ”magical”, ”peaceful”, ”event”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.13">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.13.1"><span class="ltx_text" id="A2.T7.2.13.1.1" style="font-size:80%;">snowshoeing</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.13.2.1">
<span class="ltx_p" id="A2.T7.2.13.2.1.1"><span class="ltx_text" id="A2.T7.2.13.2.1.1.1" style="font-size:80%;">Exploring a snowy forest on a snowshoeing trail. The setting is quiet, with only the sound of footsteps in the snow, creating a peaceful winter atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.13.3.1">
<span class="ltx_p" id="A2.T7.2.13.3.1.1"><span class="ltx_text" id="A2.T7.2.13.3.1.1.1" style="font-size:80%;">”snowshoeing”, ”forest”, ”snow”, ”winter”, ”trail”, ”quiet”, ”footsteps”, ”peaceful”, ”nature”, ”serene”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.14">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.14.1"><span class="ltx_text" id="A2.T7.2.14.1.1" style="font-size:80%;">city bike ride</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.14.2.1">
<span class="ltx_p" id="A2.T7.2.14.2.1.1"><span class="ltx_text" id="A2.T7.2.14.2.1.1.1" style="font-size:80%;">Riding a bike along city streets or designated trails. The background showcases tall buildings or park areas, creating a blend of urban and natural scenery.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.14.3.1">
<span class="ltx_p" id="A2.T7.2.14.3.1.1"><span class="ltx_text" id="A2.T7.2.14.3.1.1.1" style="font-size:80%;">”bike ride”, ”city”, ”streets”, ”trails”, ”urban”, ”scenery”, ”buildings”, ”park”, ”nature”, ”dynamic”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.15">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.15.1"><span class="ltx_text" id="A2.T7.2.15.1.1" style="font-size:80%;">fashion show</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.15.2.1">
<span class="ltx_p" id="A2.T7.2.15.2.1.1"><span class="ltx_text" id="A2.T7.2.15.2.1.1.1" style="font-size:80%;">Attending a fashion show. The atmosphere is glamorous, with a runway spotlighting models and guests observing the latest trends in fashion.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.15.3.1">
<span class="ltx_p" id="A2.T7.2.15.3.1.1"><span class="ltx_text" id="A2.T7.2.15.3.1.1.1" style="font-size:80%;">”fashion”, ”show”, ”runway”, ”models”, ”glamorous”, ”spotlight”, ”trends”, ”observation”, ”fashionable”, ”elegant”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.16">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.16.1"><span class="ltx_text" id="A2.T7.2.16.1.1" style="font-size:80%;">fishing trip</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.16.2.1">
<span class="ltx_p" id="A2.T7.2.16.2.1.1"><span class="ltx_text" id="A2.T7.2.16.2.1.1.1" style="font-size:80%;">Fishing by a serene lake. The landscape is surrounded by greenery, and the atmosphere is peaceful with only nature’s sounds in the background.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.16.3.1">
<span class="ltx_p" id="A2.T7.2.16.3.1.1"><span class="ltx_text" id="A2.T7.2.16.3.1.1.1" style="font-size:80%;">”fishing”, ”trip”, ”lake”, ”serene”, ”greenery”, ”nature”, ”outdoors”, ”peaceful”, ”relaxing”, ”scenic”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.17">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.17.1"><span class="ltx_text" id="A2.T7.2.17.1.1" style="font-size:80%;">train station waiting</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.17.2.1">
<span class="ltx_p" id="A2.T7.2.17.2.1.1"><span class="ltx_text" id="A2.T7.2.17.2.1.1.1" style="font-size:80%;">Waiting at a quiet train station platform, with schedules displayed on an electronic board. The atmosphere is calm, with passengers nearby preparing for their commute.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T7.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.17.3.1">
<span class="ltx_p" id="A2.T7.2.17.3.1.1"><span class="ltx_text" id="A2.T7.2.17.3.1.1.1" style="font-size:80%;">”train station”, ”waiting”, ”platform”, ”calm”, ”passengers”, ”quiet”, ”departure”, ”travel”, ”routine”, ”organized”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.18">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.18.1"><span class="ltx_text" id="A2.T7.2.18.1.1" style="font-size:80%;">charity event</span></td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T7.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.18.2.1">
<span class="ltx_p" id="A2.T7.2.18.2.1.1"><span class="ltx_text" id="A2.T7.2.18.2.1.1.1" style="font-size:80%;">Participating in a community charity event in a large hall. The room is decorated for the occasion, with guests mingling and the mood warm and friendly.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T7.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.2.18.3.1">
<span class="ltx_p" id="A2.T7.2.18.3.1.1"><span class="ltx_text" id="A2.T7.2.18.3.1.1.1" style="font-size:80%;">”charity”, ”event”, ”community”, ”hall”, ”guests”, ”mingling”, ”decorated”, ”mood”, ”warm”, ”friendly”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comprehensive list of events and their corresponding keywords.  Each event is described in detail, providing context and setting.  The associated keywords capture the key aspects of the event's visual and thematic elements. These keywords are crucial for the evaluation of the model's performance in the PEBench framework.
> <details>
> <summary>read the caption</summary>
> Table 7: Event Descriptions with Corresponding Keywords (part two). Each event description provides a detailed explanation of the scenario and is associated with a list of extracted keywords that capture the essence of the scene. These keywords are used for evaluation purposes in our framework.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.2">
<tr class="ltx_tr" id="A2.T8.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.1.1" style="font-size:80%;">Event</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.1.2.1">
<span class="ltx_p" id="A2.T8.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.2.1.1.1" style="font-size:80%;">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.1.3.1">
<span class="ltx_p" id="A2.T8.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.3.1.1.1" style="font-size:80%;">Keywords</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.2.1"><span class="ltx_text" id="A2.T8.2.2.1.1" style="font-size:80%;">nature photography</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.2.2.1">
<span class="ltx_p" id="A2.T8.2.2.2.1.1"><span class="ltx_text" id="A2.T8.2.2.2.1.1.1" style="font-size:80%;">Taking photographs in a scenic forest or park. The atmosphere is quiet and filled with the sounds of nature, perfect for capturing the beauty of the outdoors.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.2.3.1">
<span class="ltx_p" id="A2.T8.2.2.3.1.1"><span class="ltx_text" id="A2.T8.2.2.3.1.1.1" style="font-size:80%;">”photography”, ”nature”, ”forest”, ”park”, ”outdoors”, ”quiet”, ”scenic”, ”capturing”, ”beauty”, ”peaceful”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.3.1"><span class="ltx_text" id="A2.T8.2.3.1.1" style="font-size:80%;">library studying</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.3.2.1">
<span class="ltx_p" id="A2.T8.2.3.2.1.1"><span class="ltx_text" id="A2.T8.2.3.2.1.1.1" style="font-size:80%;">Studying or reading in a quiet library. The tall bookshelves and soft lighting create an ideal setting for focused learning.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.3.3.1">
<span class="ltx_p" id="A2.T8.2.3.3.1.1"><span class="ltx_text" id="A2.T8.2.3.3.1.1.1" style="font-size:80%;">”library”, ”studying”, ”bookshelves”, ”quiet”, ”focused”, ”reading”, ”learning”, ”atmosphere”, ”soft lighting”, ”introspective”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.4.1"><span class="ltx_text" id="A2.T8.2.4.1.1" style="font-size:80%;">boat trip</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.4.2.1">
<span class="ltx_p" id="A2.T8.2.4.2.1.1"><span class="ltx_text" id="A2.T8.2.4.2.1.1.1" style="font-size:80%;">Taking a relaxing boat trip along a calm river or lake. The sky is clear, and the scenic landscape adds to the peacefulness of the outing.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.4.3.1">
<span class="ltx_p" id="A2.T8.2.4.3.1.1"><span class="ltx_text" id="A2.T8.2.4.3.1.1.1" style="font-size:80%;">”boat trip”, ”river”, ”lake”, ”relaxing”, ”scenic”, ”peaceful”, ”water”, ”landscape”, ”clear sky”, ”nature”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.5.1"><span class="ltx_text" id="A2.T8.2.5.1.1" style="font-size:80%;">biking trail</span></td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.5.2.1">
<span class="ltx_p" id="A2.T8.2.5.2.1.1"><span class="ltx_text" id="A2.T8.2.5.2.1.1.1" style="font-size:80%;">Riding a bike along a nature trail, with trees lining the path. The refreshing environment and dappled sunlight create a peaceful atmosphere.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A2.T8.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.5.3.1">
<span class="ltx_p" id="A2.T8.2.5.3.1.1"><span class="ltx_text" id="A2.T8.2.5.3.1.1.1" style="font-size:80%;">”bike”, ”trail”, ”nature”, ”trees”, ”path”, ”outdoors”, ”scenic”, ”sunlight”, ”peaceful”, ”refreshing”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.2.6.1"><span class="ltx_text" id="A2.T8.2.6.1.1" style="font-size:80%;">city walk</span></td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T8.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.6.2.1">
<span class="ltx_p" id="A2.T8.2.6.2.1.1"><span class="ltx_text" id="A2.T8.2.6.2.1.1.1" style="font-size:80%;">Walking through a lively city center. The street is lined with shops and bustling with people, providing a vibrant and dynamic urban experience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A2.T8.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.6.3.1">
<span class="ltx_p" id="A2.T8.2.6.3.1.1"><span class="ltx_text" id="A2.T8.2.6.3.1.1.1" style="font-size:80%;">”city walk”, ”lively”, ”shops”, ”bustling”, ”urban”, ”dynamic”, ”streets”, ”people”, ”downtown”, ”exploring”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents event descriptions and their corresponding keywords.  Each description details a specific event scenario (e.g., library studying, nature photography, boat trip).  Associated with each description is a list of keywords that concisely summarize the scene's key elements. These keywords are used during the evaluation phase of the PEBench framework to assess the performance of various machine unlearning methods on multimodal data.
> <details>
> <summary>read the caption</summary>
> Table 8: Event Descriptions with Corresponding Keywords (part three). Each event description provides a detailed explanation of the scenario and is associated with a list of extracted keywords that capture the essence of the scene. These keywords are used for evaluation purposes in our framework.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12545/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12545/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}