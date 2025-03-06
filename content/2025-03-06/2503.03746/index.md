---
title: "Process-based Self-Rewarding Language Models"
summary: "Process-based Self-Rewarding advances LLMs, surpassing human reasoning in math by step-wise self-evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Nanjing University",]
showSummary: true
date: 2025-03-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.03746 {{< /keyword >}}
{{< keyword icon="writer" >}} Shimao Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.03746" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.03746" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.03746/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large Language Models rely on human-annotated preference data, which limits their performance.** Self-Rewarding methods aim to overcome this by having LLMs generate training data and reward their own outputs.  However, existing methods struggle with complex mathematical reasoning tasks and can even degrade performance. There are two main limitations in the framework: (a) algorithm can't provide fine-grained rewards for reasoning tasks; (b) hard to design criterion for complex solution to get scores. 



This paper introduces **Process-based Self-Rewarding Language Models**, incorporating step-wise LLM-as-a-Judge and preference optimization. It addresses the limitations of existing methods by enabling fine-grained evaluation of reasoning steps and step-wise preference optimization using the model itself as a reward model. Experiments on mathematical reasoning benchmarks demonstrate enhanced performance and potential for superhuman reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Process-based Self-Rewarding significantly enhances LLMs' mathematical reasoning abilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Step-wise LLM-as-a-Judge and preference optimization are crucial for effective self-rewarding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method shows potential for achieving superhuman reasoning capabilities in LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to self-rewarding language models. It's relevant due to its potential to surpass human-level reasoning in mathematical tasks. **By focusing on fine-grained, step-wise self-evaluation, the proposed method addresses limitations** of existing self-rewarding techniques, opening new avenues for AI research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.03746/x1.png)

> 🔼 This figure illustrates the Process-based Self-Rewarding paradigm.  It begins with obtaining two types of data: EFT data (obtained through tree search, initial data filtering, and annotation) and IFT data (created by segmenting solution steps). The model is initialized using both datasets. Then, a step-by-step process unfolds:  The model performs search-based reasoning, uses an LLM-as-a-Judge to select the best reasoning step and create pairwise preference data, and finally, undergoes step-wise preference optimization. This entire cycle is then repeated for iterative model improvement.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of our Process-based Self-Rewarding paradigm. (1) We get EFT data by tree-search, initial data filtering and data annotation. And we get IFT data by step segmentation. (2) The model is initialized on EFT and IFT data. (3) The model conducts step-by-step search-based reasoning and performs step-wise LLM-as-a-Judge to select the chosen step and generate the step-wise preference pair at each step. (4) We perform step-wise preference optimization on the model. (5) The model enters the next iteration cycle.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.18.19.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.18.19.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.7.1">AMC2023</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.18.19.1.8"><span class="ltx_text ltx_font_bold" id="S3.T1.18.19.1.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.20.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.18.20.2.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.2">92.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.3">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.4">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.5">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.6">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.7">47.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.20.2.8">56.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.21.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.18.21.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.18.21.3.1.1">7B Base Model</span></th>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.2"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.3"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.4"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.5"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.6"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.7"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.21.3.8"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.1"><math alttext="M_{0}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><msub id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">M_{0}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3">51.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4">51.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.5">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7">22.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8">36.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.2.1">SRLM - <math alttext="M_{1}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><msub id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml"><mi id="S3.T1.2.2.1.m1.1.1.2" xref="S3.T1.2.2.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.2.2.1.m1.1.1.3" xref="S3.T1.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><apply id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1">subscript</csymbol><ci id="S3.T1.2.2.1.m1.1.1.2.cmml" xref="S3.T1.2.2.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.2.2.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2">88.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.3">69.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.4">61.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.5">37.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.6">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.7">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.8">51.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.3.1">                <math alttext="M_{2}" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><msub id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml"><mi id="S3.T1.3.3.1.m1.1.1.2" xref="S3.T1.3.3.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.3.3.1.m1.1.1.3" xref="S3.T1.3.3.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><apply id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1">subscript</csymbol><ci id="S3.T1.3.3.1.m1.1.1.2.cmml" xref="S3.T1.3.3.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.2">87.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3">69.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.4">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5">37.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6">3.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7">40.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8">50.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.1">                <math alttext="M_{3}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><msub id="S3.T1.4.4.1.m1.1.1" xref="S3.T1.4.4.1.m1.1.1.cmml"><mi id="S3.T1.4.4.1.m1.1.1.2" xref="S3.T1.4.4.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.4.4.1.m1.1.1.3" xref="S3.T1.4.4.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><apply id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1">subscript</csymbol><ci id="S3.T1.4.4.1.m1.1.1.2.cmml" xref="S3.T1.4.4.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.2">88.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.3">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4">61.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5">36.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7">40.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8">51.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.5.1">                <math alttext="M_{4}" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><msub id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml"><mi id="S3.T1.5.5.1.m1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.5.5.1.m1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><apply id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.2">88.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.3">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.4">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5">37.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.6">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8">53.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.6.1">PSRLM - <math alttext="M_{1}" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1"><semantics id="S3.T1.6.6.1.m1.1a"><msub id="S3.T1.6.6.1.m1.1.1" xref="S3.T1.6.6.1.m1.1.1.cmml"><mi id="S3.T1.6.6.1.m1.1.1.2" xref="S3.T1.6.6.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.6.6.1.m1.1.1.3" xref="S3.T1.6.6.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><apply id="S3.T1.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.6.6.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.2">88.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.3">69.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.4">61.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5">36.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6">6.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.7">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8">51.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.7.1">                  <math alttext="M_{2}" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.1"><semantics id="S3.T1.7.7.1.m1.1a"><msub id="S3.T1.7.7.1.m1.1.1" xref="S3.T1.7.7.1.m1.1.1.cmml"><mi id="S3.T1.7.7.1.m1.1.1.2" xref="S3.T1.7.7.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.7.7.1.m1.1.1.3" xref="S3.T1.7.7.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.1b"><apply id="S3.T1.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.7.7.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.7.7.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.2">88.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.3">69.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.4">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.5">36.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.6"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.6.1">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.8">53.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.1">                  <math alttext="M_{3}" class="ltx_Math" display="inline" id="S3.T1.8.8.1.m1.1"><semantics id="S3.T1.8.8.1.m1.1a"><msub id="S3.T1.8.8.1.m1.1.1" xref="S3.T1.8.8.1.m1.1.1.cmml"><mi id="S3.T1.8.8.1.m1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.8.8.1.m1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.1.m1.1b"><apply id="S3.T1.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.8.8.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.8.8.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.2">88.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.3">72.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.4">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.5"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.5.1">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.6">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.7">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8">54.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.9.1">                  <math alttext="M_{4}" class="ltx_Math" display="inline" id="S3.T1.9.9.1.m1.1"><semantics id="S3.T1.9.9.1.m1.1a"><msub id="S3.T1.9.9.1.m1.1.1" xref="S3.T1.9.9.1.m1.1.1.cmml"><mi id="S3.T1.9.9.1.m1.1.1.2" xref="S3.T1.9.9.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.9.9.1.m1.1.1.3" xref="S3.T1.9.9.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.1.m1.1b"><apply id="S3.T1.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.1.1.1.cmml" xref="S3.T1.9.9.1.m1.1.1">subscript</csymbol><ci id="S3.T1.9.9.1.m1.1.1.2.cmml" xref="S3.T1.9.9.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.9.9.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.9.9.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.2.1">88.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.3.1">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.4.1">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.5">38.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.6">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.7.1">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.8"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.8.1">55.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.22.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.18.22.4.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.18.22.4.1.1">72B Base Model</span></th>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.2"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.3"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.4"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.5"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.6"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.7"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.18.22.4.8"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.10.10.1"><math alttext="M_{0}" class="ltx_Math" display="inline" id="S3.T1.10.10.1.m1.1"><semantics id="S3.T1.10.10.1.m1.1a"><msub id="S3.T1.10.10.1.m1.1.1" xref="S3.T1.10.10.1.m1.1.1.cmml"><mi id="S3.T1.10.10.1.m1.1.1.2" xref="S3.T1.10.10.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.10.10.1.m1.1.1.3" xref="S3.T1.10.10.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.1.m1.1b"><apply id="S3.T1.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1">subscript</csymbol><ci id="S3.T1.10.10.1.m1.1.1.2.cmml" xref="S3.T1.10.10.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.10.10.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.10.10.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.1.m1.1c">M_{0}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.1.m1.1d">italic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.2">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.3">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.4">55.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.5">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.6">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.7">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.8">48.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.11.11.1">SRLM - <math alttext="M_{1}" class="ltx_Math" display="inline" id="S3.T1.11.11.1.m1.1"><semantics id="S3.T1.11.11.1.m1.1a"><msub id="S3.T1.11.11.1.m1.1.1" xref="S3.T1.11.11.1.m1.1.1.cmml"><mi id="S3.T1.11.11.1.m1.1.1.2" xref="S3.T1.11.11.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.11.11.1.m1.1.1.3" xref="S3.T1.11.11.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.1.m1.1b"><apply id="S3.T1.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.11.11.1.m1.1.1.1.cmml" xref="S3.T1.11.11.1.m1.1.1">subscript</csymbol><ci id="S3.T1.11.11.1.m1.1.1.2.cmml" xref="S3.T1.11.11.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.11.11.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.11.11.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.2">92.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.3">76.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.4">67.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.5">41.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.6">16.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.7">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.8">57.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.1">                <math alttext="M_{2}" class="ltx_Math" display="inline" id="S3.T1.12.12.1.m1.1"><semantics id="S3.T1.12.12.1.m1.1a"><msub id="S3.T1.12.12.1.m1.1.1" xref="S3.T1.12.12.1.m1.1.1.cmml"><mi id="S3.T1.12.12.1.m1.1.1.2" xref="S3.T1.12.12.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.12.12.1.m1.1.1.3" xref="S3.T1.12.12.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.1.m1.1b"><apply id="S3.T1.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.12.12.1.m1.1.1.1.cmml" xref="S3.T1.12.12.1.m1.1.1">subscript</csymbol><ci id="S3.T1.12.12.1.m1.1.1.2.cmml" xref="S3.T1.12.12.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.12.12.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.12.12.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.2">92.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.3">76.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.4">66.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.5">42.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.6">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.7">55.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.8">58.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.13.13.1">                <math alttext="M_{3}" class="ltx_Math" display="inline" id="S3.T1.13.13.1.m1.1"><semantics id="S3.T1.13.13.1.m1.1a"><msub id="S3.T1.13.13.1.m1.1.1" xref="S3.T1.13.13.1.m1.1.1.cmml"><mi id="S3.T1.13.13.1.m1.1.1.2" xref="S3.T1.13.13.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.13.13.1.m1.1.1.3" xref="S3.T1.13.13.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.1.m1.1b"><apply id="S3.T1.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.13.13.1.m1.1.1.1.cmml" xref="S3.T1.13.13.1.m1.1.1">subscript</csymbol><ci id="S3.T1.13.13.1.m1.1.1.2.cmml" xref="S3.T1.13.13.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.13.13.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.13.13.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.2">92.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.3">75.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.4">67.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.5">42.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.6">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.7">52.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.8">58.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.14.14.1">                <math alttext="M_{4}" class="ltx_Math" display="inline" id="S3.T1.14.14.1.m1.1"><semantics id="S3.T1.14.14.1.m1.1a"><msub id="S3.T1.14.14.1.m1.1.1" xref="S3.T1.14.14.1.m1.1.1.cmml"><mi id="S3.T1.14.14.1.m1.1.1.2" xref="S3.T1.14.14.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.14.14.1.m1.1.1.3" xref="S3.T1.14.14.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.1.m1.1b"><apply id="S3.T1.14.14.1.m1.1.1.cmml" xref="S3.T1.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.14.14.1.m1.1.1.1.cmml" xref="S3.T1.14.14.1.m1.1.1">subscript</csymbol><ci id="S3.T1.14.14.1.m1.1.1.2.cmml" xref="S3.T1.14.14.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.14.14.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.14.14.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.2">92.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.3">76.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.4">66.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.5">44.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.6">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.7">42.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.8">55.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.15.15.1">PSRLM - <math alttext="M_{1}" class="ltx_Math" display="inline" id="S3.T1.15.15.1.m1.1"><semantics id="S3.T1.15.15.1.m1.1a"><msub id="S3.T1.15.15.1.m1.1.1" xref="S3.T1.15.15.1.m1.1.1.cmml"><mi id="S3.T1.15.15.1.m1.1.1.2" xref="S3.T1.15.15.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.15.15.1.m1.1.1.3" xref="S3.T1.15.15.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.1.m1.1b"><apply id="S3.T1.15.15.1.m1.1.1.cmml" xref="S3.T1.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.15.15.1.m1.1.1.1.cmml" xref="S3.T1.15.15.1.m1.1.1">subscript</csymbol><ci id="S3.T1.15.15.1.m1.1.1.2.cmml" xref="S3.T1.15.15.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.15.15.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.15.15.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.2">92.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.3">75.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.4">67.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.5">41.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.6">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.7">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.8">55.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.1">                  <math alttext="M_{2}" class="ltx_Math" display="inline" id="S3.T1.16.16.1.m1.1"><semantics id="S3.T1.16.16.1.m1.1a"><msub id="S3.T1.16.16.1.m1.1.1" xref="S3.T1.16.16.1.m1.1.1.cmml"><mi id="S3.T1.16.16.1.m1.1.1.2" xref="S3.T1.16.16.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.16.16.1.m1.1.1.3" xref="S3.T1.16.16.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.1.m1.1b"><apply id="S3.T1.16.16.1.m1.1.1.cmml" xref="S3.T1.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.16.16.1.m1.1.1.1.cmml" xref="S3.T1.16.16.1.m1.1.1">subscript</csymbol><ci id="S3.T1.16.16.1.m1.1.1.2.cmml" xref="S3.T1.16.16.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.16.16.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.16.16.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.2">92.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.3">76.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.4">67.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.5">41.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.6">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.7">57.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.8">59.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.17.17.1">                  <math alttext="M_{3}" class="ltx_Math" display="inline" id="S3.T1.17.17.1.m1.1"><semantics id="S3.T1.17.17.1.m1.1a"><msub id="S3.T1.17.17.1.m1.1.1" xref="S3.T1.17.17.1.m1.1.1.cmml"><mi id="S3.T1.17.17.1.m1.1.1.2" xref="S3.T1.17.17.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.17.17.1.m1.1.1.3" xref="S3.T1.17.17.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.1.m1.1b"><apply id="S3.T1.17.17.1.m1.1.1.cmml" xref="S3.T1.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.17.17.1.m1.1.1.1.cmml" xref="S3.T1.17.17.1.m1.1.1">subscript</csymbol><ci id="S3.T1.17.17.1.m1.1.1.2.cmml" xref="S3.T1.17.17.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.17.17.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.17.17.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.2">93.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.3">76.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.4">67.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.5">42.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.6">23.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.7">52.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.8">59.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.18.18.1">                  <math alttext="M_{4}" class="ltx_Math" display="inline" id="S3.T1.18.18.1.m1.1"><semantics id="S3.T1.18.18.1.m1.1a"><msub id="S3.T1.18.18.1.m1.1.1" xref="S3.T1.18.18.1.m1.1.1.cmml"><mi id="S3.T1.18.18.1.m1.1.1.2" xref="S3.T1.18.18.1.m1.1.1.2.cmml">M</mi><mn id="S3.T1.18.18.1.m1.1.1.3" xref="S3.T1.18.18.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.1.m1.1b"><apply id="S3.T1.18.18.1.m1.1.1.cmml" xref="S3.T1.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.18.18.1.m1.1.1.1.cmml" xref="S3.T1.18.18.1.m1.1.1">subscript</csymbol><ci id="S3.T1.18.18.1.m1.1.1.2.cmml" xref="S3.T1.18.18.1.m1.1.1.2">𝑀</ci><cn id="S3.T1.18.18.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.18.18.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.2"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.2.1">93.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.3"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.3.1">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.4"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.4.1">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.5"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.5.1">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.6"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.6.1">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.7"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.7.1">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.18.18.8"><span class="ltx_text ltx_font_bold" id="S3.T1.18.18.8.1">60.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy results of different language models on several mathematical reasoning benchmarks.  The models tested include 7B and 72B parameter base models, along with variations using the Self-Rewarding Language Model (SRLM) algorithm and the proposed Process-based Self-Rewarding approach.  The table shows the accuracy of each model across multiple iterations (M1 to M4) of the Process-based Self-Rewarding method.  The best accuracy for each benchmark and parameter size is highlighted in bold, allowing for easy comparison between the models and approaches.  SRLM is used as a baseline for comparison. This detailed analysis helps to evaluate the effectiveness of the proposed method for enhancing the mathematical reasoning capabilities of large language models.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy of Process-based Self-Rewarding based on 7B and 72B base models. SRLM is the self-rewarding language model algorithm as the baseline. We bold the best results for each parameter size in each benchmark.
> </details>





### In-depth insights


#### Stepwise Reward
The concept of "Stepwise Reward" signifies a refined approach to reinforcing desired behaviors in language models, particularly within complex tasks. Traditional reward mechanisms often evaluate the final output, neglecting the quality of intermediate reasoning. Stepwise reward, conversely, **assesses and reinforces each step** within a multi-stage process. This fine-grained approach enables the model to learn from its successes and failures at each juncture, **leading to more robust and accurate reasoning**. It addresses the limitation where a correct final answer might mask flawed intermediate steps or vice versa. By incentivizing correct steps, it **encourages exploration of more valid reasoning paths**. The design of effective stepwise reward functions is crucial, possibly using techniques where the model judges its own intermediate steps. Furthermore, it **aligns the learning process** more closely with human problem-solving strategies where each sub-goal is accomplished before moving onto the next. By rewarding each step, models can achieve **superior mathematical reasoning skills**.

#### LLM as a Judge
LLMs as judges present a cost-effective and scalable solution for evaluating text. They **mimic human reasoning** but require careful prompting to align with preferences.  Challenges involve ensuring **consistency and mitigating biases**, as well as the need for training with preference data. The approach involves prompting LLMs to reason and evaluate inputs against predefined rules, offering a adaptable alternative to human evaluation, the need for meticulous prompting and **alignment with human preferences** to ensure fairness and accuracy is essential.  Evaluating intermediate steps rather than final answers enables more fine-grained and accurate rewards, overcoming a key limitation in existing self-rewarding methods where complex reasoning tasks are challenging to assess with a single overall score.  It is **crucial for effective self-improvement** in tasks that require detailed reasoning and multi-step solutions, especially in the mathematical domain.

#### Iterative Training
**Iterative training** is a crucial aspect for enhancing LLMs. The process involves continuously refining the model by feeding it back its own outputs as new training data. This approach leverages the model's ability to learn from its mistakes and improve its generation quality over successive iterations. The process refines the initial model which leads to an improvement in overall task performance. For complex tasks that require long-thought reasoning capabilities. This iterative self-improvement can lead to models that surpass human-level performance in specific domains. **The model's ability to perform LLM-as-a-Judge** plays a key role in iteratively training the model. It is important to note that **high-quality data** is needed for the iterative training to be useful.

#### Reasoning Focus
**Reasoning focus** is central to advancing language models. The paper emphasizes enhancing **mathematical reasoning** through a novel, process-based self-rewarding framework. It highlights the limitations of existing self-rewarding paradigms, especially in complex, multi-step reasoning. Therefore, the research pivots to focus on **step-wise reasoning**, step-wise LLM-as-a-Judge, and step-wise preference optimization. This involves breaking down complex problems, evaluating intermediate steps and iteratively refining preferences. The core idea is that a model can learn not only to produce correct final answers but also generate accurate intermediate steps, thereby improving the overall reasoning ability and aligning it closer to human-level cognitive processes. The reasoning focus contributes to improving LLMs on a wide range of mathematical tasks.

#### Beyond Human?
The concept of AI surpassing human capabilities is a fascinating one, often framed as a 'Beyond Human?' scenario. It prompts us to consider the very definition of intelligence and the potential for AI to evolve in ways we cannot fully predict. **Current AI systems excel at specific tasks**, often outperforming humans in areas like data analysis and pattern recognition. However, **true general intelligence remains elusive**. The ethical implications of AI exceeding human abilities are profound, raising questions about control, autonomy, and the future of work. If AI can design better AI, where does the cycle end? While the idea of AI 'thinking' in the same way as humans is still debated, **the continued advancement of AI necessitates careful consideration** of its potential impact on society and the human condition. We must strive to develop AI that aligns with human values and promotes a beneficial future for all.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.03746/x2.png)

> 🔼 This figure visualizes the distribution of prompts and responses from three different datasets: EFT (red), IFT (blue), and PPD (grey).  The left panel (a) shows the distribution of prompts, while the right panel (b) shows the distribution of the model's responses. The visualization helps to understand how the data from each source differs and how this difference might influence the model's learning process during iterative training. EFT data is for model evaluation, IFT data is for model initialization, and PPD data is the generated data from the process-based self-rewarding pipeline.
> <details>
> <summary>read the caption</summary>
> (a) Prompt Distributions
> </details>



![](https://arxiv.org/html/2503.03746/x3.png)

> 🔼 This figure visualizes the distribution of responses generated by the model during different stages of training. Specifically, it compares the response distributions of the model's initial outputs (EFT), intermediate outputs (IFT), and outputs generated during process-based self-rewarding optimization (PPD). By comparing these distributions, we can observe how the model's response patterns evolve throughout the training process, providing insights into the effectiveness of the self-rewarding mechanism.
> <details>
> <summary>read the caption</summary>
> (b) Response Distributions
> </details>



![](https://arxiv.org/html/2503.03746/x4.png)

> 🔼 This figure visualizes the distribution of prompts and responses from three different datasets: EFT (Evaluation Fine-Tuning), IFT (Instruction Fine-Tuning), and PPD (Pair-wise Preference Data).  The visualization helps illustrate how the data points cluster and whether there's significant overlap or separation between the datasets. This is useful for understanding how the model's training data is structured and might influence its performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: The data distribution of prompts and responses in EFT (red), IFT (blue) and PPD (grey) data.
> </details>



![](https://arxiv.org/html/2503.03746/x5.png)

> 🔼 This figure displays the prompt used to instruct the model to convert a given solution into a step-by-step format. The prompt explicitly instructs the model to maintain the original information and only separate the solution into logical steps, each prefixed with 'Step n:', where n represents the step number.
> <details>
> <summary>read the caption</summary>
> Figure 3: The prompt for converting the the given solution into step-by-step format logically without altering any information in the original solution.
> </details>



![](https://arxiv.org/html/2503.03746/x6.png)

> 🔼 This figure shows the prompt template used for the step-by-step long-thought reasoning task in the Process-based Self-Rewarding Language Model experiments.  The prompt instructs the LLM to solve a given math problem step-by-step, clearly labeling each reasoning step with the prefix 'Step n:', where n is a positive integer.  The final answer should be enclosed in boxes.  This approach encourages the LLM to break down complex problems into smaller, manageable steps, improving the reasoning process and reducing the chance of errors.
> <details>
> <summary>read the caption</summary>
> Figure 4: The prompt for LLMs conducting step-by-step long-thought reasoning.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1">7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.2.2.1">SRLM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.2">+0.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.3">+1.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.4">+2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.5">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.6">+3.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.2.2.7">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.3.3.1">Process-based (Ours)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.2">+0.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.3">+3.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.4">+3.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.5">+2.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.6">+6.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.3.3.7">+10.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.1.1">72B</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.5.4.4.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.4.4.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.5.1">SRLM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.2">-0.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.3">-0.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.4">-1.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.5">+2.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6">-3.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.7">-5.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.6.6.1">Process-based (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.2">+1.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.3">+1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.4">+0.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.5">+2.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.6">+10.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.6.6.7">+12.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the changes in the mathematical performance of Large Language Models (LLMs) after iterative training using the Process-based Self-Rewarding method.  It shows the improvements across multiple benchmarks (GSM8K, MATH, Gaokao2023En, OlympiadBench, AIME2024, AMC2023) for both 7B and 72B parameter models after each iteration from M1 to M4. The improvements are expressed as the difference in performance compared to the baseline Self-Rewarding Language Model (SRLM). Positive values indicate improvements, while negative values indicate performance degradation.
> <details>
> <summary>read the caption</summary>
> Table 2: The results of LLMs’ mathematical performance changes after all iterations from M1subscript𝑀1M_{1}italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT to M4subscript𝑀4M_{4}italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.13.14.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.13.14.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.13.14.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.13.14.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.13.14.1.2.1">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.13.14.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.13.14.1.3.1">72B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.1">
<math alttext="M_{0}" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><msub id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.m1.1.1.2" xref="S5.T3.1.1.1.m1.1.1.2.cmml">M</mi><mn id="S5.T3.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.m1.1.1.2">𝑀</ci><cn id="S5.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">M_{0}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math> (3-shot)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3">73.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.2.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="S5.T3.2.2.1.m1.1"><semantics id="S5.T3.2.2.1.m1.1a"><msub id="S5.T3.2.2.1.m1.1.1" xref="S5.T3.2.2.1.m1.1.1.cmml"><mi id="S5.T3.2.2.1.m1.1.1.2" xref="S5.T3.2.2.1.m1.1.1.2.cmml">M</mi><mn id="S5.T3.2.2.1.m1.1.1.3" xref="S5.T3.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.1.m1.1b"><apply id="S5.T3.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.2.2.1.m1.1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="S5.T3.2.2.1.m1.1.1.2.cmml" xref="S5.T3.2.2.1.m1.1.1.2">𝑀</ci><cn id="S5.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2">92.8 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.2.m1.1"><semantics id="S5.T3.3.3.2.m1.1a"><mo id="S5.T3.3.3.2.m1.1.1" stretchy="false" xref="S5.T3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.2.m1.1b"><ci id="S5.T3.3.3.2.m1.1.1.cmml" xref="S5.T3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.3">95.6 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.3.m1.1"><semantics id="S5.T3.4.4.3.m1.1a"><mo id="S5.T3.4.4.3.m1.1.1" stretchy="false" xref="S5.T3.4.4.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.3.m1.1b"><ci id="S5.T3.4.4.3.m1.1.1.cmml" xref="S5.T3.4.4.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.3.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="S5.T3.5.5.1.m1.1"><semantics id="S5.T3.5.5.1.m1.1a"><msub id="S5.T3.5.5.1.m1.1.1" xref="S5.T3.5.5.1.m1.1.1.cmml"><mi id="S5.T3.5.5.1.m1.1.1.2" xref="S5.T3.5.5.1.m1.1.1.2.cmml">M</mi><mn id="S5.T3.5.5.1.m1.1.1.3" xref="S5.T3.5.5.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.1.m1.1b"><apply id="S5.T3.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.5.5.1.m1.1.1.1.cmml" xref="S5.T3.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T3.5.5.1.m1.1.1.2.cmml" xref="S5.T3.5.5.1.m1.1.1.2">𝑀</ci><cn id="S5.T3.5.5.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.5.5.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.2">91.6 (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.6.6.2.m1.1"><semantics id="S5.T3.6.6.2.m1.1a"><mo id="S5.T3.6.6.2.m1.1.1" stretchy="false" xref="S5.T3.6.6.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.2.m1.1b"><ci id="S5.T3.6.6.2.m1.1.1.cmml" xref="S5.T3.6.6.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.2.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.3">95.8 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.7.7.3.m1.1"><semantics id="S5.T3.7.7.3.m1.1a"><mo id="S5.T3.7.7.3.m1.1.1" stretchy="false" xref="S5.T3.7.7.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.3.m1.1b"><ci id="S5.T3.7.7.3.m1.1.1.cmml" xref="S5.T3.7.7.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.3.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.8.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="S5.T3.8.8.1.m1.1"><semantics id="S5.T3.8.8.1.m1.1a"><msub id="S5.T3.8.8.1.m1.1.1" xref="S5.T3.8.8.1.m1.1.1.cmml"><mi id="S5.T3.8.8.1.m1.1.1.2" xref="S5.T3.8.8.1.m1.1.1.2.cmml">M</mi><mn id="S5.T3.8.8.1.m1.1.1.3" xref="S5.T3.8.8.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.1.m1.1b"><apply id="S5.T3.8.8.1.m1.1.1.cmml" xref="S5.T3.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.8.8.1.m1.1.1.1.cmml" xref="S5.T3.8.8.1.m1.1.1">subscript</csymbol><ci id="S5.T3.8.8.1.m1.1.1.2.cmml" xref="S5.T3.8.8.1.m1.1.1.2">𝑀</ci><cn id="S5.T3.8.8.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.8.8.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.2">92.0 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.9.9.2.m1.1"><semantics id="S5.T3.9.9.2.m1.1a"><mo id="S5.T3.9.9.2.m1.1.1" stretchy="false" xref="S5.T3.9.9.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.2.m1.1b"><ci id="S5.T3.9.9.2.m1.1.1.cmml" xref="S5.T3.9.9.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.3">95.2 (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.10.10.3.m1.1"><semantics id="S5.T3.10.10.3.m1.1a"><mo id="S5.T3.10.10.3.m1.1.1" stretchy="false" xref="S5.T3.10.10.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.3.m1.1b"><ci id="S5.T3.10.10.3.m1.1.1.cmml" xref="S5.T3.10.10.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.3.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.11.11.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="S5.T3.11.11.1.m1.1"><semantics id="S5.T3.11.11.1.m1.1a"><msub id="S5.T3.11.11.1.m1.1.1" xref="S5.T3.11.11.1.m1.1.1.cmml"><mi id="S5.T3.11.11.1.m1.1.1.2" xref="S5.T3.11.11.1.m1.1.1.2.cmml">M</mi><mn id="S5.T3.11.11.1.m1.1.1.3" xref="S5.T3.11.11.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.11.11.1.m1.1b"><apply id="S5.T3.11.11.1.m1.1.1.cmml" xref="S5.T3.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.11.11.1.m1.1.1.1.cmml" xref="S5.T3.11.11.1.m1.1.1">subscript</csymbol><ci id="S5.T3.11.11.1.m1.1.1.2.cmml" xref="S5.T3.11.11.1.m1.1.1.2">𝑀</ci><cn id="S5.T3.11.11.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.11.11.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.11.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.11.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.12.12.2">92.2 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.12.12.2.m1.1"><semantics id="S5.T3.12.12.2.m1.1a"><mo id="S5.T3.12.12.2.m1.1.1" stretchy="false" xref="S5.T3.12.12.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.12.12.2.m1.1b"><ci id="S5.T3.12.12.2.m1.1.1.cmml" xref="S5.T3.12.12.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.12.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.12.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.13.13.3">95.6 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.13.13.3.m1.1"><semantics id="S5.T3.13.13.3.m1.1a"><mo id="S5.T3.13.13.3.m1.1.1" stretchy="false" xref="S5.T3.13.13.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.13.13.3.m1.1b"><ci id="S5.T3.13.13.3.m1.1.1.cmml" xref="S5.T3.13.13.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.13.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.13.3.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of the step-wise LLM-as-a-Judge model across different iterations.  It shows how well the model, acting as a judge, evaluates the quality of reasoning steps produced by another LLM. The results are broken down by model size (7B and 72B parameters) and iteration number, providing a clear view of the model's performance improvement throughout the iterative process.  Arrows indicate whether the accuracy increased (↑) or decreased (↓) between iterations for each model size.
> <details>
> <summary>read the caption</summary>
> Table 3: Judgment accuracy in step-wise LLM-as-a-Judge. We report the results of models with different parameter sizes. Additionally, we use arrows to indicate the changes in accuracy during the iterations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.5.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.1.1.1">Iterations</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T4.4.5.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.1.2.1">Step Num</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T4.4.5.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.1.3.1">Step Length</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.6.2.1">GSM8k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.6.2.2">MATH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.6.2.3">GSM8k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.6.2.4">MATH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><msub id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml"><mi id="S5.T4.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.m1.1.1.2.cmml">M</mi><mn id="S5.T4.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T4.1.1.1.m1.1.1.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2">𝑀</ci><cn id="S5.T4.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2">5.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3">8.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.4">47.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5">61.00</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="S5.T4.2.2.1.m1.1"><semantics id="S5.T4.2.2.1.m1.1a"><msub id="S5.T4.2.2.1.m1.1.1" xref="S5.T4.2.2.1.m1.1.1.cmml"><mi id="S5.T4.2.2.1.m1.1.1.2" xref="S5.T4.2.2.1.m1.1.1.2.cmml">M</mi><mn id="S5.T4.2.2.1.m1.1.1.3" xref="S5.T4.2.2.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.1.m1.1b"><apply id="S5.T4.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.2.2.1.m1.1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1">subscript</csymbol><ci id="S5.T4.2.2.1.m1.1.1.2.cmml" xref="S5.T4.2.2.1.m1.1.1.2">𝑀</ci><cn id="S5.T4.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2">5.55</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.3">7.64</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.4">51.19</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.5">67.17</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.3.3.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="S5.T4.3.3.1.m1.1"><semantics id="S5.T4.3.3.1.m1.1a"><msub id="S5.T4.3.3.1.m1.1.1" xref="S5.T4.3.3.1.m1.1.1.cmml"><mi id="S5.T4.3.3.1.m1.1.1.2" xref="S5.T4.3.3.1.m1.1.1.2.cmml">M</mi><mn id="S5.T4.3.3.1.m1.1.1.3" xref="S5.T4.3.3.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.1.m1.1b"><apply id="S5.T4.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.3.3.1.m1.1.1.1.cmml" xref="S5.T4.3.3.1.m1.1.1">subscript</csymbol><ci id="S5.T4.3.3.1.m1.1.1.2.cmml" xref="S5.T4.3.3.1.m1.1.1.2">𝑀</ci><cn id="S5.T4.3.3.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.2">5.10</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3">6.30</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.4">57.75</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5">80.46</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.4.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="S5.T4.4.4.1.m1.1"><semantics id="S5.T4.4.4.1.m1.1a"><msub id="S5.T4.4.4.1.m1.1.1" xref="S5.T4.4.4.1.m1.1.1.cmml"><mi id="S5.T4.4.4.1.m1.1.1.2" xref="S5.T4.4.4.1.m1.1.1.2.cmml">M</mi><mn id="S5.T4.4.4.1.m1.1.1.3" xref="S5.T4.4.4.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.1.m1.1b"><apply id="S5.T4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.4.4.1.m1.1.1.1.cmml" xref="S5.T4.4.4.1.m1.1.1">subscript</csymbol><ci id="S5.T4.4.4.1.m1.1.1.2.cmml" xref="S5.T4.4.4.1.m1.1.1.2">𝑀</ci><cn id="S5.T4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.2">4.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.3">5.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4">62.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.5">96.63</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical analysis of the number of reasoning steps and the average length of each step generated by the 72B parameter model when solving problems from the GSM8K and MATH benchmark datasets.  It shows how these metrics vary across different problem types and model iterations, offering insights into the efficiency and complexity of the model's reasoning process.  More detailed results for all benchmarks and model sizes are available in Appendix A.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistics of step number and step length on GSM8k and MATH benchmarks based on 72B models. The full results are reported in Appendix A.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.2.3.1.1.1">Strategy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.3.1.2.1">Greedy Search</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.2.3.1.3.1">Test-time Scaling</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><msub id="S5.T5.1.1.1.m1.1.1" xref="S5.T5.1.1.1.m1.1.1.cmml"><mi id="S5.T5.1.1.1.m1.1.1.2" xref="S5.T5.1.1.1.m1.1.1.2.cmml">M</mi><mn id="S5.T5.1.1.1.m1.1.1.3" xref="S5.T5.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><apply id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T5.1.1.1.m1.1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T5.1.1.1.m1.1.1.2.cmml" xref="S5.T5.1.1.1.m1.1.1.2">𝑀</ci><cn id="S5.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T5.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2">55.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3">58.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.2.2.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="S5.T5.2.2.1.m1.1"><semantics id="S5.T5.2.2.1.m1.1a"><msub id="S5.T5.2.2.1.m1.1.1" xref="S5.T5.2.2.1.m1.1.1.cmml"><mi id="S5.T5.2.2.1.m1.1.1.2" xref="S5.T5.2.2.1.m1.1.1.2.cmml">M</mi><mn id="S5.T5.2.2.1.m1.1.1.3" xref="S5.T5.2.2.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.1.m1.1b"><apply id="S5.T5.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T5.2.2.1.m1.1.1.1.cmml" xref="S5.T5.2.2.1.m1.1.1">subscript</csymbol><ci id="S5.T5.2.2.1.m1.1.1.2.cmml" xref="S5.T5.2.2.1.m1.1.1.2">𝑀</ci><cn id="S5.T5.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T5.2.2.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.3">62.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average performance of the 72B parameter model on various mathematical reasoning benchmarks.  The performance is evaluated using two different search strategies: greedy search and test-time scaling.  Test-time scaling allows the model to utilize more time and resources during inference, potentially improving accuracy.  The table shows the average scores across all benchmarks for both search methods, with the complete results detailed in Table 9 of the paper. This provides a comparison of model efficiency and accuracy when employing different search techniques.
> <details>
> <summary>read the caption</summary>
> Table 5: The average results of 72B model on all benchmarks using greedy search or test-time scaling. The full results are reported in Table 9.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1">Judge Strategy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">Consistency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">Agreement</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.2.1.1">Step-wise Pairwise Comparison</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.2">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.3">0.88</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T6.1.3.2.1">Solution Scoring</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.3.2.2">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.3.2.3">0.32</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of two different methods used for evaluating the quality of large language model (LLM) responses in mathematical reasoning tasks: step-wise pairwise comparison and solution scoring.  It shows the consistency and agreement of these methods with human evaluations, indicating which approach aligns better with human judgment in determining the quality of complex mathematical reasoning steps.
> <details>
> <summary>read the caption</summary>
> Table 6: The consistency and agreement with human evaluation of step-wise pairwise comparison and solution scoring.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T7.8.9.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.1.1">Step Num</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.8.9.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.8.9.1.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="A1.T7.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.m1.1a"><msub id="A1.T7.1.1.1.m1.1.1" xref="A1.T7.1.1.1.m1.1.1.cmml"><mi id="A1.T7.1.1.1.m1.1.1.2" xref="A1.T7.1.1.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.1.1.1.m1.1.1.3" xref="A1.T7.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.m1.1b"><apply id="A1.T7.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.1.1.1.m1.1.1.1.cmml" xref="A1.T7.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T7.1.1.1.m1.1.1.2.cmml" xref="A1.T7.1.1.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.1.1.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2">5.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3">9.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.4">8.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.5">11.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.6">7.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7">11.18</td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.2.2.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="A1.T7.2.2.1.m1.1"><semantics id="A1.T7.2.2.1.m1.1a"><msub id="A1.T7.2.2.1.m1.1.1" xref="A1.T7.2.2.1.m1.1.1.cmml"><mi id="A1.T7.2.2.1.m1.1.1.2" xref="A1.T7.2.2.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.2.2.1.m1.1.1.3" xref="A1.T7.2.2.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.1.m1.1b"><apply id="A1.T7.2.2.1.m1.1.1.cmml" xref="A1.T7.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.2.2.1.m1.1.1.1.cmml" xref="A1.T7.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T7.2.2.1.m1.1.1.2.cmml" xref="A1.T7.2.2.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.2.2.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.2">5.24</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.3">8.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.4">7.43</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.5">9.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.6">7.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.7">9.85</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="A1.T7.3.3.1.m1.1"><semantics id="A1.T7.3.3.1.m1.1a"><msub id="A1.T7.3.3.1.m1.1.1" xref="A1.T7.3.3.1.m1.1.1.cmml"><mi id="A1.T7.3.3.1.m1.1.1.2" xref="A1.T7.3.3.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.3.3.1.m1.1.1.3" xref="A1.T7.3.3.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.1.m1.1b"><apply id="A1.T7.3.3.1.m1.1.1.cmml" xref="A1.T7.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.3.3.1.m1.1.1.1.cmml" xref="A1.T7.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T7.3.3.1.m1.1.1.2.cmml" xref="A1.T7.3.3.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.3.3.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.2">4.50</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.3">6.43</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.4">5.84</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.5">7.36</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.6">7.13</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.7">6.9</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.4.4.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="A1.T7.4.4.1.m1.1"><semantics id="A1.T7.4.4.1.m1.1a"><msub id="A1.T7.4.4.1.m1.1.1" xref="A1.T7.4.4.1.m1.1.1.cmml"><mi id="A1.T7.4.4.1.m1.1.1.2" xref="A1.T7.4.4.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.4.4.1.m1.1.1.3" xref="A1.T7.4.4.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.1.m1.1b"><apply id="A1.T7.4.4.1.m1.1.1.cmml" xref="A1.T7.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.4.4.1.m1.1.1.1.cmml" xref="A1.T7.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T7.4.4.1.m1.1.1.2.cmml" xref="A1.T7.4.4.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.4.4.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.2">4.09</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.3">5.21</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.4">5.11</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.5">6.14</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6">6.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7">5.53</td>
</tr>
<tr class="ltx_tr" id="A1.T7.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.1.1">Step Length</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.2"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.4"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.5"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.6"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T7.8.10.2.7"><span class="ltx_text ltx_font_bold" id="A1.T7.8.10.2.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.5.5.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="A1.T7.5.5.1.m1.1"><semantics id="A1.T7.5.5.1.m1.1a"><msub id="A1.T7.5.5.1.m1.1.1" xref="A1.T7.5.5.1.m1.1.1.cmml"><mi id="A1.T7.5.5.1.m1.1.1.2" xref="A1.T7.5.5.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.5.5.1.m1.1.1.3" xref="A1.T7.5.5.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.1.m1.1b"><apply id="A1.T7.5.5.1.m1.1.1.cmml" xref="A1.T7.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.5.5.1.m1.1.1.1.cmml" xref="A1.T7.5.5.1.m1.1.1">subscript</csymbol><ci id="A1.T7.5.5.1.m1.1.1.2.cmml" xref="A1.T7.5.5.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.5.5.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.5.5.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.2">48.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.3">61.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.4">69.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.5">103.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.6">100.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7">76.13</td>
</tr>
<tr class="ltx_tr" id="A1.T7.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.6.6.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="A1.T7.6.6.1.m1.1"><semantics id="A1.T7.6.6.1.m1.1a"><msub id="A1.T7.6.6.1.m1.1.1" xref="A1.T7.6.6.1.m1.1.1.cmml"><mi id="A1.T7.6.6.1.m1.1.1.2" xref="A1.T7.6.6.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.6.6.1.m1.1.1.3" xref="A1.T7.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.1.m1.1b"><apply id="A1.T7.6.6.1.m1.1.1.cmml" xref="A1.T7.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.6.6.1.m1.1.1.1.cmml" xref="A1.T7.6.6.1.m1.1.1">subscript</csymbol><ci id="A1.T7.6.6.1.m1.1.1.2.cmml" xref="A1.T7.6.6.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.6.6.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.2">54.02</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.3">70.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.4">85.26</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.5">108.26</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.6">114.27</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.7">115.29</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.7.7.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="A1.T7.7.7.1.m1.1"><semantics id="A1.T7.7.7.1.m1.1a"><msub id="A1.T7.7.7.1.m1.1.1" xref="A1.T7.7.7.1.m1.1.1.cmml"><mi id="A1.T7.7.7.1.m1.1.1.2" xref="A1.T7.7.7.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.7.7.1.m1.1.1.3" xref="A1.T7.7.7.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.1.m1.1b"><apply id="A1.T7.7.7.1.m1.1.1.cmml" xref="A1.T7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.7.7.1.m1.1.1.1.cmml" xref="A1.T7.7.7.1.m1.1.1">subscript</csymbol><ci id="A1.T7.7.7.1.m1.1.1.2.cmml" xref="A1.T7.7.7.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.7.7.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.7.7.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.2">63.36</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.3">89.68</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.4">99.59</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.5">127.97</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.6">118.67</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.7">109.45</td>
</tr>
<tr class="ltx_tr" id="A1.T7.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.8.8.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="A1.T7.8.8.1.m1.1"><semantics id="A1.T7.8.8.1.m1.1a"><msub id="A1.T7.8.8.1.m1.1.1" xref="A1.T7.8.8.1.m1.1.1.cmml"><mi id="A1.T7.8.8.1.m1.1.1.2" xref="A1.T7.8.8.1.m1.1.1.2.cmml">M</mi><mn id="A1.T7.8.8.1.m1.1.1.3" xref="A1.T7.8.8.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.8.8.1.m1.1b"><apply id="A1.T7.8.8.1.m1.1.1.cmml" xref="A1.T7.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.8.8.1.m1.1.1.1.cmml" xref="A1.T7.8.8.1.m1.1.1">subscript</csymbol><ci id="A1.T7.8.8.1.m1.1.1.2.cmml" xref="A1.T7.8.8.1.m1.1.1.2">𝑀</ci><cn id="A1.T7.8.8.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.8.8.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.8.8.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.8.8.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.2">73.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.3">113.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.4">118.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.5">142.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.6">138.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.8.8.7">127.18</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical analysis of the number of reasoning steps and the average length of each step generated by the 7B parameter model across various mathematical reasoning benchmarks.  The benchmarks include GSM8K, MATH, Gaokao2023En, OlympiadBench, AIME2024, and AMC2023. The data is broken down by model iteration (M1 through M4), illustrating how these metrics change as the model undergoes iterative self-rewarding training.
> <details>
> <summary>read the caption</summary>
> Table 7: Statistics of step number and step length on different methematical benchmarks based on 7B models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T8.8.9.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.1.1">Step Num</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.4"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.5"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.6"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.8.9.1.7"><span class="ltx_text ltx_font_bold" id="A1.T8.8.9.1.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.1.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="A1.T8.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.m1.1a"><msub id="A1.T8.1.1.1.m1.1.1" xref="A1.T8.1.1.1.m1.1.1.cmml"><mi id="A1.T8.1.1.1.m1.1.1.2" xref="A1.T8.1.1.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.1.1.1.m1.1.1.3" xref="A1.T8.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.m1.1b"><apply id="A1.T8.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.1.1.1.m1.1.1.1.cmml" xref="A1.T8.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T8.1.1.1.m1.1.1.2.cmml" xref="A1.T8.1.1.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.1.1.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2">5.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.3">8.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.4">8.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.5">10.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.6">8.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.7">9.95</td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.2.2.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="A1.T8.2.2.1.m1.1"><semantics id="A1.T8.2.2.1.m1.1a"><msub id="A1.T8.2.2.1.m1.1.1" xref="A1.T8.2.2.1.m1.1.1.cmml"><mi id="A1.T8.2.2.1.m1.1.1.2" xref="A1.T8.2.2.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.2.2.1.m1.1.1.3" xref="A1.T8.2.2.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.1.m1.1b"><apply id="A1.T8.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.2.2.1.m1.1.1.1.cmml" xref="A1.T8.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T8.2.2.1.m1.1.1.2.cmml" xref="A1.T8.2.2.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.2.2.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2">5.55</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.3">7.64</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.4">7.34</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.5">9.05</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.6">7.37</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.7">9.75</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.3.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="A1.T8.3.3.1.m1.1"><semantics id="A1.T8.3.3.1.m1.1a"><msub id="A1.T8.3.3.1.m1.1.1" xref="A1.T8.3.3.1.m1.1.1.cmml"><mi id="A1.T8.3.3.1.m1.1.1.2" xref="A1.T8.3.3.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.3.3.1.m1.1.1.3" xref="A1.T8.3.3.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.1.m1.1b"><apply id="A1.T8.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.3.3.1.m1.1.1.1.cmml" xref="A1.T8.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T8.3.3.1.m1.1.1.2.cmml" xref="A1.T8.3.3.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.3.3.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2">5.10</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.3">6.30</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.4">5.99</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.5">6.54</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.6">7.07</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.7">6.55</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.4.4.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="A1.T8.4.4.1.m1.1"><semantics id="A1.T8.4.4.1.m1.1a"><msub id="A1.T8.4.4.1.m1.1.1" xref="A1.T8.4.4.1.m1.1.1.cmml"><mi id="A1.T8.4.4.1.m1.1.1.2" xref="A1.T8.4.4.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.4.4.1.m1.1.1.3" xref="A1.T8.4.4.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.1.m1.1b"><apply id="A1.T8.4.4.1.m1.1.1.cmml" xref="A1.T8.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.4.4.1.m1.1.1.1.cmml" xref="A1.T8.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T8.4.4.1.m1.1.1.2.cmml" xref="A1.T8.4.4.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.4.4.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.2">4.87</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.3">5.54</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4">5.36</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.5">5.75</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6">6.33</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7">6.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.1"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.1.1">Step Length</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.2"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.2.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.3"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.4"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.4.1">Gaokao2023En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.5"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.5.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.6"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.6.1">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="A1.T8.8.10.2.7"><span class="ltx_text ltx_font_bold" id="A1.T8.8.10.2.7.1">AMC2023</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.5.5.1"><math alttext="M_{1}" class="ltx_Math" display="inline" id="A1.T8.5.5.1.m1.1"><semantics id="A1.T8.5.5.1.m1.1a"><msub id="A1.T8.5.5.1.m1.1.1" xref="A1.T8.5.5.1.m1.1.1.cmml"><mi id="A1.T8.5.5.1.m1.1.1.2" xref="A1.T8.5.5.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.5.5.1.m1.1.1.3" xref="A1.T8.5.5.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.1.m1.1b"><apply id="A1.T8.5.5.1.m1.1.1.cmml" xref="A1.T8.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.5.5.1.m1.1.1.1.cmml" xref="A1.T8.5.5.1.m1.1.1">subscript</csymbol><ci id="A1.T8.5.5.1.m1.1.1.2.cmml" xref="A1.T8.5.5.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.5.5.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.5.5.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.2">47.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.3">61.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.4">69.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.5">95.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.6">104.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.7">79.36</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.6.6.1"><math alttext="M_{2}" class="ltx_Math" display="inline" id="A1.T8.6.6.1.m1.1"><semantics id="A1.T8.6.6.1.m1.1a"><msub id="A1.T8.6.6.1.m1.1.1" xref="A1.T8.6.6.1.m1.1.1.cmml"><mi id="A1.T8.6.6.1.m1.1.1.2" xref="A1.T8.6.6.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.6.6.1.m1.1.1.3" xref="A1.T8.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.6.6.1.m1.1b"><apply id="A1.T8.6.6.1.m1.1.1.cmml" xref="A1.T8.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.6.6.1.m1.1.1.1.cmml" xref="A1.T8.6.6.1.m1.1.1">subscript</csymbol><ci id="A1.T8.6.6.1.m1.1.1.2.cmml" xref="A1.T8.6.6.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.6.6.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.6.6.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.6.6.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.2">51.19</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.3">67.17</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.4">78.00</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.5">101.93</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.6">118.08</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.7">86.88</td>
</tr>
<tr class="ltx_tr" id="A1.T8.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.7.7.1"><math alttext="M_{3}" class="ltx_Math" display="inline" id="A1.T8.7.7.1.m1.1"><semantics id="A1.T8.7.7.1.m1.1a"><msub id="A1.T8.7.7.1.m1.1.1" xref="A1.T8.7.7.1.m1.1.1.cmml"><mi id="A1.T8.7.7.1.m1.1.1.2" xref="A1.T8.7.7.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.7.7.1.m1.1.1.3" xref="A1.T8.7.7.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.7.7.1.m1.1b"><apply id="A1.T8.7.7.1.m1.1.1.cmml" xref="A1.T8.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.7.7.1.m1.1.1.1.cmml" xref="A1.T8.7.7.1.m1.1.1">subscript</csymbol><ci id="A1.T8.7.7.1.m1.1.1.2.cmml" xref="A1.T8.7.7.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.7.7.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.7.7.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.7.7.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.7.7.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.2">57.75</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.3">80.46</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.4">91.21</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.5">122.53</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.6">118.61</td>
<td class="ltx_td ltx_align_center" id="A1.T8.7.7.7">108.95</td>
</tr>
<tr class="ltx_tr" id="A1.T8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.8.8.1"><math alttext="M_{4}" class="ltx_Math" display="inline" id="A1.T8.8.8.1.m1.1"><semantics id="A1.T8.8.8.1.m1.1a"><msub id="A1.T8.8.8.1.m1.1.1" xref="A1.T8.8.8.1.m1.1.1.cmml"><mi id="A1.T8.8.8.1.m1.1.1.2" xref="A1.T8.8.8.1.m1.1.1.2.cmml">M</mi><mn id="A1.T8.8.8.1.m1.1.1.3" xref="A1.T8.8.8.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T8.8.8.1.m1.1b"><apply id="A1.T8.8.8.1.m1.1.1.cmml" xref="A1.T8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.8.8.1.m1.1.1.1.cmml" xref="A1.T8.8.8.1.m1.1.1">subscript</csymbol><ci id="A1.T8.8.8.1.m1.1.1.2.cmml" xref="A1.T8.8.8.1.m1.1.1.2">𝑀</ci><cn id="A1.T8.8.8.1.m1.1.1.3.cmml" type="integer" xref="A1.T8.8.8.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.8.8.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.8.8.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.2">62.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.3">96.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.4">106.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.5">134.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.6">133.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.8.8.7">113.60</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the step number and step length observed in the responses generated by the 72B parameter model across various mathematical reasoning benchmarks.  For each benchmark, the table shows the average number of steps and average length of each step for four different iterations (M1 through M4) of the Process-based Self-Rewarding model. This data provides insight into how the model's reasoning process evolves over iterative refinement.
> <details>
> <summary>read the caption</summary>
> Table 8: Statistics of step number and step length on different methematical benchmarks based on 72B models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T9.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T9.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T9.4.5.1.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.1.1">Setting</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.2.1">GSM8k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.3"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.3.1">MATH</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.4"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.4.1">Gaokao2023En</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.5"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.5.1">OlympiadBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.6"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.6.1">AIME2024</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T9.4.5.1.7"><span class="ltx_text ltx_font_bold" id="A3.T9.4.5.1.7.1">AMC2023</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T9.1.1.1">
<math alttext="M_{1}" class="ltx_Math" display="inline" id="A3.T9.1.1.1.m1.1"><semantics id="A3.T9.1.1.1.m1.1a"><msub id="A3.T9.1.1.1.m1.1.1" xref="A3.T9.1.1.1.m1.1.1.cmml"><mi id="A3.T9.1.1.1.m1.1.1.2" xref="A3.T9.1.1.1.m1.1.1.2.cmml">M</mi><mn id="A3.T9.1.1.1.m1.1.1.3" xref="A3.T9.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T9.1.1.1.m1.1b"><apply id="A3.T9.1.1.1.m1.1.1.cmml" xref="A3.T9.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T9.1.1.1.m1.1.1.1.cmml" xref="A3.T9.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T9.1.1.1.m1.1.1.2.cmml" xref="A3.T9.1.1.1.m1.1.1.2">𝑀</ci><cn id="A3.T9.1.1.1.m1.1.1.3.cmml" type="integer" xref="A3.T9.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.1.1.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T9.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> Greedy Search</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2">92.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.3">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.4">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.5">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.6">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.7">45.0</td>
</tr>
<tr class="ltx_tr" id="A3.T9.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.2.2.1">
<math alttext="M_{4}" class="ltx_Math" display="inline" id="A3.T9.2.2.1.m1.1"><semantics id="A3.T9.2.2.1.m1.1a"><msub id="A3.T9.2.2.1.m1.1.1" xref="A3.T9.2.2.1.m1.1.1.cmml"><mi id="A3.T9.2.2.1.m1.1.1.2" xref="A3.T9.2.2.1.m1.1.1.2.cmml">M</mi><mn id="A3.T9.2.2.1.m1.1.1.3" xref="A3.T9.2.2.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T9.2.2.1.m1.1b"><apply id="A3.T9.2.2.1.m1.1.1.cmml" xref="A3.T9.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T9.2.2.1.m1.1.1.1.cmml" xref="A3.T9.2.2.1.m1.1.1">subscript</csymbol><ci id="A3.T9.2.2.1.m1.1.1.2.cmml" xref="A3.T9.2.2.1.m1.1.1.2">𝑀</ci><cn id="A3.T9.2.2.1.m1.1.1.3.cmml" type="integer" xref="A3.T9.2.2.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.2.2.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A3.T9.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math> Greedy Search</th>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.2">93.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.3">76.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.4">68.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.5">44.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.6">23.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.2.2.7">57.5</td>
</tr>
<tr class="ltx_tr" id="A3.T9.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T9.3.3.1">
<math alttext="M_{1}" class="ltx_Math" display="inline" id="A3.T9.3.3.1.m1.1"><semantics id="A3.T9.3.3.1.m1.1a"><msub id="A3.T9.3.3.1.m1.1.1" xref="A3.T9.3.3.1.m1.1.1.cmml"><mi id="A3.T9.3.3.1.m1.1.1.2" xref="A3.T9.3.3.1.m1.1.1.2.cmml">M</mi><mn id="A3.T9.3.3.1.m1.1.1.3" xref="A3.T9.3.3.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T9.3.3.1.m1.1b"><apply id="A3.T9.3.3.1.m1.1.1.cmml" xref="A3.T9.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T9.3.3.1.m1.1.1.1.cmml" xref="A3.T9.3.3.1.m1.1.1">subscript</csymbol><ci id="A3.T9.3.3.1.m1.1.1.2.cmml" xref="A3.T9.3.3.1.m1.1.1.2">𝑀</ci><cn id="A3.T9.3.3.1.m1.1.1.3.cmml" type="integer" xref="A3.T9.3.3.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.3.3.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T9.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> Test-time Scaling</th>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.2">94.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.3">79.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.4">64.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.5">41.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.6">16.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.3.3.7">52.5</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T9.4.4.1">
<math alttext="M_{4}" class="ltx_Math" display="inline" id="A3.T9.4.4.1.m1.1"><semantics id="A3.T9.4.4.1.m1.1a"><msub id="A3.T9.4.4.1.m1.1.1" xref="A3.T9.4.4.1.m1.1.1.cmml"><mi id="A3.T9.4.4.1.m1.1.1.2" xref="A3.T9.4.4.1.m1.1.1.2.cmml">M</mi><mn id="A3.T9.4.4.1.m1.1.1.3" xref="A3.T9.4.4.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T9.4.4.1.m1.1b"><apply id="A3.T9.4.4.1.m1.1.1.cmml" xref="A3.T9.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T9.4.4.1.m1.1.1.1.cmml" xref="A3.T9.4.4.1.m1.1.1">subscript</csymbol><ci id="A3.T9.4.4.1.m1.1.1.2.cmml" xref="A3.T9.4.4.1.m1.1.1.2">𝑀</ci><cn id="A3.T9.4.4.1.m1.1.1.3.cmml" type="integer" xref="A3.T9.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.4.4.1.m1.1c">M_{4}</annotation><annotation encoding="application/x-llamapun" id="A3.T9.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math> Test-time Scaling</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.2">94.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.3">79.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.5">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.6">23.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.7">65.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of a 72B parameter language model's performance on six mathematical reasoning benchmarks using two different search strategies: greedy search and test-time scaling.  For each benchmark and search strategy, the accuracy is reported for two model states: M1 (after the initial fine-tuning and process-based self-rewarding iteration) and M4 (after several additional iterations). This allows for a direct comparison of the model's performance improvement throughout the iterative process of the Process-based Self-Rewarding algorithm and showcases the impact of the test-time scaling strategy on the final performance.
> <details>
> <summary>read the caption</summary>
> Table 9: The full results of greedy search and test-time scaling on 72B model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.03746/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03746/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}