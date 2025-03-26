---
title: "Stop Overthinking: A Survey on Efficient Reasoning for Large Language Models"
summary: "LLMs survey: Model, output, and prompt-based strategies for efficient reasoning, mitigating 'overthinking' for faster, cheaper, and real-world applications."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Rice University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16419 {{< /keyword >}}
{{< keyword icon="writer" >}} Yang Sui et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16419" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16419" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16419/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) show great skills in complex tasks, but their reasoning process can be inefficient, leading to unnecessary computational costs. This is due to “overthinking phenomenon”, where models generate lengthy reasoning steps. To address this, the survey explores the concept of efficient reasoning, which aims to optimize reasoning length while maintaining the model's capabilities. Efficient reasoning seeks practical benefits like reduced costs and improved responsiveness. 



This survey categorizes current approaches to achieving efficient reasoning in LLMs based on the inherent mechanism of LLMs: model-based, reasoning output-based, and input prompts-based strategies. It discusses efficient data for training, explores small language models, and covers evaluation methods. The authors maintain a public repository to track the research. This work aims to provide insights that can guide future research and the development of reasoning-driven applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Efficient reasoning in LLMs can be achieved through model-based, output-based, and prompt-based strategies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Reducing reasoning length is key to lowering computational costs and improving the responsiveness of LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The survey identifies and categorizes existing research, providing a structured overview of the field and highlighting areas for future work. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey is important for researchers because it offers a structured overview of efficient reasoning, highlighting its impact on reducing computational costs and improving responsiveness. It opens avenues for exploration of efficient data and small models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16419/x1.png)

> 🔼 This figure illustrates the process of developing efficient reasoning in large language models (LLMs).  It starts with a base LLM, which is then enhanced through supervised fine-tuning (SFT) and/or reinforcement learning (RL) to create a reasoning model.  However, these reasoning models often produce excessively long reasoning chains, a phenomenon known as 'overthinking'. To address this, various methods are employed to shorten the reasoning process while maintaining accuracy. These methods include reducing redundant steps in the reasoning output, optimizing the reasoning model itself, and designing prompts that guide the model towards more concise reasoning. The ultimate goal is to enable LLMs to answer questions effectively with concise and accurate reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of developing efficient reasoning for LLMs. A reasoning model can be trained on the base model using SFT, RL, or a combination of both. While reasoning models demonstrate strong reasoning capabilities, they often suffer from the “overthinking phenomenon”, generating unnecessarily lengthy reasoning steps. To improve efficiency, various methods can be applied to reduce redundant steps while maintaining accuracy, or to fine-tune non-reasoning models to incorporate efficient reasoning capabilities. This approach enables the model to answer questions with concise and effective reasoning steps. In this paper, we explore the latest progress in efficient reasoning for LLMs, aiming to provide insights that can guide future research and the development of reasoning-driven applications across various domains.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.23.5">
<tr class="ltx_tr" id="S3.T1.23.5.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.23.5.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.23.5.6.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.23.5.6.2"><span class="ltx_text ltx_font_bold" id="S3.T1.23.5.6.2.1" style="font-size:90%;">RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.23.5.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.23.5.6.3.1" style="font-size:90%;">Length Constraint Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.23.5.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.23.5.6.4.1" style="font-size:90%;">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.23.5.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.23.5.6.5.1" style="font-size:90%;">Model</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.19.1.1.2">
<span class="ltx_text" id="S3.T1.19.1.1.2.1" style="font-size:90%;">O1-Pruner </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.19.1.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib54" title="">54</a><span class="ltx_text" id="S3.T1.19.1.1.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.1.1.3"><span class="ltx_text" id="S3.T1.19.1.1.3.1" style="font-size:90%;">PPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.1.1.1"><math alttext="\mathbb{E}_{x\sim D}\left[\mathbb{E}_{\pi_{\theta},\pi_{\text{ref}}}\left[%
\frac{L(y_{\text{ref}})}{L(y_{\text{pred}})}\right]-1\right]" class="ltx_Math" display="inline" id="S3.T1.19.1.1.1.m1.5"><semantics id="S3.T1.19.1.1.1.m1.5a"><mrow id="S3.T1.19.1.1.1.m1.5.5" xref="S3.T1.19.1.1.1.m1.5.5.cmml"><msub id="S3.T1.19.1.1.1.m1.5.5.3" xref="S3.T1.19.1.1.1.m1.5.5.3.cmml"><mi id="S3.T1.19.1.1.1.m1.5.5.3.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.3.2.cmml">𝔼</mi><mrow id="S3.T1.19.1.1.1.m1.5.5.3.3" xref="S3.T1.19.1.1.1.m1.5.5.3.3.cmml"><mi id="S3.T1.19.1.1.1.m1.5.5.3.3.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.3.3.2.cmml">x</mi><mo id="S3.T1.19.1.1.1.m1.5.5.3.3.1" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.3.3.1.cmml">∼</mo><mi id="S3.T1.19.1.1.1.m1.5.5.3.3.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.3.3.3.cmml">D</mi></mrow></msub><mo id="S3.T1.19.1.1.1.m1.5.5.2" xref="S3.T1.19.1.1.1.m1.5.5.2.cmml">⁢</mo><mrow id="S3.T1.19.1.1.1.m1.5.5.1.1" xref="S3.T1.19.1.1.1.m1.5.5.1.2.cmml"><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.2" xref="S3.T1.19.1.1.1.m1.5.5.1.2.1.cmml">[</mo><mrow id="S3.T1.19.1.1.1.m1.5.5.1.1.1" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.cmml"><mrow id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.cmml"><msub id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.cmml"><mi id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.2.cmml">𝔼</mi><mrow id="S3.T1.19.1.1.1.m1.2.2.2.2" xref="S3.T1.19.1.1.1.m1.2.2.2.3.cmml"><msub id="S3.T1.19.1.1.1.m1.1.1.1.1.1" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1.cmml"><mi id="S3.T1.19.1.1.1.m1.1.1.1.1.1.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1.2.cmml">π</mi><mi id="S3.T1.19.1.1.1.m1.1.1.1.1.1.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1.3.cmml">θ</mi></msub><mo id="S3.T1.19.1.1.1.m1.2.2.2.2.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S3.T1.19.1.1.1.m1.2.2.2.2.2" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.cmml"><mi id="S3.T1.19.1.1.1.m1.2.2.2.2.2.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.2.cmml">π</mi><mtext id="S3.T1.19.1.1.1.m1.2.2.2.2.2.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.3a.cmml">ref</mtext></msub></mrow></msub><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.1" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.1.cmml">⁢</mo><mrow id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.2" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.1.cmml"><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.2.1" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.1.1.cmml">[</mo><mfrac id="S3.T1.19.1.1.1.m1.4.4" xref="S3.T1.19.1.1.1.m1.4.4.cmml"><mrow id="S3.T1.19.1.1.1.m1.3.3.1" xref="S3.T1.19.1.1.1.m1.3.3.1.cmml"><mi id="S3.T1.19.1.1.1.m1.3.3.1.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.3.3.1.3.cmml">L</mi><mo id="S3.T1.19.1.1.1.m1.3.3.1.2" xref="S3.T1.19.1.1.1.m1.3.3.1.2.cmml">⁢</mo><mrow id="S3.T1.19.1.1.1.m1.3.3.1.1.1" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.cmml"><mo id="S3.T1.19.1.1.1.m1.3.3.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.cmml">(</mo><msub id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.cmml"><mi id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.2.cmml">y</mi><mtext id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3a.cmml">ref</mtext></msub><mo id="S3.T1.19.1.1.1.m1.3.3.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.cmml">)</mo></mrow></mrow><mrow id="S3.T1.19.1.1.1.m1.4.4.2" xref="S3.T1.19.1.1.1.m1.4.4.2.cmml"><mi id="S3.T1.19.1.1.1.m1.4.4.2.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.4.4.2.3.cmml">L</mi><mo id="S3.T1.19.1.1.1.m1.4.4.2.2" xref="S3.T1.19.1.1.1.m1.4.4.2.2.cmml">⁢</mo><mrow id="S3.T1.19.1.1.1.m1.4.4.2.1.1" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.cmml"><mo id="S3.T1.19.1.1.1.m1.4.4.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.cmml">(</mo><msub id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.cmml"><mi id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.2" mathsize="90%" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.2.cmml">y</mi><mtext id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3a.cmml">pred</mtext></msub><mo id="S3.T1.19.1.1.1.m1.4.4.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.cmml">)</mo></mrow></mrow></mfrac><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.2.2" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.1.1.cmml">]</mo></mrow></mrow><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.1.1" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.1.cmml">−</mo><mn id="S3.T1.19.1.1.1.m1.5.5.1.1.1.3" mathsize="90%" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.3.cmml">1</mn></mrow><mo id="S3.T1.19.1.1.1.m1.5.5.1.1.3" xref="S3.T1.19.1.1.1.m1.5.5.1.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.19.1.1.1.m1.5b"><apply id="S3.T1.19.1.1.1.m1.5.5.cmml" xref="S3.T1.19.1.1.1.m1.5.5"><times id="S3.T1.19.1.1.1.m1.5.5.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.2"></times><apply id="S3.T1.19.1.1.1.m1.5.5.3.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.5.5.3.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.5.5.3.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3.2">𝔼</ci><apply id="S3.T1.19.1.1.1.m1.5.5.3.3.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3.3"><csymbol cd="latexml" id="S3.T1.19.1.1.1.m1.5.5.3.3.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3.3.1">similar-to</csymbol><ci id="S3.T1.19.1.1.1.m1.5.5.3.3.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3.3.2">𝑥</ci><ci id="S3.T1.19.1.1.1.m1.5.5.3.3.3.cmml" xref="S3.T1.19.1.1.1.m1.5.5.3.3.3">𝐷</ci></apply></apply><apply id="S3.T1.19.1.1.1.m1.5.5.1.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1"><csymbol cd="latexml" id="S3.T1.19.1.1.1.m1.5.5.1.2.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.2">delimited-[]</csymbol><apply id="S3.T1.19.1.1.1.m1.5.5.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1"><minus id="S3.T1.19.1.1.1.m1.5.5.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.1"></minus><apply id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2"><times id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.1"></times><apply id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.2.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.2.2">𝔼</ci><list id="S3.T1.19.1.1.1.m1.2.2.2.3.cmml" xref="S3.T1.19.1.1.1.m1.2.2.2.2"><apply id="S3.T1.19.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1.2">𝜋</ci><ci id="S3.T1.19.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S3.T1.19.1.1.1.m1.1.1.1.1.1.3">𝜃</ci></apply><apply id="S3.T1.19.1.1.1.m1.2.2.2.2.2.cmml" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.2.2.2.2.2.1.cmml" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.2.2.2.2.2.2.cmml" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.2">𝜋</ci><ci id="S3.T1.19.1.1.1.m1.2.2.2.2.2.3a.cmml" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.3"><mtext id="S3.T1.19.1.1.1.m1.2.2.2.2.2.3.cmml" mathsize="45%" xref="S3.T1.19.1.1.1.m1.2.2.2.2.2.3">ref</mtext></ci></apply></list></apply><apply id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.2"><csymbol cd="latexml" id="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.1.1.cmml" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.2.3.2.1">delimited-[]</csymbol><apply id="S3.T1.19.1.1.1.m1.4.4.cmml" xref="S3.T1.19.1.1.1.m1.4.4"><divide id="S3.T1.19.1.1.1.m1.4.4.3.cmml" xref="S3.T1.19.1.1.1.m1.4.4"></divide><apply id="S3.T1.19.1.1.1.m1.3.3.1.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1"><times id="S3.T1.19.1.1.1.m1.3.3.1.2.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.2"></times><ci id="S3.T1.19.1.1.1.m1.3.3.1.3.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.3">𝐿</ci><apply id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.2.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.2">𝑦</ci><ci id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3a.cmml" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3"><mtext id="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3.cmml" mathsize="45%" xref="S3.T1.19.1.1.1.m1.3.3.1.1.1.1.3">ref</mtext></ci></apply></apply><apply id="S3.T1.19.1.1.1.m1.4.4.2.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2"><times id="S3.T1.19.1.1.1.m1.4.4.2.2.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.2"></times><ci id="S3.T1.19.1.1.1.m1.4.4.2.3.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.3">𝐿</ci><apply id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1"><csymbol cd="ambiguous" id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.1.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1">subscript</csymbol><ci id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.2.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.2">𝑦</ci><ci id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3a.cmml" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3"><mtext id="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3.cmml" mathsize="45%" xref="S3.T1.19.1.1.1.m1.4.4.2.1.1.1.3">pred</mtext></ci></apply></apply></apply></apply></apply><cn id="S3.T1.19.1.1.1.m1.5.5.1.1.1.3.cmml" type="integer" xref="S3.T1.19.1.1.1.m1.5.5.1.1.1.3">1</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.1.1.1.m1.5c">\mathbb{E}_{x\sim D}\left[\mathbb{E}_{\pi_{\theta},\pi_{\text{ref}}}\left[%
\frac{L(y_{\text{ref}})}{L(y_{\text{pred}})}\right]-1\right]</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.1.1.1.m1.5d">blackboard_E start_POSTSUBSCRIPT italic_x ∼ italic_D end_POSTSUBSCRIPT [ blackboard_E start_POSTSUBSCRIPT italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT , italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT end_POSTSUBSCRIPT [ divide start_ARG italic_L ( italic_y start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT ) end_ARG start_ARG italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) end_ARG ] - 1 ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.1.1.4">
<span class="ltx_text" id="S3.T1.19.1.1.4.1"></span><span class="ltx_text" id="S3.T1.19.1.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.19.1.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.19.1.1.4.3.1">
<span class="ltx_tr" id="S3.T1.19.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.19.1.1.4.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T1.19.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.19.1.1.4.3.1.2.1">GaoKao</span></span>
<span class="ltx_tr" id="S3.T1.19.1.1.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.19.1.1.4.3.1.3.1">MATH-500</span></span>
</span></span><span class="ltx_text" id="S3.T1.19.1.1.4.4"></span><span class="ltx_text" id="S3.T1.19.1.1.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.1.1.5">
<span class="ltx_text" id="S3.T1.19.1.1.5.1"></span><span class="ltx_text" id="S3.T1.19.1.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.19.1.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.19.1.1.5.3.1">
<span class="ltx_tr" id="S3.T1.19.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.19.1.1.5.3.1.1.1">Marco-o1-7B</span></span>
<span class="ltx_tr" id="S3.T1.19.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.19.1.1.5.3.1.2.1">QwQ-32B-Preview</span></span>
</span></span><span class="ltx_text" id="S3.T1.19.1.1.5.4"></span><span class="ltx_text" id="S3.T1.19.1.1.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.20.2.2.2">
<span class="ltx_text" id="S3.T1.20.2.2.2.1" style="font-size:90%;">KIMI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.20.2.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib78" title="">78</a><span class="ltx_text" id="S3.T1.20.2.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.20.2.2.3"><span class="ltx_text" id="S3.T1.20.2.2.3.1" style="font-size:90%;">PPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.20.2.2.1"><math alttext="\begin{cases}\;\lambda&amp;\!\text{if correct},\lambda=0.5\!-\!\frac{L(y_{\text{%
pred}})-L_{\min}}{L_{\max}-L_{\min}}\\
\;\min(0,\lambda)&amp;\!\text{if wrong}.\end{cases}" class="ltx_Math" display="inline" id="S3.T1.20.2.2.1.m1.4"><semantics id="S3.T1.20.2.2.1.m1.4a"><mrow id="S3.T1.20.2.2.1.m1.4.4" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mo id="S3.T1.20.2.2.1.m1.4.4.5" xref="S3.T1.20.2.2.1.m1.4.5.1.1.cmml">{</mo><mtable columnspacing="5pt" id="S3.T1.20.2.2.1.m1.4.4.4" rowspacing="0pt" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mtr id="S3.T1.20.2.2.1.m1.4.4.4a" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.20.2.2.1.m1.4.4.4b" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mi id="S3.T1.20.2.2.1.m1.1.1.1.1.1.1" mathsize="90%" xref="S3.T1.20.2.2.1.m1.1.1.1.1.1.1.cmml">λ</mi></mtd><mtd class="ltx_align_left" columnalign="left" id="S3.T1.20.2.2.1.m1.4.4.4c" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.2" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.1.cmml"><mtext id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2a.cmml">if correct</mtext><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.2.1" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.1.cmml">,</mo><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.3.cmml">λ</mi></mrow><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.4" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.4.cmml">=</mo><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.cmml"><mn id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.2.cmml">0.5</mn><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.1" lspace="0.052em" mathsize="90%" rspace="0.052em" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.1.cmml">−</mo><mfrac id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.cmml"><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.3.cmml">L</mi><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.2" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.cmml">(</mo><msub id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.2.cmml">y</mi><mtext id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3a.cmml">pred</mtext></msub><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.2.cmml">−</mo><msub id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.cmml"><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.2.cmml">L</mi><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.3.cmml">min</mi></msub></mrow><mrow id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.cmml"><msub id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.cmml"><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.2.cmml">L</mi><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.3.cmml">max</mi></msub><mo id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.1" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.1.cmml">−</mo><msub id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.cmml"><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.2.cmml">L</mi><mi id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.3.cmml">min</mi></msub></mrow></mfrac></mrow></mrow></mtd></mtr><mtr id="S3.T1.20.2.2.1.m1.4.4.4d" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.20.2.2.1.m1.4.4.4e" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml"><mi id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.1" mathsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.1.cmml">min</mi><mo id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5a" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml">⁡</mo><mrow id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5.1" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml"><mo id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5.1.1" maxsize="90%" minsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml">(</mo><mn id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.2.cmml">0</mn><mo id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5.1.2" mathsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml">,</mo><mi id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.3" mathsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.3.cmml">λ</mi><mo id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5.1.3" maxsize="90%" minsize="90%" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml">)</mo></mrow></mrow></mtd><mtd class="ltx_align_left" columnalign="left" id="S3.T1.20.2.2.1.m1.4.4.4f" xref="S3.T1.20.2.2.1.m1.4.5.1.cmml"><mrow id="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.3" xref="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1a.cmml"><mtext id="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1" mathsize="90%" xref="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1.cmml">if wrong</mtext><mo id="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.3.1" lspace="0em" mathsize="90%" xref="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1a.cmml">.</mo></mrow></mtd></mtr></mtable></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.20.2.2.1.m1.4b"><apply id="S3.T1.20.2.2.1.m1.4.5.1.cmml" xref="S3.T1.20.2.2.1.m1.4.4"><csymbol cd="latexml" id="S3.T1.20.2.2.1.m1.4.5.1.1.cmml" xref="S3.T1.20.2.2.1.m1.4.4.5">cases</csymbol><ci id="S3.T1.20.2.2.1.m1.1.1.1.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.1.1.1.1.1.1">𝜆</ci><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1"><eq id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.4.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.4"></eq><list id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.5.2"><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2a.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2"><mtext id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2.cmml" mathsize="90%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.2">if correct</mtext></ci><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.3">𝜆</ci></list><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6"><minus id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.1"></minus><cn id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.2.cmml" type="float" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.6.2">0.5</cn><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1"><divide id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1"></divide><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1"><minus id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.2"></minus><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1"><times id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.2"></times><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.3">𝐿</ci><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.2">𝑦</ci><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3a.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3"><mtext id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3.cmml" mathsize="45%" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.1.1.1.1.3">pred</mtext></ci></apply></apply><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3">subscript</csymbol><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.2">𝐿</ci><min id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.1.3.3"></min></apply></apply><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3"><minus id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.1"></minus><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2">subscript</csymbol><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.2">𝐿</ci><max id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.2.3"></max></apply><apply id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.1.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3">subscript</csymbol><ci id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.2.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.2">𝐿</ci><min id="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.3.cmml" xref="S3.T1.20.2.2.1.m1.2.2.2.2.2.1.1.3.3.3"></min></apply></apply></apply></apply></apply><apply id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.4.cmml" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.5"><min id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.1.cmml" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.1"></min><cn id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.2.cmml" type="integer" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.2">0</cn><ci id="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.3.cmml" xref="S3.T1.20.2.2.1.m1.3.3.3.3.1.1.3">𝜆</ci></apply><ci id="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1a.cmml" xref="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.3"><mtext id="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1.cmml" mathsize="90%" xref="S3.T1.20.2.2.1.m1.4.4.4.4.2.1.1">if wrong</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.2.2.1.m1.4c">\begin{cases}\;\lambda&amp;\!\text{if correct},\lambda=0.5\!-\!\frac{L(y_{\text{%
pred}})-L_{\min}}{L_{\max}-L_{\min}}\\
\;\min(0,\lambda)&amp;\!\text{if wrong}.\end{cases}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.2.2.1.m1.4d">{ start_ROW start_CELL italic_λ end_CELL start_CELL if correct , italic_λ = 0.5 - divide start_ARG italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) - italic_L start_POSTSUBSCRIPT roman_min end_POSTSUBSCRIPT end_ARG start_ARG italic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT - italic_L start_POSTSUBSCRIPT roman_min end_POSTSUBSCRIPT end_ARG end_CELL end_ROW start_ROW start_CELL roman_min ( 0 , italic_λ ) end_CELL start_CELL if wrong . end_CELL end_ROW</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.20.2.2.4"><span class="ltx_text" id="S3.T1.20.2.2.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.2.2.5"><span class="ltx_text" id="S3.T1.20.2.2.5.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.21.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.21.3.3.2">
<span class="ltx_text" id="S3.T1.21.3.3.2.1" style="font-size:90%;">L1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.21.3.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib1" title="">1</a><span class="ltx_text" id="S3.T1.21.3.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.21.3.3.3"><span class="ltx_text" id="S3.T1.21.3.3.3.1" style="font-size:90%;">PPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.21.3.3.1"><math alttext="\begin{cases}\;x_{\text{new}}=\textit{CONCAT}~{}(x,\textit{\textquotedblleft
Think%
 for N tokens.\textquotedblright}),\\
\;r(y,y_{GT},L(y_{GT}))=\mathbb{I}(y_{\text{pred}}=y_{GT})-\alpha\cdot|L(y_{GT%
})-L(y_{\text{pred}})|\end{cases}" class="ltx_Math" display="inline" id="S3.T1.21.3.3.1.m1.2"><semantics id="S3.T1.21.3.3.1.m1.2a"><mrow id="S3.T1.21.3.3.1.m1.2.2" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.3" xref="S3.T1.21.3.3.1.m1.2.3.1.1.cmml">{</mo><mtable columnspacing="5pt" id="S3.T1.21.3.3.1.m1.2.2.2" rowspacing="0pt" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mtr id="S3.T1.21.3.3.1.m1.2.2.2a" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.21.3.3.1.m1.2.2.2b" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mrow id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.cmml"><mrow id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.cmml"><msub id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.cmml"><mi id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.2.cmml">x</mi><mtext id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3a.cmml">new</mtext></msub><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.1" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.1.cmml">=</mo><mrow id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.cmml"><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2a.cmml">CONCAT</mtext><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.1" lspace="0.300em" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.1.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.2" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.1.cmml"><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.2.1" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.1.cmml">(</mo><mi id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.1.cmml">x</mi><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.2.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.1.cmml">,</mo><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2a.cmml">“Think for N tokens.”</mtext><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.2.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.1.cmml">)</mo></mrow></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.cmml">,</mo></mrow></mtd><mtd id="S3.T1.21.3.3.1.m1.2.2.2c" xref="S3.T1.21.3.3.1.m1.2.3.1.1.cmml"></mtd></mtr><mtr id="S3.T1.21.3.3.1.m1.2.2.2d" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.21.3.3.1.m1.2.2.2e" xref="S3.T1.21.3.3.1.m1.2.3.1.cmml"><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.cmml"><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.4" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.4.cmml">r</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.3.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml">(</mo><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.1" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.1.cmml">y</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.4" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml">,</mo><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.2.cmml">y</mi><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.2.cmml">G</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.3.cmml">T</mi></mrow></msub><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.5" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml">,</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.3.cmml">L</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.2.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.cmml">(</mo><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.2.cmml">y</mi><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.2.cmml">G</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.3.cmml">T</mi></mrow></msub><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.6" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml">)</mo></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.6" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.6.cmml">=</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.cmml"><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.3.cmml">𝕀</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.2.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.cmml">(</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.cmml"><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.2.cmml">y</mi><mtext id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3a.cmml">pred</mtext></msub><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.1" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.1.cmml">=</mo><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.2.cmml">y</mi><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.2.cmml">G</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.3.cmml">T</mi></mrow></msub></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.3.cmml">−</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.3.cmml">α</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.2" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.2.cmml">⋅</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.2.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.2.1.cmml">|</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.cmml"><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.3.cmml">L</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.cmml">(</mo><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.2.cmml">y</mi><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.2.cmml">G</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.3.cmml">T</mi></mrow></msub><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.3.cmml">−</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.3.cmml">L</mi><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.2" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.2.cmml">⁢</mo><mrow id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.cmml"><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.cmml">(</mo><msub id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.cmml"><mi id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.2" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.2.cmml">y</mi><mtext id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3a.cmml">pred</mtext></msub><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.cmml">)</mo></mrow></mrow></mrow><mo id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.2.1.cmml">|</mo></mrow></mrow></mrow></mrow></mtd><mtd id="S3.T1.21.3.3.1.m1.2.2.2f" xref="S3.T1.21.3.3.1.m1.2.3.1.1.cmml"></mtd></mtr></mtable></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.21.3.3.1.m1.2b"><apply id="S3.T1.21.3.3.1.m1.2.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2"><csymbol cd="latexml" id="S3.T1.21.3.3.1.m1.2.3.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.3">cases</csymbol><apply id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3"><eq id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.1"></eq><apply id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.2.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.2">𝑥</ci><ci id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3a.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3"><mtext id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3.cmml" mathsize="63%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.2.3">new</mtext></ci></apply><apply id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3"><times id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.1"></times><ci id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2a.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2"><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2.cmml" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.2">CONCAT</mtext></ci><interval closure="open" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.3.1.3.3.2"><ci id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.1">𝑥</ci><ci id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2a.cmml" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2.cmml" mathsize="90%" xref="S3.T1.21.3.3.1.m1.1.1.1.1.1.1.2">“Think for N tokens.”</mtext></ci></interval></apply></apply><ci id="S3.T1.21.3.3.1.m1.2.3.1.3a.cmml" xref="S3.T1.21.3.3.1.m1.2.2"><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.2.3.1.3.cmml" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.3">otherwise</mtext></ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1"><eq id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.6.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.6"></eq><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.3"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.4.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.4">𝑟</ci><vector id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2"><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.1">𝑦</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.2">𝑦</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.1"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.2">𝐺</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.2.1.1.1.3.3">𝑇</ci></apply></apply><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.2"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.3">𝐿</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.2">𝑦</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.1"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.2">𝐺</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.3.2.2.2.1.1.1.3.3">𝑇</ci></apply></apply></apply></vector></apply><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5"><minus id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.3"></minus><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.2"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.3">𝕀</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1"><eq id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.1"></eq><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.2">𝑦</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3a.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3"><mtext id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3.cmml" mathsize="63%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.2.3">pred</mtext></ci></apply><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.2">𝑦</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.1"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.2">𝐺</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.4.1.1.1.1.3.3.3">𝑇</ci></apply></apply></apply></apply><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2"><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.2">⋅</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.3">𝛼</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1"><abs id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.2.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.2"></abs><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1"><minus id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.3"></minus><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.2"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.3">𝐿</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.2">𝑦</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.1"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.2">𝐺</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.1.1.1.1.3.3">𝑇</ci></apply></apply></apply><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2"><times id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.2"></times><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.3.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.3">𝐿</ci><apply id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1"><csymbol cd="ambiguous" id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.1.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1">subscript</csymbol><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.2.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.2">𝑦</ci><ci id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3a.cmml" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3"><mtext id="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3.cmml" mathsize="63%" xref="S3.T1.21.3.3.1.m1.2.2.2.2.1.1.5.2.1.1.1.2.1.1.1.3">pred</mtext></ci></apply></apply></apply></apply></apply></apply></apply><ci id="S3.T1.21.3.3.1.m1.2.3.1.5a.cmml" xref="S3.T1.21.3.3.1.m1.2.2"><mtext class="ltx_mathvariant_italic" id="S3.T1.21.3.3.1.m1.2.3.1.5.cmml" mathsize="90%" xref="S3.T1.21.3.3.1.m1.2.2.3">otherwise</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.3.3.1.m1.2c">\begin{cases}\;x_{\text{new}}=\textit{CONCAT}~{}(x,\textit{\textquotedblleft
Think%
 for N tokens.\textquotedblright}),\\
\;r(y,y_{GT},L(y_{GT}))=\mathbb{I}(y_{\text{pred}}=y_{GT})-\alpha\cdot|L(y_{GT%
})-L(y_{\text{pred}})|\end{cases}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.3.3.1.m1.2d">{ start_ROW start_CELL italic_x start_POSTSUBSCRIPT new end_POSTSUBSCRIPT = CONCAT ( italic_x , “Think for N tokens.” ) , end_CELL start_CELL end_CELL end_ROW start_ROW start_CELL italic_r ( italic_y , italic_y start_POSTSUBSCRIPT italic_G italic_T end_POSTSUBSCRIPT , italic_L ( italic_y start_POSTSUBSCRIPT italic_G italic_T end_POSTSUBSCRIPT ) ) = blackboard_I ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT = italic_y start_POSTSUBSCRIPT italic_G italic_T end_POSTSUBSCRIPT ) - italic_α ⋅ | italic_L ( italic_y start_POSTSUBSCRIPT italic_G italic_T end_POSTSUBSCRIPT ) - italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) | end_CELL start_CELL end_CELL end_ROW</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.21.3.3.4">
<span class="ltx_text" id="S3.T1.21.3.3.4.1"></span><span class="ltx_text" id="S3.T1.21.3.3.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.21.3.3.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.21.3.3.4.3.1">
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.1.1">AMC</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.2.1">GPQA</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.3.1">LAST</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.4.1">MMLU</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.5.1">MATH-500</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.6">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.6.1">AIME-2024</span></span>
<span class="ltx_tr" id="S3.T1.21.3.3.4.3.1.7">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.21.3.3.4.3.1.7.1">Olympiad-Bench</span></span>
</span></span><span class="ltx_text" id="S3.T1.21.3.3.4.4"></span><span class="ltx_text" id="S3.T1.21.3.3.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.21.3.3.5"><span class="ltx_text" id="S3.T1.21.3.3.5.1" style="font-size:90%;">DeepSeek-R1-Distill-Qwen-1.5B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.22.4.4.2">
<span class="ltx_text" id="S3.T1.22.4.4.2.1" style="font-size:90%;">Demystifying </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.22.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib98" title="">98</a><span class="ltx_text" id="S3.T1.22.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.22.4.4.3"><span class="ltx_text" id="S3.T1.22.4.4.3.1" style="font-size:90%;">PPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.22.4.4.1"><math alttext="\begin{cases}\;r_{0}^{c}+0.5\times(r_{L}^{c}-r_{0}^{c})(1+\cos({\frac{\pi L(y_%
{\text{pred}})}{L_{\max}}}),&amp;\text{if correct},\\
\;r_{0}^{c}+0.5\times(r_{L}^{w}-r_{0}^{w})(1+\cos({\frac{\pi L(y_{\text{pred}}%
)}{L_{\max}}}),&amp;\text{if wrong}\\
\;r_{e},&amp;\text{if }L(y_{\text{pred}})=L_{\max},\end{cases}" class="ltx_math_unparsed" display="inline" id="S3.T1.22.4.4.1.m1.6"><semantics id="S3.T1.22.4.4.1.m1.6a"><mrow id="S3.T1.22.4.4.1.m1.6.6"><mo id="S3.T1.22.4.4.1.m1.6.6.7">{</mo><mtable columnspacing="5pt" id="S3.T1.22.4.4.1.m1.6.6.6" rowspacing="0pt"><mtr id="S3.T1.22.4.4.1.m1.6.6.6a"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6b"><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1"><msubsup id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.3"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.3.2.2" mathsize="90%">r</mi><mn id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.3.2.3" mathsize="90%">0</mn><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.3.3" mathsize="90%">c</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.4" mathsize="90%">+</mo><mn id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.5" mathsize="90%">0.5</mn><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.6" lspace="0.222em" mathsize="90%" rspace="0.222em">×</mo><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7"><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.1" maxsize="90%" minsize="90%">(</mo><msubsup id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.2"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.2.2.2" mathsize="90%">r</mi><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.2.2.3" mathsize="90%">L</mi><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.2.3" mathsize="90%">c</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.3" mathsize="90%">−</mo><msubsup id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.4"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.4.2.2" mathsize="90%">r</mi><mn id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.4.2.3" mathsize="90%">0</mn><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.4.3" mathsize="90%">c</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.7.5" maxsize="90%" minsize="90%">)</mo></mrow><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8"><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.1" maxsize="90%" minsize="90%">(</mo><mn id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.2" mathsize="90%">1</mn><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.3" mathsize="90%">+</mo><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.2" mathsize="90%">cos</mi><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.4"><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.4.1" maxsize="90%" minsize="90%">(</mo><mfrac id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1"><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.3" mathsize="90%">π</mi><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.2">⁢</mo><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.4" mathsize="90%">L</mi><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.2a">⁢</mo><mrow id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1"><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1.2" maxsize="90%" minsize="90%">(</mo><msub id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1.1.2" mathsize="90%">y</mi><mtext id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1.1.3" mathsize="90%">pred</mtext></msub><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.1.1.1.3" maxsize="90%" minsize="90%">)</mo></mrow></mrow><msub id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.3"><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.3.2" mathsize="90%">L</mi><mi id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.1.3.3" mathsize="90%">max</mi></msub></mfrac><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.4.2" maxsize="90%" minsize="90%">)</mo></mrow><mo id="S3.T1.22.4.4.1.m1.1.1.1.1.1.1.8.5" mathsize="90%">,</mo></mrow></mrow></mtd><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6c"><mrow id="S3.T1.22.4.4.1.m1.2.2.2.2.2.1.3"><mtext id="S3.T1.22.4.4.1.m1.2.2.2.2.2.1.1" mathsize="90%">if correct</mtext><mo id="S3.T1.22.4.4.1.m1.2.2.2.2.2.1.3.1" mathsize="90%">,</mo></mrow></mtd></mtr><mtr id="S3.T1.22.4.4.1.m1.6.6.6d"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6e"><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1"><msubsup id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.3"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.3.2.2" mathsize="90%">r</mi><mn id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.3.2.3" mathsize="90%">0</mn><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.3.3" mathsize="90%">c</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.4" mathsize="90%">+</mo><mn id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.5" mathsize="90%">0.5</mn><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.6" lspace="0.222em" mathsize="90%" rspace="0.222em">×</mo><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7"><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.1" maxsize="90%" minsize="90%">(</mo><msubsup id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.2"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.2.2.2" mathsize="90%">r</mi><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.2.2.3" mathsize="90%">L</mi><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.2.3" mathsize="90%">w</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.3" mathsize="90%">−</mo><msubsup id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.4"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.4.2.2" mathsize="90%">r</mi><mn id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.4.2.3" mathsize="90%">0</mn><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.4.3" mathsize="90%">w</mi></msubsup><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.7.5" maxsize="90%" minsize="90%">)</mo></mrow><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8"><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.1" maxsize="90%" minsize="90%">(</mo><mn id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.2" mathsize="90%">1</mn><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.3" mathsize="90%">+</mo><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.2" mathsize="90%">cos</mi><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.4"><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.4.1" maxsize="90%" minsize="90%">(</mo><mfrac id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1"><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.3" mathsize="90%">π</mi><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.2">⁢</mo><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.4" mathsize="90%">L</mi><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.2a">⁢</mo><mrow id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1"><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1.2" maxsize="90%" minsize="90%">(</mo><msub id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1.1.2" mathsize="90%">y</mi><mtext id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1.1.3" mathsize="90%">pred</mtext></msub><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.1.1.1.3" maxsize="90%" minsize="90%">)</mo></mrow></mrow><msub id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.3"><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.3.2" mathsize="90%">L</mi><mi id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.1.3.3" mathsize="90%">max</mi></msub></mfrac><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.4.2" maxsize="90%" minsize="90%">)</mo></mrow><mo id="S3.T1.22.4.4.1.m1.3.3.3.3.1.1.8.5" mathsize="90%">,</mo></mrow></mrow></mtd><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6f"><mtext id="S3.T1.22.4.4.1.m1.4.4.4.4.2.1" mathsize="90%">if wrong</mtext></mtd></mtr><mtr id="S3.T1.22.4.4.1.m1.6.6.6g"><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6h"><mrow id="S3.T1.22.4.4.1.m1.5.5.5.5.1.1.1"><msub id="S3.T1.22.4.4.1.m1.5.5.5.5.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.5.5.5.5.1.1.1.1.2" mathsize="90%">r</mi><mi id="S3.T1.22.4.4.1.m1.5.5.5.5.1.1.1.1.3" mathsize="90%">e</mi></msub><mo id="S3.T1.22.4.4.1.m1.5.5.5.5.1.1.1.2" mathsize="90%">,</mo></mrow></mtd><mtd class="ltx_align_left" columnalign="left" id="S3.T1.22.4.4.1.m1.6.6.6i"><mrow id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1"><mrow id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1"><mrow id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1"><mtext id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.3" mathsize="90%">if </mtext><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.2">⁢</mo><mi id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.4" mathsize="90%">L</mi><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.2a">⁢</mo><mrow id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1"><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1.2" maxsize="90%" minsize="90%">(</mo><msub id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1.1"><mi id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1.1.2" mathsize="90%">y</mi><mtext id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1.1.3" mathsize="90%">pred</mtext></msub><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.1.1.1.3" maxsize="90%" minsize="90%">)</mo></mrow></mrow><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.2" mathsize="90%">=</mo><msub id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.3"><mi id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.3.2" mathsize="90%">L</mi><mi id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.1.3.3" mathsize="90%">max</mi></msub></mrow><mo id="S3.T1.22.4.4.1.m1.6.6.6.6.2.1.1.2" mathsize="90%">,</mo></mrow></mtd></mtr></mtable></mrow><annotation encoding="application/x-tex" id="S3.T1.22.4.4.1.m1.6b">\begin{cases}\;r_{0}^{c}+0.5\times(r_{L}^{c}-r_{0}^{c})(1+\cos({\frac{\pi L(y_%
{\text{pred}})}{L_{\max}}}),&amp;\text{if correct},\\
\;r_{0}^{c}+0.5\times(r_{L}^{w}-r_{0}^{w})(1+\cos({\frac{\pi L(y_{\text{pred}}%
)}{L_{\max}}}),&amp;\text{if wrong}\\
\;r_{e},&amp;\text{if }L(y_{\text{pred}})=L_{\max},\end{cases}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.4.4.1.m1.6c">{ start_ROW start_CELL italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT + 0.5 × ( italic_r start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT - italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT ) ( 1 + roman_cos ( divide start_ARG italic_π italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) end_ARG start_ARG italic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT end_ARG ) , end_CELL start_CELL if correct , end_CELL end_ROW start_ROW start_CELL italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT + 0.5 × ( italic_r start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT - italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT ) ( 1 + roman_cos ( divide start_ARG italic_π italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) end_ARG start_ARG italic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT end_ARG ) , end_CELL start_CELL if wrong end_CELL end_ROW start_ROW start_CELL italic_r start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT , end_CELL start_CELL if italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) = italic_L start_POSTSUBSCRIPT roman_max end_POSTSUBSCRIPT , end_CELL end_ROW</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.22.4.4.4">
<span class="ltx_text" id="S3.T1.22.4.4.4.1"></span><span class="ltx_text" id="S3.T1.22.4.4.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.22.4.4.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.22.4.4.4.3.1">
<span class="ltx_tr" id="S3.T1.22.4.4.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.4.3.1.1.1">MATH-500</span></span>
<span class="ltx_tr" id="S3.T1.22.4.4.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.4.3.1.2.1">AIME-2024</span></span>
<span class="ltx_tr" id="S3.T1.22.4.4.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.4.3.1.3.1">TheoremQA</span></span>
<span class="ltx_tr" id="S3.T1.22.4.4.4.3.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.4.3.1.4.1">MMLU-Pro-1k</span></span>
</span></span><span class="ltx_text" id="S3.T1.22.4.4.4.4"></span><span class="ltx_text" id="S3.T1.22.4.4.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.4.4.5">
<span class="ltx_text" id="S3.T1.22.4.4.5.1"></span><span class="ltx_text" id="S3.T1.22.4.4.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.22.4.4.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.22.4.4.5.3.1">
<span class="ltx_tr" id="S3.T1.22.4.4.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.5.3.1.1.1">LLaMA-3.1-8B</span></span>
<span class="ltx_tr" id="S3.T1.22.4.4.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.22.4.4.5.3.1.2.1">Qwen2.5-7B-Math</span></span>
</span></span><span class="ltx_text" id="S3.T1.22.4.4.5.4"></span><span class="ltx_text" id="S3.T1.22.4.4.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.23.5.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.23.5.7.1">
<span class="ltx_text" id="S3.T1.23.5.7.1.1" style="font-size:90%;">DAST </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.23.5.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib69" title="">69</a><span class="ltx_text" id="S3.T1.23.5.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.23.5.7.2"><span class="ltx_text" id="S3.T1.23.5.7.2.1" style="font-size:90%;">SimPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.23.5.7.3">
<span class="ltx_text" id="S3.T1.23.5.7.3.1"></span><span class="ltx_text" id="S3.T1.23.5.7.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.23.5.7.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.23.5.7.3.3.1">
<span class="ltx_tr" id="S3.T1.23.5.7.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.7.3.3.1.1.1">Trained with constructed length preference data</span></span>
</span></span><span class="ltx_text" id="S3.T1.23.5.7.3.4"></span><span class="ltx_text" id="S3.T1.23.5.7.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.23.5.7.4">
<span class="ltx_text" id="S3.T1.23.5.7.4.1"></span><span class="ltx_text" id="S3.T1.23.5.7.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.23.5.7.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.23.5.7.4.3.1">
<span class="ltx_tr" id="S3.T1.23.5.7.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.7.4.3.1.1.1">MATH-500</span></span>
<span class="ltx_tr" id="S3.T1.23.5.7.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.7.4.3.1.2.1">AIME-2024</span></span>
</span></span><span class="ltx_text" id="S3.T1.23.5.7.4.4"></span><span class="ltx_text" id="S3.T1.23.5.7.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.23.5.7.5">
<span class="ltx_text" id="S3.T1.23.5.7.5.1"></span><span class="ltx_text" id="S3.T1.23.5.7.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.23.5.7.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.23.5.7.5.3.1">
<span class="ltx_tr" id="S3.T1.23.5.7.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.7.5.3.1.1.1">DeepSeek-R1-Distill-Qwen-8B</span></span>
<span class="ltx_tr" id="S3.T1.23.5.7.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.7.5.3.1.2.1">DeepSeek-R1-Distill-Qwen-32B</span></span>
</span></span><span class="ltx_text" id="S3.T1.23.5.7.5.4"></span><span class="ltx_text" id="S3.T1.23.5.7.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.23.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.23.5.5.2">
<span class="ltx_text" id="S3.T1.23.5.5.2.1" style="font-size:90%;">Training </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.23.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib3" title="">3</a><span class="ltx_text" id="S3.T1.23.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.23.5.5.3"><span class="ltx_text" id="S3.T1.23.5.5.3.1" style="font-size:90%;">PG</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.23.5.5.1"><math alttext="\mathbb{E}_{x\sim D}\left[\mathbf{1}\{y_{\text{pred}}=y_{\text{GT}}\}(1-\alpha
f%
(L(y_{\text{pred}})))\right]" class="ltx_Math" display="inline" id="S3.T1.23.5.5.1.m1.1"><semantics id="S3.T1.23.5.5.1.m1.1a"><mrow id="S3.T1.23.5.5.1.m1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.cmml"><msub id="S3.T1.23.5.5.1.m1.1.1.3" xref="S3.T1.23.5.5.1.m1.1.1.3.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.3.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.3.2.cmml">𝔼</mi><mrow id="S3.T1.23.5.5.1.m1.1.1.3.3" xref="S3.T1.23.5.5.1.m1.1.1.3.3.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.3.3.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.3.3.2.cmml">x</mi><mo id="S3.T1.23.5.5.1.m1.1.1.3.3.1" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.3.3.1.cmml">∼</mo><mi id="S3.T1.23.5.5.1.m1.1.1.3.3.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.3.3.3.cmml">D</mi></mrow></msub><mo id="S3.T1.23.5.5.1.m1.1.1.2" xref="S3.T1.23.5.5.1.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.2.cmml"><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.2" xref="S3.T1.23.5.5.1.m1.1.1.1.2.1.cmml">[</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.cmml"><mn id="S3.T1.23.5.5.1.m1.1.1.1.1.1.4" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.4.cmml">𝟏</mn><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.3" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.3.cmml">⁢</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.2.cmml"><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.2.cmml">{</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.cmml"><msub id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.2.cmml">y</mi><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3a.cmml">pred</mtext></msub><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.1.cmml">=</mo><msub id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.2.cmml">y</mi><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3a.cmml">GT</mtext></msub></mrow><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.2.cmml">}</mo></mrow><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.3a" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.3.cmml">⁢</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.cmml"><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.2" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.cmml">(</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.cmml"><mn id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.3.cmml">1</mn><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.2.cmml">−</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.3.cmml">α</mi><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2.cmml">⁢</mo><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.4" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.4.cmml">f</mi><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2a" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.cmml"><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.3.cmml">L</mi><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.2" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.cmml">(</mo><msub id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.2" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.2.cmml">y</mi><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3a.cmml">pred</mtext></msub><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.3" maxsize="90%" minsize="90%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.23.5.5.1.m1.1.1.1.1.3" xref="S3.T1.23.5.5.1.m1.1.1.1.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.23.5.5.1.m1.1b"><apply id="S3.T1.23.5.5.1.m1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1"><times id="S3.T1.23.5.5.1.m1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.2"></times><apply id="S3.T1.23.5.5.1.m1.1.1.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.23.5.5.1.m1.1.1.3.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3">subscript</csymbol><ci id="S3.T1.23.5.5.1.m1.1.1.3.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3.2">𝔼</ci><apply id="S3.T1.23.5.5.1.m1.1.1.3.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3.3"><csymbol cd="latexml" id="S3.T1.23.5.5.1.m1.1.1.3.3.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3.3.1">similar-to</csymbol><ci id="S3.T1.23.5.5.1.m1.1.1.3.3.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3.3.2">𝑥</ci><ci id="S3.T1.23.5.5.1.m1.1.1.3.3.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.3.3.3">𝐷</ci></apply></apply><apply id="S3.T1.23.5.5.1.m1.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1"><csymbol cd="latexml" id="S3.T1.23.5.5.1.m1.1.1.1.2.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.2">delimited-[]</csymbol><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1"><times id="S3.T1.23.5.5.1.m1.1.1.1.1.1.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.3"></times><cn id="S3.T1.23.5.5.1.m1.1.1.1.1.1.4.cmml" type="integer" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.4">1</cn><set id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1"><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1"><eq id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.1"></eq><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.2">𝑦</ci><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3a.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3"><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3.cmml" mathsize="63%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.2.3">pred</mtext></ci></apply><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.2">𝑦</ci><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3a.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3"><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3.cmml" mathsize="63%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.1.1.1.3.3">GT</mtext></ci></apply></apply></set><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1"><minus id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.2"></minus><cn id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.3.cmml" type="integer" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.3">1</cn><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1"><times id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.2"></times><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.3">𝛼</ci><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.4.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.4">𝑓</ci><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1"><times id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.2"></times><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.3.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.3">𝐿</ci><apply id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.2">𝑦</ci><ci id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3a.cmml" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3"><mtext id="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3.cmml" mathsize="63%" xref="S3.T1.23.5.5.1.m1.1.1.1.1.1.2.1.1.1.1.1.1.1.1.1.3">pred</mtext></ci></apply></apply></apply></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.5.5.1.m1.1c">\mathbb{E}_{x\sim D}\left[\mathbf{1}\{y_{\text{pred}}=y_{\text{GT}}\}(1-\alpha
f%
(L(y_{\text{pred}})))\right]</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.5.5.1.m1.1d">blackboard_E start_POSTSUBSCRIPT italic_x ∼ italic_D end_POSTSUBSCRIPT [ bold_1 { italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT = italic_y start_POSTSUBSCRIPT GT end_POSTSUBSCRIPT } ( 1 - italic_α italic_f ( italic_L ( italic_y start_POSTSUBSCRIPT pred end_POSTSUBSCRIPT ) ) ) ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.23.5.5.4">
<span class="ltx_text" id="S3.T1.23.5.5.4.1"></span><span class="ltx_text" id="S3.T1.23.5.5.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.23.5.5.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.23.5.5.4.3.1">
<span class="ltx_tr" id="S3.T1.23.5.5.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.5.4.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T1.23.5.5.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.5.4.3.1.2.1">MATH-500</span></span>
<span class="ltx_tr" id="S3.T1.23.5.5.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.5.4.3.1.3.1">AIME-2024</span></span>
</span></span><span class="ltx_text" id="S3.T1.23.5.5.4.4"></span><span class="ltx_text" id="S3.T1.23.5.5.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.23.5.5.5">
<span class="ltx_text" id="S3.T1.23.5.5.5.1"></span><span class="ltx_text" id="S3.T1.23.5.5.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.23.5.5.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.23.5.5.5.3.1">
<span class="ltx_tr" id="S3.T1.23.5.5.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.5.5.3.1.1.1">DeepSeek-R1-Distill-Qwen-1.5B</span></span>
<span class="ltx_tr" id="S3.T1.23.5.5.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.23.5.5.5.3.1.2.1">DeepSeek-R1-Distill-Qwen-7B</span></span>
</span></span><span class="ltx_text" id="S3.T1.23.5.5.5.4"></span><span class="ltx_text" id="S3.T1.23.5.5.5.5" style="font-size:90%;"></span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares several reinforcement learning (RL) methods used to optimize the length of chain-of-thought (CoT) reasoning in large language models (LLMs). It details the reward structures used in each method, specifying how rewards are assigned based on whether the model's response is correct or incorrect, and the length of the response relative to the optimal or minimum length.  The table also lists the datasets and LLMs used in the experiments for each method. The different reward components help to balance accuracy and brevity, encouraging shorter, accurate responses. Note that L(⋅) represents the length calculation method,  r0c/r0w are the correct/wrong rewards when the response is at minimum length and rLc/rLw are the correct/wrong rewards for the maximum length; re is an additional penalty for exceeding the maximum length, YGT is the ground-truth answer, and πref is the policy of the reference model.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different length reward-based RL methods. L⁢(⋅)𝐿⋅L(\cdot)italic_L ( ⋅ ) denotes the way of calculating the prediction length. r0c/r0wsuperscriptsubscript𝑟0𝑐superscriptsubscript𝑟0𝑤r_{0}^{c}/r_{0}^{w}italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT / italic_r start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT denotes reward (correct/wrong) for L⁢(⋅)𝐿⋅L(\cdot)italic_L ( ⋅ )=0. rLc/rLwsuperscriptsubscript𝑟𝐿𝑐superscriptsubscript𝑟𝐿𝑤r_{L}^{c}/r_{L}^{w}italic_r start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT / italic_r start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT Reward (correct/wrong) for L⁢(⋅)=Lmax⁢(⋅)𝐿⋅subscript𝐿max⋅L(\cdot)=L_{\text{max}}(\cdot)italic_L ( ⋅ ) = italic_L start_POSTSUBSCRIPT max end_POSTSUBSCRIPT ( ⋅ ). resubscript𝑟𝑒r_{e}italic_r start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT is the exceed length penalty. yGTsubscript𝑦GTy_{\text{GT}}italic_y start_POSTSUBSCRIPT GT end_POSTSUBSCRIPT represents the ground truth answer of input data x𝑥xitalic_x. πrefsubscript𝜋ref\pi_{\text{ref}}italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT is the policy of reference model.
> </details>





### In-depth insights


#### Overthinking LLMs
**Overthinking in LLMs** highlights the phenomenon where models generate unnecessarily detailed or redundant reasoning steps, hindering efficiency. This is particularly evident in smaller, reasoning-capable LLMs, leading to verbose outputs. It stems from the models' tendency to produce extensive reasoning, even when a concise solution is achievable.  It impairs problem-solving efficiency, potentially causing token budget overruns or even incorrect answers due to accumulated errors.  Addressing overthinking is significant because pre-training recipes often encourage extended reasoning to improve accuracy, making it a design challenge to balance capability and efficiency. It also affects real-world applications and increases computational overheads.

#### RL Length Reward
**RL with Length Reward** is a compelling approach to enhance reasoning efficiency. By integrating length as a reward signal, the model is incentivized to produce concise, yet accurate solutions. This method combats overthinking and promotes efficient computation. The careful formulation of length reward is key: scoring short, correct answers highly, while penalizing lengthier or incorrect responses. It's a balancing act between thorough reasoning and succinctness. **Challenges** involve defining appropriate reward functions and ensuring that length reduction doesn't compromise accuracy. Fine-tuning the reward mechanism is vital to achieving optimal results in RL.

#### CoT Data Shortening
**CoT data shortening** focuses on creating more efficient reasoning by reducing the length of Chain-of-Thought examples. This can be achieved through methods like distilling knowledge from longer CoT examples into shorter ones, or directly generating concise CoT data. The goal is to maintain accuracy while minimizing computational cost and redundancy. The methods often incorporate prompt engineering or fine-tuning techniques to encourage models to produce succinct and effective reasoning steps. This contrasts with methods which emphasize extending reasoning paths, aiming for a balance between thoroughness and efficiency.

#### Latent Reasoning
**Latent reasoning** emphasizes extracting implicit knowledge representations. Rather than relying on explicit, step-by-step reasoning chains, the focus is on encoding reasoning processes into a compact, hidden space. This can lead to more **efficient** and flexible reasoning, as the model doesn't need to generate verbose intermediate steps. By working in a compressed space, models can potentially achieve **faster inference** and better handle complex tasks. However, a key challenge is effectively training models to learn and utilize these latent representations, ensuring that the essential reasoning information is captured without explicit supervision.

#### Efficient Prompts
Efficient prompts are crucial for optimizing LLM performance. They involve crafting concise instructions to guide LLMs toward desired outputs. Effective prompts **reduce reasoning steps**, conserve resources, and improve accuracy. Methods include token budgeting and chain-of-draft prompting. These techniques explicitly instruct LLMs to be concise. Token budget constraints limit reasoning tokens. Chain-of-draft combines step-by-step reasoning with policies against verbosity. Some methods involve fine-tuning post prompting for performance gains. Attribute-driven reasoning dynamically directs language models based on the complexity of the prompt. Ideally, **routing models** assign simpler prompts to low-latency, efficient LLMs and complex prompts to strong, higher-latency LLMs, improving efficiency by managing resources.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16419/x2.png)

> 🔼 This figure categorizes efficient reasoning methods for large language models (LLMs) into three main categories based on their approach: model-oriented, reasoning output-oriented, and input prompts-oriented.  Model-oriented methods focus on modifying the model architecture or training process to promote efficient reasoning. Reasoning output-oriented methods aim to optimize the reasoning process during inference by manipulating the output. Input prompts-oriented methods leverage carefully designed input prompts to guide the LLM toward more efficient reasoning. Each category further breaks down into specific techniques, illustrated in the figure with detailed section references from the paper. The model-oriented methods include reinforcement learning with length reward design and supervised fine-tuning with variable-length Chain-of-Thought (CoT) data. The reasoning output-oriented methods cover compressing reasoning steps into fewer latent representations and the dynamic reasoning paradigm during inference. Finally, the input prompts-oriented methods encompass prompt-guided efficient reasoning and routing prompts to optimize reasoning efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview of efficient reasoning methods, which can be summarized as model-oriented (Left: I, II) and reasoning output-oriented (Middle: III, IV), and input prompts-oriented (Right: V, VI) methods. Specifically, (I) Reinforcement Learning with Length Reward Design (Section 3.1); (II) Supervised Fine-Tuning with Variable-Length CoT Data (Section 3.2); (III) Compressing Reasoning Steps into Fewer Latent Representation (Section 4.1); (IV) Dynamic Reasoning Paradigm during Inference (Section 4.2); (V) Prompt-guided Efficient Reasoning (Section 5.1); (VI) Routing Prompts to Optimize Reasoning Efficiency (Section 5.2);
> </details>



![](https://arxiv.org/html/2503.16419/x3.png)

> 🔼 This figure presents a taxonomy of existing research on efficient reasoning methods for Large Language Models (LLMs).  It categorizes the existing works into three main approaches: model-based efficient reasoning (optimizing model architecture or training directly for conciseness), reasoning output-based efficient reasoning (dynamically adjusting reasoning steps during inference), and input prompt-based efficient reasoning (leveraging prompt properties to influence reasoning efficiency).  Within each category are further sub-categories representing specific techniques or methods, providing a structured overview of the landscape of efficient reasoning research in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Taxonomy of existing literature on efficient reasoning for LLMs.
> </details>



![](https://arxiv.org/html/2503.16419/x4.png)

> 🔼 The figure showcases the overthinking phenomenon in large language models (LLMs).  It presents two examples of LLMs, QwQ-32B and DeepSeek-R1, attempting to answer the simple question: 'Which is larger, 0.9 or 0.11?'  Both models produce verbose and lengthy reasoning processes before arriving at the correct answer, taking 19 and 42 seconds, respectively.  This demonstrates the inefficiency of these LLMs, as they expend significant computational resources on redundant steps, highlighting the need for efficient reasoning techniques.  The test was conducted in March 2025.
> <details>
> <summary>read the caption</summary>
> Figure 4: An example of the “overthinking phenomenon”: when the reasoning model is asked “Which is larger, 0.9 or 0.11?”, it takes an unnecessarily long time (i.e., 19 seconds for QwQ-32B [79] and 42 seconds for DeepSeek-R1 [31]) to deliver its final answer. The example was tested in March 2025.
> </details>



![](https://arxiv.org/html/2503.16419/x5.png)

> 🔼 This figure illustrates the reinforcement learning (RL) approach used to train large language models (LLMs) for efficient reasoning.  The key modification is incorporating a 'length reward' into the RL training process. This reward mechanism incentivizes the model to produce shorter, correct answers by assigning higher rewards to such outputs, while penalizing longer or incorrect responses. The goal is to train LLMs that can effectively reason with conciseness without sacrificing accuracy, thus achieving efficient reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of the method for RL fine-tuning with length reward designs. In principle, the length reward assigns higher rewards to short, correct answers and penalizes lengthy or wrong answers to achieve efficient reasoning LLMs.
> </details>



![](https://arxiv.org/html/2503.16419/x6.png)

> 🔼 This figure illustrates the process of using supervised fine-tuning (SFT) with variable-length chain-of-thought (CoT) reasoning datasets to improve the efficiency of reasoning in large language models (LLMs).  It shows that both long and short CoT data are used in the training, resulting in a more efficient reasoning model.  The process involves constructing variable-length datasets (through various methods described in the paper), followed by fine-tuning an LLM using these datasets. The goal is to teach the LLM to generate concise and effective reasoning steps without compromising accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of methods for utilizing SFT with variable-length CoT reasoning datasets.
> </details>



![](https://arxiv.org/html/2503.16419/x7.png)

> 🔼 This figure compares different methods for compressing reasoning steps in large language models (LLMs) into fewer latent representations.  It illustrates three different approaches: (1) Coconut uses continuous representations and trains the LLM gradually to incorporate these latent representations into its reasoning process.  (2) CODI employs self-distillation to learn latent representations.  (3) CCOT compresses full CoT reasoning steps into a smaller set of compressed tokens which a separate decoding module utilizes to reconstruct concise reasoning.  The figure visually shows the architecture and data flow for each method, highlighting their similarities and differences in how they compress reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Comparison of methods of compressing reasoning steps into fewer latent representations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.13">
<tr class="ltx_tr" id="S3.T2.13.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.13.4.1"><span class="ltx_text ltx_font_bold" id="S3.T2.13.4.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.13.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.13.4.2.1" style="font-size:90%;">Optimization Objective</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.11.1.2"><span class="ltx_text" id="S3.T2.11.1.2.1" style="font-size:90%;">Policy Gradient (PG)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.11.1.1"><math alttext="\mathbb{E}_{\pi_{\theta}}\left[\nabla_{\theta}\log\pi_{\theta}(y_{t}|x_{t})%
\hat{R}_{t}\right]" class="ltx_Math" display="inline" id="S3.T2.11.1.1.m1.1"><semantics id="S3.T2.11.1.1.m1.1a"><mrow id="S3.T2.11.1.1.m1.1.1" xref="S3.T2.11.1.1.m1.1.1.cmml"><msub id="S3.T2.11.1.1.m1.1.1.3" xref="S3.T2.11.1.1.m1.1.1.3.cmml"><mi id="S3.T2.11.1.1.m1.1.1.3.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.3.2.cmml">𝔼</mi><msub id="S3.T2.11.1.1.m1.1.1.3.3" xref="S3.T2.11.1.1.m1.1.1.3.3.cmml"><mi id="S3.T2.11.1.1.m1.1.1.3.3.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.3.3.2.cmml">π</mi><mi id="S3.T2.11.1.1.m1.1.1.3.3.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.3.3.3.cmml">θ</mi></msub></msub><mo id="S3.T2.11.1.1.m1.1.1.2" xref="S3.T2.11.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.11.1.1.m1.1.1.1.1" xref="S3.T2.11.1.1.m1.1.1.1.2.cmml"><mo id="S3.T2.11.1.1.m1.1.1.1.1.2" xref="S3.T2.11.1.1.m1.1.1.1.2.1.cmml">[</mo><mrow id="S3.T2.11.1.1.m1.1.1.1.1.1" xref="S3.T2.11.1.1.m1.1.1.1.1.1.cmml"><mrow id="S3.T2.11.1.1.m1.1.1.1.1.1.3" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.cmml"><mrow id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.cmml"><msub id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.cmml"><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.2" mathsize="90%" rspace="0.167em" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.2.cmml">∇</mo><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.3.cmml">θ</mi></msub><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.2.cmml">log</mi></mrow><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.3a" lspace="0.167em" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.cmml">⁡</mo><msub id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.cmml"><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.2.cmml">π</mi><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.3.cmml">θ</mi></msub></mrow><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.2" xref="S3.T2.11.1.1.m1.1.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.cmml"><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.cmml"><msub id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.cmml"><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.3.cmml">t</mi></msub><mo fence="false" id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.1.cmml">|</mo><msub id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.2.cmml">x</mi><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.3.cmml">t</mi></msub></mrow><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.2a" xref="S3.T2.11.1.1.m1.1.1.1.1.1.2.cmml">⁢</mo><msub id="S3.T2.11.1.1.m1.1.1.1.1.1.4" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.cmml"><mover accent="true" id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.cmml"><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.2" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.2.cmml">R</mi><mo id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.1" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.1.cmml">^</mo></mover><mi id="S3.T2.11.1.1.m1.1.1.1.1.1.4.3" mathsize="90%" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.3.cmml">t</mi></msub></mrow><mo id="S3.T2.11.1.1.m1.1.1.1.1.3" xref="S3.T2.11.1.1.m1.1.1.1.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.11.1.1.m1.1b"><apply id="S3.T2.11.1.1.m1.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1"><times id="S3.T2.11.1.1.m1.1.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.2"></times><apply id="S3.T2.11.1.1.m1.1.1.3.cmml" xref="S3.T2.11.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.3.1.cmml" xref="S3.T2.11.1.1.m1.1.1.3">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.3.2.cmml" xref="S3.T2.11.1.1.m1.1.1.3.2">𝔼</ci><apply id="S3.T2.11.1.1.m1.1.1.3.3.cmml" xref="S3.T2.11.1.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.3.3.1.cmml" xref="S3.T2.11.1.1.m1.1.1.3.3">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.3.3.2.cmml" xref="S3.T2.11.1.1.m1.1.1.3.3.2">𝜋</ci><ci id="S3.T2.11.1.1.m1.1.1.3.3.3.cmml" xref="S3.T2.11.1.1.m1.1.1.3.3.3">𝜃</ci></apply></apply><apply id="S3.T2.11.1.1.m1.1.1.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S3.T2.11.1.1.m1.1.1.1.2.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.2">delimited-[]</csymbol><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1"><times id="S3.T2.11.1.1.m1.1.1.1.1.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.2"></times><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3"><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1"><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.2">∇</ci><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.1.3">𝜃</ci></apply><log id="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.1.2"></log></apply><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.2">𝜋</ci><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.3.2.3">𝜃</ci></apply></apply><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1"><csymbol cd="latexml" id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.1">conditional</csymbol><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.2">𝑦</ci><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.2.3">𝑡</ci></apply><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.2">𝑥</ci><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.1.1.1.3.3">𝑡</ci></apply></apply><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.4.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4"><csymbol cd="ambiguous" id="S3.T2.11.1.1.m1.1.1.1.1.1.4.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4">subscript</csymbol><apply id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2"><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.1.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.1">^</ci><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.2.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.2.2">𝑅</ci></apply><ci id="S3.T2.11.1.1.m1.1.1.1.1.1.4.3.cmml" xref="S3.T2.11.1.1.m1.1.1.1.1.1.4.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.1.1.m1.1c">\mathbb{E}_{\pi_{\theta}}\left[\nabla_{\theta}\log\pi_{\theta}(y_{t}|x_{t})%
\hat{R}_{t}\right]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.1.1.m1.1d">blackboard_E start_POSTSUBSCRIPT italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT end_POSTSUBSCRIPT [ ∇ start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT roman_log italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT | italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) over^ start_ARG italic_R end_ARG start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ]</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.12.2.2">
<span class="ltx_text" id="S3.T2.12.2.2.1" style="font-size:90%;">PPO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.12.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib67" title="">67</a><span class="ltx_text" id="S3.T2.12.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.2.1"><math alttext="\mathbb{E}\left[\log\sigma\left(\beta\log\frac{\pi_{\theta}(y_{w}\mid x)}{\pi_%
{\text{ref}}(y_{w}\mid x)}-\beta\log\frac{\pi_{\theta}(y_{l}\mid x)}{\pi_{%
\text{ref}}(y_{l}\mid x)}\right)\right]" class="ltx_Math" display="inline" id="S3.T2.12.2.1.m1.5"><semantics id="S3.T2.12.2.1.m1.5a"><mrow id="S3.T2.12.2.1.m1.5.5" xref="S3.T2.12.2.1.m1.5.5.cmml"><mi id="S3.T2.12.2.1.m1.5.5.3" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.3.cmml">𝔼</mi><mo id="S3.T2.12.2.1.m1.5.5.2" xref="S3.T2.12.2.1.m1.5.5.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1" xref="S3.T2.12.2.1.m1.5.5.1.2.cmml"><mo id="S3.T2.12.2.1.m1.5.5.1.1.2" xref="S3.T2.12.2.1.m1.5.5.1.2.1.cmml">[</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1" xref="S3.T2.12.2.1.m1.5.5.1.1.1.cmml"><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.3" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.cmml"><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.3.1" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.1.cmml">log</mi><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.3a" lspace="0.167em" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.cmml">⁡</mo><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.2.cmml">σ</mi></mrow><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.2" xref="S3.T2.12.2.1.m1.5.5.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.cmml"><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.2" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.cmml"><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.cmml"><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.2" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.2.cmml">β</mi><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.1" lspace="0.167em" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.1.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.cmml"><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.1" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.1.cmml">log</mi><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3a" lspace="0.167em" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.cmml">⁡</mo><mfrac id="S3.T2.12.2.1.m1.2.2" xref="S3.T2.12.2.1.m1.2.2.cmml"><mrow id="S3.T2.12.2.1.m1.1.1.1" xref="S3.T2.12.2.1.m1.1.1.1.cmml"><msub id="S3.T2.12.2.1.m1.1.1.1.3" xref="S3.T2.12.2.1.m1.1.1.1.3.cmml"><mi id="S3.T2.12.2.1.m1.1.1.1.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.3.2.cmml">π</mi><mi id="S3.T2.12.2.1.m1.1.1.1.3.3" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.3.3.cmml">θ</mi></msub><mo id="S3.T2.12.2.1.m1.1.1.1.2" xref="S3.T2.12.2.1.m1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.1.1.1.1.1" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.cmml"><mo id="S3.T2.12.2.1.m1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.12.2.1.m1.1.1.1.1.1.1" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.cmml"><msub id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.cmml"><mi id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.2" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.3" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.3.cmml">w</mi></msub><mo id="S3.T2.12.2.1.m1.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.1.cmml">∣</mo><mi id="S3.T2.12.2.1.m1.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.12.2.1.m1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mrow id="S3.T2.12.2.1.m1.2.2.2" xref="S3.T2.12.2.1.m1.2.2.2.cmml"><msub id="S3.T2.12.2.1.m1.2.2.2.3" xref="S3.T2.12.2.1.m1.2.2.2.3.cmml"><mi id="S3.T2.12.2.1.m1.2.2.2.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.3.2.cmml">π</mi><mtext id="S3.T2.12.2.1.m1.2.2.2.3.3" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.3.3a.cmml">ref</mtext></msub><mo id="S3.T2.12.2.1.m1.2.2.2.2" xref="S3.T2.12.2.1.m1.2.2.2.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.2.2.2.1.1" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.cmml"><mo id="S3.T2.12.2.1.m1.2.2.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.cmml">(</mo><mrow id="S3.T2.12.2.1.m1.2.2.2.1.1.1" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.cmml"><msub id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.cmml"><mi id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.2" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.3" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.3.cmml">w</mi></msub><mo id="S3.T2.12.2.1.m1.2.2.2.1.1.1.1" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.1.cmml">∣</mo><mi id="S3.T2.12.2.1.m1.2.2.2.1.1.1.3" mathsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.12.2.1.m1.2.2.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.cmml">)</mo></mrow></mrow></mfrac></mrow></mrow><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.cmml"><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.2.cmml">β</mi><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.1" lspace="0.167em" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.1.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.cmml"><mi id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.1" mathsize="90%" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.1.cmml">log</mi><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3a" lspace="0.167em" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.cmml">⁡</mo><mfrac id="S3.T2.12.2.1.m1.4.4" xref="S3.T2.12.2.1.m1.4.4.cmml"><mrow id="S3.T2.12.2.1.m1.3.3.1" xref="S3.T2.12.2.1.m1.3.3.1.cmml"><msub id="S3.T2.12.2.1.m1.3.3.1.3" xref="S3.T2.12.2.1.m1.3.3.1.3.cmml"><mi id="S3.T2.12.2.1.m1.3.3.1.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.3.2.cmml">π</mi><mi id="S3.T2.12.2.1.m1.3.3.1.3.3" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.3.3.cmml">θ</mi></msub><mo id="S3.T2.12.2.1.m1.3.3.1.2" xref="S3.T2.12.2.1.m1.3.3.1.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.3.3.1.1.1" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.cmml"><mo id="S3.T2.12.2.1.m1.3.3.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.cmml">(</mo><mrow id="S3.T2.12.2.1.m1.3.3.1.1.1.1" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.cmml"><msub id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.cmml"><mi id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.2" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.3" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.3.cmml">l</mi></msub><mo id="S3.T2.12.2.1.m1.3.3.1.1.1.1.1" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.1.cmml">∣</mo><mi id="S3.T2.12.2.1.m1.3.3.1.1.1.1.3" mathsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.12.2.1.m1.3.3.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.cmml">)</mo></mrow></mrow><mrow id="S3.T2.12.2.1.m1.4.4.2" xref="S3.T2.12.2.1.m1.4.4.2.cmml"><msub id="S3.T2.12.2.1.m1.4.4.2.3" xref="S3.T2.12.2.1.m1.4.4.2.3.cmml"><mi id="S3.T2.12.2.1.m1.4.4.2.3.2" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.3.2.cmml">π</mi><mtext id="S3.T2.12.2.1.m1.4.4.2.3.3" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.3.3a.cmml">ref</mtext></msub><mo id="S3.T2.12.2.1.m1.4.4.2.2" xref="S3.T2.12.2.1.m1.4.4.2.2.cmml">⁢</mo><mrow id="S3.T2.12.2.1.m1.4.4.2.1.1" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.cmml"><mo id="S3.T2.12.2.1.m1.4.4.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.cmml">(</mo><mrow id="S3.T2.12.2.1.m1.4.4.2.1.1.1" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.cmml"><msub id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.cmml"><mi id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.2" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.3" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.3.cmml">l</mi></msub><mo id="S3.T2.12.2.1.m1.4.4.2.1.1.1.1" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.1.cmml">∣</mo><mi id="S3.T2.12.2.1.m1.4.4.2.1.1.1.3" mathsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.12.2.1.m1.4.4.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.cmml">)</mo></mrow></mrow></mfrac></mrow></mrow></mrow><mo id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.3" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T2.12.2.1.m1.5.5.1.1.3" xref="S3.T2.12.2.1.m1.5.5.1.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.12.2.1.m1.5b"><apply id="S3.T2.12.2.1.m1.5.5.cmml" xref="S3.T2.12.2.1.m1.5.5"><times id="S3.T2.12.2.1.m1.5.5.2.cmml" xref="S3.T2.12.2.1.m1.5.5.2"></times><ci id="S3.T2.12.2.1.m1.5.5.3.cmml" xref="S3.T2.12.2.1.m1.5.5.3">𝔼</ci><apply id="S3.T2.12.2.1.m1.5.5.1.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1"><csymbol cd="latexml" id="S3.T2.12.2.1.m1.5.5.1.2.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.2">delimited-[]</csymbol><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1"><times id="S3.T2.12.2.1.m1.5.5.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.2"></times><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3"><log id="S3.T2.12.2.1.m1.5.5.1.1.1.3.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.1"></log><ci id="S3.T2.12.2.1.m1.5.5.1.1.1.3.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.3.2">𝜎</ci></apply><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1"><minus id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.1"></minus><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2"><times id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.1"></times><ci id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.2">𝛽</ci><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3"><log id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.2.3.1"></log><apply id="S3.T2.12.2.1.m1.2.2.cmml" xref="S3.T2.12.2.1.m1.2.2"><divide id="S3.T2.12.2.1.m1.2.2.3.cmml" xref="S3.T2.12.2.1.m1.2.2"></divide><apply id="S3.T2.12.2.1.m1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.1.1.1"><times id="S3.T2.12.2.1.m1.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.1.1.1.2"></times><apply id="S3.T2.12.2.1.m1.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.1.1.1.3.1.cmml" xref="S3.T2.12.2.1.m1.1.1.1.3">subscript</csymbol><ci id="S3.T2.12.2.1.m1.1.1.1.3.2.cmml" xref="S3.T2.12.2.1.m1.1.1.1.3.2">𝜋</ci><ci id="S3.T2.12.2.1.m1.1.1.1.3.3.cmml" xref="S3.T2.12.2.1.m1.1.1.1.3.3">𝜃</ci></apply><apply id="S3.T2.12.2.1.m1.1.1.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1"><csymbol cd="latexml" id="S3.T2.12.2.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.1">conditional</csymbol><apply id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.1.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.2.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.2">𝑦</ci><ci id="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.3.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.2.3">𝑤</ci></apply><ci id="S3.T2.12.2.1.m1.1.1.1.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.1.1.1.1.1.1.3">𝑥</ci></apply></apply><apply id="S3.T2.12.2.1.m1.2.2.2.cmml" xref="S3.T2.12.2.1.m1.2.2.2"><times id="S3.T2.12.2.1.m1.2.2.2.2.cmml" xref="S3.T2.12.2.1.m1.2.2.2.2"></times><apply id="S3.T2.12.2.1.m1.2.2.2.3.cmml" xref="S3.T2.12.2.1.m1.2.2.2.3"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.2.2.2.3.1.cmml" xref="S3.T2.12.2.1.m1.2.2.2.3">subscript</csymbol><ci id="S3.T2.12.2.1.m1.2.2.2.3.2.cmml" xref="S3.T2.12.2.1.m1.2.2.2.3.2">𝜋</ci><ci id="S3.T2.12.2.1.m1.2.2.2.3.3a.cmml" xref="S3.T2.12.2.1.m1.2.2.2.3.3"><mtext id="S3.T2.12.2.1.m1.2.2.2.3.3.cmml" mathsize="45%" xref="S3.T2.12.2.1.m1.2.2.2.3.3">ref</mtext></ci></apply><apply id="S3.T2.12.2.1.m1.2.2.2.1.1.1.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1"><csymbol cd="latexml" id="S3.T2.12.2.1.m1.2.2.2.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.1">conditional</csymbol><apply id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.1.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2">subscript</csymbol><ci id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.2.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.2">𝑦</ci><ci id="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.3.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.2.3">𝑤</ci></apply><ci id="S3.T2.12.2.1.m1.2.2.2.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.2.2.2.1.1.1.3">𝑥</ci></apply></apply></apply></apply></apply><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3"><times id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.1"></times><ci id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.2.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.2">𝛽</ci><apply id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3"><log id="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.1.cmml" xref="S3.T2.12.2.1.m1.5.5.1.1.1.1.1.1.3.3.1"></log><apply id="S3.T2.12.2.1.m1.4.4.cmml" xref="S3.T2.12.2.1.m1.4.4"><divide id="S3.T2.12.2.1.m1.4.4.3.cmml" xref="S3.T2.12.2.1.m1.4.4"></divide><apply id="S3.T2.12.2.1.m1.3.3.1.cmml" xref="S3.T2.12.2.1.m1.3.3.1"><times id="S3.T2.12.2.1.m1.3.3.1.2.cmml" xref="S3.T2.12.2.1.m1.3.3.1.2"></times><apply id="S3.T2.12.2.1.m1.3.3.1.3.cmml" xref="S3.T2.12.2.1.m1.3.3.1.3"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.3.3.1.3.1.cmml" xref="S3.T2.12.2.1.m1.3.3.1.3">subscript</csymbol><ci id="S3.T2.12.2.1.m1.3.3.1.3.2.cmml" xref="S3.T2.12.2.1.m1.3.3.1.3.2">𝜋</ci><ci id="S3.T2.12.2.1.m1.3.3.1.3.3.cmml" xref="S3.T2.12.2.1.m1.3.3.1.3.3">𝜃</ci></apply><apply id="S3.T2.12.2.1.m1.3.3.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1"><csymbol cd="latexml" id="S3.T2.12.2.1.m1.3.3.1.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.1">conditional</csymbol><apply id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.1.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2">subscript</csymbol><ci id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.2.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.2">𝑦</ci><ci id="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.3.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.2.3">𝑙</ci></apply><ci id="S3.T2.12.2.1.m1.3.3.1.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.3.3.1.1.1.1.3">𝑥</ci></apply></apply><apply id="S3.T2.12.2.1.m1.4.4.2.cmml" xref="S3.T2.12.2.1.m1.4.4.2"><times id="S3.T2.12.2.1.m1.4.4.2.2.cmml" xref="S3.T2.12.2.1.m1.4.4.2.2"></times><apply id="S3.T2.12.2.1.m1.4.4.2.3.cmml" xref="S3.T2.12.2.1.m1.4.4.2.3"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.4.4.2.3.1.cmml" xref="S3.T2.12.2.1.m1.4.4.2.3">subscript</csymbol><ci id="S3.T2.12.2.1.m1.4.4.2.3.2.cmml" xref="S3.T2.12.2.1.m1.4.4.2.3.2">𝜋</ci><ci id="S3.T2.12.2.1.m1.4.4.2.3.3a.cmml" xref="S3.T2.12.2.1.m1.4.4.2.3.3"><mtext id="S3.T2.12.2.1.m1.4.4.2.3.3.cmml" mathsize="45%" xref="S3.T2.12.2.1.m1.4.4.2.3.3">ref</mtext></ci></apply><apply id="S3.T2.12.2.1.m1.4.4.2.1.1.1.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1"><csymbol cd="latexml" id="S3.T2.12.2.1.m1.4.4.2.1.1.1.1.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.1">conditional</csymbol><apply id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.1.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2">subscript</csymbol><ci id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.2.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.2">𝑦</ci><ci id="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.3.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.2.3">𝑙</ci></apply><ci id="S3.T2.12.2.1.m1.4.4.2.1.1.1.3.cmml" xref="S3.T2.12.2.1.m1.4.4.2.1.1.1.3">𝑥</ci></apply></apply></apply></apply></apply></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.2.1.m1.5c">\mathbb{E}\left[\log\sigma\left(\beta\log\frac{\pi_{\theta}(y_{w}\mid x)}{\pi_%
{\text{ref}}(y_{w}\mid x)}-\beta\log\frac{\pi_{\theta}(y_{l}\mid x)}{\pi_{%
\text{ref}}(y_{l}\mid x)}\right)\right]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.2.1.m1.5d">blackboard_E [ roman_log italic_σ ( italic_β roman_log divide start_ARG italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT ∣ italic_x ) end_ARG start_ARG italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT ∣ italic_x ) end_ARG - italic_β roman_log divide start_ARG italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT ∣ italic_x ) end_ARG start_ARG italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT ∣ italic_x ) end_ARG ) ]</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.13.3.2">
<span class="ltx_text" id="S3.T2.13.3.2.1" style="font-size:90%;">SimPO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.13.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib57" title="">57</a><span class="ltx_text" id="S3.T2.13.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.13.3.1"><math alttext="\mathbb{E}\left[\log\sigma\left(\frac{\beta}{|y_{w}|}\log\pi_{\theta}(y_{w}%
\mid x)-\frac{\beta}{|y_{l}|}\log\pi_{\theta}(y_{l}\mid x)-\gamma\right)\right]" class="ltx_Math" display="inline" id="S3.T2.13.3.1.m1.3"><semantics id="S3.T2.13.3.1.m1.3a"><mrow id="S3.T2.13.3.1.m1.3.3" xref="S3.T2.13.3.1.m1.3.3.cmml"><mi id="S3.T2.13.3.1.m1.3.3.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.3.cmml">𝔼</mi><mo id="S3.T2.13.3.1.m1.3.3.2" xref="S3.T2.13.3.1.m1.3.3.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1" xref="S3.T2.13.3.1.m1.3.3.1.2.cmml"><mo id="S3.T2.13.3.1.m1.3.3.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.2.1.cmml">[</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.cmml"><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.3" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.3.1" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.1.cmml">log</mi><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.3a" lspace="0.167em" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.cmml">⁡</mo><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.3.2" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.2.cmml">σ</mi></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.cmml"><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.cmml"><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.cmml"><mfrac id="S3.T2.13.3.1.m1.1.1" xref="S3.T2.13.3.1.m1.1.1.cmml"><mi id="S3.T2.13.3.1.m1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.1.1.3.cmml">β</mi><mrow id="S3.T2.13.3.1.m1.1.1.1.1" xref="S3.T2.13.3.1.m1.1.1.1.2.cmml"><mo id="S3.T2.13.3.1.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.1.1.1.2.1.cmml">|</mo><msub id="S3.T2.13.3.1.m1.1.1.1.1.1" xref="S3.T2.13.3.1.m1.1.1.1.1.1.cmml"><mi id="S3.T2.13.3.1.m1.1.1.1.1.1.2" mathsize="90%" xref="S3.T2.13.3.1.m1.1.1.1.1.1.2.cmml">y</mi><mi id="S3.T2.13.3.1.m1.1.1.1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.1.1.1.1.1.3.cmml">w</mi></msub><mo id="S3.T2.13.3.1.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.1.1.1.2.1.cmml">|</mo></mrow></mfrac><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2" lspace="0.167em" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.1" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.1.cmml">log</mi><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3a" lspace="0.167em" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.cmml">⁡</mo><msub id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.2" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.2.cmml">π</mi><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.3.cmml">θ</mi></msub></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2a" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.cmml"><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.cmml"><msub id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.2" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.3.cmml">w</mi></msub><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.1" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.1.cmml">∣</mo><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3.cmml">−</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.cmml"><mfrac id="S3.T2.13.3.1.m1.2.2" xref="S3.T2.13.3.1.m1.2.2.cmml"><mi id="S3.T2.13.3.1.m1.2.2.3" mathsize="90%" xref="S3.T2.13.3.1.m1.2.2.3.cmml">β</mi><mrow id="S3.T2.13.3.1.m1.2.2.1.1" xref="S3.T2.13.3.1.m1.2.2.1.2.cmml"><mo id="S3.T2.13.3.1.m1.2.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.2.2.1.2.1.cmml">|</mo><msub id="S3.T2.13.3.1.m1.2.2.1.1.1" xref="S3.T2.13.3.1.m1.2.2.1.1.1.cmml"><mi id="S3.T2.13.3.1.m1.2.2.1.1.1.2" mathsize="90%" xref="S3.T2.13.3.1.m1.2.2.1.1.1.2.cmml">y</mi><mi id="S3.T2.13.3.1.m1.2.2.1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.2.2.1.1.1.3.cmml">l</mi></msub><mo id="S3.T2.13.3.1.m1.2.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.2.2.1.2.1.cmml">|</mo></mrow></mfrac><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2" lspace="0.167em" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.1" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.1.cmml">log</mi><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3a" lspace="0.167em" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.cmml">⁡</mo><msub id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.2" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.2.cmml">π</mi><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.3.cmml">θ</mi></msub></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2a" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2.cmml">⁢</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.cmml"><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.2" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.cmml">(</mo><mrow id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.cmml"><msub id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.cmml"><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.2" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.2.cmml">y</mi><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.3.cmml">l</mi></msub><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.1" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.1.cmml">∣</mo><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.3" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.3.cmml">x</mi></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.3" maxsize="90%" minsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3a" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3.cmml">−</mo><mi id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.4" mathsize="90%" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.4.cmml">γ</mi></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.3" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S3.T2.13.3.1.m1.3.3.1.1.3" xref="S3.T2.13.3.1.m1.3.3.1.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.13.3.1.m1.3b"><apply id="S3.T2.13.3.1.m1.3.3.cmml" xref="S3.T2.13.3.1.m1.3.3"><times id="S3.T2.13.3.1.m1.3.3.2.cmml" xref="S3.T2.13.3.1.m1.3.3.2"></times><ci id="S3.T2.13.3.1.m1.3.3.3.cmml" xref="S3.T2.13.3.1.m1.3.3.3">𝔼</ci><apply id="S3.T2.13.3.1.m1.3.3.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1"><csymbol cd="latexml" id="S3.T2.13.3.1.m1.3.3.1.2.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.2">delimited-[]</csymbol><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1"><times id="S3.T2.13.3.1.m1.3.3.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.2"></times><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3"><log id="S3.T2.13.3.1.m1.3.3.1.1.1.3.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.1"></log><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.3.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.3.2">𝜎</ci></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1"><minus id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.3"></minus><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1"><times id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.2"></times><apply id="S3.T2.13.3.1.m1.1.1.cmml" xref="S3.T2.13.3.1.m1.1.1"><divide id="S3.T2.13.3.1.m1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.1.1"></divide><ci id="S3.T2.13.3.1.m1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.1.1.3">𝛽</ci><apply id="S3.T2.13.3.1.m1.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1"><abs id="S3.T2.13.3.1.m1.1.1.1.2.1.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1.2"></abs><apply id="S3.T2.13.3.1.m1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S3.T2.13.3.1.m1.1.1.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1.1.2">𝑦</ci><ci id="S3.T2.13.3.1.m1.1.1.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.1.1.1.1.1.3">𝑤</ci></apply></apply></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3"><log id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.1"></log><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2">subscript</csymbol><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.2">𝜋</ci><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.3.2.3">𝜃</ci></apply></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1"><csymbol cd="latexml" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.1">conditional</csymbol><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.2">𝑦</ci><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.2.3">𝑤</ci></apply><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.1.1.1.1.3">𝑥</ci></apply></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2"><times id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.2"></times><apply id="S3.T2.13.3.1.m1.2.2.cmml" xref="S3.T2.13.3.1.m1.2.2"><divide id="S3.T2.13.3.1.m1.2.2.2.cmml" xref="S3.T2.13.3.1.m1.2.2"></divide><ci id="S3.T2.13.3.1.m1.2.2.3.cmml" xref="S3.T2.13.3.1.m1.2.2.3">𝛽</ci><apply id="S3.T2.13.3.1.m1.2.2.1.2.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1"><abs id="S3.T2.13.3.1.m1.2.2.1.2.1.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1.2"></abs><apply id="S3.T2.13.3.1.m1.2.2.1.1.1.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1.1"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.2.2.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1.1">subscript</csymbol><ci id="S3.T2.13.3.1.m1.2.2.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1.1.2">𝑦</ci><ci id="S3.T2.13.3.1.m1.2.2.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.2.2.1.1.1.3">𝑙</ci></apply></apply></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3"><log id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.1"></log><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2">subscript</csymbol><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.2">𝜋</ci><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.3.2.3">𝜃</ci></apply></apply><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1"><csymbol cd="latexml" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.1">conditional</csymbol><apply id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.1.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2">subscript</csymbol><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.2.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.2">𝑦</ci><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.2.3">𝑙</ci></apply><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.3.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.2.1.1.1.3">𝑥</ci></apply></apply><ci id="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.4.cmml" xref="S3.T2.13.3.1.m1.3.3.1.1.1.1.1.1.4">𝛾</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.3.1.m1.3c">\mathbb{E}\left[\log\sigma\left(\frac{\beta}{|y_{w}|}\log\pi_{\theta}(y_{w}%
\mid x)-\frac{\beta}{|y_{l}|}\log\pi_{\theta}(y_{l}\mid x)-\gamma\right)\right]</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.3.1.m1.3d">blackboard_E [ roman_log italic_σ ( divide start_ARG italic_β end_ARG start_ARG | italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT | end_ARG roman_log italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT ∣ italic_x ) - divide start_ARG italic_β end_ARG start_ARG | italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT | end_ARG roman_log italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT ∣ italic_x ) - italic_γ ) ]</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 details the policy optimization methods used to control the length of Chain-of-Thought (CoT) reasoning in large language models (LLMs).  It compares different methods (PPO and SimPO), showing their policy gradient calculation and optimization objective functions. The table clarifies the variables used in these functions:  𝑅𝑡 ̂R_t represents the reward model at time step t, πref π_ref denotes the reference model's policy, γ γ represents a target reward margin for SimPO, 𝑦𝑤 y_w represents the reward for winning responses, and 𝑦𝑙 y_l is the reward for losing responses. This information helps to understand the specific algorithms and reward structures used in different approaches to making LLMs generate more concise reasoning chains.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different policy optimization methods in CoT length controls. R^tsubscript^𝑅𝑡\hat{R}_{t}over^ start_ARG italic_R end_ARG start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT represents the reward model. πrefsubscript𝜋ref\pi_{\text{ref}}italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT is the policy of reference model. γ𝛾\gammaitalic_γ is a target reward margin term for SimPO. The ywsubscript𝑦𝑤y_{w}italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT is for winning responses and ylsubscript𝑦𝑙y_{l}italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT is for losing responses.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tr class="ltx_tr" id="S3.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.1" style="font-size:90%;">Source Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.3.1" style="font-size:90%;">Reasoning Pruning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.4.1" style="font-size:90%;">SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.2.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.5.1" style="font-size:90%;">LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.1.1.1.2">
<span class="ltx_text" id="S3.T3.1.1.1.2.1" style="font-size:90%;">Self-Training </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib59" title="">59</a><span class="ltx_text" id="S3.T3.1.1.1.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.3">
<span class="ltx_text" id="S3.T3.1.1.1.3.1"></span><span class="ltx_text" id="S3.T3.1.1.1.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.1.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.1.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.3.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T3.1.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.3.3.1.2.1">MATH</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.1.3.4"></span><span class="ltx_text" id="S3.T3.1.1.1.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.1">
<span class="ltx_text" id="S3.T3.1.1.1.1.2"></span><span class="ltx_text" id="S3.T3.1.1.1.1.3" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.1.1.1.1">
<span class="ltx_tr" id="S3.T3.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.1.1.1.1.1">Sampling <math alttext="N" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.1.1.1.1.m1.1a"><mi id="S3.T3.1.1.1.1.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.1.1.1.1.m1.1d">italic_N</annotation></semantics></math></span></span>
<span class="ltx_tr" id="S3.T3.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.1.1.1.2.1">reasoning then select</span></span>
<span class="ltx_tr" id="S3.T3.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.1.1.1.3.1">the shortest one</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.1.1.4"></span><span class="ltx_text" id="S3.T3.1.1.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.4"><span class="ltx_text" id="S3.T3.1.1.1.4.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.5">
<span class="ltx_text" id="S3.T3.1.1.1.5.1"></span><span class="ltx_text" id="S3.T3.1.1.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.1.5.3.1">
<span class="ltx_tr" id="S3.T3.1.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.5.3.1.1.1">Llama-3.2-{1B,3B}</span></span>
<span class="ltx_tr" id="S3.T3.1.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.5.3.1.2.1">Llama-3.1-8B</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.1.5.4"></span><span class="ltx_text" id="S3.T3.1.1.1.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.3.1">
<span class="ltx_text" id="S3.T3.1.1.3.1.1" style="font-size:90%;">TokenSkip </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib89" title="">89</a><span class="ltx_text" id="S3.T3.1.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.3.2">
<span class="ltx_text" id="S3.T3.1.1.3.2.1"></span><span class="ltx_text" id="S3.T3.1.1.3.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.3.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.3.2.3.1">
<span class="ltx_tr" id="S3.T3.1.1.3.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.2.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T3.1.1.3.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.2.3.1.2.1">MATH</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.3.2.4"></span><span class="ltx_text" id="S3.T3.1.1.3.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.3.3">
<span class="ltx_text" id="S3.T3.1.1.3.3.1"></span><span class="ltx_text" id="S3.T3.1.1.3.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.3.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.3.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.3.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.3.3.1.1.1">Skip tokens according to</span></span>
<span class="ltx_tr" id="S3.T3.1.1.3.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.3.3.1.2.1">semantic importance</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.3.3.4"></span><span class="ltx_text" id="S3.T3.1.1.3.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.3.4"><span class="ltx_text" id="S3.T3.1.1.3.4.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.3.5">
<span class="ltx_text" id="S3.T3.1.1.3.5.1"></span><span class="ltx_text" id="S3.T3.1.1.3.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.3.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.3.5.3.1">
<span class="ltx_tr" id="S3.T3.1.1.3.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.5.3.1.1.1">LLaMA-3.1-8B-Instruct</span></span>
<span class="ltx_tr" id="S3.T3.1.1.3.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3.5.3.1.2.1">Qwen2.5-Instruct</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.3.5.4"></span><span class="ltx_text" id="S3.T3.1.1.3.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.4.1">
<span class="ltx_text" id="S3.T3.1.1.4.1.1" style="font-size:90%;">C3oT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib37" title="">37</a><span class="ltx_text" id="S3.T3.1.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.2">
<span class="ltx_text" id="S3.T3.1.1.4.2.1"></span><span class="ltx_text" id="S3.T3.1.1.4.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.4.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.4.2.3.1">
<span class="ltx_tr" id="S3.T3.1.1.4.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.2.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T3.1.1.4.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.2.3.1.2.1">MathQA</span></span>
<span class="ltx_tr" id="S3.T3.1.1.4.2.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.2.3.1.3.1">ECQA</span></span>
<span class="ltx_tr" id="S3.T3.1.1.4.2.3.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.2.3.1.4.1">StrategyQA</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.4.2.4"></span><span class="ltx_text" id="S3.T3.1.1.4.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3">
<span class="ltx_text" id="S3.T3.1.1.4.3.1"></span><span class="ltx_text" id="S3.T3.1.1.4.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.4.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.4.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.4.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.3.3.1.1.1">GPT-4 as compressor</span></span>
<span class="ltx_tr" id="S3.T3.1.1.4.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.3.3.1.2.1">to make concise</span></span>
<span class="ltx_tr" id="S3.T3.1.1.4.3.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.4.3.3.1.3.1">reasoning</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.4.3.4"></span><span class="ltx_text" id="S3.T3.1.1.4.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4"><span class="ltx_text" id="S3.T3.1.1.4.4.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.5"><span class="ltx_text" id="S3.T3.1.1.4.5.1" style="font-size:90%;">Llama-2-chat-{7B,13B}</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.5.1">
<span class="ltx_text" id="S3.T3.1.1.5.1.1" style="font-size:90%;">Distilling2-1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib99" title="">99</a><span class="ltx_text" id="S3.T3.1.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.5.2"><span class="ltx_text" id="S3.T3.1.1.5.2.1" style="font-size:90%;">OASST2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.5.3"><span class="ltx_text" id="S3.T3.1.1.5.3.1" style="font-size:90%;">Removing reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.5.4"><span class="ltx_text" id="S3.T3.1.1.5.4.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.5.5"><span class="ltx_text" id="S3.T3.1.1.5.5.1" style="font-size:90%;">Llama-2-70B-chat</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.6.1">
<span class="ltx_text" id="S3.T3.1.1.6.1.1" style="font-size:90%;">Token-Budget </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib32" title="">32</a><span class="ltx_text" id="S3.T3.1.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.2">
<span class="ltx_text" id="S3.T3.1.1.6.2.1"></span><span class="ltx_text" id="S3.T3.1.1.6.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.6.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.6.2.3.1">
<span class="ltx_tr" id="S3.T3.1.1.6.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.2.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T3.1.1.6.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.2.3.1.2.1">GSM8K-Z</span></span>
<span class="ltx_tr" id="S3.T3.1.1.6.2.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.2.3.1.3.1">MathBench</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.6.2.4"></span><span class="ltx_text" id="S3.T3.1.1.6.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.3">
<span class="ltx_text" id="S3.T3.1.1.6.3.1"></span><span class="ltx_text" id="S3.T3.1.1.6.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.6.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.6.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.6.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.3.3.1.1.1">Persuing an optimal</span></span>
<span class="ltx_tr" id="S3.T3.1.1.6.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.3.3.1.2.1">token budget for LLMs</span></span>
<span class="ltx_tr" id="S3.T3.1.1.6.3.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.3.3.1.3.1">to complete the reasoning</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.6.3.4"></span><span class="ltx_text" id="S3.T3.1.1.6.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.4"><span class="ltx_text" id="S3.T3.1.1.6.4.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.5"><span class="ltx_text" id="S3.T3.1.1.6.5.1" style="font-size:90%;">Llama-3.1-8B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.7.1">
<span class="ltx_text" id="S3.T3.1.1.7.1.1" style="font-size:90%;">CoT-Value </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib56" title="">56</a><span class="ltx_text" id="S3.T3.1.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.7.2">
<span class="ltx_text" id="S3.T3.1.1.7.2.1"></span><span class="ltx_text" id="S3.T3.1.1.7.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.7.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.7.2.3.1">
<span class="ltx_tr" id="S3.T3.1.1.7.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.2.3.1.1.1">GSM8K</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.2.3.1.2.1">PRM800k</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.7.2.4"></span><span class="ltx_text" id="S3.T3.1.1.7.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.7.3">
<span class="ltx_text" id="S3.T3.1.1.7.3.1"></span><span class="ltx_text" id="S3.T3.1.1.7.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.7.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.7.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.7.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.3.3.1.1.1">Merging parameters</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.3.3.1.2.1">of non-reasoning and</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.3.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.3.3.1.3.1">long reasoning LLMs</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.7.3.4"></span><span class="ltx_text" id="S3.T3.1.1.7.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.7.4"><span class="ltx_text" id="S3.T3.1.1.7.4.1" style="font-size:90%;">Progressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.7.5">
<span class="ltx_text" id="S3.T3.1.1.7.5.1"></span><span class="ltx_text" id="S3.T3.1.1.7.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.7.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.7.5.3.1">
<span class="ltx_tr" id="S3.T3.1.1.7.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.5.3.1.1.1">QwQ-32B-Preview</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.5.3.1.2.1">DeepSeek-R1-Distill-Llama-8B</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.5.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.5.3.1.3.1">LLaMA-3.1-8B</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.5.3.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.5.3.1.4.1">LLaMA-3.2-1B</span></span>
<span class="ltx_tr" id="S3.T3.1.1.7.5.3.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.7.5.3.1.5.1">Qwen32B-Instruct</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.7.5.4"></span><span class="ltx_text" id="S3.T3.1.1.7.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.1.1.8.1">
<span class="ltx_text" id="S3.T3.1.1.8.1.1" style="font-size:90%;">LearnSkip </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib50" title="">50</a><span class="ltx_text" id="S3.T3.1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.8.2">
<span class="ltx_text" id="S3.T3.1.1.8.2.1"></span><span class="ltx_text" id="S3.T3.1.1.8.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.8.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.8.2.3.1">
<span class="ltx_tr" id="S3.T3.1.1.8.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.2.3.1.1.1">Analog of Algebra</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.2.3.1.2.1">Multi-digit Addition</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.2.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.2.3.1.3.1">Directional Reasoning</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.8.2.4"></span><span class="ltx_text" id="S3.T3.1.1.8.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.8.3">
<span class="ltx_text" id="S3.T3.1.1.8.3.1"></span><span class="ltx_text" id="S3.T3.1.1.8.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.8.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.8.3.3.1">
<span class="ltx_tr" id="S3.T3.1.1.8.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.3.3.1.1.1">Stage 1: Manually skipping</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.3.3.1.2.1">Stage 2: Prompting LLMs</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.3.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.3.3.1.3.1">for shorter reasoning</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.8.3.4"></span><span class="ltx_text" id="S3.T3.1.1.8.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.8.4">
<span class="ltx_text" id="S3.T3.1.1.8.4.1"></span><span class="ltx_text" id="S3.T3.1.1.8.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.8.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.8.4.3.1">
<span class="ltx_tr" id="S3.T3.1.1.8.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.4.3.1.1.1">Standard &amp;</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.4.3.1.2.1">Progressive</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.8.4.4"></span><span class="ltx_text" id="S3.T3.1.1.8.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.8.5">
<span class="ltx_text" id="S3.T3.1.1.8.5.1"></span><span class="ltx_text" id="S3.T3.1.1.8.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T3.1.1.8.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.8.5.3.1">
<span class="ltx_tr" id="S3.T3.1.1.8.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.5.3.1.1.1">Llama-2-7B</span></span>
<span class="ltx_tr" id="S3.T3.1.1.8.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8.5.3.1.2.1">Phi-3-mini (3.8B)</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.8.5.4"></span><span class="ltx_text" id="S3.T3.1.1.8.5.5" style="font-size:90%;"></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares different methods that use supervised fine-tuning (SFT) with variable-length Chain-of-Thought (CoT) reasoning datasets to improve the efficiency of large language models (LLMs).  It details the source data used for training, the reasoning pruning techniques employed (if any), the specific SFT method used, and the resulting LLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of various approaches that utilize SFT with variable-length CoT reasoning datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1">
<tr class="ltx_tr" id="S4.T4.3.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.1.1.1">
<span class="ltx_p" id="S4.T4.3.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.1.1" style="font-size:70%;">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.1.2.1">
<span class="ltx_p" id="S4.T4.3.1.1.2.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.2.1.1.1" style="font-size:70%;">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.3.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.1.3.1">
<span class="ltx_p" id="S4.T4.3.1.1.3.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.3.1.1.1" style="font-size:70%;">Training-free?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.3.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.1.4.1">
<span class="ltx_p" id="S4.T4.3.1.1.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.4.1.1.1" style="font-size:70%;">Baseline and Its Drawbacks</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.3.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.1.5.1">
<span class="ltx_p" id="S4.T4.3.1.1.5.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.5.1.1.1" style="font-size:70%;">Method Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.2.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.2.1.1">
<span class="ltx_p" id="S4.T4.3.1.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T4.3.1.2.1.1.1.1" style="font-size:70%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T4.3.1.2.1.1.1.1.1" style="width:48.4pt;">
<span class="ltx_p" id="S4.T4.3.1.2.1.1.1.1.1.1">Reward-guided Efficient Reasoning</span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.2.2.1">
<span class="ltx_p" id="S4.T4.3.1.2.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.2.2.1.1.1" style="font-size:70%;">Speculative Rejection </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.2.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib76" title="">76</a><span class="ltx_text" id="S4.T4.3.1.2.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.2.3.1">
<span class="ltx_p" id="S4.T4.3.1.2.3.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.2.3.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.2.4.1">
<span class="ltx_p" id="S4.T4.3.1.2.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.2.4.1.1.1" style="font-size:70%;">Best-of-N (BoN) Decoding</span><span class="ltx_text" id="S4.T4.3.1.2.4.1.1.2" style="font-size:70%;">: underutilizes GPU memory and computational resources during the early stages, leading to lower final rewards.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.2.5.1">
<span class="ltx_p" id="S4.T4.3.1.2.5.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.2.5.1.1.1" style="font-size:70%;">Starts BoN with a large initial batch size and rejects unpromising sequences periodically, efficiently achieving higher rewards.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.3.1.1">
<span class="ltx_p" id="S4.T4.3.1.3.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.3.1.1.1.1" style="font-size:70%;">Reward-Guided Speculative Decoding (RSD) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.3.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib45" title="">45</a><span class="ltx_text" id="S4.T4.3.1.3.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.3.2.1">
<span class="ltx_p" id="S4.T4.3.1.3.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.3.2.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.3.3.1">
<span class="ltx_p" id="S4.T4.3.1.3.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.3.3.1.1.1" style="font-size:70%;">Speculative Decoding</span><span class="ltx_text" id="S4.T4.3.1.3.3.1.1.2" style="font-size:70%;">: strictly enforces unbiasedness, discarding useful intermediate outputs and leading to computational inefficiency.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.3.4.1">
<span class="ltx_p" id="S4.T4.3.1.3.4.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.3.4.1.1.1" style="font-size:70%;">A speculative decoding method that leverages a reward model (PRM) to selectively accept high-quality outputs from a lightweight draft model, reducing computation while preserving accuracy.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.4.1" rowspan="4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.4.1.1">
<span class="ltx_p" id="S4.T4.3.1.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T4.3.1.4.1.1.1.1" style="font-size:70%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T4.3.1.4.1.1.1.1.1" style="width:48.4pt;">
<span class="ltx_p" id="S4.T4.3.1.4.1.1.1.1.1.1">Confidence/ Certainty-based Adaptive Reasoning</span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.4.2.1">
<span class="ltx_p" id="S4.T4.3.1.4.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.4.2.1.1.1" style="font-size:70%;">Dynamic Parallel Tree Search </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.4.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib24" title="">24</a><span class="ltx_text" id="S4.T4.3.1.4.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.4.3.1">
<span class="ltx_p" id="S4.T4.3.1.4.3.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.4.3.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.4.4.1">
<span class="ltx_p" id="S4.T4.3.1.4.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.4.4.1.1.1" style="font-size:70%;">Tree-of-Thoughts:</span><span class="ltx_text" id="S4.T4.3.1.4.4.1.1.2" style="font-size:70%;"> difficult to parallelize due to frequent switching of reasoning focus, and inefficient because of redundant exploration of suboptimal solutions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.4.5.1">
<span class="ltx_p" id="S4.T4.3.1.4.5.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.4.5.1.1.1" style="font-size:70%;">Dynamically parallelizes node expansion through adaptive batching and implements a search-and-transition mechanism (including </span><span class="ltx_text ltx_font_italic" id="S4.T4.3.1.4.5.1.1.2" style="font-size:70%;">Early Stop</span><span class="ltx_text" id="S4.T4.3.1.4.5.1.1.3" style="font-size:70%;"> and </span><span class="ltx_text ltx_font_italic" id="S4.T4.3.1.4.5.1.1.4" style="font-size:70%;">Deep Seek</span><span class="ltx_text" id="S4.T4.3.1.4.5.1.1.5" style="font-size:70%;">) to prune unpromising paths early.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.5.1.1">
<span class="ltx_p" id="S4.T4.3.1.5.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.5.1.1.1.1" style="font-size:70%;">Dynasor (Certaindex-based Scheduling) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.5.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib28" title="">28</a><span class="ltx_text" id="S4.T4.3.1.5.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.5.2.1">
<span class="ltx_p" id="S4.T4.3.1.5.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.5.2.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.5.3.1">
<span class="ltx_p" id="S4.T4.3.1.5.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.5.3.1.1.1" style="font-size:70%;">Serving systems with uniform resource allocation</span><span class="ltx_text" id="S4.T4.3.1.5.3.1.1.2" style="font-size:70%;">: allocate compute uniformly, leading to inefficient resource usage and unmet latency targets</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.5.4.1">
<span class="ltx_p" id="S4.T4.3.1.5.4.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.5.4.1.1.1" style="font-size:70%;">Dynamically allocates compute for reasoning queries based on </span><span class="ltx_text ltx_font_italic" id="S4.T4.3.1.5.4.1.1.2" style="font-size:70%;">Certaindex</span><span class="ltx_text" id="S4.T4.3.1.5.4.1.1.3" style="font-size:70%;">, a statistical measure of reasoning progress, to maximize accuracy within resource constraints.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.6.1.1">
<span class="ltx_p" id="S4.T4.3.1.6.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.6.1.1.1.1" style="font-size:70%;">FastMCTS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.6.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib41" title="">41</a><span class="ltx_text" id="S4.T4.3.1.6.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.6.2.1">
<span class="ltx_p" id="S4.T4.3.1.6.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.6.2.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.6.3.1">
<span class="ltx_p" id="S4.T4.3.1.6.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.6.3.1.1.1" style="font-size:70%;">Rejection Sampling</span><span class="ltx_text" id="S4.T4.3.1.6.3.1.1.2" style="font-size:70%;">: inefficient, discards intermediate steps, and fails to balance problem difficulty</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.6.4.1">
<span class="ltx_p" id="S4.T4.3.1.6.4.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.6.4.1.1.1" style="font-size:70%;">An MCTS-inspired sampling strategy that efficiently generates high-quality multi-step reasoning data, providing step-level evaluation signals and balanced sampling across problem difficulties.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.7.1.1">
<span class="ltx_p" id="S4.T4.3.1.7.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.7.1.1.1.1" style="font-size:70%;">Length-filtered Vote </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.7.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib88" title="">88</a><span class="ltx_text" id="S4.T4.3.1.7.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.7.2.1">
<span class="ltx_p" id="S4.T4.3.1.7.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.7.2.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.7.3.1">
<span class="ltx_p" id="S4.T4.3.1.7.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.7.3.1.1.1" style="font-size:70%;">Majority Voting</span><span class="ltx_text" id="S4.T4.3.1.7.3.1.1.2" style="font-size:70%;">: ignores reasoning quality, includes suboptimal CoT lengths, and suffers from noisy predictions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.7.4.1">
<span class="ltx_p" id="S4.T4.3.1.7.4.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.7.4.1.1.1" style="font-size:70%;">A voting strategy that selects answers with the optimal CoT length by filtering out excessively short or long reasoning paths.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.8.1.1">
<span class="ltx_p" id="S4.T4.3.1.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T4.3.1.8.1.1.1.1" style="font-size:70%;">Consistency-based Selective Reasoning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.8.2.1">
<span class="ltx_p" id="S4.T4.3.1.8.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.8.2.1.1.1" style="font-size:70%;">Self-Truncation Best-of-N (ST-BoN) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.8.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib85" title="">85</a><span class="ltx_text" id="S4.T4.3.1.8.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.8.3.1">
<span class="ltx_p" id="S4.T4.3.1.8.3.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.8.3.1.1.1" style="font-size:70%;">Yes</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.8.4.1">
<span class="ltx_p" id="S4.T4.3.1.8.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.8.4.1.1.1" style="font-size:70%;">Best-of-N Sampling</span><span class="ltx_text" id="S4.T4.3.1.8.4.1.1.2" style="font-size:70%;">: fully generates all samples and relies on costly reward models</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.8.5.1">
<span class="ltx_p" id="S4.T4.3.1.8.5.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.8.5.1.1.1" style="font-size:70%;">Estimates the most promising sample early via internal embedding consistency, truncating inferior samples prematurely.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T4.3.1.9.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.9.1.1">
<span class="ltx_p" id="S4.T4.3.1.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T4.3.1.9.1.1.1.1" style="font-size:70%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T4.3.1.9.1.1.1.1.1" style="width:48.4pt;">
<span class="ltx_p" id="S4.T4.3.1.9.1.1.1.1.1.1">Summarization-based Dynamic Reasoning</span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.9.2.1">
<span class="ltx_p" id="S4.T4.3.1.9.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.9.2.1.1.1" style="font-size:70%;">LightThinker </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.9.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib101" title="">101</a><span class="ltx_text" id="S4.T4.3.1.9.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.9.3.1">
<span class="ltx_p" id="S4.T4.3.1.9.3.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.9.3.1.1.1" style="font-size:70%;">No</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.9.4.1">
<span class="ltx_p" id="S4.T4.3.1.9.4.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.9.4.1.1.1" style="font-size:70%;">Chain-of-Thought (CoT)</span><span class="ltx_text" id="S4.T4.3.1.9.4.1.1.2" style="font-size:70%;">: high memory and computational overhead due to the generation of an excessive number of tokens</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.3.1.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.9.5.1">
<span class="ltx_p" id="S4.T4.3.1.9.5.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.9.5.1.1.1" style="font-size:70%;">Trains LLMs to learn when and how to compress intermediate thoughts, condensing long reasoning chains into gist tokens, and uses a sparse-patterned attention mask during inference to enhance computational efficiency.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T4.3.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.10.1.1">
<span class="ltx_p" id="S4.T4.3.1.10.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T4.3.1.10.1.1.1.1" style="font-size:70%;">InftyThink </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.1.10.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib94" title="">94</a><span class="ltx_text" id="S4.T4.3.1.10.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T4.3.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.10.2.1">
<span class="ltx_p" id="S4.T4.3.1.10.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S4.T4.3.1.10.2.1.1.1" style="font-size:70%;">No</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T4.3.1.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.10.3.1">
<span class="ltx_p" id="S4.T4.3.1.10.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.10.3.1.1.1" style="font-size:70%;">Monolithic Reasoning</span><span class="ltx_text" id="S4.T4.3.1.10.3.1.1.2" style="font-size:70%;">: reasoning output is verbose, and can quickly exceed the context window limit of the LLM, resulting in poor performance</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T4.3.1.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.1.10.4.1">
<span class="ltx_p" id="S4.T4.3.1.10.4.1.1" style="width:113.8pt;"><span class="ltx_text" id="S4.T4.3.1.10.4.1.1.1" style="font-size:70%;">An iterative reasoning paradigm that interleaves reasoning steps with intermediate summarization, enabling unbounded reasoning depth without architectural modifications.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares various methods for dynamic reasoning during inference, focusing on their efficiency in terms of test-time computation.  It categorizes methods by whether they are training-free, the specific criteria used to guide reasoning (e.g., reward, confidence, consistency), and provides a brief description of each method along with its advantages and disadvantages regarding computational efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of different methods of dynamic reasoning paradigm of test time compute during inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.10">
<tr class="ltx_tr" id="S5.T5.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T5.10.11.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.10.11.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S5.T5.10.11.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.11.2.1">
<span class="ltx_p" id="S5.T5.10.11.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.11.2.1.1.1" style="font-size:90%;">Prompt</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.12.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S5.T5.10.12.1.1" style="font-size:90%;">TALE-EP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.10.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib32" title="">32</a><span class="ltx_text" id="S5.T5.10.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T5.10.12.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.12.2.1">
<span class="ltx_p" id="S5.T5.10.12.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.12.2.1.1.1" style="font-size:90%;">Budget Estimation</span><span class="ltx_text" id="S5.T5.10.12.2.1.1.2" style="font-size:90%;">: (…) Task: Analyze the given question and estimate the minimum number of tokens required to generate a complete and accurate response. Please give the response by strictly following this format: [[budget]], for example, Budget: [[12]].</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.13">
<td class="ltx_td" id="S5.T5.10.13.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.13.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.13.2.1">
<span class="ltx_p" id="S5.T5.10.13.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.13.2.1.1.1" style="font-size:90%;">Token-budget-aware CoT</span><span class="ltx_text" id="S5.T5.10.13.2.1.1.2" style="font-size:90%;">: Please answer the above question. Let’s think step by step and use less than </span><span class="ltx_text ltx_font_typewriter" id="S5.T5.10.13.2.1.1.3" style="font-size:90%;">&lt;Token-Budget&gt;</span><span class="ltx_text" id="S5.T5.10.13.2.1.1.4" style="font-size:90%;"> tokens.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.14.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S5.T5.10.14.1.1" style="font-size:90%;">CoD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.10.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib92" title="">92</a><span class="ltx_text" id="S5.T5.10.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T5.10.14.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.14.2.1">
<span class="ltx_p" id="S5.T5.10.14.2.1.1"><span class="ltx_text" id="S5.T5.10.14.2.1.1.1" style="font-size:90%;">Think step by step, but only keep a minimum draft for each thinking step, with 5 words at most. Return the answer at the end of the response after a separator </span><span class="ltx_text ltx_font_typewriter" id="S5.T5.10.14.2.1.1.2" style="font-size:90%;">####</span><span class="ltx_text" id="S5.T5.10.14.2.1.1.3" style="font-size:90%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.15.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S5.T5.10.15.1.1" style="font-size:90%;">CCoT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.10.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib65" title="">65</a><span class="ltx_text" id="S5.T5.10.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T5.10.15.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.15.2.1">
<span class="ltx_p" id="S5.T5.10.15.2.1.1"><span class="ltx_text" id="S5.T5.10.15.2.1.1.1" style="font-size:90%;">Be concise.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.16.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S5.T5.10.16.1.1" style="font-size:90%;">Token Complexity </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.10.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16419v1#bib.bib40" title="">40</a><span class="ltx_text" id="S5.T5.10.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T5.10.16.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.16.2.1">
<span class="ltx_p" id="S5.T5.10.16.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.16.2.1.1.1" style="font-size:90%;">BulletPoints</span><span class="ltx_text" id="S5.T5.10.16.2.1.1.2" style="font-size:90%;"> (…) only use bullet points.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.17">
<td class="ltx_td" id="S5.T5.10.17.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.17.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.17.2.1">
<span class="ltx_p" id="S5.T5.10.17.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.17.2.1.1.1" style="font-size:90%;">OnlyNumbers</span><span class="ltx_text" id="S5.T5.10.17.2.1.1.2" style="font-size:90%;"> (…) only use numbers or equations.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.18">
<td class="ltx_td" id="S5.T5.10.18.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.18.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.18.2.1">
<span class="ltx_p" id="S5.T5.10.18.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.18.2.1.1.1" style="font-size:90%;">NoSpaces</span><span class="ltx_text" id="S5.T5.10.18.2.1.1.2" style="font-size:90%;"> (…) do not use any spaces or line breaks.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.19">
<td class="ltx_td" id="S5.T5.10.19.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.19.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.19.2.1">
<span class="ltx_p" id="S5.T5.10.19.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.19.2.1.1.1" style="font-size:90%;">NoProperGrammar</span><span class="ltx_text" id="S5.T5.10.19.2.1.1.2" style="font-size:90%;"> (…) do not use proper grammar.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.20">
<td class="ltx_td" id="S5.T5.10.20.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.20.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.20.2.1">
<span class="ltx_p" id="S5.T5.10.20.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.20.2.1.1.1" style="font-size:90%;">AbbreviateWords</span><span class="ltx_text" id="S5.T5.10.20.2.1.1.2" style="font-size:90%;"> (…) abbreviate words as much as possible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<td class="ltx_td" id="S5.T5.2.2.3" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.2.2.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.2.2.2">
<span class="ltx_p" id="S5.T5.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.2.2.1" style="font-size:90%;">WordLimit(k)</span><span class="ltx_text" id="S5.T5.2.2.2.2.2.2" style="font-size:90%;"> (…) use at most </span><math alttext="k" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.1.m1.1a"><mi id="S5.T5.1.1.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.1.1.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S5.T5.2.2.2.2.2.3" style="font-size:90%;"> words. </span><math alttext="k\in\{1,\dots,100\}" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.2.m2.3"><semantics id="S5.T5.2.2.2.2.2.m2.3a"><mrow id="S5.T5.2.2.2.2.2.m2.3.4" xref="S5.T5.2.2.2.2.2.m2.3.4.cmml"><mi id="S5.T5.2.2.2.2.2.m2.3.4.2" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.2.cmml">k</mi><mo id="S5.T5.2.2.2.2.2.m2.3.4.1" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.1.cmml">∈</mo><mrow id="S5.T5.2.2.2.2.2.m2.3.4.3.2" xref="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml"><mo id="S5.T5.2.2.2.2.2.m2.3.4.3.2.1" maxsize="90%" minsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml">{</mo><mn id="S5.T5.2.2.2.2.2.m2.1.1" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.1.1.cmml">1</mn><mo id="S5.T5.2.2.2.2.2.m2.3.4.3.2.2" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml">,</mo><mi id="S5.T5.2.2.2.2.2.m2.2.2" mathsize="90%" mathvariant="normal" xref="S5.T5.2.2.2.2.2.m2.2.2.cmml">…</mi><mo id="S5.T5.2.2.2.2.2.m2.3.4.3.2.3" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml">,</mo><mn id="S5.T5.2.2.2.2.2.m2.3.3" mathsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.3.cmml">100</mn><mo id="S5.T5.2.2.2.2.2.m2.3.4.3.2.4" maxsize="90%" minsize="90%" xref="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.2.m2.3b"><apply id="S5.T5.2.2.2.2.2.m2.3.4.cmml" xref="S5.T5.2.2.2.2.2.m2.3.4"><in id="S5.T5.2.2.2.2.2.m2.3.4.1.cmml" xref="S5.T5.2.2.2.2.2.m2.3.4.1"></in><ci id="S5.T5.2.2.2.2.2.m2.3.4.2.cmml" xref="S5.T5.2.2.2.2.2.m2.3.4.2">𝑘</ci><set id="S5.T5.2.2.2.2.2.m2.3.4.3.1.cmml" xref="S5.T5.2.2.2.2.2.m2.3.4.3.2"><cn id="S5.T5.2.2.2.2.2.m2.1.1.cmml" type="integer" xref="S5.T5.2.2.2.2.2.m2.1.1">1</cn><ci id="S5.T5.2.2.2.2.2.m2.2.2.cmml" xref="S5.T5.2.2.2.2.2.m2.2.2">…</ci><cn id="S5.T5.2.2.2.2.2.m2.3.3.cmml" type="integer" xref="S5.T5.2.2.2.2.2.m2.3.3">100</cn></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.2.m2.3c">k\in\{1,\dots,100\}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.2.m2.3d">italic_k ∈ { 1 , … , 100 }</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4">
<td class="ltx_td" id="S5.T5.4.4.3" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.4.4.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.4.4.2.2">
<span class="ltx_p" id="S5.T5.4.4.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.4.4.2.2.2.1" style="font-size:90%;">CharLimit(k)</span><span class="ltx_text" id="S5.T5.4.4.2.2.2.2" style="font-size:90%;"> (…) use at most </span><math alttext="k" class="ltx_Math" display="inline" id="S5.T5.3.3.1.1.1.m1.1"><semantics id="S5.T5.3.3.1.1.1.m1.1a"><mi id="S5.T5.3.3.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.3.3.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.1.1.1.m1.1b"><ci id="S5.T5.3.3.1.1.1.m1.1.1.cmml" xref="S5.T5.3.3.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S5.T5.4.4.2.2.2.3" style="font-size:90%;"> letters. </span><math alttext="k\in\{1,\dots,500\}" class="ltx_Math" display="inline" id="S5.T5.4.4.2.2.2.m2.3"><semantics id="S5.T5.4.4.2.2.2.m2.3a"><mrow id="S5.T5.4.4.2.2.2.m2.3.4" xref="S5.T5.4.4.2.2.2.m2.3.4.cmml"><mi id="S5.T5.4.4.2.2.2.m2.3.4.2" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.2.cmml">k</mi><mo id="S5.T5.4.4.2.2.2.m2.3.4.1" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.1.cmml">∈</mo><mrow id="S5.T5.4.4.2.2.2.m2.3.4.3.2" xref="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml"><mo id="S5.T5.4.4.2.2.2.m2.3.4.3.2.1" maxsize="90%" minsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml">{</mo><mn id="S5.T5.4.4.2.2.2.m2.1.1" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.1.1.cmml">1</mn><mo id="S5.T5.4.4.2.2.2.m2.3.4.3.2.2" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml">,</mo><mi id="S5.T5.4.4.2.2.2.m2.2.2" mathsize="90%" mathvariant="normal" xref="S5.T5.4.4.2.2.2.m2.2.2.cmml">…</mi><mo id="S5.T5.4.4.2.2.2.m2.3.4.3.2.3" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml">,</mo><mn id="S5.T5.4.4.2.2.2.m2.3.3" mathsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.3.cmml">500</mn><mo id="S5.T5.4.4.2.2.2.m2.3.4.3.2.4" maxsize="90%" minsize="90%" xref="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.2.2.2.m2.3b"><apply id="S5.T5.4.4.2.2.2.m2.3.4.cmml" xref="S5.T5.4.4.2.2.2.m2.3.4"><in id="S5.T5.4.4.2.2.2.m2.3.4.1.cmml" xref="S5.T5.4.4.2.2.2.m2.3.4.1"></in><ci id="S5.T5.4.4.2.2.2.m2.3.4.2.cmml" xref="S5.T5.4.4.2.2.2.m2.3.4.2">𝑘</ci><set id="S5.T5.4.4.2.2.2.m2.3.4.3.1.cmml" xref="S5.T5.4.4.2.2.2.m2.3.4.3.2"><cn id="S5.T5.4.4.2.2.2.m2.1.1.cmml" type="integer" xref="S5.T5.4.4.2.2.2.m2.1.1">1</cn><ci id="S5.T5.4.4.2.2.2.m2.2.2.cmml" xref="S5.T5.4.4.2.2.2.m2.2.2">…</ci><cn id="S5.T5.4.4.2.2.2.m2.3.3.cmml" type="integer" xref="S5.T5.4.4.2.2.2.m2.3.3">500</cn></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.2.2.2.m2.3c">k\in\{1,\dots,500\}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.2.2.2.m2.3d">italic_k ∈ { 1 , … , 500 }</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6">
<td class="ltx_td" id="S5.T5.6.6.3" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.6.6.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.6.6.2.2">
<span class="ltx_p" id="S5.T5.6.6.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.6.6.2.2.2.1" style="font-size:90%;">TokenLimit(k)</span><span class="ltx_text" id="S5.T5.6.6.2.2.2.2" style="font-size:90%;"> (…) use at most </span><math alttext="k" class="ltx_Math" display="inline" id="S5.T5.5.5.1.1.1.m1.1"><semantics id="S5.T5.5.5.1.1.1.m1.1a"><mi id="S5.T5.5.5.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.5.5.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.1.1.1.m1.1b"><ci id="S5.T5.5.5.1.1.1.m1.1.1.cmml" xref="S5.T5.5.5.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S5.T5.6.6.2.2.2.3" style="font-size:90%;"> tokens. </span><math alttext="k\in\{1,\dots,500\}" class="ltx_Math" display="inline" id="S5.T5.6.6.2.2.2.m2.3"><semantics id="S5.T5.6.6.2.2.2.m2.3a"><mrow id="S5.T5.6.6.2.2.2.m2.3.4" xref="S5.T5.6.6.2.2.2.m2.3.4.cmml"><mi id="S5.T5.6.6.2.2.2.m2.3.4.2" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.2.cmml">k</mi><mo id="S5.T5.6.6.2.2.2.m2.3.4.1" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.1.cmml">∈</mo><mrow id="S5.T5.6.6.2.2.2.m2.3.4.3.2" xref="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml"><mo id="S5.T5.6.6.2.2.2.m2.3.4.3.2.1" maxsize="90%" minsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml">{</mo><mn id="S5.T5.6.6.2.2.2.m2.1.1" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.1.1.cmml">1</mn><mo id="S5.T5.6.6.2.2.2.m2.3.4.3.2.2" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml">,</mo><mi id="S5.T5.6.6.2.2.2.m2.2.2" mathsize="90%" mathvariant="normal" xref="S5.T5.6.6.2.2.2.m2.2.2.cmml">…</mi><mo id="S5.T5.6.6.2.2.2.m2.3.4.3.2.3" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml">,</mo><mn id="S5.T5.6.6.2.2.2.m2.3.3" mathsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.3.cmml">500</mn><mo id="S5.T5.6.6.2.2.2.m2.3.4.3.2.4" maxsize="90%" minsize="90%" xref="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.2.2.2.m2.3b"><apply id="S5.T5.6.6.2.2.2.m2.3.4.cmml" xref="S5.T5.6.6.2.2.2.m2.3.4"><in id="S5.T5.6.6.2.2.2.m2.3.4.1.cmml" xref="S5.T5.6.6.2.2.2.m2.3.4.1"></in><ci id="S5.T5.6.6.2.2.2.m2.3.4.2.cmml" xref="S5.T5.6.6.2.2.2.m2.3.4.2">𝑘</ci><set id="S5.T5.6.6.2.2.2.m2.3.4.3.1.cmml" xref="S5.T5.6.6.2.2.2.m2.3.4.3.2"><cn id="S5.T5.6.6.2.2.2.m2.1.1.cmml" type="integer" xref="S5.T5.6.6.2.2.2.m2.1.1">1</cn><ci id="S5.T5.6.6.2.2.2.m2.2.2.cmml" xref="S5.T5.6.6.2.2.2.m2.2.2">…</ci><cn id="S5.T5.6.6.2.2.2.m2.3.3.cmml" type="integer" xref="S5.T5.6.6.2.2.2.m2.3.3">500</cn></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.2.2.2.m2.3c">k\in\{1,\dots,500\}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.2.2.2.m2.3d">italic_k ∈ { 1 , … , 500 }</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8">
<td class="ltx_td" id="S5.T5.8.8.3" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.8.8.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.8.8.2.2">
<span class="ltx_p" id="S5.T5.8.8.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.2.2.2.1" style="font-size:90%;">StepLimit(k)</span><span class="ltx_text" id="S5.T5.8.8.2.2.2.2" style="font-size:90%;"> (…) use at most </span><math alttext="k" class="ltx_Math" display="inline" id="S5.T5.7.7.1.1.1.m1.1"><semantics id="S5.T5.7.7.1.1.1.m1.1a"><mi id="S5.T5.7.7.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.7.7.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.1.1.1.m1.1b"><ci id="S5.T5.7.7.1.1.1.m1.1.1.cmml" xref="S5.T5.7.7.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S5.T5.8.8.2.2.2.3" style="font-size:90%;"> steps. </span><math alttext="k\in\{1,\dots,5\}" class="ltx_Math" display="inline" id="S5.T5.8.8.2.2.2.m2.3"><semantics id="S5.T5.8.8.2.2.2.m2.3a"><mrow id="S5.T5.8.8.2.2.2.m2.3.4" xref="S5.T5.8.8.2.2.2.m2.3.4.cmml"><mi id="S5.T5.8.8.2.2.2.m2.3.4.2" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.2.cmml">k</mi><mo id="S5.T5.8.8.2.2.2.m2.3.4.1" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.1.cmml">∈</mo><mrow id="S5.T5.8.8.2.2.2.m2.3.4.3.2" xref="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml"><mo id="S5.T5.8.8.2.2.2.m2.3.4.3.2.1" maxsize="90%" minsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml">{</mo><mn id="S5.T5.8.8.2.2.2.m2.1.1" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.1.1.cmml">1</mn><mo id="S5.T5.8.8.2.2.2.m2.3.4.3.2.2" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml">,</mo><mi id="S5.T5.8.8.2.2.2.m2.2.2" mathsize="90%" mathvariant="normal" xref="S5.T5.8.8.2.2.2.m2.2.2.cmml">…</mi><mo id="S5.T5.8.8.2.2.2.m2.3.4.3.2.3" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml">,</mo><mn id="S5.T5.8.8.2.2.2.m2.3.3" mathsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.3.cmml">5</mn><mo id="S5.T5.8.8.2.2.2.m2.3.4.3.2.4" maxsize="90%" minsize="90%" xref="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.2.2.2.m2.3b"><apply id="S5.T5.8.8.2.2.2.m2.3.4.cmml" xref="S5.T5.8.8.2.2.2.m2.3.4"><in id="S5.T5.8.8.2.2.2.m2.3.4.1.cmml" xref="S5.T5.8.8.2.2.2.m2.3.4.1"></in><ci id="S5.T5.8.8.2.2.2.m2.3.4.2.cmml" xref="S5.T5.8.8.2.2.2.m2.3.4.2">𝑘</ci><set id="S5.T5.8.8.2.2.2.m2.3.4.3.1.cmml" xref="S5.T5.8.8.2.2.2.m2.3.4.3.2"><cn id="S5.T5.8.8.2.2.2.m2.1.1.cmml" type="integer" xref="S5.T5.8.8.2.2.2.m2.1.1">1</cn><ci id="S5.T5.8.8.2.2.2.m2.2.2.cmml" xref="S5.T5.8.8.2.2.2.m2.2.2">…</ci><cn id="S5.T5.8.8.2.2.2.m2.3.3.cmml" type="integer" xref="S5.T5.8.8.2.2.2.m2.3.3">5</cn></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.2.2.2.m2.3c">k\in\{1,\dots,5\}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.2.2.2.m2.3d">italic_k ∈ { 1 , … , 5 }</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.21">
<td class="ltx_td" id="S5.T5.10.21.1" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify" id="S5.T5.10.21.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.21.2.1">
<span class="ltx_p" id="S5.T5.10.21.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.21.2.1.1.1" style="font-size:90%;">ChineseCoT</span><span class="ltx_text" id="S5.T5.10.21.2.1.1.2" style="font-size:90%;"> (…) Respond in Chinese</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.10">
<td class="ltx_td ltx_border_bb" id="S5.T5.10.10.3" style="padding:0.9pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S5.T5.10.10.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.10.2.2">
<span class="ltx_p" id="S5.T5.10.10.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.2.2.2.1" style="font-size:90%;">ChineseCoT(k)</span><span class="ltx_text" id="S5.T5.10.10.2.2.2.2" style="font-size:90%;"> (…) Use at most </span><math alttext="k" class="ltx_Math" display="inline" id="S5.T5.9.9.1.1.1.m1.1"><semantics id="S5.T5.9.9.1.1.1.m1.1a"><mi id="S5.T5.9.9.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.9.9.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T5.9.9.1.1.1.m1.1b"><ci id="S5.T5.9.9.1.1.1.m1.1.1.cmml" xref="S5.T5.9.9.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.9.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.9.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S5.T5.10.10.2.2.2.3" style="font-size:90%;"> Chinese characters. </span><math alttext="k\in\{1,\dots,500\}" class="ltx_Math" display="inline" id="S5.T5.10.10.2.2.2.m2.3"><semantics id="S5.T5.10.10.2.2.2.m2.3a"><mrow id="S5.T5.10.10.2.2.2.m2.3.4" xref="S5.T5.10.10.2.2.2.m2.3.4.cmml"><mi id="S5.T5.10.10.2.2.2.m2.3.4.2" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.2.cmml">k</mi><mo id="S5.T5.10.10.2.2.2.m2.3.4.1" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.1.cmml">∈</mo><mrow id="S5.T5.10.10.2.2.2.m2.3.4.3.2" xref="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml"><mo id="S5.T5.10.10.2.2.2.m2.3.4.3.2.1" maxsize="90%" minsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml">{</mo><mn id="S5.T5.10.10.2.2.2.m2.1.1" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.1.1.cmml">1</mn><mo id="S5.T5.10.10.2.2.2.m2.3.4.3.2.2" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml">,</mo><mi id="S5.T5.10.10.2.2.2.m2.2.2" mathsize="90%" mathvariant="normal" xref="S5.T5.10.10.2.2.2.m2.2.2.cmml">…</mi><mo id="S5.T5.10.10.2.2.2.m2.3.4.3.2.3" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml">,</mo><mn id="S5.T5.10.10.2.2.2.m2.3.3" mathsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.3.cmml">500</mn><mo id="S5.T5.10.10.2.2.2.m2.3.4.3.2.4" maxsize="90%" minsize="90%" xref="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml">}</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.10.10.2.2.2.m2.3b"><apply id="S5.T5.10.10.2.2.2.m2.3.4.cmml" xref="S5.T5.10.10.2.2.2.m2.3.4"><in id="S5.T5.10.10.2.2.2.m2.3.4.1.cmml" xref="S5.T5.10.10.2.2.2.m2.3.4.1"></in><ci id="S5.T5.10.10.2.2.2.m2.3.4.2.cmml" xref="S5.T5.10.10.2.2.2.m2.3.4.2">𝑘</ci><set id="S5.T5.10.10.2.2.2.m2.3.4.3.1.cmml" xref="S5.T5.10.10.2.2.2.m2.3.4.3.2"><cn id="S5.T5.10.10.2.2.2.m2.1.1.cmml" type="integer" xref="S5.T5.10.10.2.2.2.m2.1.1">1</cn><ci id="S5.T5.10.10.2.2.2.m2.2.2.cmml" xref="S5.T5.10.10.2.2.2.m2.2.2">…</ci><cn id="S5.T5.10.10.2.2.2.m2.3.3.cmml" type="integer" xref="S5.T5.10.10.2.2.2.m2.3.3">500</cn></set></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.10.10.2.2.2.m2.3c">k\in\{1,\dots,500\}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.10.10.2.2.2.m2.3d">italic_k ∈ { 1 , … , 500 }</annotation></semantics></math></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents various prompt engineering techniques to guide Large Language Models (LLMs) towards generating concise reasoning outputs.  It details specific prompt modifications designed to control the length and detail of the reasoning process while maintaining accuracy.  Each prompt type is listed along with a short explanation of its approach to concise reasoning.
> <details>
> <summary>read the caption</summary>
> Table 5: A summary of prompts used with reasoning models to generate concise reasoning outputs. For further details, refer to Section 5.1.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16419/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16419/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}