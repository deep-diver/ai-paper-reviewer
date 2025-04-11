---
title: "T1: Tool-integrated Self-verification for Test-time Compute Scaling in Small Language Models"
summary: "Tool-integrated self-verification boosts test-time compute scaling in small language models, outperforming larger models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 KRAFTON",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04718 {{< /keyword >}}
{{< keyword icon="writer" >}} Minki Kang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04718" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04718" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04718/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Test-time compute scaling improves sLM performance, but self-verification remains underexplored. This paper addresses this gap by investigating if sLMs can reliably self-verify. Results show sLMs struggle with tasks requiring memorization, like numerical calculations, even with knowledge distillation, highlighting limitations due to limited capacity.** The key question is: Can sLMs reliably self-verify for test-time scaling? This challenge motivates a search for efficient verification methods that don't rely on large verifiers. 



To address this, the authors introduce **Tool-integrated self-verification (T1), delegating memory-intensive verification steps to external tools like code interpreters.** Theoretical analysis shows T1 reduces memorization needs and enhances scaling. Experiments on MATH and MMLU-Pro show that a Llama-3.2 1B model with T1 outperforms larger models, proving T1 effectively improves sLM self-verification abilities. T1 integrates well with existing verification techniques to reach better performances.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Tool integration reduces memorization demands in sLMs, improving test-time scaling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Tool-integrated self-verification outperforms larger models on math and knowledge-intensive tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method is compatible with current verification methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach that significantly enhances the performance of small language models by integrating external tools. This innovative method promises more efficient and effective AI solutions, driving progress in resource-constrained applications and inspiring new research in tool-augmented language models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04718/x1.png)

> 🔼 This figure demonstrates how small language models (SLMs) struggle with complex reasoning tasks due to their limited capacity.  Panel (a) illustrates an example calculation where an SLM fails to reliably verify the result. However, when an external tool such as a code interpreter is used, the SLM significantly improves its verification accuracy. Panel (b) shows an experiment on the Llama 1B model, confirming that tool integration effectively mitigates the drop in performance as the complexity of the calculation increases.
> <details>
> <summary>read the caption</summary>
> (a) Concept figure
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T1.4.5.1.1"><span class="ltx_text ltx_font_bold" id="A4.T1.4.5.1.1.1">Hyperparameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T1.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A4.T1.4.5.1.2.1">Verifier</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T1.4.5.1.3"><span class="ltx_text ltx_font_bold" id="A4.T1.4.5.1.3.1">PRM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T1.4.5.1.4"><span class="ltx_text ltx_font_bold" id="A4.T1.4.5.1.4.1">ToolV</span></td>
</tr>
<tr class="ltx_tr" id="A4.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T1.3.3.4">Learning rate</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T1.1.1.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A4.T1.1.1.1.m1.1"><semantics id="A4.T1.1.1.1.m1.1a"><mrow id="A4.T1.1.1.1.m1.1.1" xref="A4.T1.1.1.1.m1.1.1.cmml"><mn id="A4.T1.1.1.1.m1.1.1.2" xref="A4.T1.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A4.T1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A4.T1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A4.T1.1.1.1.m1.1.1.3" xref="A4.T1.1.1.1.m1.1.1.3.cmml"><mn id="A4.T1.1.1.1.m1.1.1.3.2" xref="A4.T1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A4.T1.1.1.1.m1.1.1.3.3" xref="A4.T1.1.1.1.m1.1.1.3.3.cmml"><mo id="A4.T1.1.1.1.m1.1.1.3.3a" xref="A4.T1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A4.T1.1.1.1.m1.1.1.3.3.2" xref="A4.T1.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.1.1.1.m1.1b"><apply id="A4.T1.1.1.1.m1.1.1.cmml" xref="A4.T1.1.1.1.m1.1.1"><times id="A4.T1.1.1.1.m1.1.1.1.cmml" xref="A4.T1.1.1.1.m1.1.1.1"></times><cn id="A4.T1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A4.T1.1.1.1.m1.1.1.2">1</cn><apply id="A4.T1.1.1.1.m1.1.1.3.cmml" xref="A4.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T1.1.1.1.m1.1.1.3.1.cmml" xref="A4.T1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A4.T1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T1.1.1.1.m1.1.1.3.2">10</cn><apply id="A4.T1.1.1.1.m1.1.1.3.3.cmml" xref="A4.T1.1.1.1.m1.1.1.3.3"><minus id="A4.T1.1.1.1.m1.1.1.3.3.1.cmml" xref="A4.T1.1.1.1.m1.1.1.3.3"></minus><cn id="A4.T1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T1.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.1.1.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A4.T1.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T1.2.2.2"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A4.T1.2.2.2.m1.1"><semantics id="A4.T1.2.2.2.m1.1a"><mrow id="A4.T1.2.2.2.m1.1.1" xref="A4.T1.2.2.2.m1.1.1.cmml"><mn id="A4.T1.2.2.2.m1.1.1.2" xref="A4.T1.2.2.2.m1.1.1.2.cmml">1</mn><mo id="A4.T1.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A4.T1.2.2.2.m1.1.1.1.cmml">×</mo><msup id="A4.T1.2.2.2.m1.1.1.3" xref="A4.T1.2.2.2.m1.1.1.3.cmml"><mn id="A4.T1.2.2.2.m1.1.1.3.2" xref="A4.T1.2.2.2.m1.1.1.3.2.cmml">10</mn><mrow id="A4.T1.2.2.2.m1.1.1.3.3" xref="A4.T1.2.2.2.m1.1.1.3.3.cmml"><mo id="A4.T1.2.2.2.m1.1.1.3.3a" xref="A4.T1.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="A4.T1.2.2.2.m1.1.1.3.3.2" xref="A4.T1.2.2.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.2.2.2.m1.1b"><apply id="A4.T1.2.2.2.m1.1.1.cmml" xref="A4.T1.2.2.2.m1.1.1"><times id="A4.T1.2.2.2.m1.1.1.1.cmml" xref="A4.T1.2.2.2.m1.1.1.1"></times><cn id="A4.T1.2.2.2.m1.1.1.2.cmml" type="integer" xref="A4.T1.2.2.2.m1.1.1.2">1</cn><apply id="A4.T1.2.2.2.m1.1.1.3.cmml" xref="A4.T1.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T1.2.2.2.m1.1.1.3.1.cmml" xref="A4.T1.2.2.2.m1.1.1.3">superscript</csymbol><cn id="A4.T1.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="A4.T1.2.2.2.m1.1.1.3.2">10</cn><apply id="A4.T1.2.2.2.m1.1.1.3.3.cmml" xref="A4.T1.2.2.2.m1.1.1.3.3"><minus id="A4.T1.2.2.2.m1.1.1.3.3.1.cmml" xref="A4.T1.2.2.2.m1.1.1.3.3"></minus><cn id="A4.T1.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T1.2.2.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.2.2.2.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A4.T1.2.2.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T1.3.3.3"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A4.T1.3.3.3.m1.1"><semantics id="A4.T1.3.3.3.m1.1a"><mrow id="A4.T1.3.3.3.m1.1.1" xref="A4.T1.3.3.3.m1.1.1.cmml"><mn id="A4.T1.3.3.3.m1.1.1.2" xref="A4.T1.3.3.3.m1.1.1.2.cmml">1</mn><mo id="A4.T1.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A4.T1.3.3.3.m1.1.1.1.cmml">×</mo><msup id="A4.T1.3.3.3.m1.1.1.3" xref="A4.T1.3.3.3.m1.1.1.3.cmml"><mn id="A4.T1.3.3.3.m1.1.1.3.2" xref="A4.T1.3.3.3.m1.1.1.3.2.cmml">10</mn><mrow id="A4.T1.3.3.3.m1.1.1.3.3" xref="A4.T1.3.3.3.m1.1.1.3.3.cmml"><mo id="A4.T1.3.3.3.m1.1.1.3.3a" xref="A4.T1.3.3.3.m1.1.1.3.3.cmml">−</mo><mn id="A4.T1.3.3.3.m1.1.1.3.3.2" xref="A4.T1.3.3.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.3.3.3.m1.1b"><apply id="A4.T1.3.3.3.m1.1.1.cmml" xref="A4.T1.3.3.3.m1.1.1"><times id="A4.T1.3.3.3.m1.1.1.1.cmml" xref="A4.T1.3.3.3.m1.1.1.1"></times><cn id="A4.T1.3.3.3.m1.1.1.2.cmml" type="integer" xref="A4.T1.3.3.3.m1.1.1.2">1</cn><apply id="A4.T1.3.3.3.m1.1.1.3.cmml" xref="A4.T1.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T1.3.3.3.m1.1.1.3.1.cmml" xref="A4.T1.3.3.3.m1.1.1.3">superscript</csymbol><cn id="A4.T1.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="A4.T1.3.3.3.m1.1.1.3.2">10</cn><apply id="A4.T1.3.3.3.m1.1.1.3.3.cmml" xref="A4.T1.3.3.3.m1.1.1.3.3"><minus id="A4.T1.3.3.3.m1.1.1.3.3.1.cmml" xref="A4.T1.3.3.3.m1.1.1.3.3"></minus><cn id="A4.T1.3.3.3.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T1.3.3.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.3.3.3.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A4.T1.3.3.3.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.6.2.1">Batch size</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.6.2.2">16</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.6.2.3">16</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.6.2.4">16</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.7.3.1">Max length</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.7.3.2">2048</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.7.3.3">2048</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.7.3.4">2048</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.8.4.1">LoRA rank</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.8.4.2">64</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.8.4.3">-</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.8.4.4">64</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.4.1">LoRA <math alttext="\alpha" class="ltx_Math" display="inline" id="A4.T1.4.4.1.m1.1"><semantics id="A4.T1.4.4.1.m1.1a"><mi id="A4.T1.4.4.1.m1.1.1" xref="A4.T1.4.4.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A4.T1.4.4.1.m1.1b"><ci id="A4.T1.4.4.1.m1.1.1.cmml" xref="A4.T1.4.4.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.4.4.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A4.T1.4.4.1.m1.1d">italic_α</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.4.2">128</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.4.3">-</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.4.4">128</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.9.5.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.9.5.2">AdamW</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.9.5.3">AdamW</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.9.5.4">AdamW</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T1.4.10.6.1">Training epochs</th>
<td class="ltx_td ltx_align_center" id="A4.T1.4.10.6.2">1</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.10.6.3">3</td>
<td class="ltx_td ltx_align_center" id="A4.T1.4.10.6.4">3</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T1.4.11.7.1">Scheduler</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T1.4.11.7.2">Linear</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T1.4.11.7.3">Linear</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T1.4.11.7.4">Linear</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters employed during the fine-tuning process of small language models (sLMs) for three distinct components: the verifier, PRM (Process Reward Model), and ToolV (Tool-based verifier).  It lists the specific hyperparameter values used for each component, providing a comprehensive overview of the training configuration for each model used in the experiments.
> <details>
> <summary>read the caption</summary>
> Table 1: Hyperparameters used in fine-tuning sLM for each component.
> </details>





### In-depth insights


#### Tool Integration
Tool integration in language models (LMs) represents a significant advancement, enabling them to perform tasks beyond their inherent capabilities. By leveraging external tools like code interpreters, search engines, or specialized APIs, LMs can access real-time information, perform complex calculations, and interact with external systems. This integration addresses limitations such as memorization and computational constraints, particularly for smaller LMs (sLMs). **Tool-augmented LMs** can tackle tasks requiring up-to-date knowledge or precise calculations, enhancing their accuracy and reliability. The effectiveness hinges on the LM's ability to formulate appropriate tool queries, interpret results, and integrate them into its reasoning process. **Careful tool selection and design of interaction protocols** are crucial. Tool integration expands the applicability of LMs, making them valuable assets in various domains. It enables new levels of automation and problem-solving.

#### sLM Self-Verify
Self-verification in small language models (sLMs) is a critical area for exploration. **Efficiency** is key; relying on larger models as verifiers negates the benefits of sLMs. Effective self-verification could enable powerful reasoning without the need for massive architectures. Addressing the **limitations** of sLMs in tasks like numerical calculation and fact-checking is vital. Strategies like tool integration, where external tools handle memory-intensive verification steps, appear promising. The theoretical advantage lies in reduced memorization demands, allowing sLMs to focus on learnable aspects. This suggests that a well-designed self-verification mechanism could significantly enhance the capabilities of sLMs, making them competitive even with larger models in specific domains. Overcoming these verification hurdles could unlock significant potential in deployment efficiency.

#### Limits of sLMs
Small Language Models, despite their efficiency, face limitations. They often struggle with **complex reasoning**, requiring robust memorization, such as numerical calculations and factual recall. This is due to their **limited parameter size**, hindering their ability to capture intricate relationships and large amounts of data. This limitation affects their self-verification abilities. Though techniques like knowledge distillation help, sLMs still fall short in verification tasks. The reliance on external tools to circumvent these memory limitations in SLMs highlights their shortcomings in high-complexity tasks. Without tools to aid, SLMs' self-verification is flawed due to **weak memory and reasoning skills**, which is why bigger parameter models perform more reliably.

#### T1: Theory
While the paper doesn't have a section explicitly labeled "T1: Theory," we can still consider the theoretical underpinnings of their approach. The core theoretical contribution revolves around demonstrating that **tool integration reduces the memorization burden** for small language models during self-verification. This is crucial because sLMs are inherently limited in their capacity to store and recall vast amounts of information. By offloading tasks like numerical calculation or fact-checking to external tools, the sLM can focus on higher-level reasoning and decision-making. The paper's theoretical analysis likely involves quantifying the amount of information (in bits) required to perform a verification task with and without tool use, showing a significant reduction when tools are employed. Furthermore, the theory might address the **impact of imperfect verifiers** (both with and without tool integration) on the overall test-time scaling performance. This could involve analyzing how the probability of selecting a correct solution from a set of candidates changes as the accuracy of the verifier improves, potentially proving that tool integration acts as a filter that improves verifier reliability, and enhances efficient reasoning.

#### ToolV improves PRM
**ToolV (Tool-integrated Self-Verification) enhances PRM (Process Reward Model) in small LMs.** When integrated with distilled PRM, ToolV significantly improves performance on the MATH500 benchmark. This suggests that distilled PRM alone is susceptible to numerical errors. With ToolV, Llama 1B models outperform 8B models, showing that extra test-time computation effectively boosts smaller models, whereas distilled PRM alone cannot enable the 1B model to reach that level until generating 64 solutions. Also, ToolV enables Qwen2.5 0.5B to match the 1.5B model’s performance by generating just 16 solutions, thus showing effectiveness. ToolV provides substantial gains in test-time scaling.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04718/x2.png)

> 🔼 The figure displays experimental results demonstrating the impact of tool integration on the reliability of small language models (SLMs) during self-verification.  Specifically, it shows the accuracy of a Llama 1B model in verifying arithmetic calculations with varying numbers of digits. The results illustrate that while the 1B model's accuracy decreases significantly as the number of digits increases when it performs verification without using external tools, the accuracy remains consistently high when the model uses an external code interpreter to assist with the verification task.
> <details>
> <summary>read the caption</summary>
> (b) Concept-proof results
> </details>



![](https://arxiv.org/html/2504.04718/x3.png)

> 🔼 Figure 1(a) illustrates the core concept: small language models (SLMs) struggle with complex verification tasks due to limited capacity.  The diagram shows an SLM attempting a calculation and then failing verification.  However, when the same SLM uses an external tool (like a code interpreter), it successfully verifies the answer, highlighting the reliability improvement through tool integration. Figure 1(b) presents experimental results supporting this concept. It shows the accuracy of a Llama 1B model verifying arithmetic calculations with increasing complexity (number of 3-digit numbers involved). The accuracy drops without tool integration. However, when the model is enhanced to generate and execute code to check answers, the performance drop is significantly mitigated.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Concept figure. Small language models (sLMs) often fail due to their limited capacity. However, when sLMs utilize external tools, their reliability significantly improves. (b) Concept-proof experimental results. We evaluate Llama 1B model on their ability to verify arithmetic calculations of N𝑁Nitalic_N 3-digit numbers. The performance of 1B model consistently drops as N𝑁Nitalic_N increases. However, enabling code generation and execution for verification largely mitigates the performance drop. See Appendix A for details of concept-proof experiments.
> </details>



![](https://arxiv.org/html/2504.04718/x4.png)

> 🔼 Figure 2 illustrates the Tool-integrated Self-verification (T1) process for mathematical reasoning tasks.  It shows three stages: (a) a small language model (sLM) generates a solution, which may contain calculation errors; (b) a Tool-based Verifier (ToolV) checks the solution's correctness by executing code generated by the sLM based on its reasoning steps; (c) a Reward Model (RM)-based Verifier (GenRM or PRM) provides a final assessment of the solution, but only after it has passed the ToolV filter.  Appendix F provides concrete examples.
> <details>
> <summary>read the caption</summary>
> Figure 2: Tool-integrated self-verification for mathematical reasoning. (a) Generator: A small language model (sLM) may produce incorrect solutions due to calculation errors. (b) Tool-based Verifier (ToolV): The sLM generates executable code based on its reasoning; the output of the code is used to verify the solution’s correctness. (c) Reward Model (RM)-based Verifier: The reward model (GenRM / PRM) still evaluates the solution as before, but its verdict only contributes to the final decision if the solution passes the tool-assisted filter. Concrete examples are in Appendix F.
> </details>



![](https://arxiv.org/html/2504.04718/x5.png)

> 🔼 This figure displays the results of an experiment on the MATH500 dataset, comparing the performance of three small language models (sLMs) using a process reward model (PRM) for verification. The models tested are SmolLM2-360M-Instruct, Qwen2.5-0.5B-Instruct, and Llama-3.2-1B-Instruct. The key finding is that the addition of ToolV (Tool-integrated self-verification) significantly boosts the performance of the PRM, allowing the small models to either match or surpass the performance of considerably larger models (Qwen2.5-1.5B and Llama-3.1-8B) which only use a single (N=1) prediction. The x-axis represents the number of solutions generated per problem, and the y-axis shows the accuracy. The graph vividly demonstrates the substantial improvement in accuracy achieved through the integration of ToolV in small language models for complex mathematical reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 3: MATH500 with PRM. Weighted Best-of-N performance of three small language models, emphasizing the benefits of ToolV on college-level math problems. ToolV significantly enhances PRM, enabling small models to outperform or match much larger models. Qwen2.5-1.5B and Llama3.1-8B performances are reported as N=1𝑁1N=1italic_N = 1 greedy decoding.
> </details>



![](https://arxiv.org/html/2504.04718/x6.png)

> 🔼 Figure 4 presents the results of an experiment evaluating the performance of three small language models (SLMs) on the MATH500 benchmark using a generative reward model (GenRM) for verification.  The graph displays the accuracy of each model across different numbers of solution attempts (Best-of-N).  A key finding highlighted is that the proposed Tool-integrated Self-verification (T1) method significantly improves the models' ability to correctly solve math problems, even surpassing the performance of larger language models. This improvement is attributed to T1's ability to filter out incorrect solutions stemming from calculation errors, a weakness that GenRM alone cannot effectively address.
> <details>
> <summary>read the caption</summary>
> Figure 4: MATH500 with GenRM. Weighted Best-of-N performance of three small language models, showcasing the effectiveness of ToolV with GenRM, where even generative verification cannot supplement the calculation error which can be easily filtered out by using a tool.
> </details>



![](https://arxiv.org/html/2504.04718/x7.png)

> 🔼 Figure 5 presents a comparative analysis of three small language models' performance on the GSM8K dataset when employing a generative reward model (GenRM) for verification, with and without the Tool-integrated self-verification (ToolV) method. The results illustrate that ToolV enhances the performance of all three models, particularly on graduate-level arithmetic problems. However, the improvement is less pronounced on GSM8K compared to more challenging datasets like MATH500, suggesting that the baseline GenRM verifier already achieves satisfactory performance on simpler arithmetic tasks. The x-axis represents the number of solutions per problem considered in the Best-of-N approach, while the y-axis displays the accuracy achieved. This visualization effectively demonstrates ToolV's impact on improving verification accuracy, particularly for complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: GSM8K with GenRM. Weighted Best-of-N performance comparison across three small language models. The results show that ToolV also improves model performance on graduate-level arithmetic problems. However, the gains are smaller on this simpler task, where existing verifiers already perform reliably compared to more challenging tasks.
> </details>



![](https://arxiv.org/html/2504.04718/x8.png)

> 🔼 Figure 6 presents the performance of the Llama-3.2-1B-Instruct model on three knowledge-intensive domains from the MMLU-Pro benchmark using the Process Reward Model (PRM) combined with the Tool-integrated Self-verification (ToolV) method.  The results show the impact of using different document sources (retrieved vs. gold standard documents) within the ToolV approach.  The figure illustrates that ToolV enhances the performance of PRM on various multi-domain tasks, extending its benefits beyond the mathematical reasoning tasks shown in other figures.
> <details>
> <summary>read the caption</summary>
> Figure 6: MMLU-Pro with PRM. Weighted Best-of-N (N=64𝑁64N=64italic_N = 64) performance of Llama-3.2-1B-Instruct on three knowledge-intensive domains, illustrating the effect of different document sources in ToolV + Distilled PRM (retrieved and gold documents). ToolV extends beyond math, improving PRM on multi-domain knowledge-intensive reasoning tasks.
> </details>



![](https://arxiv.org/html/2504.04718/x9.png)

> 🔼 Figure 7 presents a detailed analysis of the impact of the tool-based verifier (ToolV) on the performance of the Llama-3.2-1B-Instruct model with the process reward model (PRM) on the MATH500 dataset. The analysis specifically focuses on the effects of ToolV across different problem types and difficulty levels (N=64). The results indicate that ToolV significantly improves the performance of the model, particularly for mid-level problems that involve complex calculations. This suggests that tool integration is especially beneficial for enhancing the reasoning capabilities of language models on computationally intensive tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Analysis with problem types and levels. We perform analysis on the effect of tool-based verifier with problem types and levels in MATH500 dataset. The results are from Llama-3.2-1B-Instruct with PRM using weighted Best-of-N (N=64𝑁64N=64italic_N = 64). This analysis shows ToolV is most effective on mid-level problems and calculational domains.
> </details>



![](https://arxiv.org/html/2504.04718/x10.png)

> 🔼 This figure demonstrates the impact of Tool-Integrated Self-verification (ToolV) on the performance of different-sized language models in mathematical reasoning.  Specifically, it shows the weighted average of the best-of-64 results for the Generative Reward Model (GenRM) using Llama 3 language models of varying sizes (1B, 3B, and 8B parameters).  Importantly, ToolV is consistently used with a 1B parameter model, highlighting its effect when paired with larger GenRMs.  The results illustrate how ToolV can improve the performance of even smaller models compared to larger models without ToolV, demonstrating its efficiency and effectiveness in improving accuracy and reducing the reliance on large models.
> <details>
> <summary>read the caption</summary>
> Figure 8: Effects of ToolV on sizes of GenRM. Weighted Best-of-N (N=64𝑁64N=64italic_N = 64) performance of GenRM based on different sizes of Llama 3 (Dubey et al., 2024) on MATH500. For ToolV, we use 1B and only scale up the GenRM.
> </details>



![](https://arxiv.org/html/2504.04718/x11.png)

> 🔼 Figure 9 presents a comparison of the success rates in generating correct solutions using the tool-based verifier and standard GenRM model across different model sizes (1B, 3B, 8B parameters). The success rate is defined as the percentage of instances where at least one out of 64 generated solutions is correct after verification using the tool-based verifier. The figure shows that even small language models can achieve high accuracy if the tool-based verifier is used, especially with a larger number of generations.
> <details>
> <summary>read the caption</summary>
> Figure 9: Correct solutions ratio among N=64𝑁64N=64italic_N = 64 generations to show how the tool-based verifier works.
> </details>



![](https://arxiv.org/html/2504.04718/x12.png)

> 🔼 This figure presents confusion matrices for the performance of the GenRM (Generative Reward Model) and GenRM+ToolV (GenRM with Tool-integrated self-verification) in verifying the correctness of solutions to MATH500 problems.  Each matrix shows the counts of true positives (correctly identified correct solutions), false positives (incorrectly identified as correct), true negatives (correctly identified incorrect solutions), and false negatives (incorrectly identified as incorrect). The results show that GenRM+ToolV significantly reduces false positives (incorrectly identified as correct solutions), indicating improved verification accuracy by using the ToolV method.  The improvement comes from the ToolV filtering out incorrect solutions before reaching GenRM.
> <details>
> <summary>read the caption</summary>
> Figure 10: Confusion matrix of verification results from GenRM and GenRM + ToolV, where True denotes the correct solution. This result indicates ToolV improves the performance on removing false positive cases. Results are from experiments with Llama-3.2-1B-Instruct on MATH500 benchmark.
> </details>



![](https://arxiv.org/html/2504.04718/x13.png)

> 🔼 This figure displays the results of an experiment evaluating the data efficiency of Tool-integrated Self-verification (T1).  The experiment varied the amount of training data used to distill the verifier models (ToolV and PRM).  Three different data conditions are compared: both verifiers trained on the full dataset, the ToolV trained on 10% of the data and PRM on 100%, and the ToolV trained on 1% of the data and PRM on 100%. The plot shows the accuracy of the models under these data conditions.  The key finding is that the ToolV method remains surprisingly accurate even with substantially less training data (10% or 1%), demonstrating its data efficiency compared to the PRM method.
> <details>
> <summary>read the caption</summary>
> Figure 11: Data-scale experiment. Performance comparison with varying distillation data sizes. In each plot, one verifier is distilled with 10% or 1% of data, while the other uses the full dataset. ToolV remains competitive even with only 10% of data, highlighting its data efficiency. Results are from experiments with Llama-3.2-1B-Instruct on MATH500.
> </details>



![](https://arxiv.org/html/2504.04718/x14.png)

> 🔼 This line plot displays the weighted best-of-N performance of the Llama-3.2-1B-Instruct language model on three distinct knowledge-intensive domains from the MMLU-Pro benchmark.  The x-axis represents the number of solutions per problem, illustrating how performance changes as the number of generated solutions increases. The y-axis shows the accuracy achieved on each domain (Health, Economics, and History).  The plot includes multiple lines, each representing a different method or baseline:  Majority voting (a baseline without verification), Distilled PRM (a distilled process reward model), ToolV+PRM (retrieved documents), and ToolV+PRM (gold documents).  The use of gold documents versus retrieved documents allows a comparison of the method's performance under ideal versus realistic conditions. The graph effectively demonstrates the impact of ToolV (tool-integrated self-verification) on the accuracy of the PRM, especially when using retrieved documents instead of ideal gold standard documents, which highlights its practical value. 
> <details>
> <summary>read the caption</summary>
> Figure 12: MMLU-Pro with PRM (Line Plot). Weighted Best-of-N performance of Llama-3.2-1B-Instruct on three knowledge-intensive domains from MMLU-Pro.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T2.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T2.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T2.1.1.1.3.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T2.1.1.1.4.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T2.1.1.1.5.1">F1 Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T2.1.2.1.1">GenRM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.2.1.2">80.91%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.2.1.3">0.6153</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A4.T2.1.2.1.4.1">0.7759</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.2.1.5">0.6863</td>
</tr>
<tr class="ltx_tr" id="A4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T2.1.3.2.1">GenRM + ToolV</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.1.3.2.2"><span class="ltx_text ltx_font_bold" id="A4.T2.1.3.2.2.1">86.99%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.1.3.2.3"><span class="ltx_text ltx_font_bold" id="A4.T2.1.3.2.3.1">0.7666</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.1.3.2.4">0.7427</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.1.3.2.5"><span class="ltx_text ltx_font_bold" id="A4.T2.1.3.2.5.1">0.7545</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between two methods for verifying the correctness of solutions generated by a small language model (SLM): GenRM (Generative Reward Model) and ToolV + GenRM (Tool-integrated self-verification combined with GenRM).  The comparison is based on experiments conducted using the Llama-3.2-1B-Instruct model and the MATH500 benchmark, a dataset of challenging mathematical problems.  The table likely shows metrics such as accuracy, precision, recall, and F1 score for both methods, allowing a quantitative assessment of how ToolV enhances the verification capabilities of the SLM.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between GenRM and ToolV + GenRM. Results are from experiments with Llama-3.2-1B-Instruct on MATH500 benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.1.1">Model Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.3.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.4.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.5.1">F1 Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T3.1.2.1.1">1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.1.2.1.2">0.7687</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.1.2.1.3">0.8720</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.1.2.1.4">0.6946</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.1.2.1.5">0.7733</td>
</tr>
<tr class="ltx_tr" id="A4.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T3.1.3.2.1">3B</th>
<td class="ltx_td ltx_align_center" id="A4.T3.1.3.2.2"><span class="ltx_text ltx_font_bold" id="A4.T3.1.3.2.2.1">0.7973</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.1.3.2.3">0.8949</td>
<td class="ltx_td ltx_align_center" id="A4.T3.1.3.2.4"><span class="ltx_text ltx_font_bold" id="A4.T3.1.3.2.4.1">0.7286</span></td>
<td class="ltx_td ltx_align_center" id="A4.T3.1.3.2.5"><span class="ltx_text ltx_font_bold" id="A4.T3.1.3.2.5.1">0.8033</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T3.1.4.3.1">8B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.1.4.3.2">0.7906</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.1.4.3.3"><span class="ltx_text ltx_font_bold" id="A4.T3.1.4.3.3.1">0.9207</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.1.4.3.4">0.6908</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.1.4.3.5">0.7893</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Llama-3.2-1B-Instruct language model on the MATH500 benchmark, specifically focusing on its ability to generate Python code.  The model's performance is evaluated using teacher model outputs as the gold standard for comparison.  The evaluation metrics include accuracy, precision (the percentage of correctly identified positive cases out of all positive predictions), recall (the percentage of correctly identified positive cases out of all actual positive cases), and the F1 score (the harmonic mean of precision and recall).  Rejection is treated as a positive label for precision, recall, and F1 score calculation. The table shows results for three different model sizes: 1B, 3B, and 8B.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of LLama-3.2-1B-Instruct on the MATH500 benchmark for Python code generation, using teacher model outputs as reference (gold). We set rejection as positive label for computing precision, recall, and f1 score.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04718/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04718/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}