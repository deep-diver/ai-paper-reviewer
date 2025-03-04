---
title: "Multimodal Inconsistency Reasoning (MMIR): A New Benchmark for Multimodal Reasoning Models"
summary: "MMIR: A new benchmark to assess and improve multimodal reasoning models' ability to detect inconsistencies in real-world content."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 University of California, Santa Cruz",]
showSummary: true
date: 2025-02-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.16033 {{< /keyword >}}
{{< keyword icon="writer" >}} Qianqi Yan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.16033" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.16033" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.16033/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models (MLLMs) are trained and tested on consistent visual-textual inputs, but their ability to handle inconsistencies in real-world content remains an open question. There's a lack of evaluation in mismatched or contradictory info, a common real-world occurrence. To solve this, the paper introduces **Multimodal Inconsistency Reasoning (MMIR)** benchmark. It evaluates how effectively MLLMs identify semantic mismatches within layout-rich artifacts like webpages or slides. 



**MMIR** has 534 challenging samples with synthetic errors across five categories. Experiments on 6 MLLMs revealed models struggle, especially with cross-modal conflicts. The paper provides detailed error analyses based on category, modality and layout complexity. Probing experiments showed prompting yields marginal gains, revealing a bottleneck in cross-modal reasoning. This highlights the need for advanced reasoning, paving the way for inconsistency research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLMs struggle with multimodal inconsistency reasoning, especially in cross-modal conflicts and complex layouts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The MMIR benchmark reveals significant gaps in existing models' ability to handle real-world inconsistencies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Iterative multimodal reasoning strategies show promise for improving performance in inconsistency detection. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a new benchmark for evaluating MLLMs in handling inconsistencies**, filling a critical gap in the field. It highlights **the limitations of current models in real-world scenarios** and provides **a valuable resource for developing more robust multimodal reasoning systems**, paving the way for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.16033/x1.png)

> 🔼 The figure shows a webpage with conflicting information.  The text mentions the brand 'IKEA AB', but other visual elements (images and text) clearly indicate the brand is 'Lorell'.  The task of identifying this inconsistency requires a multimodal reasoning model to integrate information from both text and images, comparing textual information across different parts of the page and relating it to the corresponding visuals to determine the correct brand.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of multimodal inconsistency reasoning on a webpage. An agent examines a webpage where the brand “IKEA AB” is mentioned, but other elements clearly refer to “Lorell.” Detecting this brand identity misattribution requires the ability to compare text fields across different sections of the page and reconcile them with accompanying images or context—an inherently multimodal reasoning task.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.2.1">#Questions</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.3.1">Ave. #Elements</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T1.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.2.2.1.1">Artifact Categories</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.3.3">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.3.3.1">      Web</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.2">240</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.3.3.3">38.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.4.4.1">         - Shopping</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.4.4.2">108</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.4.4.3">46.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.5.5.1">         - Wiki</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.5.5.2">28</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.5.5.3">44.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.6.6">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.6.6.1">         - Classifieds</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.2">104</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.6.6.3">29.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.7.7.1">      Office</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.2">223</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.7.7.3">9.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.8.8.1">         - Slides</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.2">102</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.8.8.3">9.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.9.9.1">         - Tables/Charts</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.2">61</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.9.9.3">4.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.10.10.1">         - Diagrams</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.2">60</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.10.10.3">13.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.11.11">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.11.11.1">      Poster</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.11.11.2">71</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.11.11.3">27.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.12.12.1.1">Total</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.12.12.2">543</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.12.12.3">24.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T1.3.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.13.13.1.1">Error Categories</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.14.14">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.14.14.1">      Factual Contradiction</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.2">138</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.14.14.3">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.15.15">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.15.15.1">      Identity Misattribution</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.15.15.2">84</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.15.15.3">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.16.16.1">      Contextual Mismatch</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.16.16.2">141</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.16.16.3">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.17.17">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.17.17.1">      Quantitative Discrepancy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.17.17.2">76</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.17.17.3">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.18.18">
<td class="ltx_td ltx_align_left" id="S3.T1.3.1.18.18.1">      Temporal/Spatial Incoherence</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.18.18.2">95</td>
<td class="ltx_td ltx_align_right" id="S3.T1.3.1.18.18.3">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.3.1.19.19.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.19.19.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.19.19.2">543</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.3.1.19.19.3">–</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a statistical overview of the MMIR benchmark dataset, categorized by artifact type and inconsistency type.  It shows the number of questions, the average number of elements per question, and the distribution of questions across different artifact categories (webpages, office documents, posters) and inconsistency categories (factual contradiction, identity misattribution, contextual mismatch, quantitative discrepancy, temporal/spatial incoherence). This breakdown provides insights into the dataset's composition and the relative prevalence of different types of inconsistencies.
> <details>
> <summary>read the caption</summary>
> Table 1: MMIR Statistics. Breakdown of the dataset by artifact category and error type.
> </details>





### In-depth insights


#### MMIR Benchmark
The MMIR benchmark, standing for Multimodal Inconsistency Reasoning, is a pivotal contribution for assessing MLLMs' ability to handle semantic mismatches in real-world artifacts. It is innovative because it contains **diverse error types**, like factual contradictions and temporal incoherence. The challenging nature lies in requiring intricate reasoning rather than pattern recognition, focusing on **identifying inconsistencies** within complex, layout-rich content. The benchmark aids in future multimodal reasoning studies and exposes MLLMs limitations.

#### Multimodal Reasoning
**Multimodal reasoning** is at the heart of the paper's focus, driving the need for a new benchmark (MMIR). The paper highlights how existing Multimodal Large Language Models (MLLMs) often struggle with inconsistencies when dealing with real-world, layout-rich content. This implies that current models are primarily trained on consistent data and lack the robustness to handle the variations and complexities of the real world. The authors emphasize the significance of robust reasoning in handling data from multiple modalities, especially in cases where inconsistencies are present. This reasoning must go beyond simple pattern recognition, requiring the models to cross-reference, analyze, and reconcile information from text, images, and layouts. The MMIR benchmark pushes models towards intricate reasoning processes, prompting advancements in the field.

#### Inconsistency Type
**Inconsistency type** is a critical aspect in multimodal reasoning, highlighting semantic mismatches within content. Categories like factual contradiction, identity misattribution, contextual mismatch, quantitative discrepancy, and temporal/spatial incoherence are essential for assessing model abilities. These types demand intricate reasoning beyond simple pattern recognition, posing significant challenges for MLLMs. Addressing these inconsistencies is vital for robust, real-world applications.

#### Probing Methods
The probing methods section is aimed at **understanding the limits** of solely relying on textual or visual cues for inconsistency detection. It explores Chain-of-Thought (CoT), Set-of-Mark (SoM), and a multimodal interleaved CoT (MM-CoT) approach. The findings reveal that simply injecting explicit reasoning steps (CoT) or enhancing visual perception (SoM) often provides little improvements. The key lies in creating a system where **the model can iteratively go back and forth between text and vision** to successfully detect inconsistencies.

#### Dataset Details
The paper introduces the Multimodal Inconsistency Reasoning Benchmark (MMIR) to assess how well models identify semantic mismatches. The dataset comprises 534 challenging samples across diverse real-world artifacts, including webpages, slides, and posters. Data curation followed a four-stage pipeline. **Artifacts were collected and parsed, synthetic inconsistencies were injected, then auto-editing & human verification followed.** MMIR assesses models' ability to detect inconsistencies in open-ended and multiple-choice settings. The team will **release the dataset** for open research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.16033/x2.png)

> 🔼 Figure 2 presents five example inconsistencies from the MMIR benchmark dataset, each representing a different category of multimodal inconsistency.  These examples illustrate the diverse challenges that the benchmark presents for multimodal reasoning models.  The categories are: Factual Contradiction (a conflict between text and image), Identity Misattribution (mismatched brand information across different elements), Contextual Mismatch (thematic mismatch between elements), Quantitative Discrepancy (numerical errors in a chart compared to text), and Temporal/Spatial Incoherence (time or location conflicts within the presented elements).  Each example demonstrates the complexity of detecting inconsistencies across modalities and different layouts.
> <details>
> <summary>read the caption</summary>
> Figure 2: There are five inconsistency categories in the MMIR benchmark, posing diverse challenges.
> </details>



![](https://arxiv.org/html/2502.16033/extracted/6221352/figures/data_filter.png)

> 🔼 The figure illustrates the four-stage process of MMIR data curation. It begins with the collection and parsing of 521 artifacts, followed by the synthetic injection of inconsistencies using the 01-1217 language model, resulting in 2,534 proposals. After automated editing and human verification, the final dataset of 534 validated quintuples is obtained. These quintuples consist of the modified artifact, its elements, the type of inconsistency introduced, and the rationale behind it. This filtered dataset forms the MMIR benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: MMIR Data filtering process.
> </details>



![](https://arxiv.org/html/2502.16033/x3.png)

> 🔼 This figure presents a detailed breakdown of model performance on the MMIR benchmark.  Panel (a) shows accuracy broken down by the five types of inconsistencies (factual contradiction, identity misattribution, contextual mismatch, quantitative discrepancy, and temporal/spatial incoherence). Panel (b) displays accuracy broken down by the type of modality involved in the inconsistency (text-only, image-only, text and image). The figure shows that models perform better on inconsistencies involving a single modality, particularly text, and struggle more with cross-modal inconsistencies. The superior performance of proprietary models (o1 and GPT-40) is also evident across all inconsistency categories and modalities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Fine-grained analysis of model performance.
> </details>



![](https://arxiv.org/html/2502.16033/x4.png)

> 🔼 This figure shows the relationship between the number of elements in an artifact and model performance on the MMIR benchmark.  It reveals that as the complexity of the layout increases (i.e., more elements in the artifact), the accuracy of all models decreases.  Proprietary models maintain higher accuracy in simpler layouts but show a similar decline in performance as complexity increases compared to open-source models. Open-source models struggle even with low-complexity artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Model performance on layout complexity.
> </details>



![](https://arxiv.org/html/2502.16033/x5.png)

> 🔼 This figure shows a side-by-side comparison: on the left, the original webpage from the Multimodal Inconsistency Reasoning (MMIR) benchmark; on the right, the same webpage after it has been annotated using the Set-of-Marks (SoM) method for probing experiments. SoM highlights relevant elements (bounding boxes) in the image to help evaluate the effectiveness of prompting methods on visual multimodal reasoning. This helps assess how well models can leverage visual cues when integrated with textual prompting for improved reasoning performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Example of original artifact in MMIR (left) and artifact annotated with Set-of-Mark in the probing analysis (right).
> </details>



![](https://arxiv.org/html/2502.16033/x6.png)

> 🔼 This figure displays a sample from the MMIR benchmark, illustrating how different models perform under open-ended and multiple-choice evaluation settings.  The left side shows the original image, which contains a factual contradiction: a map labels a geographic region as 'Rocky Mountain Range' when it is in fact a different arctic region. The right side presents model responses for both question types; open-ended responses show the model's ability to identify the error without predefined options, while multiple-choice responses test accuracy when provided with choices of potential inconsistent elements.
> <details>
> <summary>read the caption</summary>
> Figure 7: A test sample with model responses under the two main settings in MMIR: open-ended and multiple-choice.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.2.1">Open-ended</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.3.1">Multiple-choice</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.2.2.1">Models</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.2">Web</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.3">Office</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.4">Poster</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.5">Overall</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.6">Web</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.7">Office</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.8">Poster</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.9">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T2.3.1.3.3.1" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_italic" id="S4.T2.3.1.3.3.1.1" style="background-color:#ECECEC;">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.4.4.1">o1 (1217)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.2">47.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.3">59.19</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.4">38.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.4.4.5">51.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.6">47.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.7">58.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.8">46.47</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.9">52.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.5.5.1">GPT-4o (1120)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.2">25.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.3">42.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.4">30.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.5.5">33.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.6">37.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.7">58.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.8">47.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5.9">47.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="9" id="S4.T2.3.1.6.6.1" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_italic" id="S4.T2.3.1.6.6.1.1" style="background-color:#ECECEC;">Open-sourced Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.7.7.1">Qwen2.5-VL-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.2">8.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.3">29.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.4">11.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.7.7.5">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.6">14.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.7">33.18</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.8">16.90</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.9">22.56</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.8.8.1">LLaVA-NeXT-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.2">10.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.3">21.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.4">7.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.8.8.5">14.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.6">11.45</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.7">25.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.8">5.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.8.9">16.47</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.9.9.1">InternVL2.5-8B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.2">7.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.3">24.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.4">4.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.9.9.5">14.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.6">9.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.7">23.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.8">11.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.9.9">15.63</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.1.10.10.1">Phi-3.5-Vision-4B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.2">6.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.3">24.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.4">7.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.10.10.5">14.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.6">1.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.7">8.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.8">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.10.10.9">4.30</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of six different Multimodal Large Language Models (MLLMs) on a multimodal inconsistency reasoning benchmark (MMIR).  The models are evaluated under two settings: an open-ended setting where the model freely generates a response identifying inconsistencies, and a multiple-choice question (MCQ) setting where the model selects from pre-defined options. The results show that proprietary models (those not open-source) significantly outperform open-source models in both settings, demonstrating a substantial performance gap.  Moreover, proprietary models show a much larger performance improvement in the MCQ setting compared to the open-ended setting. This highlights the challenges posed by multimodal inconsistency reasoning and the limitations of current open-source MLLMs in this area.
> <details>
> <summary>read the caption</summary>
> Table 2: The accuracy of six MLLMs under the two evaluation settings. Proprietary models demonstrate higher performance as well as larger performance gain in the MCQ setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.3.1.1.1.1">Models</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.2">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.3">+ CoT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.4">+ SoM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.5">+ Both</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.6">MM-CoT</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.3.1.2.2.1" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_italic" id="S4.T3.3.1.2.2.1.1" style="background-color:#ECECEC;">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.3.3.1">o1 (1217)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.2">51.40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.3">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.4"><span class="ltx_text" id="S4.T3.3.1.3.3.4.1" style="color:#FF0000;">-0.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.5">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.6"><span class="ltx_text" id="S4.T3.3.1.3.3.6.1" style="color:#0000FF;">+0.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.4.4.1">GPT-4o (1120)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.2">33.14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.3">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.4"><span class="ltx_text" id="S4.T3.3.1.4.4.4.1" style="color:#0000FF;">+5.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.5">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.6"><span class="ltx_text" id="S4.T3.3.1.4.4.6.1" style="color:#0000FF;">+4.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="6" id="S4.T3.3.1.5.5.1" style="background-color:#ECECEC;"><span class="ltx_text ltx_font_italic" id="S4.T3.3.1.5.5.1.1" style="background-color:#ECECEC;">Open-sourced Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.6.6.1">Qwen2.5-VL-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.2">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.3"><span class="ltx_text" id="S4.T3.3.1.6.6.3.1" style="color:#0000FF;">+0.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.4"><span class="ltx_text" id="S4.T3.3.1.6.6.4.1" style="color:#0000FF;">+0.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.5"><span class="ltx_text" id="S4.T3.3.1.6.6.5.1" style="color:#0000FF;">+0.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.6"><span class="ltx_text" id="S4.T3.3.1.6.6.6.1" style="color:#0000FF;">+4.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.7.7.1">LLaVA-NeXT-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.2">14.70</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.3"><span class="ltx_text" id="S4.T3.3.1.7.7.3.1" style="color:#FF0000;">-1.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.4"><span class="ltx_text" id="S4.T3.3.1.7.7.4.1" style="color:#FF0000;">-2.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.5"><span class="ltx_text" id="S4.T3.3.1.7.7.5.1" style="color:#FF0000;">-0.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.6"><span class="ltx_text" id="S4.T3.3.1.7.7.6.1" style="color:#0000FF;">+3.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.8.8.1">InternVL2.5-8B</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.8.2">14.23</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.8.3"><span class="ltx_text" id="S4.T3.3.1.8.8.3.1" style="color:#0000FF;">+2.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.8.4"><span class="ltx_text" id="S4.T3.3.1.8.8.4.1" style="color:#FF0000;">-0.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.8.5"><span class="ltx_text" id="S4.T3.3.1.8.8.5.1" style="color:#FF0000;">-1.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.8.6"><span class="ltx_text" id="S4.T3.3.1.8.8.6.1" style="color:#FF0000;">-0.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.1.9.9.1">Phi-3.5-Vision-4B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.9.9.2">14.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.9.9.3"><span class="ltx_text" id="S4.T3.3.1.9.9.3.1" style="color:#FF0000;">-0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.9.9.4"><span class="ltx_text" id="S4.T3.3.1.9.9.4.1" style="color:#0000FF;">+0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.9.9.5"><span class="ltx_text" id="S4.T3.3.1.9.9.5.1" style="color:#0000FF;">+0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.9.9.6"><span class="ltx_text" id="S4.T3.3.1.9.9.6.1" style="color:#0000FF;">+0.65</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating different prompting methods on a multimodal inconsistency reasoning benchmark.  The benchmark assesses the ability of large language models to detect inconsistencies in multimodal data. The methods tested include Chain-of-Thought (CoT) prompting, Set-of-Mark (SoM) visual augmentation, a combination of both, and a novel Multimodal Interleaved CoT (MM-CoT) approach.  The table compares the performance of each method against a baseline (vanilla) setting, indicating gains or losses in accuracy. The results are categorized by model type (proprietary vs. open-source).
> <details>
> <summary>read the caption</summary>
> Table 3: Probing results of different prompting methods. Performance of each prompting method is directly compared with the vanilla setting. Gains are in blue and drops are in red.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.16033/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16033/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}