---
title: "Spot the Fake: Large Multimodal Model-Based Synthetic Image Detection with Artifact Explanation"
summary: "FakeVLM: A multimodal model & artifact-annotated dataset for detecting synthetic images with interpretable explanations, setting a new benchmark."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14905 {{< /keyword >}}
{{< keyword icon="writer" >}} Siwei Wen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14905" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14905" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14905/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

With the rise of AI-generated content, assessing image authenticity is more challenging than ever. Existing methods often lack human interpretability and struggle with the complexity of synthetic data. This limits users' understanding of the reasons behind system's decisions, affecting the process's transparency and trustworthiness.



To address these challenges, the paper introduces **FakeVLM, a large multimodal model for synthetic image detection with artifact explanation**. Along with FakeVLM, the authors create FakeClue, a comprehensive dataset. The paper demonstrates the model's superior performance, marking a significant advancement in the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FakeVLM, a novel multimodal model, excels in detecting synthetic images and explaining artifacts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} FakeClue, a new dataset with over 100,000 images, provides fine-grained artifact clues in natural language. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FakeVLM achieves state-of-the-art performance in authenticity classification and artifact explanation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers navigating the evolving landscape of AI-generated content. **It offers a robust method for detecting synthetic images and interpretable explanations of artifacts**, enhancing trust and transparency. The dataset provides a valuable resource, paving the way for future advancements.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F1.png)

> 🔼 FakeVLM is a large multimodal model designed to identify both DeepFake and general synthetic images across a wide range of image categories, including animals, objects, humans, and scenery. It is designed to not only classify images as real or fake but also explain its classification decision through the generation of a natural language description that pinpoints specific image artifacts indicating synthesis. This figure shows an example of FakeVLM's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: FakeVLM is a specialized large multimodal model designed for both DeepFake and general synthetic image detection tasks across multiple domains.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1" style="font-size:70%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.1" style="font-size:70%;">Field</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.3.1" style="font-size:70%;">Artifact</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.1" style="font-size:70%;">Annotator</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.1" style="font-size:70%;">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.6.1" style="font-size:70%;">Number</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:70%;">DD-VQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.2.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S3.T1.2.2.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:70%;">DF</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:70%;">Syn</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.2.4.1" style="font-size:70%;">Human</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.2.6.1" style="font-size:70%;">5k</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.3.1.1" style="font-size:70%;">FF-VQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S3.T1.2.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.3.2.1" style="font-size:70%;">DF</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.1" style="font-size:70%;">Syn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.3.4.1" style="font-size:70%;">GPT</span></td>
<td class="ltx_td" id="S3.T1.2.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.3.6.1" style="font-size:70%;">95K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.4.1.1" style="font-size:70%;">LOKI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S3.T1.2.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.4.2.1" style="font-size:70%;">Gen</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.4.3.1" style="font-size:70%;">Syn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.1" style="font-size:70%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.4.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.4.6.1" style="font-size:70%;">3k</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.5.1.1" style="font-size:70%;">Fakebench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S3.T1.2.5.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.5.2.1" style="font-size:70%;">Gen</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.5.3.1" style="font-size:70%;">Syn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.5.4.1" style="font-size:70%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.5.6.1" style="font-size:70%;">6k</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.6.1.1" style="font-size:70%;">MMTD-Set </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S3.T1.2.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.6.2.1" style="font-size:70%;">Gen</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.6.3.1" style="font-size:70%;">Tam</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.6.4.1" style="font-size:70%;">GPT</span></td>
<td class="ltx_td" id="S3.T1.2.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.1" style="font-size:70%;">100k</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.1.1" style="font-size:70%;">FakeClue</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.2.1" style="font-size:70%;">DF+Gen</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.3.1" style="font-size:70%;">Syn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.4.1" style="font-size:70%;">Multi-LMMs</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.7.6.1" style="font-size:70%;">100k</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares FakeClue dataset with other existing datasets used for synthetic image detection.  It provides a comparison across several key dimensions: the type of synthetic images included (DeepFake, general synthetic images, or those with tampering), the type of artifacts annotated (synthesis artifacts only, or both synthesis and tampering artifacts), the annotation method used (human annotation, or using GPT models), the number of images, and the overall accuracy. This allows readers to understand the relative size, scope and characteristics of FakeClue in comparison to prior work, and to understand FakeClue's unique contributions.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with existing synthetic detection datasets (DF: DeepFake, Gen: General, Syn: Synthesis, Tam: Tampering).
> </details>





### In-depth insights


#### Artifacts' Insight
The paper addresses the challenge of detecting synthetic images, especially with the rise of AI-generated content. A key insight is the need for **interpretability in synthetic image detection**. Existing methods often lack human-understandable explanations. The research introduces FakeVLM, a model designed to detect synthetic images and provide **natural language explanations of image artifacts**. This combines detection with explanation, enhancing transparency. It also introduces FakeClue, a dataset containing images with detailed artifact clues in natural language to make the model robust. The research highlights the importance of **identifying and explaining specific artifacts** created by synthetic image generation techniques, rather than simply classifying images as real or fake. The insight focuses on enhancing user trust and understanding through detailed artifact-based analysis.

#### FakeVLM Design
The FakeVLM design, built upon the LLaVA architecture, cleverly integrates a **Global Image Encoder** (using CLIP-ViT), an MLP Projector for modality bridging, and a Large Language Model (LLM), specifically Vicuna-v1.5. By fine-tuning all parameters, FakeVLM comprehensively adapts to synthetic data nuances while retaining instruction-following. It not only extracts common points and ignores outliers from multiple model responses but also organizes them into a hierarchical structure, ultimately enhancing the model's interpretability in detecting synthetic images by generating **excellent interpretability for artifact details** in synthetic images.

#### Beyond Binary
The concept of "Beyond Binary" suggests a move away from simplistic true/false or real/fake classifications in synthetic image detection, advocating for a more nuanced and interpretable approach. It acknowledges that the authenticity of an image exists on a spectrum rather than a dichotomy. **This requires models to provide richer explanations beyond a simple label**, detailing the specific artifacts or inconsistencies that contribute to its perceived authenticity. Furthermore, "Beyond Binary" implies considering the contextual and subjective aspects of image authenticity, understanding that the perception of what is real or fake can vary depending on the viewer and the intended use of the image. **This shift necessitates developing more sophisticated metrics and evaluation frameworks** that capture the multifaceted nature of image authenticity. The goal is to enhance transparency and trustworthiness in synthetic image detection, enabling users to make informed decisions based on a comprehensive understanding of an image's characteristics, leading to a more robust and reliable system that considers the complex and evolving nature of synthetic media, moving beyond simple classification to detailed analysis and explanations, **enhancing human interpretability and decision-making**. 

#### Category Matters
The idea that 'Category Matters' when analyzing AI-generated content is crucial. **Different categories of images (e.g., animals, humans, landscapes) possess distinct artifact patterns**. Anomaly in animal images might involve structural inconsistencies or unnatural textures, while issues in human images might relate to facial distortions. By **tailoring the analysis to the specific category**, detection accuracy and interpretability can be significantly improved. Without such categorization, generic detection methods might overlook subtle category-specific inconsistencies, leading to less reliable results. Moreover, category-specific knowledge enables the **generation of more focused explanations** about the detected artifacts, enhancing user trust and understanding. Failing to account for category differences can hinder the development of robust and reliable synthetic image detection systems.

#### LMMs' Limits?
Although Large Multimodal Models (LMMs) possess strong text explanation capabilities, **pretrained LMMs often fail to achieve satisfactory performance** when tasked with determining whether an image was AI-generated or identifying forged images. This highlights the difficulty of relying on LMMs for authenticity judgment, as these models aren't inherently designed for synthetic data detection tasks. Nonetheless, LMMs have developed strong visual feature extraction abilities and alignment with text through extensive pretraining. Therefore, the question arises: **can the internal representations of LMMs encode information to distinguish real images from synthetic ones?**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F2.png)

> 🔼 The figure illustrates the creation process of the FakeClue dataset.  It begins with data collection from both publicly available open-source datasets and data generated specifically for this project.  The collected data then undergoes preprocessing, including categorization of images into specific types (e.g., animals, objects, scenery). Subsequently, labels and prompts are designed for annotation, leveraging category-specific knowledge to guide the labeling process. Finally, the data is annotated with multiple large multimodal models (LMMs) and these annotations are aggregated to create the final FakeClue dataset. This multifaceted approach ensures a rich and diverse dataset for evaluating synthetic image detection models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Construction pipeline of FakeClue dataset, including data collection from open source and self-synthesized datasets, pre-processing with categorization, label prompt design based on category knowledge, and multiple LMMs annotation with result aggregation.
> </details>



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F2.jpg)

> 🔼 This figure compares four different approaches for synthetic image detection using large multimodal models (LMMs) and evaluates their performance on the LOKI and FakeClue datasets.  The four approaches are:  1. **QA with Frozen LMMs (no training):**  A pre-trained LMM is used directly for question answering (QA), without any further training. This serves as a baseline to evaluate the potential of directly using pre-trained LMMs for detection without additional fine-tuning. 2. **Frozen backbone + linear probe (only linear layer trained):** The vision backbone of the LMM is frozen (weights remain fixed), and only a small linear layer is trained on top of the frozen backbone features. This approach helps to investigate how well the existing features can be used for detection with minimal changes. 3. **Direct Real/Fake QA tuning:** This method involves fine-tuning the entire LMM directly using real/fake QA pairs for synthetic image detection. This assesses the effect of full LMM training for detection. 4. **VQA with artifact explanations tuning:** This method fine-tunes the LMM for visual question answering (VQA) that focuses on identifying and explaining artifacts in synthetic images.  This explores the benefit of fine-tuning the LMM for a more nuanced, explanation-focused approach, assessing performance and interpretability.  The figure likely displays the results (e.g., accuracy, F1 score) of each approach on both datasets, comparing their relative performance and demonstrating the improvements achieved by using more sophisticated fine-tuning strategies.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of synthetic image detection approaches on LOKI and FakeClue datasets: (1) QA with Frozen LMMs (no training), (2) Frozen backbone + linear probe (only linear layer trained), (3) Direct Real/Fake QA tuning, and (4) VQA with artifact explanations tuning.
> </details>



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F3.jpg)

> 🔼 FakeVLM is a multimodal model built upon LLaVA, designed for synthetic image detection and artifact explanation. It uses a vision encoder (CLIP-ViT), a multi-modal projector, and a large language model (Vicuna) to process images and generate explanations for detected artifacts.  Multiple captioning models are integrated to improve the robustness and accuracy of both the detection and explanation tasks. The figure illustrates the architecture of FakeVLM, showcasing the flow of image data through the different components and the generation of a natural language response.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of FakeVLM, our proposed framework for detecting synthetic images and explaining their artifacts. Built upon LLaVA, FakeVLM integrates multiple captioning models to assess key visual aspects.
> </details>



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F4.png)

> 🔼 Figure 5 presents a qualitative comparison of FakeVLM and GPT's performance on synthetic image detection across various domains.  Each example shows an image and its corresponding analysis from both models. FakeVLM demonstrates superior capabilities by providing more precise, comprehensive, and relevant explanations for its judgments compared to GPT.  The diverse image types include animals (a dog), people (a woman), objects (vintage devices), documents (a document with mixed handwritten text), and remote sensing (satellite imagery).  This figure highlights FakeVLM's superior ability to not only accurately identify synthetic images but also to articulate detailed and insightful explanations of the specific image artifacts that led to that conclusion.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparative case analysis of synthetic image detection, covering animals, people, objects, documents, and remote sensing. FakeVLM outperforms GPT in precision, comprehensiveness, and relevance, indicating its superior detection and interpretation capabilities.
> </details>



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F9.png)

> 🔼 Figure 6 showcases example outputs from the FakeVLM model when evaluated on the DD-VQA dataset, which focuses on fine-grained DeepFake detection.  The figure presents several image examples along with the model's corresponding textual explanations. Each example highlights a specific area or artifact within the image and explains why the model classifies it as a synthetic artifact.  This demonstrates FakeVLM's ability to not only identify subtle signs of image manipulation but also to articulate the reasons behind its assessment in natural language, thereby offering both accurate detection and interpretability. The examples cover various types of facial manipulation artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Typical cases on DD-VQA dataset. Our model accurately identifies and explains the synthetic artifacts, demonstrating its effectiveness in fine-grained DeepFake detection and interpretation.
> </details>



![](https://arxiv.org/html/2503.14905/extracted/6292265/figure/F6.png)

> 🔼 This figure shows the results of applying FakeVLM to real images.  It demonstrates FakeVLM's ability to correctly identify real images, avoiding false positives (incorrectly classifying a real image as fake). This is important because a reliable synthetic image detector should not misclassify authentic images as forgeries.  The results highlight the model's robustness and accuracy in a real-world scenario where the majority of images are genuine.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance of FakeVLM on real images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.2.1">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T3.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.2.1.1.2">Real</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.2.1.1.3">Fake</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.2.1.1.4">Overall</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.2">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.3">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.4">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.5">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.6">F1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.1">CNNSpot <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.2">87.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.3">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.4">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.5">44.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.6">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.3.7">43.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.1">Gram-Net <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.2">22.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.3">34.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.4">78.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.5">88.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.6">67.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.7">79.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.1">Fusing <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.2">87.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.3">86.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.4">15.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.5">27.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.6">40.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.7">36.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.6">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.1">LNP <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.2">63.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.3">67.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.4">56.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.5">72.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.6">58.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.6.7">68.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.7">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.1">UnivFD <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.2">89.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.3">88.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.4">44.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.5">61.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.6">53.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.7.7">60.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.8">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.1">AntifakePrompt <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.2">91.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.3">92.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.4">89.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.5">91.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.6">90.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.8.7">91.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.9">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.1">SIDA <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.2">92.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.3">93.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.4">90.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.5">91.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.6">91.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.9.7">92.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.1">FakeVLM</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.2.1">98.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.3.1">99.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.4.1">89.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.5.1">94.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.6"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.6.1">94.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.10.7"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.10.7.1">94.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various methods' performance on two datasets: FakeClue and LOKI.  It evaluates both the accuracy of synthetic image detection (real vs. fake) and the quality of artifact explanations generated by the models.  The metrics used encompass accuracy (Acc), F1 score (F1), ROUGE-L (for explanation quality), and CSS (for explanation consistency).  The table allows for a direct comparison of FakeVLM against other state-of-the-art models, highlighting its strengths in both accurate classification and meaningful artifact explanation.
> <details>
> <summary>read the caption</summary>
> Table 2:  The experimental results on the FakeClue and LOKI datasets include both Detection and Artifact Explanation performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.2">
<tr class="ltx_tr" id="S5.T5.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.1" rowspan="2"><span class="ltx_text" id="S5.T5.2.1.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S5.T5.2.1.2"><span class="ltx_text" id="S5.T5.2.1.2.1" style="font-size:70%;">FF++ (ICCV 2019) - AUC(%)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.1"><span class="ltx_text" id="S5.T5.2.2.1.1" style="font-size:70%;">FF-DF</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2"><span class="ltx_text" id="S5.T5.2.2.2.1" style="font-size:70%;">FF-F2F</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.3"><span class="ltx_text" id="S5.T5.2.2.3.1" style="font-size:70%;">FF-FS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4"><span class="ltx_text" id="S5.T5.2.2.4.1" style="font-size:70%;">FF-NT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.5"><span class="ltx_text" id="S5.T5.2.2.5.1" style="font-size:70%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.1">
<span class="ltx_text" id="S5.T5.2.3.1.1" style="font-size:70%;">FWA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S5.T5.2.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.2"><span class="ltx_text" id="S5.T5.2.3.2.1" style="font-size:70%;">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.3"><span class="ltx_text" id="S5.T5.2.3.3.1" style="font-size:70%;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.4"><span class="ltx_text" id="S5.T5.2.3.4.1" style="font-size:70%;">88.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.5"><span class="ltx_text" id="S5.T5.2.3.5.1" style="font-size:70%;">81.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.6"><span class="ltx_text" id="S5.T5.2.3.6.1" style="font-size:70%;">87.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.4">
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.1">
<span class="ltx_text" id="S5.T5.2.4.1.1" style="font-size:70%;">Face X-ray </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S5.T5.2.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.2"><span class="ltx_text" id="S5.T5.2.4.2.1" style="font-size:70%;">97.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.3"><span class="ltx_text" id="S5.T5.2.4.3.1" style="font-size:70%;">98.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.4"><span class="ltx_text" id="S5.T5.2.4.4.1" style="font-size:70%;">98.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.5"><span class="ltx_text" id="S5.T5.2.4.5.1" style="font-size:70%;">92.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.6"><span class="ltx_text" id="S5.T5.2.4.6.1" style="font-size:70%;">95.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.5">
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.1">
<span class="ltx_text" id="S5.T5.2.5.1.1" style="font-size:70%;">SRM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S5.T5.2.5.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.2"><span class="ltx_text" id="S5.T5.2.5.2.1" style="font-size:70%;">97.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.3"><span class="ltx_text" id="S5.T5.2.5.3.1" style="font-size:70%;">97.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.4"><span class="ltx_text" id="S5.T5.2.5.4.1" style="font-size:70%;">97.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.5"><span class="ltx_text" id="S5.T5.2.5.5.1" style="font-size:70%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.6"><span class="ltx_text" id="S5.T5.2.5.6.1" style="font-size:70%;">95.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.6">
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.1">
<span class="ltx_text" id="S5.T5.2.6.1.1" style="font-size:70%;">CDFA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14905v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S5.T5.2.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.2"><span class="ltx_text" id="S5.T5.2.6.2.1" style="font-size:70%;">99.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.3"><span class="ltx_text" id="S5.T5.2.6.3.1" style="font-size:70%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.4"><span class="ltx_text" id="S5.T5.2.6.4.1" style="font-size:70%;">93.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.5"><span class="ltx_text" id="S5.T5.2.6.5.1" style="font-size:70%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.6"><span class="ltx_text" id="S5.T5.2.6.6.1" style="font-size:70%;">90.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.7">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.1"><span class="ltx_text" id="S5.T5.2.7.1.1" style="font-size:70%;">FakeVLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.2"><span class="ltx_text" id="S5.T5.2.7.2.1" style="font-size:70%;">97.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.3"><span class="ltx_text" id="S5.T5.2.7.3.1" style="font-size:70%;">96.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.4"><span class="ltx_text" id="S5.T5.2.7.4.1" style="font-size:70%;">96.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.5"><span class="ltx_text" id="S5.T5.2.7.5.1" style="font-size:70%;">95.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T5.2.7.6"><span class="ltx_text" id="S5.T5.2.7.6.1" style="font-size:70%;">96.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the performance of FakeVLM against other state-of-the-art synthetic image detection methods on the DMimage dataset.  Unlike the other methods, FakeVLM uses its original, pretrained weights, without any further fine-tuning or modifications. This highlights FakeVLM's ability to achieve competitive results without requiring additional training steps tailored to the specific DMimage dataset. The table shows the accuracy and F1 scores for real and fake image classification and the overall performance across both.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with other detection methods on the DMimage [10] dataset, using the original weights for each method.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14905/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14905/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}