---
title: "REFIND: Retrieval-Augmented Factuality Hallucination Detection in Large Language Models"
summary: "REFIND: Detects LLM hallucinations by directly leveraging retrieved documents, using a novel Context Sensitivity Ratio."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Pohang University of Science and Technology",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13622 {{< /keyword >}}
{{< keyword icon="writer" >}} DongGeon Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13622" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13622" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13622/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Hallucinations in LLM outputs limit their reliability**, especially in knowledge-intensive tasks. Existing methods for detecting hallucinations either rely heavily on internal knowledge or involve complex, multi-step processes. This leads to limitations in low-resource languages and potential inaccuracies in aligning modified responses with the original LLM output. These challenges underscore the need for effective hallucination detection to ensure the development of safe and trustworthy AI.



To address these challenges, this paper introduces REFIND, a novel framework for detecting hallucinated spans by directly leveraging retrieved documents. **REFIND quantifies the context sensitivity of each token** using a novel Context Sensitivity Ratio (CSR). The method measures the token's dependence on external contextual information. REFIND achieves high accuracy and efficiency, demonstrating robustness across nine languages and outperforming baseline models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} REFIND, a novel framework, accurately detects hallucinated spans in LLM outputs by leveraging retrieved documents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Context Sensitivity Ratio (CSR) effectively quantifies the sensitivity of LLM outputs to retrieved evidence, enhancing hallucination detection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} REFIND demonstrates robustness across multiple languages and outperforms existing methods, highlighting its efficacy in diverse linguistic settings. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **a more accurate and efficient method for detecting hallucinations in LLMs**, enhancing the reliability of AI systems. The multilingual capabilities and superior performance of REFIND open new avenues for building trustworthy AI applications across diverse languages and contexts.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13622/x1.png)

> 🔼 The figure illustrates the REFIND method's workflow for detecting hallucinated spans in Large Language Model outputs.  First, a retriever identifies relevant documents (D) based on a given question (q).  Then, a frozen language model (Mθ) calculates the probability of generating each token (ti) both with and without the retrieved context.  A Context Sensitivity Ratio (CSR) is computed for each token; tokens with a CSR exceeding a threshold (δ) are deemed as hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An overview of the proposed REFIND method. (1) Given a question q𝑞qitalic_q, a set of relevant documents 𝒟𝒟\mathcal{D}caligraphic_D is retrieved using a retriever ℛℛ\mathcal{R}caligraphic_R. (2) A frozen language model ℳθsubscriptℳ𝜃\mathcal{M}_{\theta}caligraphic_M start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT computes token probabilities pθ⁢(ti∣⋅)subscript𝑝𝜃conditionalsubscript𝑡𝑖⋅p_{\theta}(t_{i}\mid\cdot)italic_p start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_t start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ∣ ⋅ ) for each token tisubscript𝑡𝑖t_{i}italic_t start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, with and without the retrieved context 𝒟𝒟\mathcal{D}caligraphic_D. (3) The Context Sensitivity Ratio (CSR) is calculated for each token tisubscript𝑡𝑖t_{i}italic_t start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT. Tokens with the CSR exceeding a predefined threshold δ𝛿\deltaitalic_δ are classified as hallucinations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.2">AR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.3">CS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.4">DE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.5">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.6">ES</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.7">EU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.8">FI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.9">FR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.10">IT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.11">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.1">XLM-R</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.2">0.0418</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.3">0.0957</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.4">0.0318</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.5">0.0310</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.6">0.0724</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.7">0.0208</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.8">0.0042</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.9">0.0022</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.10">0.0104</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1.11">0.0345</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.3.2.1">FAVA</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.2">0.2168</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.3">0.2353</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.4.1">0.3862</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.5">0.2812</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.6.1">0.2348</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.7">0.3869</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.8">0.2300</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2.9">0.2120</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.2.10"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.10.1">0.3255</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.2.11">0.2787</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.1.4.3.1">REFIND</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.2.1">0.3743</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.3.1">0.2761</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.4">0.3518</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.5.1">0.3525</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.6">0.2152</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.7.1">0.4074</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.8"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.8.1">0.5061</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.9"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.9.1">0.4734</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.4.3.10">0.3127</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.1.1.4.3.11"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.11.1">0.3633</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the performance of three different methods for multilingual hallucination detection on the Mu-SHROOM dataset.  The methods compared are REFIND (the proposed method), XLM-R (a token-level classifier), and FAVA (a retrieval-augmented approach).  Performance is measured using the Intersection over Union (IoU) metric across eight languages: Arabic, Czech, German, English, Spanish, Basque, Finnish, French, and Italian. The results demonstrate REFIND's superior performance across languages, particularly excelling in lower-resource languages, highlighting its effectiveness in multilingual settings.
> <details>
> <summary>read the caption</summary>
> Table 1:  Evaluation results on the Mu-SHROOM dataset Vázquez et al. (2025) using the IoU metric across eight languages: Arabic (AR), Czech (CS), German (DE), English (EN), Spanish (ES), Basque (EU), Finnish (FI), French (FR), and Italian (IT). The proposed method, REFIND, achieves the highest average IoU score, outperforming the baselines XLM-R and FAVA in most languages, demonstrating its effectiveness for multilingual hallucination detection.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13622/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13622/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}