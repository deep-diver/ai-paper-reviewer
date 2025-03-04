---
title: "M3-AGIQA: Multimodal, Multi-Round, Multi-Aspect AI-Generated Image Quality Assessment"
summary: "M3-AGIQA: A multimodal AI solution that comprehensively assesses AI-generated image quality, achieving state-of-the-art performance by distilling online MLLM capabilities into a local model."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Heifei University of Technology",]
showSummary: true
date: 2025-02-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15167 {{< /keyword >}}
{{< keyword icon="writer" >}} Chuan Cui et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15167" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15167" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15167/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The rapid advancement of AI-generated images has created challenges in assessing their quality, requiring consideration of perceptual quality, prompt correspondence, and authenticity. Traditional methods fall short in adequately capturing these dimensions. To address this, the paper introduces a comprehensive framework for evaluating AI-generated image quality that is multimodal, multi-round, and multi-aspect. This approach ensures a more thorough and human-aligned assessment. 



The paper proposes **M3-AGIQA, which distills image captioning capabilities from online MLLMs into a local model via LoRA fine-tuning**. It uses a structured multi-round evaluation mechanism, generating intermediate image descriptions for deeper insights. An xLSTM-based predictor aligns predictions with human judgments. Experiments show state-of-the-art performance and strong generalizability, **setting a new benchmark in AGI quality assessment**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} M3-AGIQA achieves state-of-the-art performance in AGIQA by effectively capturing nuanced aspects of image quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method utilizes a structured multi-round evaluation mechanism to provide deeper insights into quality, correspondence, and authenticity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cross-dataset validation confirms the strong generalizability of M3-AGIQA, making it a robust tool for AGI quality assessment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **a new benchmark in AI-Generated Image Quality Assessment**. By comprehensively addressing quality, correspondence, and authenticity, it offers **a robust framework for evaluating AGI models**. The method’s superior performance and cross-dataset validation provide **a strong foundation for future research and practical applications** in enhancing AGI technology.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="section1.2.2.tab1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="section1.2.2.tab1.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.1.1.1">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.1.1.1.1">\toprule</span>Statistics</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.1.1.2">AGIQA-3k</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.1.1.3">AIGCIQA2023</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.1.1.4">AIGCIQA-20k</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.2.2.1">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.2.2.1.1">\midrule</span>No. of images</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.2.2.2">2,982</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.2.2.3">2,400</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.2.2.4">20,000</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.3.3.1">No. of T2I models</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.3.3.2">6</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.3.3.3">6</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.3.3.4">15</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.4.4.1">quality MOS</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.4.4.2">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.4.4.2.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.4.4.3">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.4.4.3.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.4.4.4">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.4.4.4.1">\ding</span>51</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.5.5.1">correspondence MOS</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.5.5.2">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.5.5.2.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.5.5.3">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.5.5.3.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.5.5.4">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.5.5.4.1">\ding</span>55</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.6.6.1">authenticity MOS</th>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.6.6.2">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.6.6.2.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.6.6.3">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.6.6.3.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.2.2.tab1.6.6.6.4">
<span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.6.6.4.1">\ding</span>55</td>
</tr>
<tr class="ltx_tr" id="section1.2.2.tab1.6.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="section1.2.2.tab1.6.7.7.1"><span class="ltx_ERROR undefined" id="section1.2.2.tab1.6.7.7.1.1">\bottomrule</span></th>
<td class="ltx_td" id="section1.2.2.tab1.6.7.7.2"></td>
<td class="ltx_td" id="section1.2.2.tab1.6.7.7.3"></td>
<td class="ltx_td" id="section1.2.2.tab1.6.7.7.4"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of three datasets used in the paper: AGIQA-3k, AIGCIQA2023, and AIGCIQA-20k.  For each dataset, it shows the number of images, the number of text-to-image (T2I) models used to generate the images, and indicates whether the dataset includes Mean Opinion Scores (MOS) for quality, correspondence, and authenticity. The presence of a checkmark (✓) signifies the inclusion of MOS for a particular aspect.
> <details>
> <summary>read the caption</summary>
> Table \thetable: Statistics of the datasets.
> </details>





### In-depth insights


#### AGIQA Evolution
The progression of AGIQA is a narrative of increasing complexity, marked by the integration of sophisticated AI techniques. Early AGIQA databases were limited in size and scope, primarily assessing image quality and correspondence. The advent of **larger datasets and advanced models** has enabled a more nuanced understanding of AGI quality, incorporating aspects like authenticity. Recent efforts utilize deep learning and vision-language pre-trained models, enhancing text-image alignment analysis. Moreover, the evolution sees the rise of multimodal large language models for better AGI assessment.

#### M3 Framework
While "M3 Framework" is not explicitly mentioned, I can infer its essence from the paper's title, **"M3-AGIQA: Multimodal, Multi-Round, Multi-Aspect AI-Generated Image Quality Assessment."** Thus, the framework is structured around three key dimensions to assess AI-generated image quality. The framework uses the following methods: **Multimodal** is leveraging both visual and textual information with MLLMs. **Multi-Round** involves a structured evaluation through intermediate image descriptions. **Multi-Aspect** evaluates images across quality, correspondence, and authenticity. It utilizes a XLSTM to predict MOS scores, aligning with human perceptual judgments, a predictor constructed by an xLSTM, and a regression head. This design comprehensively captures AGI quality's nuances and is validated across datasets. The code is available at https://github.com/strawhatboy/M3-AGIQA.

#### Zero-shot CoT
While the provided text doesn't explicitly mention "Zero-shot CoT", we can infer its potential role in AI-Generated Image Quality Assessment (AGIQA). **Zero-shot learning**, in general, refers to the ability of a model to perform a task without any specific training examples for that task. Applied to Chain-of-Thought (CoT), it suggests enabling a Large Language Model (LLM) to reason through a problem (like AGI quality) step-by-step, even without prior exposure to AGIQA-specific examples. In M3-AGIQA, this could manifest in the **inference stage**, where the LLM, having been fine-tuned on related tasks like image captioning, can leverage its zero-shot CoT capability to analyze an image's quality, correspondence, and authenticity by generating intermediate reasoning steps. **This removes dependence on extensive AGIQA-specific datasets**.

#### xLSTM Insights
While not explicitly discussed under an "xLSTM Insights" heading, the paper's use of xLSTM warrants contemplation. **XLSTM's strengths in handling long-range dependencies** could be crucial for AGIQA, especially in processing sequential information like image descriptions and conversations. If the model can capture intricate relationships between prompt nuances and visual details, a **more human-aligned quality assessment** becomes feasible. The decision to replace traditional LSTM with xLSTM emphasizes the need for efficient sequential data processing in AGIQA. Ultimately, a more thorough investigation could show **how architecture specifics of xLSTM affects performance and robustness in the AGIQA**.

#### Few Shot AGIQA
The concept of "Few-Shot AGIQA" is intriguing, suggesting an approach where an AI model can effectively assess the quality of AI-generated images (AGI) with minimal training data. This could involve leveraging meta-learning techniques, transfer learning from related domains (like natural image quality assessment), or the use of sophisticated prompting strategies with large language models (LLMs). **The key challenge would be enabling generalization from a very limited set of examples.** For instance, the model might be trained on a small dataset of AGI images with corresponding quality scores and then be able to accurately predict the quality of new AGI images generated by different models or with different prompts. **This would necessitate a model that is highly adaptable and capable of extracting relevant features from both the image and any associated text prompts.** Few-Shot AGIQA would be particularly valuable in scenarios where obtaining large, labeled datasets is expensive or impractical. **A successful Few-Shot AGIQA system would represent a significant advancement in the field, enabling rapid and efficient evaluation of AGI quality across diverse contexts.**


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="section1.12.7.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="section1.12.7.7.6.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="section1.12.7.7.6.1.1">
<span class="ltx_ERROR undefined" id="section1.12.7.7.6.1.1.1">\toprule</span><span class="ltx_ERROR undefined" id="section1.12.7.7.6.1.1.2">\multirow</span>3*Methods</th>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="4" id="section1.12.7.7.6.1.2">AGIQA-3k</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="6" id="section1.12.7.7.6.1.3">AIGCIQA2023</td>
<td class="ltx_td ltx_align_center" colspan="2" id="section1.12.7.7.6.1.4">AIGCIQA-20k</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.7.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.7.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="section1.12.7.7.7.2.2">Qual.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="section1.12.7.7.7.2.3">Corr.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="section1.12.7.7.7.2.4">Qual.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="section1.12.7.7.7.2.5">Corr.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="section1.12.7.7.7.2.6">Auth.</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="section1.12.7.7.7.2.7">Qual.</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.8.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.8.3.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.2">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.12.7.7.8.3.3">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.4">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.12.7.7.8.3.5">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.6">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.12.7.7.8.3.7">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.8">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.12.7.7.8.3.9">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.10">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.12.7.7.8.3.11">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.12">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.12.7.7.8.3.13">PLCC</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.9.4.1">
<span class="ltx_ERROR undefined" id="section1.12.7.7.9.4.1.1">\midrule</span>VGG16 <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">simonyan2014very</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.2">0.8167</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.9.4.3">0.8752</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.4">0.6867</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.9.4.5">0.8108</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.6">0.8157</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.9.4.7">0.8282</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.8">0.6839</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.9.4.9">0.6853</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.10">0.7399</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.9.4.11">0.7465</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.12">0.8133</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.9.4.13">0.8660</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.10.5.1">ResNet50 <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">he2016deep</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.2">0.8552</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.10.5.3">0.9072</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.4">0.7493</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.10.5.5">0.8564</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.6">0.8190</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.10.5.7">0.8503</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.8">0.7230</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.10.5.9">0.7270</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.10">0.7571</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.10.5.11">0.7563</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.12">0.8036</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.10.5.13">0.8661</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.11.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.11.6.1">ViT/B/16 <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">dosovitskiy2020image</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.2">0.8659</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.11.6.3">0.9115</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.4">0.7478</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.11.6.5">0.8449</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.6">0.8370</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.11.6.7">0.8618</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.8">0.7293</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.11.6.9">0.7439</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.10">0.7783</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.11.6.11">0.7697</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.12">0.8407</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.11.6.13">0.8904</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.12.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.12.7.1">ViL <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">alkin2024visionlstm</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.2">0.8750</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.12.7.3">0.9145</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.4">0.7570</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.12.7.5">0.8561</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.6">0.8436</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.12.7.7">0.8770</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.8">0.7174</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.12.7.9">0.7296</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.10">0.7753</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.12.7.11">0.7770</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.12">0.8459</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.12.7.13">0.8852</td>
</tr>
<tr class="ltx_tr" id="section1.8.3.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.8.3.3.1.1">
<span class="ltx_ERROR undefined" id="section1.8.3.3.1.1.1">\midrule</span>DBCNN<sup class="ltx_sup" id="section1.8.3.3.1.1.2">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2018blind</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.2">0.8154</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.8.3.3.1.3">0.8747</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.4">0.6329</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.8.3.3.1.5">0.7823</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.6">0.8339</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.8.3.3.1.7">0.8577</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.8">0.6837</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.8.3.3.1.9">0.6787</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.10">0.7485</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.8.3.3.1.11">0.7436</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.12">0.7941</td>
<td class="ltx_td ltx_align_center" id="section1.8.3.3.1.13">0.8542</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.13.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.13.8.1">StairIQA <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">sun2022blind</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.2">0.8439</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.13.8.3">0.8989</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.4">0.7345</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.13.8.5">0.8474</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.6">0.8264</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.13.8.7">0.8483</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.8">0.7176</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.13.8.9">0.7133</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.10">0.7596</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.13.8.11">0.7514</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.12">0.8126</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.13.8.13">0.8746</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.14.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.14.9.1">MGQA <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">wang2021multi</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.2">0.8283</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.14.9.3">0.8944</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.4">0.7244</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.14.9.5">0.8430</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.6">0.8093</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.14.9.7">0.8308</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.8">0.6892</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.14.9.9">0.6745</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.10">0.7367</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.14.9.11">0.7310</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.12">0.8107</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.14.9.13">0.8534</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.15.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.15.10.1">HyperIQA <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">Su_2020_CVPR</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.2">0.8526</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.15.10.3">0.8975</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.4">0.7437</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.15.10.5">0.8471</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.6">0.8357</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.15.10.7">0.8504</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.8">0.7318</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.15.10.9">0.7222</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.10">0.7758</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.15.10.11">0.7790</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.12">0.8171</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.15.10.13">0.8584</td>
</tr>
<tr class="ltx_tr" id="section1.9.4.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.9.4.4.2.1">
<span class="ltx_ERROR undefined" id="section1.9.4.4.2.1.1">\midrule</span>AMFF-Net<sup class="ltx_sup" id="section1.9.4.4.2.1.2">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">zhou2024adaptive</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.2">0.8565</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.9.4.4.2.3">0.9050</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.4">0.7513</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.9.4.4.2.5">0.8476</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.6">0.8409</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.9.4.4.2.7">0.8537</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.8">0.7782</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.9.4.4.2.9">0.7638</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.10">0.7749</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.9.4.4.2.11">0.7643</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.12">-</td>
<td class="ltx_td ltx_align_center" id="section1.9.4.4.2.13">-</td>
</tr>
<tr class="ltx_tr" id="section1.10.5.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.10.5.5.3.1">MA-AGIQA<sup class="ltx_sup" id="section1.10.5.5.3.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">wang2024large</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.2">0.8939</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.10.5.5.3.3">0.9273</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.10.5.5.3.5">-</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.10.5.5.3.7">-</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.10.5.5.3.9">-</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.10.5.5.3.11">-</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.12">0.8644</td>
<td class="ltx_td ltx_align_center" id="section1.10.5.5.3.13">0.9050</td>
</tr>
<tr class="ltx_tr" id="section1.11.6.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.11.6.6.4.1">IPCE<sup class="ltx_sup" id="section1.11.6.6.4.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">peng2024aigc</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.2">0.8841</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.11.6.6.4.3">0.9246</td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.4">0.7697</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.11.6.6.4.5">0.8725</td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.6"><span class="ltx_text ltx_font_bold" id="section1.11.6.6.4.6.1">0.8640</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.11.6.6.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.7.1">0.8788</span></td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.8.1">0.7979</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.11.6.6.4.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.9.1">0.7887</span></td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.10.1">0.8097</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.11.6.6.4.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.11.1">0.7998</span></td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.12"><span class="ltx_text ltx_font_bold" id="section1.11.6.6.4.12.1">0.9076</span></td>
<td class="ltx_td ltx_align_center" id="section1.11.6.6.4.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.11.6.6.4.13.1">0.9274</span></td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.5.1">SF-IQA<sup class="ltx_sup" id="section1.12.7.7.5.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">yu2024sf</span>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.5.2.1">0.9024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.5.3.1">0.9314</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.5.4.1">0.8454</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.5.5.1">0.9072</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.5.7">-</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.5.9">-</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.5.11">-</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.5.12.1">0.9009</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.5.13">0.9268</td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.16.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.16.11.1">
<span class="ltx_ERROR undefined" id="section1.12.7.7.16.11.1.1">\midrule</span>M3-AGIQA (Ours)</th>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.2"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.2.1">0.9045</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.16.11.3"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.3.1">0.9317</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.4"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.4.1">0.8523</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.16.11.5"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.5.1">0.9142</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="section1.12.7.7.16.11.6.1">0.8618</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.16.11.7"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.7.1">0.8922</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.8"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.8.1">0.8060</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.16.11.9"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.9.1">0.7973</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.10"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.10.1">0.8282</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.12.7.7.16.11.11"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.11.1">0.8165</span></td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.12">0.8988</td>
<td class="ltx_td ltx_align_center" id="section1.12.7.7.16.11.13"><span class="ltx_text ltx_font_bold" id="section1.12.7.7.16.11.13.1">0.9292</span></td>
</tr>
<tr class="ltx_tr" id="section1.12.7.7.17.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="section1.12.7.7.17.12.1"><span class="ltx_ERROR undefined" id="section1.12.7.7.17.12.1.1">\bottomrule</span></th>
<td class="ltx_td" id="section1.12.7.7.17.12.2"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.3"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.4"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.5"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.6"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.7"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.8"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.9"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.10"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.11"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.12"></td>
<td class="ltx_td" id="section1.12.7.7.17.12.13"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different AI-generated image quality assessment (AGIQA) methods across three benchmark datasets: AGIQA-3k, AIGCIQA2023, and AIGCIQA-20k.  The performance of each method is evaluated using two metrics: Spearman's Rank-Order Correlation Coefficient (SRCC) and Pearson's Linear Correlation Coefficient (PLCC).  Both metrics range from -1 to +1, with higher values indicating better performance. The table shows the SRCC and PLCC scores for each method and dataset.  Methods marked with an asterisk (*) obtained their results from published papers. The best and second-best results for each metric and dataset are highlighted in bold and underlined, respectively.  This allows for a direct comparison of the relative strengths and weaknesses of various AGIQA approaches.
> <details>
> <summary>read the caption</summary>
> Table \thetable: Comparison results on AGIQA-3k [li2023agiqa], AIGCIQA2023 [wang2023aigciqa2023], and AIGCIQA-20k [li2024aigiqa] among different methods, results of methods with asterisk symbol “∗” are directly retrieved from corresponding papers. Bold and underlined values indicate the best and second-best results, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="section1.21.6.5.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="section1.21.6.5.8.1.1">
<td class="ltx_td ltx_align_center" colspan="4" id="section1.21.6.5.8.1.1.1">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.1.1.1.1">\toprule</span>      Present Descriptions</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.1.1.2">Qual.</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.21.6.5.8.2.2.1">Qual.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.21.6.5.8.2.2.2">Corr.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="section1.21.6.5.8.2.2.3">Auth.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.21.6.5.8.2.2.4">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="section1.21.6.5.8.2.2.5">PLCC</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.3.3">
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.3.3.1">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.3.3.1.1">\midrule</span><span class="ltx_ERROR undefined" id="section1.21.6.5.8.3.3.1.2">\ding</span>55</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.3.3.2">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.3.3.2.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.21.6.5.8.3.3.3">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.3.3.3.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.3.3.4">0.8816</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.3.3.5">0.9193</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.4.4">
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.4.4.1">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.4.4.1.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.4.4.2">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.4.4.2.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.21.6.5.8.4.4.3">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.4.4.3.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.4.4.4">0.8989</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.4.4.5">0.9342</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.5.5">
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.5.5.1">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.5.5.1.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.5.5.2">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.5.5.2.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.21.6.5.8.5.5.3">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.5.5.3.1">\ding</span>55</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.5.5.4">0.9045</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.5.5.5">0.9317</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.6.6">
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.6.6.1">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.6.6.1.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.6.6.2">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.6.6.2.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="section1.21.6.5.8.6.6.3">
<span class="ltx_ERROR undefined" id="section1.21.6.5.8.6.6.3.1">\ding</span>51</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.6.6.4">0.8999</td>
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.6.6.5">0.9321</td>
</tr>
<tr class="ltx_tr" id="section1.21.6.5.8.7.7">
<td class="ltx_td ltx_align_center" id="section1.21.6.5.8.7.7.1"><span class="ltx_ERROR undefined" id="section1.21.6.5.8.7.7.1.1">\bottomrule</span></td>
<td class="ltx_td" id="section1.21.6.5.8.7.7.2"></td>
<td class="ltx_td" id="section1.21.6.5.8.7.7.3"></td>
<td class="ltx_td" id="section1.21.6.5.8.7.7.4"></td>
<td class="ltx_td" id="section1.21.6.5.8.7.7.5"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of different combinations of image description aspects on the performance of the M3-AGIQA model for assessing the quality of AI-generated images.  Specifically, it examines how including descriptions of quality, correspondence, and authenticity influences the model's ability to accurately predict Mean Opinion Scores (MOS) for image quality.  The results are shown as Spearman's Rank-Order Correlation Coefficient (SRCC) and Pearson's Linear Correlation Coefficient (PLCC) scores, which measure the model's ranking and linear correlation performance, respectively.
> <details>
> <summary>read the caption</summary>
> Table \thetable: Comparison results on AGIQA-3k [li2023agiqa] quality aspect with different combinations of image description aspects.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15167/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15167/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}