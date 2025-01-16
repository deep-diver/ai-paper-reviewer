---
title: "Multimodal LLMs Can Reason about Aesthetics in Zero-Shot"
summary: "Multimodal LLMs can now evaluate art aesthetics with human-level accuracy using a novel dataset (MM-StyleBench) and prompt method (ArtCoT), significantly improving AI alignment in artistic evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Hong Kong Polytechnic University",]
showSummary: true
date: 2025-01-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09012 {{< /keyword >}}
{{< keyword icon="writer" >}} Ruixiang Jiang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09012" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09012" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09012/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for evaluating the aesthetics of AI-generated art are limited, lacking interpretability and alignment with human preferences. This paper tackles this challenge by focusing on **how multimodal large language models (MLLMs) can be used to evaluate the aesthetics of artworks**.  Existing approaches often use metrics that are not well-aligned with human judgment, resulting in systems that produce visually appealing but not aesthetically pleasing artworks.

The researchers address these limitations by developing **MM-StyleBench**, a new large-scale dataset for artistic stylization.  They propose **ArtCoT**, a prompting method that uses a chain-of-thought approach to guide the LLM's reasoning and reduce the likelihood of subjective or hallucinatory outputs.  Their experiments demonstrate that ArtCoT significantly improves the aesthetic alignment of the model with human preferences, providing a more reliable and interpretable way to evaluate AI-generated art.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The creation of MM-StyleBench, a large-scale, high-quality dataset for multimodal stylization with dense annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The development of ArtCoT, a prompting method that significantly improves the aesthetic alignment of MLLMs for art evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The finding that art-specific task decomposition and the use of concrete language reduce hallucinations and improve the reasoning ability of MLLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **bridges the gap between art and AI**, exploring a largely uncharted area of research.  It introduces a novel dataset and method for evaluating AI-generated art, addressing a critical need in the field of computer vision and art.  The findings provide valuable insights into **how to effectively prompt and evaluate large language models (LLMs)** to achieve human-aligned aesthetic assessment. This opens new avenues for research into AI-driven art creation and evaluation methods.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09012/x1.png)

> 🔼 This figure presents the MM-StyleBench dataset, a novel large-scale dataset for multimodal stylization,  in two parts.  (a) shows the distribution of various attributes within the dataset, highlighting its diversity in terms of content, style, and other relevant features such as composition, color diversity, and element density. The detailed attribute annotations ensure a comprehensive and robust evaluation of stylization methods. (b) provides visual examples of content and style instances from the dataset.  The top row showcases diverse content images, representing a broad range of scenes and objects. The bottom row displays their corresponding stylized versions, demonstrating the variety of styles included within MM-StyleBench. These examples illustrate the dataset's capability to benchmark multimodal stylization methods effectively.
> <details>
> <summary>read the caption</summary>
> Figure 1: The MM-StyleBench dataset. (a) The distribution of different attributes in MM-StyleBench. the proposed dataset contains diverse images and text prompts with detailed attribute annotations. (b) Examples of content (top) and style (bottom) instances in MM-StyleBench.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.2.1.1">Dataset/Protocol</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.2.1.2"># Content</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.2.1.3"># Style</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.2.1.4">Multimodal</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.2.1.5">Dense Annotation</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.1.1">DiffStyler <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib2" title="">2</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1.3">25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1.4"><span class="ltx_text" id="S3.T1.1.1.3.1.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1.5"><span class="ltx_text" id="S3.T1.1.1.3.1.5.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.2.1">StyleID <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib34" title="">34</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.2">20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.3">40</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.4"><span class="ltx_text" id="S3.T1.1.1.4.2.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.5"><span class="ltx_text" id="S3.T1.1.1.4.2.5.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.1.2">LAION-Aesthetics <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib7" title="">7</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">∼</annotation></semantics></math>50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.4"><span class="ltx_text" id="S3.T1.1.1.1.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.5"><span class="ltx_text" id="S3.T1.1.1.1.5.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.3.1">ArtBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib35" title="">35</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.3">10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.4"><span class="ltx_text" id="S3.T1.1.1.5.3.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.5"><span class="ltx_text" id="S3.T1.1.1.5.3.5.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.4.1">StyleBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4.2">20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4.3">73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4.4"><span class="ltx_text" id="S3.T1.1.1.6.4.4.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4.5"><span class="ltx_text" id="S3.T1.1.1.6.4.5.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.1.7.5.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.7.5.2">1000</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.7.5.3">1000</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.7.5.4"><span class="ltx_text" id="S3.T1.1.1.7.5.4.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.7.5.5"><span class="ltx_text" id="S3.T1.1.1.7.5.5.1" style="color:#007D00;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the scale, modality, and annotation detail of several benchmark datasets used for evaluating artistic stylization models.  It highlights that the proposed MM-StyleBench dataset significantly surpasses existing datasets in terms of the number of content and style examples available, and also in the richness and granularity of its multimodal annotations (both image and text). This makes MM-StyleBench more suitable for robustly evaluating and comparing the performance of stylization models.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison of representative stylization benchmark datasets. The proposed MM-StyleBench offers significantly more content and style instance, with fine-grained multimodal annotations.
> </details>





### In-depth insights


#### Aesthetic Reasoning
Aesthetic reasoning, in the context of multimodal large language models (MLLMs) applied to art, presents a fascinating challenge.  The ability to **quantify and interpret aesthetic qualities** transcends simple visual feature extraction; it requires an understanding of cultural context, emotional impact, and artistic principles.  While MLLMs show promise in leveraging multimodal data for this task, the inherent subjectivity of aesthetics presents a significant hurdle.  **Hallucinations**, where the MLLM generates subjective and often inaccurate judgments, are a major obstacle to achieving human-level alignment in aesthetic evaluation. To improve MLLM performance, methods like **task decomposition** and the use of **concrete language** are crucial, forcing the model to engage in more structured reasoning instead of relying on vague, emotional descriptors.  The development of large-scale, high-quality datasets like MM-StyleBench, with detailed annotations, is also vital for training and evaluating these models. Ultimately, success in MLLM-based aesthetic reasoning requires a multi-faceted approach, combining advancements in model architecture with careful prompt engineering and a deeper understanding of how humans perceive and articulate aesthetic value.

#### MM-StyleBench
The heading 'MM-StyleBench' strongly suggests a **multimodal dataset** designed for evaluating and benchmarking artistic style transfer models.  The 'MM' likely stands for 'Multimodal,' emphasizing the use of both **visual (image) and textual (style descriptions)** data.  This is a crucial aspect, as it allows for a more nuanced and comprehensive assessment of aesthetics beyond purely visual metrics.  A key insight is the focus on **stylization**, which indicates that the dataset is specifically curated for tasks related to transferring artistic styles from one image to another. The 'Bench' element points towards the **benchmarking functionality** of the dataset, implying its potential to be a standard for evaluating the performance of various style transfer methods. This dataset likely contains a wide range of image-style pairs, allowing researchers to assess the generalization ability of models across diverse art styles and image content. Overall, MM-StyleBench represents a significant contribution towards establishing a more robust and objective evaluation framework for the field of artistic stylization.

#### ArtCoT Prompting
ArtCoT prompting is a novel approach designed to enhance the aesthetic evaluation capabilities of large language models (LLMs) in the context of artwork.  **It tackles the inherent hallucination problem** often observed in LLMs, where subjective language leads to unreliable assessments. ArtCoT structures the prompting process into three distinct phases: **content and style analysis**, **art critique**, and **summarization**. This decomposition helps break down complex aesthetic judgment into manageable subtasks, guiding the LLM toward a more objective and reasoned evaluation. **The use of concrete language and art-specific task decomposition** is key to ArtCoT’s success,  reducing hallucinations and improving alignment with human aesthetic preferences. By decomposing the task into smaller, more focused prompts, ArtCoT facilitates a more detailed and nuanced understanding of the artwork's aesthetic qualities before reaching a final judgment. This method effectively mimics the structured reasoning process employed by art critics, thereby enhancing the reliability and accuracy of LLM-based aesthetic assessment.

#### Hallucination Issue
The phenomenon of 'hallucination' in large language models (LLMs), particularly within the context of art evaluation, presents a significant challenge.  LLMs, trained on massive datasets, sometimes generate outputs that are **factually inaccurate or nonsensical**, even when seemingly coherent. In art analysis, this manifests as **subjective and often unfounded claims** about artistic elements or stylistic influences.  The paper highlights how LLMs tend to favor subjective language and emotional responses, rather than objective analysis, leading to hallucinations.  Addressing this requires **careful prompting and task decomposition**, guiding the LLM towards concrete visual descriptions and reasoning. The authors propose methods to mitigate hallucinations by introducing specific sub-tasks (analysis, critique, summarization) to encourage more structured and less subjective outputs.  This approach aims to align LLM assessments more closely with human perceptions of aesthetic quality by reducing the model's tendency towards creative fabrication and improving the factual accuracy of its artistic evaluations.  Ultimately, **reducing hallucination is crucial** for enhancing the reliability and trustworthiness of LLMs in art-related applications.

#### Future of MLLMs
The future of Multimodal Large Language Models (MLLMs) is incredibly promising, yet also presents significant challenges.  **Improved alignment with human preferences** is crucial; current models often exhibit biases and hallucinations, hindering their reliability in tasks demanding nuanced understanding, such as aesthetic evaluation.  **Addressing this requires advancements in prompting techniques and model architectures**, possibly incorporating more sophisticated reasoning mechanisms inspired by cognitive science.  **Data quality and diversity are key**, as MLLMs' performance is directly tied to the richness and representativeness of their training data.  We can expect to see more robust benchmark datasets and better evaluation metrics to facilitate progress. Furthermore, **responsible development and deployment** are paramount; mitigating potential harms associated with bias, misinformation, and misuse will be vital in shaping the future of MLLMs and ensuring their ethical integration into society.  **Enhanced explainability and interpretability** are also needed to build trust and allow for better debugging and refinement.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09012/x2.png)

> 🔼 This figure illustrates the alignment evaluation pipeline used to assess the aesthetic judgment of multimodal large language models (MLLMs).  The process begins by sampling content and style pairs from the MM-StyleBench dataset. These pairs undergo stylization, generating multiple stylistic versions of the same content.  Then, pairwise comparisons (2AFC) are created from these versions, and human preference is collected for ranking. This data is then filtered and aggregated into global rankings.  The figure then showcases ArtCoT, a prompting method designed to improve the MLLM's aesthetic alignment by incorporating art-specific task decomposition into three stages: content/style analysis, art criticism, and summarization. Finally, the correlation between MLLM rankings generated using ArtCoT and the human rankings is calculated to measure the aesthetic alignment.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our alignment evaluation pipeline. First, (a) we sample content and style from MM-StyleBench for stylization, and construct 2AFC comparison sets by sampling from all possible candidate comparisons. (b) Human preference data is collected and filtered with two heuristic indicators, which is finally aggregated as global rankings. (c) We propose ArtCoT, which involves three art-specific phases to reduce MLLMs’ hallucinations. Finally, we calculate the correlation of rankings from MLLMs and humans as indicators of aesthetic alignment.
> </details>



![](https://arxiv.org/html/2501.09012/x3.png)

> 🔼 This figure presents a fine-grained analysis of how different prompting methods for Multimodal Large Language Models (MLLMs) affect their ability to align with human aesthetic preferences.  The Spearman's rank correlation coefficient (ρ) is used to measure the alignment between MLLM rankings and human rankings of stylized images. The analysis is broken down by various attributes of the MM-StyleBench dataset, including content and style characteristics, revealing how these attributes influence MLLM performance.  The results demonstrate that the ArtCoT prompting method consistently achieves superior alignment across different attribute categories, particularly for complex and detailed prompts. This underscores the significant impact of ArtCoT in enhancing MLLM's aesthetic reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Fine-grained comparison of different MLLM prompting scheme. We show the spearman’s ρ𝜌\rhoitalic_ρ for per-instance alignment, grouped by representative attribute provided by MM-StyleBench. ArtCoT elicits aesthetic reasoning for all scenarios, especially for instances with long and detailed prompts.
> </details>



![](https://arxiv.org/html/2501.09012/extracted/6127957/Fig/UI-min.png)

> 🔼 This figure depicts the user interface used for collecting human preference data in a two-alternative forced choice (2AFC) task. The top section shows the original source image. The middle section presents two stylized images, generated by different stylization models.  Participants choose their preferred image from the two presented by clicking the ‘left’ or ‘right’ button. The bottom section provides the style prompt that guided the stylization process, which helps to contextualize the comparison task. This carefully designed interface ensures that the user understands the context and rationale for their preference selection.
> <details>
> <summary>read the caption</summary>
> Figure 4: User Interface for Preference Annotation. We present user with the source image (top), 2AFC (middle) and style prompt (bottom). The user is required to choose the preferred one by clicking on the “left” or “right” button.
> </details>



![](https://arxiv.org/html/2501.09012/x4.png)

> 🔼 This algorithm aims to sample a connected subgraph from a complete graph, where the number of edges is controlled. The key constraint is to ensure a uniform degree distribution in the resulting subgraph, meaning each node in the subgraph has a similar number of connections. The algorithm starts by creating a minimum spanning tree using Kruskal's algorithm to guarantee connectivity. It then iteratively adds edges to the subgraph, prioritizing those that minimize the degree imbalance between nodes, until the desired number of edges is reached.  This approach helps to generate a subgraph that is both connected and has a balanced structure.
> <details>
> <summary>read the caption</summary>
> Algorithm 1 Sample a Connected Subgraph with Uniform Degree Distribution
> </details>



![](https://arxiv.org/html/2501.09012/x5.png)

> 🔼 This figure showcases examples of stylized images generated using various stylization techniques. Two sets of images are presented, each demonstrating a different artistic style: Impressionism and Cubism.  The figure highlights the diversity in the quality and aesthetic appeal of the generated images, ranging from highly successful to less satisfactory results. This variation underscores the challenges and complexities involved in evaluating the effectiveness of image stylization algorithms and their ability to produce visually appealing and aesthetically pleasing artworks.  The wide range of results shown demonstrates the need for more robust and comprehensive evaluation metrics in artistic stylization.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of Stylized Image. We show two uncurated examples from different stylization results, the image order are randomized. The styles are impressionist and cubism, respectively. The results covers a wide range of stylization performance, setting a realistic and challenging task for artistic evaluation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.30">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.30.31.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.30.31.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.30.31.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.30.31.1.2" rowspan="3"><span class="ltx_text" id="S4.T2.30.31.1.2.1">Prompting</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.30.31.1.3">Per-Method Alignment</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.30.31.1.4">Per-Instance Alignment</td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.32.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.30.32.2.1">Elo</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.30.32.2.2">Bradley-Terry</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.30.32.2.3">Elo</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.30.32.2.4">Bradley-Terry</td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16">
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2">
<math alttext="\rho" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.m2.1a"><mo id="S4.T2.2.2.2.m2.1.1" stretchy="false" xref="S4.T2.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mi id="S4.T2.3.3.3.m1.1.1" xref="S4.T2.3.3.3.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">italic_p</annotation></semantics></math>-value <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m2.1"><semantics id="S4.T2.4.4.4.m2.1a"><mo id="S4.T2.4.4.4.m2.1.1" stretchy="false" xref="S4.T2.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m2.1b"><ci id="S4.T2.4.4.4.m2.1.1.cmml" xref="S4.T2.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6">
<math alttext="\rho" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mi id="S4.T2.5.5.5.m1.1.1" xref="S4.T2.5.5.5.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m2.1"><semantics id="S4.T2.6.6.6.m2.1a"><mo id="S4.T2.6.6.6.m2.1.1" stretchy="false" xref="S4.T2.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m2.1b"><ci id="S4.T2.6.6.6.m2.1.1.cmml" xref="S4.T2.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><mi id="S4.T2.7.7.7.m1.1.1" xref="S4.T2.7.7.7.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">italic_p</annotation></semantics></math>-value <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m2.1"><semantics id="S4.T2.8.8.8.m2.1a"><mo id="S4.T2.8.8.8.m2.1.1" stretchy="false" xref="S4.T2.8.8.8.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m2.1b"><ci id="S4.T2.8.8.8.m2.1.1.cmml" xref="S4.T2.8.8.8.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10">
<math alttext="\rho" class="ltx_Math" display="inline" id="S4.T2.9.9.9.m1.1"><semantics id="S4.T2.9.9.9.m1.1a"><mi id="S4.T2.9.9.9.m1.1.1" xref="S4.T2.9.9.9.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.m1.1b"><ci id="S4.T2.9.9.9.m1.1.1.cmml" xref="S4.T2.9.9.9.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.m2.1"><semantics id="S4.T2.10.10.10.m2.1a"><mo id="S4.T2.10.10.10.m2.1.1" stretchy="false" xref="S4.T2.10.10.10.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.m2.1b"><ci id="S4.T2.10.10.10.m2.1.1.cmml" xref="S4.T2.10.10.10.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T2.11.11.11.m1.1"><semantics id="S4.T2.11.11.11.m1.1a"><mi id="S4.T2.11.11.11.m1.1.1" xref="S4.T2.11.11.11.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.m1.1b"><ci id="S4.T2.11.11.11.m1.1.1.cmml" xref="S4.T2.11.11.11.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.m1.1d">italic_p</annotation></semantics></math>-value <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.12.12.12.m2.1"><semantics id="S4.T2.12.12.12.m2.1a"><mo id="S4.T2.12.12.12.m2.1.1" stretchy="false" xref="S4.T2.12.12.12.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.m2.1b"><ci id="S4.T2.12.12.12.m2.1.1.cmml" xref="S4.T2.12.12.12.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14">
<math alttext="\rho" class="ltx_Math" display="inline" id="S4.T2.13.13.13.m1.1"><semantics id="S4.T2.13.13.13.m1.1a"><mi id="S4.T2.13.13.13.m1.1.1" xref="S4.T2.13.13.13.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.m1.1b"><ci id="S4.T2.13.13.13.m1.1.1.cmml" xref="S4.T2.13.13.13.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.14.14.m2.1"><semantics id="S4.T2.14.14.14.m2.1a"><mo id="S4.T2.14.14.14.m2.1.1" stretchy="false" xref="S4.T2.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.m2.1b"><ci id="S4.T2.14.14.14.m2.1.1.cmml" xref="S4.T2.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T2.15.15.15.m1.1"><semantics id="S4.T2.15.15.15.m1.1a"><mi id="S4.T2.15.15.15.m1.1.1" xref="S4.T2.15.15.15.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.m1.1b"><ci id="S4.T2.15.15.15.m1.1.1.cmml" xref="S4.T2.15.15.15.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.m1.1d">italic_p</annotation></semantics></math>-value <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.16.16.16.m2.1"><semantics id="S4.T2.16.16.16.m2.1a"><mo id="S4.T2.16.16.16.m2.1.1" stretchy="false" xref="S4.T2.16.16.16.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.m2.1b"><ci id="S4.T2.16.16.16.m2.1.1.cmml" xref="S4.T2.16.16.16.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.m2.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.33.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.30.33.3.1">Random guess</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.30.33.3.2">–</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.3">-0.115</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.4">0.751</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.5">0.067</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.6">0.855</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.7">0.068</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.8">0.153</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.9">0.026</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.33.3.10">0.290</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.18.18.3">Aesthetics Predictor <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.09012v1#bib.bib7" title="">7</a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.18.18.4">–</th>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.5">0.406</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.6">0.244</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.7">0.406</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.8">0.244</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.9">0.427</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.17.17.1.m1.1"><semantics id="S4.T2.17.17.1.m1.1a"><mrow id="S4.T2.17.17.1.m1.1.1" xref="S4.T2.17.17.1.m1.1.1.cmml"><mi id="S4.T2.17.17.1.m1.1.1.2" xref="S4.T2.17.17.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.17.17.1.m1.1.1.1" xref="S4.T2.17.17.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.17.17.1.m1.1.1.3" xref="S4.T2.17.17.1.m1.1.1.3.cmml"><mn id="S4.T2.17.17.1.m1.1.1.3.2" xref="S4.T2.17.17.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.17.17.1.m1.1.1.3.3" xref="S4.T2.17.17.1.m1.1.1.3.3.cmml"><mo id="S4.T2.17.17.1.m1.1.1.3.3a" xref="S4.T2.17.17.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.17.17.1.m1.1.1.3.3.2" xref="S4.T2.17.17.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.1.m1.1b"><apply id="S4.T2.17.17.1.m1.1.1.cmml" xref="S4.T2.17.17.1.m1.1.1"><lt id="S4.T2.17.17.1.m1.1.1.1.cmml" xref="S4.T2.17.17.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.17.17.1.m1.1.1.2.cmml" xref="S4.T2.17.17.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.17.17.1.m1.1.1.3.cmml" xref="S4.T2.17.17.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.17.17.1.m1.1.1.3.1.cmml" xref="S4.T2.17.17.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.17.17.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.17.17.1.m1.1.1.3.2">10</cn><apply id="S4.T2.17.17.1.m1.1.1.3.3.cmml" xref="S4.T2.17.17.1.m1.1.1.3.3"><minus id="S4.T2.17.17.1.m1.1.1.3.3.1.cmml" xref="S4.T2.17.17.1.m1.1.1.3.3"></minus><cn id="S4.T2.17.17.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.17.17.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.10">0.428</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.18.18.2.m1.1"><semantics id="S4.T2.18.18.2.m1.1a"><mrow id="S4.T2.18.18.2.m1.1.1" xref="S4.T2.18.18.2.m1.1.1.cmml"><mi id="S4.T2.18.18.2.m1.1.1.2" xref="S4.T2.18.18.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.18.18.2.m1.1.1.1" xref="S4.T2.18.18.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.18.18.2.m1.1.1.3" xref="S4.T2.18.18.2.m1.1.1.3.cmml"><mn id="S4.T2.18.18.2.m1.1.1.3.2" xref="S4.T2.18.18.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.18.18.2.m1.1.1.3.3" xref="S4.T2.18.18.2.m1.1.1.3.3.cmml"><mo id="S4.T2.18.18.2.m1.1.1.3.3a" xref="S4.T2.18.18.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.18.18.2.m1.1.1.3.3.2" xref="S4.T2.18.18.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.2.m1.1b"><apply id="S4.T2.18.18.2.m1.1.1.cmml" xref="S4.T2.18.18.2.m1.1.1"><lt id="S4.T2.18.18.2.m1.1.1.1.cmml" xref="S4.T2.18.18.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.18.18.2.m1.1.1.2.cmml" xref="S4.T2.18.18.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.18.18.2.m1.1.1.3.cmml" xref="S4.T2.18.18.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.18.18.2.m1.1.1.3.1.cmml" xref="S4.T2.18.18.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.18.18.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.18.18.2.m1.1.1.3.2">10</cn><apply id="S4.T2.18.18.2.m1.1.1.3.3.cmml" xref="S4.T2.18.18.2.m1.1.1.3.3"><minus id="S4.T2.18.18.2.m1.1.1.3.3.1.cmml" xref="S4.T2.18.18.2.m1.1.1.3.3"></minus><cn id="S4.T2.18.18.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.18.18.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.34.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.30.34.4.1">GPT-4o</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.30.34.4.2">Base</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.3">0.248</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.4">0.489</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.5">0.284</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.6">0.425</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.7">0.328</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.8">0.003</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.9">0.331</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.34.4.10">0.006</td>
</tr>
<tr class="ltx_tr" id="S4.T2.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.20.20.3">Gemini 1.5-flash</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.20.20.4">Base</th>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.5">0.467</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.6">0.173</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.7">0.552</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.8">0.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.9">0.479</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.19.19.1.m1.1"><semantics id="S4.T2.19.19.1.m1.1a"><mrow id="S4.T2.19.19.1.m1.1.1" xref="S4.T2.19.19.1.m1.1.1.cmml"><mi id="S4.T2.19.19.1.m1.1.1.2" xref="S4.T2.19.19.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.19.19.1.m1.1.1.1" xref="S4.T2.19.19.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.19.19.1.m1.1.1.3" xref="S4.T2.19.19.1.m1.1.1.3.cmml"><mn id="S4.T2.19.19.1.m1.1.1.3.2" xref="S4.T2.19.19.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.19.19.1.m1.1.1.3.3" xref="S4.T2.19.19.1.m1.1.1.3.3.cmml"><mo id="S4.T2.19.19.1.m1.1.1.3.3a" xref="S4.T2.19.19.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.19.19.1.m1.1.1.3.3.2" xref="S4.T2.19.19.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.1.m1.1b"><apply id="S4.T2.19.19.1.m1.1.1.cmml" xref="S4.T2.19.19.1.m1.1.1"><lt id="S4.T2.19.19.1.m1.1.1.1.cmml" xref="S4.T2.19.19.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.19.19.1.m1.1.1.2.cmml" xref="S4.T2.19.19.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.19.19.1.m1.1.1.3.cmml" xref="S4.T2.19.19.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.19.19.1.m1.1.1.3.1.cmml" xref="S4.T2.19.19.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.19.19.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.19.19.1.m1.1.1.3.2">10</cn><apply id="S4.T2.19.19.1.m1.1.1.3.3.cmml" xref="S4.T2.19.19.1.m1.1.1.3.3"><minus id="S4.T2.19.19.1.m1.1.1.3.3.1.cmml" xref="S4.T2.19.19.1.m1.1.1.3.3"></minus><cn id="S4.T2.19.19.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.19.19.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.10">0.353</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.20.20.2.m1.1"><semantics id="S4.T2.20.20.2.m1.1a"><mrow id="S4.T2.20.20.2.m1.1.1" xref="S4.T2.20.20.2.m1.1.1.cmml"><mi id="S4.T2.20.20.2.m1.1.1.2" xref="S4.T2.20.20.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.20.20.2.m1.1.1.1" xref="S4.T2.20.20.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.20.20.2.m1.1.1.3" xref="S4.T2.20.20.2.m1.1.1.3.cmml"><mn id="S4.T2.20.20.2.m1.1.1.3.2" xref="S4.T2.20.20.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.20.20.2.m1.1.1.3.3" xref="S4.T2.20.20.2.m1.1.1.3.3.cmml"><mo id="S4.T2.20.20.2.m1.1.1.3.3a" xref="S4.T2.20.20.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.20.20.2.m1.1.1.3.3.2" xref="S4.T2.20.20.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.2.m1.1b"><apply id="S4.T2.20.20.2.m1.1.1.cmml" xref="S4.T2.20.20.2.m1.1.1"><lt id="S4.T2.20.20.2.m1.1.1.1.cmml" xref="S4.T2.20.20.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.20.20.2.m1.1.1.2.cmml" xref="S4.T2.20.20.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.20.20.2.m1.1.1.3.cmml" xref="S4.T2.20.20.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.20.20.2.m1.1.1.3.1.cmml" xref="S4.T2.20.20.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.20.20.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.20.20.2.m1.1.1.3.2">10</cn><apply id="S4.T2.20.20.2.m1.1.1.3.3.cmml" xref="S4.T2.20.20.2.m1.1.1.3.3"><minus id="S4.T2.20.20.2.m1.1.1.3.3.1.cmml" xref="S4.T2.20.20.2.m1.1.1.3.3"></minus><cn id="S4.T2.20.20.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.20.20.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.22.22.3">Claude 3.5-sonnet</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.22.22.4">Base</th>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.5">-0.261</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.6">0.467</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.7">-0.321</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.8">0.365</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.9">0.312</td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.21.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.21.21.1.m1.1"><semantics id="S4.T2.21.21.1.m1.1a"><mrow id="S4.T2.21.21.1.m1.1.1" xref="S4.T2.21.21.1.m1.1.1.cmml"><mi id="S4.T2.21.21.1.m1.1.1.2" xref="S4.T2.21.21.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.21.21.1.m1.1.1.1" xref="S4.T2.21.21.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.21.21.1.m1.1.1.3" xref="S4.T2.21.21.1.m1.1.1.3.cmml"><mn id="S4.T2.21.21.1.m1.1.1.3.2" xref="S4.T2.21.21.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.21.21.1.m1.1.1.3.3" xref="S4.T2.21.21.1.m1.1.1.3.3.cmml"><mo id="S4.T2.21.21.1.m1.1.1.3.3a" xref="S4.T2.21.21.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.21.21.1.m1.1.1.3.3.2" xref="S4.T2.21.21.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.1.m1.1b"><apply id="S4.T2.21.21.1.m1.1.1.cmml" xref="S4.T2.21.21.1.m1.1.1"><lt id="S4.T2.21.21.1.m1.1.1.1.cmml" xref="S4.T2.21.21.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.21.21.1.m1.1.1.2.cmml" xref="S4.T2.21.21.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.21.21.1.m1.1.1.3.cmml" xref="S4.T2.21.21.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.21.21.1.m1.1.1.3.1.cmml" xref="S4.T2.21.21.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.21.21.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.21.21.1.m1.1.1.3.2">10</cn><apply id="S4.T2.21.21.1.m1.1.1.3.3.cmml" xref="S4.T2.21.21.1.m1.1.1.3.3"><minus id="S4.T2.21.21.1.m1.1.1.3.3.1.cmml" xref="S4.T2.21.21.1.m1.1.1.3.3"></minus><cn id="S4.T2.21.21.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.21.21.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.10">0.367</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.22.22.2.m1.1"><semantics id="S4.T2.22.22.2.m1.1a"><mrow id="S4.T2.22.22.2.m1.1.1" xref="S4.T2.22.22.2.m1.1.1.cmml"><mi id="S4.T2.22.22.2.m1.1.1.2" xref="S4.T2.22.22.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.22.22.2.m1.1.1.1" xref="S4.T2.22.22.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.22.22.2.m1.1.1.3" xref="S4.T2.22.22.2.m1.1.1.3.cmml"><mn id="S4.T2.22.22.2.m1.1.1.3.2" xref="S4.T2.22.22.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.22.22.2.m1.1.1.3.3" xref="S4.T2.22.22.2.m1.1.1.3.3.cmml"><mo id="S4.T2.22.22.2.m1.1.1.3.3a" xref="S4.T2.22.22.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.22.22.2.m1.1.1.3.3.2" xref="S4.T2.22.22.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.2.m1.1b"><apply id="S4.T2.22.22.2.m1.1.1.cmml" xref="S4.T2.22.22.2.m1.1.1"><lt id="S4.T2.22.22.2.m1.1.1.1.cmml" xref="S4.T2.22.22.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.22.22.2.m1.1.1.2.cmml" xref="S4.T2.22.22.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.22.22.2.m1.1.1.3.cmml" xref="S4.T2.22.22.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.22.22.2.m1.1.1.3.1.cmml" xref="S4.T2.22.22.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.22.22.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.22.22.2.m1.1.1.3.2">10</cn><apply id="S4.T2.22.22.2.m1.1.1.3.3.cmml" xref="S4.T2.22.22.2.m1.1.1.3.3"><minus id="S4.T2.22.22.2.m1.1.1.3.3.1.cmml" xref="S4.T2.22.22.2.m1.1.1.3.3"></minus><cn id="S4.T2.22.22.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.22.22.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.35.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.30.35.5.1">GPT-4o</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.30.35.5.2">Zero-shot CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.3">0.345<span class="ltx_text" id="S4.T2.30.35.5.3.1" style="font-size:50%;color:#008000;">  +13%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.4">0.328</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.5">0.357<span class="ltx_text" id="S4.T2.30.35.5.5.1" style="font-size:50%;color:#008000;">  +10%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.6">0.313</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.7">0.299<span class="ltx_text" id="S4.T2.30.35.5.7.1" style="font-size:50%;color:#FF0000;">  -4%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.8">0.097</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.9">0.313<span class="ltx_text" id="S4.T2.30.35.5.9.1" style="font-size:50%;color:#FF0000;">  -3%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.30.35.5.10">0.031</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.24.24.3">Gemini 1.5-flash</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.24.24.4">Zero-shot CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.5">0.018<span class="ltx_text" id="S4.T2.24.24.5.1" style="font-size:50%;color:#FF0000;">  -84%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.6">0.962</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.7">0.236<span class="ltx_text" id="S4.T2.24.24.7.1" style="font-size:50%;color:#FF0000;">  -62%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.8">0.511</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.9">0.376<span class="ltx_text" id="S4.T2.24.24.9.1" style="font-size:50%;color:#FF0000;">  -20%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.23.23.1.m1.1"><semantics id="S4.T2.23.23.1.m1.1a"><mrow id="S4.T2.23.23.1.m1.1.1" xref="S4.T2.23.23.1.m1.1.1.cmml"><mi id="S4.T2.23.23.1.m1.1.1.2" xref="S4.T2.23.23.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.23.23.1.m1.1.1.1" xref="S4.T2.23.23.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.23.23.1.m1.1.1.3" xref="S4.T2.23.23.1.m1.1.1.3.cmml"><mn id="S4.T2.23.23.1.m1.1.1.3.2" xref="S4.T2.23.23.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.23.23.1.m1.1.1.3.3" xref="S4.T2.23.23.1.m1.1.1.3.3.cmml"><mo id="S4.T2.23.23.1.m1.1.1.3.3a" xref="S4.T2.23.23.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.23.23.1.m1.1.1.3.3.2" xref="S4.T2.23.23.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.1.m1.1b"><apply id="S4.T2.23.23.1.m1.1.1.cmml" xref="S4.T2.23.23.1.m1.1.1"><lt id="S4.T2.23.23.1.m1.1.1.1.cmml" xref="S4.T2.23.23.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.23.23.1.m1.1.1.2.cmml" xref="S4.T2.23.23.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.23.23.1.m1.1.1.3.cmml" xref="S4.T2.23.23.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.23.23.1.m1.1.1.3.1.cmml" xref="S4.T2.23.23.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.23.23.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.23.23.1.m1.1.1.3.2">10</cn><apply id="S4.T2.23.23.1.m1.1.1.3.3.cmml" xref="S4.T2.23.23.1.m1.1.1.3.3"><minus id="S4.T2.23.23.1.m1.1.1.3.3.1.cmml" xref="S4.T2.23.23.1.m1.1.1.3.3"></minus><cn id="S4.T2.23.23.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.23.23.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.10">0.327<span class="ltx_text" id="S4.T2.24.24.10.1" style="font-size:50%;color:#FF0000;">  -4%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.24.24.2.m1.1"><semantics id="S4.T2.24.24.2.m1.1a"><mrow id="S4.T2.24.24.2.m1.1.1" xref="S4.T2.24.24.2.m1.1.1.cmml"><mi id="S4.T2.24.24.2.m1.1.1.2" xref="S4.T2.24.24.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.24.24.2.m1.1.1.1" xref="S4.T2.24.24.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.24.24.2.m1.1.1.3" xref="S4.T2.24.24.2.m1.1.1.3.cmml"><mn id="S4.T2.24.24.2.m1.1.1.3.2" xref="S4.T2.24.24.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.24.24.2.m1.1.1.3.3" xref="S4.T2.24.24.2.m1.1.1.3.3.cmml"><mo id="S4.T2.24.24.2.m1.1.1.3.3a" xref="S4.T2.24.24.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.24.24.2.m1.1.1.3.3.2" xref="S4.T2.24.24.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.2.m1.1b"><apply id="S4.T2.24.24.2.m1.1.1.cmml" xref="S4.T2.24.24.2.m1.1.1"><lt id="S4.T2.24.24.2.m1.1.1.1.cmml" xref="S4.T2.24.24.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.24.24.2.m1.1.1.2.cmml" xref="S4.T2.24.24.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.24.24.2.m1.1.1.3.cmml" xref="S4.T2.24.24.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.24.24.2.m1.1.1.3.1.cmml" xref="S4.T2.24.24.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.24.24.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.24.24.2.m1.1.1.3.2">10</cn><apply id="S4.T2.24.24.2.m1.1.1.3.3.cmml" xref="S4.T2.24.24.2.m1.1.1.3.3"><minus id="S4.T2.24.24.2.m1.1.1.3.3.1.cmml" xref="S4.T2.24.24.2.m1.1.1.3.3"></minus><cn id="S4.T2.24.24.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.24.24.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.36.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.30.36.6.1">Claude 3.5-sonnet</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.30.36.6.2">Zero-shot CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.3">-0.345<span class="ltx_text" id="S4.T2.30.36.6.3.1" style="font-size:50%;color:#FF0000;">  -7%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.4">0.328</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.5">-0.309<span class="ltx_text" id="S4.T2.30.36.6.5.1" style="font-size:50%;color:#008000;">  +1%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.6">0.385</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.7">0.108<span class="ltx_text" id="S4.T2.30.36.6.7.1" style="font-size:50%;color:#FF0000;">  -30%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.8">0.068</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.9">0.081<span class="ltx_text" id="S4.T2.30.36.6.9.1" style="font-size:50%;color:#FF0000;">  -45%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.36.6.10">0.082</td>
</tr>
<tr class="ltx_tr" id="S4.T2.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.26.26.3">GPT-4o</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.26.26.4">ArtCoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.5">0.576<span class="ltx_text" id="S4.T2.26.26.5.1" style="font-size:50%;color:#008000;">  +43%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.6">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.7">0.721<span class="ltx_text" id="S4.T2.26.26.7.1" style="font-size:50%;color:#008000;">  +61%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.8">0.001</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.9">0.591<span class="ltx_text" id="S4.T2.26.26.9.1" style="font-size:50%;color:#008000;">  +39%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.25.25.1.m1.1"><semantics id="S4.T2.25.25.1.m1.1a"><mrow id="S4.T2.25.25.1.m1.1.1" xref="S4.T2.25.25.1.m1.1.1.cmml"><mi id="S4.T2.25.25.1.m1.1.1.2" xref="S4.T2.25.25.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.25.25.1.m1.1.1.1" xref="S4.T2.25.25.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.25.25.1.m1.1.1.3" xref="S4.T2.25.25.1.m1.1.1.3.cmml"><mn id="S4.T2.25.25.1.m1.1.1.3.2" xref="S4.T2.25.25.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.25.25.1.m1.1.1.3.3" xref="S4.T2.25.25.1.m1.1.1.3.3.cmml"><mo id="S4.T2.25.25.1.m1.1.1.3.3a" xref="S4.T2.25.25.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.25.25.1.m1.1.1.3.3.2" xref="S4.T2.25.25.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.1.m1.1b"><apply id="S4.T2.25.25.1.m1.1.1.cmml" xref="S4.T2.25.25.1.m1.1.1"><lt id="S4.T2.25.25.1.m1.1.1.1.cmml" xref="S4.T2.25.25.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.25.25.1.m1.1.1.2.cmml" xref="S4.T2.25.25.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.25.25.1.m1.1.1.3.cmml" xref="S4.T2.25.25.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.25.25.1.m1.1.1.3.1.cmml" xref="S4.T2.25.25.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.25.25.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.25.25.1.m1.1.1.3.2">10</cn><apply id="S4.T2.25.25.1.m1.1.1.3.3.cmml" xref="S4.T2.25.25.1.m1.1.1.3.3"><minus id="S4.T2.25.25.1.m1.1.1.3.3.1.cmml" xref="S4.T2.25.25.1.m1.1.1.3.3"></minus><cn id="S4.T2.25.25.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.25.25.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.10">0.548<span class="ltx_text" id="S4.T2.26.26.10.1" style="font-size:50%;color:#008000;">  +32%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.26.26.2.m1.1"><semantics id="S4.T2.26.26.2.m1.1a"><mrow id="S4.T2.26.26.2.m1.1.1" xref="S4.T2.26.26.2.m1.1.1.cmml"><mi id="S4.T2.26.26.2.m1.1.1.2" xref="S4.T2.26.26.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.26.26.2.m1.1.1.1" xref="S4.T2.26.26.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.26.26.2.m1.1.1.3" xref="S4.T2.26.26.2.m1.1.1.3.cmml"><mn id="S4.T2.26.26.2.m1.1.1.3.2" xref="S4.T2.26.26.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.26.26.2.m1.1.1.3.3" xref="S4.T2.26.26.2.m1.1.1.3.3.cmml"><mo id="S4.T2.26.26.2.m1.1.1.3.3a" xref="S4.T2.26.26.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.26.26.2.m1.1.1.3.3.2" xref="S4.T2.26.26.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.2.m1.1b"><apply id="S4.T2.26.26.2.m1.1.1.cmml" xref="S4.T2.26.26.2.m1.1.1"><lt id="S4.T2.26.26.2.m1.1.1.1.cmml" xref="S4.T2.26.26.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.26.26.2.m1.1.1.2.cmml" xref="S4.T2.26.26.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.26.26.2.m1.1.1.3.cmml" xref="S4.T2.26.26.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.26.26.2.m1.1.1.3.1.cmml" xref="S4.T2.26.26.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.26.26.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.26.26.2.m1.1.1.3.2">10</cn><apply id="S4.T2.26.26.2.m1.1.1.3.3.cmml" xref="S4.T2.26.26.2.m1.1.1.3.3"><minus id="S4.T2.26.26.2.m1.1.1.3.3.1.cmml" xref="S4.T2.26.26.2.m1.1.1.3.3"></minus><cn id="S4.T2.26.26.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.26.26.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.28.28.3">Gemini 1.5-flash</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.28.28.4">ArtCoT</th>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.5">0.697<span class="ltx_text" id="S4.T2.28.28.5.1" style="font-size:50%;color:#008000;">  +43%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.6">0.025</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.7">0.782<span class="ltx_text" id="S4.T2.28.28.7.1" style="font-size:50%;color:#008000;">  +51%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.8">0.007</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.9">0.624<span class="ltx_text" id="S4.T2.28.28.9.1" style="font-size:50%;color:#008000;">  +28%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.27.27.1.m1.1"><semantics id="S4.T2.27.27.1.m1.1a"><mrow id="S4.T2.27.27.1.m1.1.1" xref="S4.T2.27.27.1.m1.1.1.cmml"><mi id="S4.T2.27.27.1.m1.1.1.2" xref="S4.T2.27.27.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.27.27.1.m1.1.1.1" xref="S4.T2.27.27.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.27.27.1.m1.1.1.3" xref="S4.T2.27.27.1.m1.1.1.3.cmml"><mn id="S4.T2.27.27.1.m1.1.1.3.2" xref="S4.T2.27.27.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.27.27.1.m1.1.1.3.3" xref="S4.T2.27.27.1.m1.1.1.3.3.cmml"><mo id="S4.T2.27.27.1.m1.1.1.3.3a" xref="S4.T2.27.27.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.27.27.1.m1.1.1.3.3.2" xref="S4.T2.27.27.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.1.m1.1b"><apply id="S4.T2.27.27.1.m1.1.1.cmml" xref="S4.T2.27.27.1.m1.1.1"><lt id="S4.T2.27.27.1.m1.1.1.1.cmml" xref="S4.T2.27.27.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.27.27.1.m1.1.1.2.cmml" xref="S4.T2.27.27.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.27.27.1.m1.1.1.3.cmml" xref="S4.T2.27.27.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.27.27.1.m1.1.1.3.1.cmml" xref="S4.T2.27.27.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.27.27.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.27.27.1.m1.1.1.3.2">10</cn><apply id="S4.T2.27.27.1.m1.1.1.3.3.cmml" xref="S4.T2.27.27.1.m1.1.1.3.3"><minus id="S4.T2.27.27.1.m1.1.1.3.3.1.cmml" xref="S4.T2.27.27.1.m1.1.1.3.3"></minus><cn id="S4.T2.27.27.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.27.27.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.10">0.577<span class="ltx_text" id="S4.T2.28.28.10.1" style="font-size:50%;color:#008000;">  +35%</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.28.28.2.m1.1"><semantics id="S4.T2.28.28.2.m1.1a"><mrow id="S4.T2.28.28.2.m1.1.1" xref="S4.T2.28.28.2.m1.1.1.cmml"><mi id="S4.T2.28.28.2.m1.1.1.2" xref="S4.T2.28.28.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.28.28.2.m1.1.1.1" xref="S4.T2.28.28.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.28.28.2.m1.1.1.3" xref="S4.T2.28.28.2.m1.1.1.3.cmml"><mn id="S4.T2.28.28.2.m1.1.1.3.2" xref="S4.T2.28.28.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.28.28.2.m1.1.1.3.3" xref="S4.T2.28.28.2.m1.1.1.3.3.cmml"><mo id="S4.T2.28.28.2.m1.1.1.3.3a" xref="S4.T2.28.28.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.28.28.2.m1.1.1.3.3.2" xref="S4.T2.28.28.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.2.m1.1b"><apply id="S4.T2.28.28.2.m1.1.1.cmml" xref="S4.T2.28.28.2.m1.1.1"><lt id="S4.T2.28.28.2.m1.1.1.1.cmml" xref="S4.T2.28.28.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.28.28.2.m1.1.1.2.cmml" xref="S4.T2.28.28.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.28.28.2.m1.1.1.3.cmml" xref="S4.T2.28.28.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.28.28.2.m1.1.1.3.1.cmml" xref="S4.T2.28.28.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.28.28.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.28.28.2.m1.1.1.3.2">10</cn><apply id="S4.T2.28.28.2.m1.1.1.3.3.cmml" xref="S4.T2.28.28.2.m1.1.1.3.3"><minus id="S4.T2.28.28.2.m1.1.1.3.3.1.cmml" xref="S4.T2.28.28.2.m1.1.1.3.3"></minus><cn id="S4.T2.28.28.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.28.28.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.30.30.3">Claude 3.5-sonnet</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.30.30.4">ArtCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.5">0.612<span class="ltx_text" id="S4.T2.30.30.5.1" style="font-size:50%;color:#008000;">  +69%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.6">0.059</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.7">0.600<span class="ltx_text" id="S4.T2.30.30.7.1" style="font-size:50%;color:#008000;">  +70%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.8">0.066</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.9">0.492<span class="ltx_text" id="S4.T2.30.30.9.1" style="font-size:50%;color:#008000;">  +26%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.29.29.1"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.29.29.1.m1.1"><semantics id="S4.T2.29.29.1.m1.1a"><mrow id="S4.T2.29.29.1.m1.1.1" xref="S4.T2.29.29.1.m1.1.1.cmml"><mi id="S4.T2.29.29.1.m1.1.1.2" xref="S4.T2.29.29.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.29.29.1.m1.1.1.1" xref="S4.T2.29.29.1.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.29.29.1.m1.1.1.3" xref="S4.T2.29.29.1.m1.1.1.3.cmml"><mn id="S4.T2.29.29.1.m1.1.1.3.2" xref="S4.T2.29.29.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.29.29.1.m1.1.1.3.3" xref="S4.T2.29.29.1.m1.1.1.3.3.cmml"><mo id="S4.T2.29.29.1.m1.1.1.3.3a" xref="S4.T2.29.29.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.29.29.1.m1.1.1.3.3.2" xref="S4.T2.29.29.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.1.m1.1b"><apply id="S4.T2.29.29.1.m1.1.1.cmml" xref="S4.T2.29.29.1.m1.1.1"><lt id="S4.T2.29.29.1.m1.1.1.1.cmml" xref="S4.T2.29.29.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.29.29.1.m1.1.1.2.cmml" xref="S4.T2.29.29.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.29.29.1.m1.1.1.3.cmml" xref="S4.T2.29.29.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.29.29.1.m1.1.1.3.1.cmml" xref="S4.T2.29.29.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.29.29.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.29.29.1.m1.1.1.3.2">10</cn><apply id="S4.T2.29.29.1.m1.1.1.3.3.cmml" xref="S4.T2.29.29.1.m1.1.1.3.3"><minus id="S4.T2.29.29.1.m1.1.1.3.3.1.cmml" xref="S4.T2.29.29.1.m1.1.1.3.3"></minus><cn id="S4.T2.29.29.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.29.29.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.1.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.1.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.10">0.487<span class="ltx_text" id="S4.T2.30.30.10.1" style="font-size:50%;color:#008000;">  +19%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.30.30.2"><math alttext="&lt;10^{-3}" class="ltx_Math" display="inline" id="S4.T2.30.30.2.m1.1"><semantics id="S4.T2.30.30.2.m1.1a"><mrow id="S4.T2.30.30.2.m1.1.1" xref="S4.T2.30.30.2.m1.1.1.cmml"><mi id="S4.T2.30.30.2.m1.1.1.2" xref="S4.T2.30.30.2.m1.1.1.2.cmml"></mi><mo id="S4.T2.30.30.2.m1.1.1.1" xref="S4.T2.30.30.2.m1.1.1.1.cmml">&lt;</mo><msup id="S4.T2.30.30.2.m1.1.1.3" xref="S4.T2.30.30.2.m1.1.1.3.cmml"><mn id="S4.T2.30.30.2.m1.1.1.3.2" xref="S4.T2.30.30.2.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.30.30.2.m1.1.1.3.3" xref="S4.T2.30.30.2.m1.1.1.3.3.cmml"><mo id="S4.T2.30.30.2.m1.1.1.3.3a" xref="S4.T2.30.30.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.30.30.2.m1.1.1.3.3.2" xref="S4.T2.30.30.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.2.m1.1b"><apply id="S4.T2.30.30.2.m1.1.1.cmml" xref="S4.T2.30.30.2.m1.1.1"><lt id="S4.T2.30.30.2.m1.1.1.1.cmml" xref="S4.T2.30.30.2.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.30.30.2.m1.1.1.2.cmml" xref="S4.T2.30.30.2.m1.1.1.2">absent</csymbol><apply id="S4.T2.30.30.2.m1.1.1.3.cmml" xref="S4.T2.30.30.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.30.30.2.m1.1.1.3.1.cmml" xref="S4.T2.30.30.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.30.30.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.30.30.2.m1.1.1.3.2">10</cn><apply id="S4.T2.30.30.2.m1.1.1.3.3.cmml" xref="S4.T2.30.30.2.m1.1.1.3.3"><minus id="S4.T2.30.30.2.m1.1.1.3.3.1.cmml" xref="S4.T2.30.30.2.m1.1.1.3.3"></minus><cn id="S4.T2.30.30.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.30.30.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.2.m1.1c">&lt;10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.2.m1.1d">&lt; 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the alignment between Multimodal Large Language Models (MLLMs) and human aesthetic preferences in evaluating stylized images.  It compares the performance of three different MLLMs (GPT-4, Gemini 1.5-flash, and Claude 3.5-sonnet) across various prompting methods: a baseline, zero-shot Chain-of-Thought (CoT), and the proposed ArtCoT.  Alignment is measured using two metrics: Elo and Bradley-Terry, calculated for both per-method and per-instance rankings.  The results show the degree of agreement between the MLLMs' rankings and human preference rankings, with percentage improvements/declines calculated relative to the baseline prompting method.  ArtCoT consistently demonstrates the strongest alignment, showcasing its effectiveness in improving MLLMs' aesthetic reasoning.
> <details>
> <summary>read the caption</summary>
> TABLE II: Quantitative comparison on aesthetic alignment. We report alignment of per-method or per-instance ranking from different models and prompting methods with that of human preference. The performance improvement/decline is calculated as normalized changes compared with the base prompt method. Our ArtCoT delivers strong alignment with human aesthetic preference across different MLLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T3.1.1.1">Subjectivity <math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T3.1.1.1.m1.1"><semantics id="S7.T3.1.1.1.m1.1a"><mo id="S7.T3.1.1.1.m1.1.1" stretchy="false" xref="S7.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T3.1.1.1.m1.1b"><ci id="S7.T3.1.1.1.m1.1.1.cmml" xref="S7.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T3.3.3.3">Subjective word frequency (<math alttext="\%" class="ltx_Math" display="inline" id="S7.T3.2.2.2.m1.1"><semantics id="S7.T3.2.2.2.m1.1a"><mo id="S7.T3.2.2.2.m1.1.1" xref="S7.T3.2.2.2.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="S7.T3.2.2.2.m1.1b"><csymbol cd="latexml" id="S7.T3.2.2.2.m1.1.1.cmml" xref="S7.T3.2.2.2.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.2.2.2.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="S7.T3.2.2.2.m1.1d">%</annotation></semantics></math>) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T3.3.3.3.m2.1"><semantics id="S7.T3.3.3.3.m2.1a"><mo id="S7.T3.3.3.3.m2.1.1" stretchy="false" xref="S7.T3.3.3.3.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T3.3.3.3.m2.1b"><ci id="S7.T3.3.3.3.m2.1.1.cmml" xref="S7.T3.3.3.3.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.3.3.3.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.3.3.3.m2.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S7.T3.3.4.1.1">Zero-Shot CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T3.3.4.1.2">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T3.3.4.1.3">20.15</td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S7.T3.3.5.2.1">ArtCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T3.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S7.T3.3.5.2.2.1">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T3.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S7.T3.3.5.2.3.1">5.51</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of response subjectivity using different prompting methods for Multimodal Large Language Models (MLLMs).  It compares the subjectivity scores (a lower score indicates less subjectivity) and the frequency of subjective words in MLLM responses generated using three different prompting methods: the baseline method, a zero-shot Chain of Thought (CoT) method, and the proposed ArtCoT method. The results demonstrate that ArtCoT significantly reduces response subjectivity compared to the other methods, making the MLLM's responses more objective and aligned with human aesthetic preferences.
> <details>
> <summary>read the caption</summary>
> TABLE III: Response subjectivity from different prompting method. Responses from MLLM prompted by ArtCoT are less subjective.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T4.4.4.5">CS-analyzer</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T4.4.4.6">Critic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T4.2.2.2">Per-method <math alttext="\rho" class="ltx_Math" display="inline" id="S7.T4.1.1.1.m1.1"><semantics id="S7.T4.1.1.1.m1.1a"><mi id="S7.T4.1.1.1.m1.1.1" xref="S7.T4.1.1.1.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S7.T4.1.1.1.m1.1b"><ci id="S7.T4.1.1.1.m1.1.1.cmml" xref="S7.T4.1.1.1.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.1.1.1.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S7.T4.1.1.1.m1.1d">italic_ρ</annotation></semantics></math>
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T4.2.2.2.m2.1"><semantics id="S7.T4.2.2.2.m2.1a"><mo id="S7.T4.2.2.2.m2.1.1" stretchy="false" xref="S7.T4.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T4.2.2.2.m2.1b"><ci id="S7.T4.2.2.2.m2.1.1.cmml" xref="S7.T4.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.2.2.2.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T4.4.4.4">Per-instance <math alttext="\rho" class="ltx_Math" display="inline" id="S7.T4.3.3.3.m1.1"><semantics id="S7.T4.3.3.3.m1.1a"><mi id="S7.T4.3.3.3.m1.1.1" xref="S7.T4.3.3.3.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S7.T4.3.3.3.m1.1b"><ci id="S7.T4.3.3.3.m1.1.1.cmml" xref="S7.T4.3.3.3.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.3.3.3.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S7.T4.3.3.3.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T4.4.4.4.m2.1"><semantics id="S7.T4.4.4.4.m2.1a"><mo id="S7.T4.4.4.4.m2.1.1" stretchy="false" xref="S7.T4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T4.4.4.4.m2.1b"><ci id="S7.T4.4.4.4.m2.1.1.cmml" xref="S7.T4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.4.4.4.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S7.T4.4.5.1.1"><span class="ltx_text" id="S7.T4.4.5.1.1.1" style="color:#FF0000;">✗</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S7.T4.4.5.1.2"><span class="ltx_text" id="S7.T4.4.5.1.2.1" style="color:#007D00;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.4.5.1.3">0.630</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.4.5.1.4">0.532</td>
</tr>
<tr class="ltx_tr" id="S7.T4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S7.T4.4.6.2.1"><span class="ltx_text" id="S7.T4.4.6.2.1.1" style="color:#007D00;">✓</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S7.T4.4.6.2.2"><span class="ltx_text" id="S7.T4.4.6.2.2.1" style="color:#FF0000;">✗</span></th>
<td class="ltx_td ltx_align_center" id="S7.T4.4.6.2.3">0.531</td>
<td class="ltx_td ltx_align_center" id="S7.T4.4.6.2.4">0.366</td>
</tr>
<tr class="ltx_tr" id="S7.T4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S7.T4.4.7.3.1"><span class="ltx_text" id="S7.T4.4.7.3.1.1" style="color:#007D00;">✓</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S7.T4.4.7.3.2"><span class="ltx_text" id="S7.T4.4.7.3.2.1" style="color:#007D00;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S7.T4.4.7.3.3.1">0.739</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S7.T4.4.7.3.4.1">0.607</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the ArtCoT method.  The ArtCoT method, designed for evaluating the aesthetic alignment of multimodal large language models (MLLMs), consists of three components: a content/style analyzer, an art critic, and a summarizer. This ablation study systematically removes each component to determine its individual contribution to the overall performance.  The table shows the impact of removing each component (content/style analyzer and art critic) on the aesthetic alignment performance, measured using two metrics: per-method Spearman's rank correlation (ρ) and per-instance Spearman's rank correlation (ρ). The table demonstrates that the complete ArtCoT method, using all three components, achieves the best aesthetic alignment.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Ablation on component of ArtCoT. We ablate the content/style analyzer and the art critic. The full method achieves the best aesthetic alignment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T5.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.6.4.5">Content</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.6.4.6">Style</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.6.4.7">Resolution</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.4.2.2">Per-method <math alttext="\rho" class="ltx_Math" display="inline" id="S7.T5.3.1.1.m1.1"><semantics id="S7.T5.3.1.1.m1.1a"><mi id="S7.T5.3.1.1.m1.1.1" xref="S7.T5.3.1.1.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S7.T5.3.1.1.m1.1b"><ci id="S7.T5.3.1.1.m1.1.1.cmml" xref="S7.T5.3.1.1.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.3.1.1.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S7.T5.3.1.1.m1.1d">italic_ρ</annotation></semantics></math>
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T5.4.2.2.m2.1"><semantics id="S7.T5.4.2.2.m2.1a"><mo id="S7.T5.4.2.2.m2.1.1" stretchy="false" xref="S7.T5.4.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T5.4.2.2.m2.1b"><ci id="S7.T5.4.2.2.m2.1.1.cmml" xref="S7.T5.4.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.4.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.4.2.2.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.6.4.4">Per-instance <math alttext="\rho" class="ltx_Math" display="inline" id="S7.T5.5.3.3.m1.1"><semantics id="S7.T5.5.3.3.m1.1a"><mi id="S7.T5.5.3.3.m1.1.1" xref="S7.T5.5.3.3.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S7.T5.5.3.3.m1.1b"><ci id="S7.T5.5.3.3.m1.1.1.cmml" xref="S7.T5.5.3.3.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.5.3.3.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S7.T5.5.3.3.m1.1d">italic_ρ</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T5.6.4.4.m2.1"><semantics id="S7.T5.6.4.4.m2.1a"><mo id="S7.T5.6.4.4.m2.1.1" stretchy="false" xref="S7.T5.6.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T5.6.4.4.m2.1b"><ci id="S7.T5.6.4.4.m2.1.1.cmml" xref="S7.T5.6.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.6.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.6.4.4.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T5.6.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.6.5.1.1"><span class="ltx_text" id="S7.T5.6.5.1.1.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.6.5.1.2"><span class="ltx_text" id="S7.T5.6.5.1.2.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.6.5.1.3">1/4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.6.5.1.4">0.630<span class="ltx_text" id="S7.T5.6.5.1.4.1" style="font-size:50%;color:#FF0000;">  -42%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.6.5.1.5">0.432<span class="ltx_text" id="S7.T5.6.5.1.5.1" style="font-size:50%;color:#FF0000;">  -44%</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T5.6.6.2">
<td class="ltx_td ltx_align_center" id="S7.T5.6.6.2.1"><span class="ltx_text" id="S7.T5.6.6.2.1.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.6.2.2"><span class="ltx_text" id="S7.T5.6.6.2.2.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.6.2.3">1/8</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.6.2.4">0.502<span class="ltx_text" id="S7.T5.6.6.2.4.1" style="font-size:50%;color:#FF0000;">  -91%</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.6.2.5">0.285<span class="ltx_text" id="S7.T5.6.6.2.5.1" style="font-size:50%;color:#FF0000;">  -82%</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T5.6.7.3">
<td class="ltx_td ltx_align_center" id="S7.T5.6.7.3.1"><span class="ltx_text" id="S7.T5.6.7.3.1.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.7.3.2"><span class="ltx_text" id="S7.T5.6.7.3.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.7.3.3">1/2 (default)</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.7.3.4">0.476<span class="ltx_text" id="S7.T5.6.7.3.4.1" style="font-size:50%;color:#FF0000;">  -100%</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.7.3.5">0.416<span class="ltx_text" id="S7.T5.6.7.3.5.1" style="font-size:50%;color:#FF0000;">  -49%</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T5.6.8.4">
<td class="ltx_td ltx_align_center" id="S7.T5.6.8.4.1"><span class="ltx_text" id="S7.T5.6.8.4.1.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.8.4.2"><span class="ltx_text" id="S7.T5.6.8.4.2.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.8.4.3">1/2 (default)</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.8.4.4">0.678<span class="ltx_text" id="S7.T5.6.8.4.4.1" style="font-size:50%;color:#FF0000;">  -23%</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.8.4.5">0.465<span class="ltx_text" id="S7.T5.6.8.4.5.1" style="font-size:50%;color:#FF0000;">  -36%</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T5.6.9.5">
<td class="ltx_td ltx_align_center" id="S7.T5.6.9.5.1"><span class="ltx_text" id="S7.T5.6.9.5.1.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.9.5.2"><span class="ltx_text" id="S7.T5.6.9.5.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.9.5.3">1/2 (default)</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.9.5.4">0.557<span class="ltx_text" id="S7.T5.6.9.5.4.1" style="font-size:50%;color:#FF0000;">  -69%</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T5.6.9.5.5">0.521<span class="ltx_text" id="S7.T5.6.9.5.5.1" style="font-size:50%;color:#FF0000;">  -22%</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T5.6.10.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.6.10.6.1"><span class="ltx_text" id="S7.T5.6.10.6.1.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.6.10.6.2"><span class="ltx_text" id="S7.T5.6.10.6.2.1" style="color:#007D00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.6.10.6.3">1/2 (default)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.6.10.6.4"><span class="ltx_text ltx_font_bold" id="S7.T5.6.10.6.4.1">0.739</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.6.10.6.5"><span class="ltx_text ltx_font_bold" id="S7.T5.6.10.6.5.1">0.607</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of image resolution and input modalities (content image and style prompt) on the performance of aesthetic alignment evaluation.  Specifically, it shows how the correlation (ρ) between human and model rankings changes when different combinations of image resolution (sub-sampled factors of 1/4, 1/8, and 1/2) and input modalities (presence or absence of content image and/or style prompt) are used. The correlation values are averaged across two different ranking methods (Elo and Bradley-Terry). This helps to understand which input factors are most crucial for accurate aesthetic alignment.
> <details>
> <summary>read the caption</summary>
> TABLE V: Ablation on image resolution and source information. We report the correlation ρ𝜌\rhoitalic_ρ (averaged from Elo and Bradley-Terry) of different input setups: content image, style prompt, and image sub-sampling factor.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.3.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T6.3.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T6.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1.2.1">Content</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T6.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1.3.1">Style</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.1.1">Source</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.2.1">Generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.3.1">MS-COCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.4.1">SA-1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.5.1">WikiArt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.6.1">DiffusionDB</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.3.3.1.1">Number</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.3">250</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.4">250</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.5">764</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.3.1.3.3.6">236</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table VI details the composition of the MM-StyleBench dataset, highlighting the diverse sources used to gather content and style data.  It aims to show how the dataset avoids bias by drawing from a variety of sources, including text-to-image generated content, existing image datasets (SA-1B, MS-COCO), and established art databases (WikiArt, DiffusionDB). The table indicates the number of samples contributed by each source to both the content and style subsets of the dataset.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Content and Style Sources MM-StyleBench is built from diverse sources to eliminate bias.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.3.1.1">
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" id="A1.T7.3.1.1.1" rowspan="2"><span class="ltx_text" id="A1.T7.3.1.1.1.1">Base Prompt</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" id="A1.T7.3.1.1.2" rowspan="2"><span class="ltx_text" id="A1.T7.3.1.1.2.1">Zero-Shot CoT</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="3" id="A1.T7.3.1.1.3">ArtCoT</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.2.2">
<td class="ltx_td ltx_align_center ltx_align_top" id="A1.T7.3.2.2.1">C-S Analyzer</td>
<td class="ltx_td ltx_align_center ltx_align_top" id="A1.T7.3.2.2.2">Art Critic</td>
<td class="ltx_td ltx_align_center ltx_align_top" id="A1.T7.3.2.2.3">Summarizer</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.3.3.3.1.1">
<span class="ltx_p" id="A1.T7.3.3.3.1.1.1" style="width:82.4pt;">‘[IMAGE]‘ You are an expert in fine art. A source image (top) and two different stylized images (bottom) in the style of ‘[STYLE]‘ are presented to you.
Consider both the content and style, which stylized image is better in terms of overall aesthetic quality as an artwork? Return your decision in a Python Dict, [’winner’:int]. ‘0‘ means the left is better while ‘1‘ means the right is better. Do not answer any other things.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.3.3.3.2.1">
<span class="ltx_p" id="A1.T7.3.3.3.2.1.1" style="width:82.4pt;">‘[IMAGE]‘
{”request”: ”You are an expert in fine art. A source image (top) and two different stylized images (bottom) in the style of ‘style‘ are presented to you. Consider both the content and style, which stylized image is better in terms of overall aesthetic quality as an artwork?”. Return the reason and your decision in short in format of a Python Dict  ’thinking’:str, ’winner’:int. ‘0‘ means the left is better while ‘1‘ means the right is better.”,
”response”: ”{’thinking’: ’ Let’s’ think step by step,</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.3.3.3.3.1">
<span class="ltx_p" id="A1.T7.3.3.3.3.1.1" style="width:82.4pt;">‘[IMAGE]‘
You are an expert in fine art. A source image (top) Two stylized images (bottom left and bottom right) in the style of ‘[STYLE]‘ are presented to you. Compare the content preservation and style fidelity of the two images, which one is better. Return your answer in a Python Dict, [’style_reason’:str, ’content_reason’:str, ’style_winner’:int, ’content_winner’:int].</span>
<span class="ltx_p" id="A1.T7.3.3.3.3.1.2">‘0‘ means the left is better while ‘1‘ means the right is better. Do not include any other string in your response.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.3.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.3.3.3.4.1">
<span class="ltx_p" id="A1.T7.3.3.3.4.1.1" style="width:82.4pt;">‘[IMAGE]‘
Take a closer look at the two stylized images at the bottom in the style of ‘[STYLE]‘. As an expert in art, do you agree with above analysis? Compare and consider the following questions.
What visual features is essential for the style of ‘[STYLE]‘? Is the content at top well-preserved in the specific art style? Is there any artifact, distortion or inharmonious color patterns in either painting? Return your answer in a Python Dict, [reflection’:str].</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.3.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.3.3.3.5.1">
<span class="ltx_p" id="A1.T7.3.3.3.5.1.1" style="width:82.4pt;">‘[IMAGE]‘
Now we summarize. Based on above analysis and reflection, which stylized image at the bottom is better in terms of overall aesthetic quality as an **painting of the original content (top) in another style**? Return your answer in a Python Dict, [’winner’:int].
‘0‘ means the left is better while ‘1‘ means the right is better. Do not include any other string in your response.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the different prompt templates used in the paper for various prompting methods.  It shows how the prompts are structured for each method to elicit different types of responses from the multimodal large language models (MLLMs). The prompts include placeholders for the style prompt ([STYLE]) and the image tokens ([IMAGE]). The prompts are designed to encourage reasoning, analysis, comparison, and summarization related to aesthetic evaluation.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Template for different prompting methods. [STYLE] stands for placeholder for the style prompt, and [IMAGE] stands for placeholder for image tokens.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09012/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09012/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}