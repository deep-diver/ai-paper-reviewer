---
title: "Step-KTO: Optimizing Mathematical Reasoning through Stepwise Binary Feedback"
summary: "STEP-KTO: A novel training framework boosts LLMs' mathematical reasoning by providing binary feedback on both intermediate steps and final answers. This ensures logical reasoning trajectories and impr..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Meta GenAI",]
showSummary: true
date: 2025-01-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.10799 {{< /keyword >}}
{{< keyword icon="writer" >}} Yen-Ting Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.10799" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.10799" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.10799/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for improving large language model (LLM) reasoning often prioritize final answer accuracy. However, this can lead to unreliable or logically inconsistent intermediate steps, undermining trust.  This is especially problematic in domains like mathematics, where the reasoning process itself is crucial.

STEP-KTO tackles this by incorporating both process-level and outcome-level binary feedback during training.  This means the model receives feedback not only on the final answer but also on the correctness of each step in its reasoning process.  **Experimental results show that STEP-KTO significantly improves the accuracy of both final answers and intermediate steps on various mathematical benchmarks.**  This highlights the promise of integrating stepwise feedback for creating more reliable and interpretable LLM reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} STEP-KTO improves both final answer accuracy and the quality of intermediate reasoning steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Integrating stepwise process feedback into LLM training enhances interpretability and dependability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Iterative training with STEP-KTO yields consistent cumulative improvements in reasoning quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical issue of trust and reliability in large language models (LLMs), particularly for reasoning tasks.  **By introducing a novel training framework, STEP-KTO, that incorporates both process-level and outcome-level feedback, this research offers a significant advancement in enhancing the trustworthiness of LLMs' reasoning capabilities.** This has far-reaching implications for various applications that rely on reliable LLM reasoning, such as scientific discovery, education, and decision-making systems.  Moreover, the research opens up new avenues for further exploration into integrating stepwise feedback into LLM training, leading to more interpretable and dependable AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.10799/x1.png)

> 🔼 The figure illustrates the training process of the STEP-KTO method.  A math problem is input to a large language model (LLM), which generates a series of reasoning steps and a final answer.  The intermediate steps and the final answer are then evaluated by separate reward models: a Process Reward Model (PRM) and an Outcome Reward Model (ORM), respectively.  Each model provides binary feedback (correct or incorrect). This binary feedback, along with the input and the LLM's output, is used to compute a loss function that guides the LLM's training. The iterative process refines the model's ability to produce both correct answers and coherent reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 1: \method Training Process. Given a dataset of math problems (left), a language model (LLM) produces both reasoning steps and a final answer. Each intermediate reasoning step is evaluated by a process reward model (Process RM), and the final answer is assessed by an outcome reward model (Outcome RM). The binary feedback signals from both levels (outcome-level correctness cosuperscript𝑐𝑜c^{o}italic_c start_POSTSUPERSCRIPT italic_o end_POSTSUPERSCRIPT and stepwise correctness chssubscriptsuperscript𝑐𝑠ℎc^{s}_{h}italic_c start_POSTSUPERSCRIPT italic_s end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_h end_POSTSUBSCRIPT) are recorded together with the input (x)𝑥(x)( italic_x ) and the model’s response (y)𝑦(y)( italic_y ) §2.1. These signals are then used to compute the \method loss, guiding the LLM to not only produce correct final answers but also maintain coherent and correct reasoning steps §2.3. Through multiple iterations of this training process §2.4, the model progressively improves both its stepwise reasoning and final answer accuracy.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T3.4.5.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.5.1.1.1" style="font-size:90%;background-color:#EDEDFF;">8B Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.4.5.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.5.1.2.1" style="font-size:90%;">Stepwise Errors in Correct Solutions</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.6.2">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T3.4.6.2.1" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.6.2.2.1" style="font-size:90%;">KTO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.2.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_ERROR undefined" id="S3.T3.4.6.2.3.1">\method</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="M_{0}" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><msub id="S3.T3.1.1.1.m1.1.1" xref="S3.T3.1.1.1.m1.1.1.cmml"><mi id="S3.T3.1.1.1.m1.1.1.2" mathsize="90%" xref="S3.T3.1.1.1.m1.1.1.2.cmml">M</mi><mn id="S3.T3.1.1.1.m1.1.1.3" mathsize="90%" xref="S3.T3.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><apply id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.1.1.1.m1.1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T3.1.1.1.m1.1.1.2.cmml" xref="S3.T3.1.1.1.m1.1.1.2">𝑀</ci><cn id="S3.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">M_{0}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">italic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T3.1.1.2.1" style="font-size:90%;">27.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T3.1.1.3.1" style="font-size:90%;">27.3%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.2.2.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="M_{1}" class="ltx_Math" display="inline" id="S3.T3.2.2.1.m1.1"><semantics id="S3.T3.2.2.1.m1.1a"><msub id="S3.T3.2.2.1.m1.1.1" xref="S3.T3.2.2.1.m1.1.1.cmml"><mi id="S3.T3.2.2.1.m1.1.1.2" mathsize="90%" xref="S3.T3.2.2.1.m1.1.1.2.cmml">M</mi><mn id="S3.T3.2.2.1.m1.1.1.3" mathsize="90%" xref="S3.T3.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.1.m1.1b"><apply id="S3.T3.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.2.2.1.m1.1.1.1.cmml" xref="S3.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="S3.T3.2.2.1.m1.1.1.2.cmml" xref="S3.T3.2.2.1.m1.1.1.2">𝑀</ci><cn id="S3.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.1.m1.1c">M_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.1.m1.1d">italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T3.2.2.2.1" style="font-size:90%;">24.6%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.3.1" style="font-size:90%;">22.9%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.3.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="M_{2}" class="ltx_Math" display="inline" id="S3.T3.3.3.1.m1.1"><semantics id="S3.T3.3.3.1.m1.1a"><msub id="S3.T3.3.3.1.m1.1.1" xref="S3.T3.3.3.1.m1.1.1.cmml"><mi id="S3.T3.3.3.1.m1.1.1.2" mathsize="90%" xref="S3.T3.3.3.1.m1.1.1.2.cmml">M</mi><mn id="S3.T3.3.3.1.m1.1.1.3" mathsize="90%" xref="S3.T3.3.3.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.1.m1.1b"><apply id="S3.T3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.3.3.1.m1.1.1.1.cmml" xref="S3.T3.3.3.1.m1.1.1">subscript</csymbol><ci id="S3.T3.3.3.1.m1.1.1.2.cmml" xref="S3.T3.3.3.1.m1.1.1.2">𝑀</ci><cn id="S3.T3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.1.m1.1c">M_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.1.m1.1d">italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T3.3.3.2.1" style="font-size:90%;">22.6%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.1" style="font-size:90%;">20.8%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.4.4.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="M_{3}" class="ltx_Math" display="inline" id="S3.T3.4.4.1.m1.1"><semantics id="S3.T3.4.4.1.m1.1a"><msub id="S3.T3.4.4.1.m1.1.1" xref="S3.T3.4.4.1.m1.1.1.cmml"><mi id="S3.T3.4.4.1.m1.1.1.2" mathsize="90%" xref="S3.T3.4.4.1.m1.1.1.2.cmml">M</mi><mn id="S3.T3.4.4.1.m1.1.1.3" mathsize="90%" xref="S3.T3.4.4.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.1.m1.1b"><apply id="S3.T3.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.4.4.1.m1.1.1.1.cmml" xref="S3.T3.4.4.1.m1.1.1">subscript</csymbol><ci id="S3.T3.4.4.1.m1.1.1.2.cmml" xref="S3.T3.4.4.1.m1.1.1.2">𝑀</ci><cn id="S3.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.4.4.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.1.m1.1c">M_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.1.m1.1d">italic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.4.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T3.4.4.2.1" style="font-size:90%;">21.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.4.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.3.1" style="font-size:90%;">19.9%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of math problem-solving experiments using various language models, including different sizes of Llama models and several commercial models.  The models' performance is evaluated on three benchmark datasets: MATH-500, AMC23, and AIME24. The accuracy is measured using two metrics: Pass@1 (the accuracy of a single prediction) and Maj@8 (the accuracy of majority voting among 8 predictions). The table highlights the performance differences between models with varying parameter counts (8B, 70B) and commercially available models. Color-coding is used to distinguish between model sizes: blue for 8B parameter models, green for 70B parameter models, and gray for commercial models.
> <details>
> <summary>read the caption</summary>
> Table 1: Math problem solving performance comparing Llama models of different sizes and proprietary models. Results show accuracy on MATH-500, AMC23, and AIME24 test sets using both greedy decoding (Pass@1) and majority voting over 8 samples (Maj@8). Models highlighted in blue are 8B parameter models, green are 70B parameter models, and gray are commercial models.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.10799/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10799/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}