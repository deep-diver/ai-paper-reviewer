---
title: "SPIDER: A Comprehensive Multi-Organ Supervised Pathology Dataset and Baseline Models"
summary: "SPIDER: A comprehensive pathology dataset boosts AI diagnostic models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 HistAI",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02876 {{< /keyword >}}
{{< keyword icon="writer" >}} Dmitry Nechaev et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02876" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02876" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02876/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Advancing AI in pathology demands extensive, high-quality datasets, yet current resources often lack diversity in organs, comprehensive class coverage, or sufficient annotation quality. To fill this gap, the authors introduce **SPIDER (Supervised Pathology Image-DEscription Repository)**, the largest publicly available patch-level dataset. SPIDER encompasses Skin, Colorectal, and Thorax tissues with detailed class coverage. Expert pathologists verify annotations, enriching classification through spatial context using surrounding context patches. 



SPIDER includes baseline models trained on the Hibou-L foundation model as a feature extractor, paired with an attention-based classification head, setting new performance standards across tissue types for digital pathology research. Beyond conventional patch classification, the model facilitates quick identification of key areas, calculates quantitative tissue metrics, and establishes a framework for multimodal strategies. Both the dataset and trained models are available publicly to facilitate research, ensure reproducibility, and promote AI-driven pathology development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SPIDER, a new large-scale pathology dataset, features multi-organ coverage and detailed annotations, addressing limitations of existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Baseline models trained on SPIDER demonstrate state-of-the-art performance, offering strong benchmarks for future research. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The dataset and models enable rapid identification of significant areas in WSIs, quantitative tissue metrics, and establish a foundation for multimodal approaches. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **SPIDER, a large, multi-organ pathology dataset with expert annotations**, crucial for advancing AI in digital pathology. It allows researchers to **train more robust models**, tackle diverse diagnostic tasks, and explore novel multimodal approaches for improved healthcare outcomes.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/dataprep.png)

> 🔼 The figure illustrates the multi-step process of creating the SPIDER dataset. It begins with raw whole-slide images (WSIs) that are manually annotated by expert pathologists to identify regions of interest representing different tissue morphologies.  These annotated WSIs then undergo patch extraction, where the images are divided into smaller, 224x224 pixel patches. Feature embedding is performed on these patches using the Hibou-L model. Then, a similarity-based retrieval method is used to identify additional visually similar patches from other WSIs, expanding the dataset size. Finally, all identified patches undergo a binary verification step by pathologists to guarantee high-quality labels, ensuring the patches are ready for model training. This entire process creates the high-quality dataset for the SPIDER project.
> <details>
> <summary>read the caption</summary>
> Figure 1: Dataset preparation pipeline: Raw whole-slide images (WSIs) undergo expert annotation, patch extraction, feature embedding, and similarity-based retrieval. A final verification step ensures high-quality labeled patches for training.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1">Organ</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.2">Train</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.3">Test</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.4">Total Central Patches</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.5">Total Unique Patches</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.6">Total Slides</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.7">Total Classes</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.1.1">Skin</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.2">131,164</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.3">28,690</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.4">159,854</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.5">2,696,987</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.6">3,784</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.2.1.7">24</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T1.1.3.2.1">Colorectal</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.2">63,989</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.3">13,193</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.4">77,182</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.5">1,039,150</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.6">1,719</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.3.2.7">14</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.4.3.1">Thorax</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.2">63,319</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.3">14,988</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.4">78,307</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.5">599,459</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.6">411</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.7">14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a detailed breakdown of the SPIDER dataset's composition across three organ types: skin, colorectal, and thorax.  It shows the number of training and testing patches for each organ type, along with the total number of central patches (224x224 pixels) extracted. Importantly, it highlights that each central patch is part of a larger 1120x1120 image region, including 24 surrounding context patches.  Due to the overlap of these context patches, the total number of unique patches is less than a simple multiplication of the number of central patches by 25.  Finally, the table indicates the total number of slides used for each organ and the number of unique classes represented in each organ.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset composition across organ types. Each central patch is extracted from a WSI and is accompanied by 24 context patches, forming a larger 1120×1120 region. Due to overlaps in context patches, the number of total unique patches is lower than a basic estimate of total central patches × 25.
> </details>





### In-depth insights


#### SPIDER Dataset
The SPIDER dataset, as described in the paper, appears to be a significant contribution to the field of computational pathology. It addresses limitations present in existing datasets by offering a **multi-organ, comprehensively annotated resource**. A key feature is the **high-quality, expert-verified annotations**, which is crucial for reliable training of AI models. The inclusion of **context patches** alongside the central patch is a thoughtful design choice, recognizing the importance of spatial context in pathological diagnosis. The paper emphasizes the **large scale** and **class coverage** of SPIDER. The fact that the dataset was created from a private source, not included in training other existing models is an important design choice as it will now allow for **benchmarking** which will further spur innovation. The **permissive open license** will increase accessibility and accelerate research by a lot of the broader community.

#### Context Matters
**Context is crucial in histopathology image analysis**. Isolated patches can be ambiguous, especially in distinguishing subtle tissue differences. Surrounding tissue structures provide valuable cues for accurate classification. Pathologists often assess tissue holistically, considering spatial relationships. **Incorporating context, through methods like larger image windows or attention mechanisms, enhances diagnostic precision**. Models that ignore context may misclassify tissue types due to lack of information from tissue interactions. Therefore, context-aware models are essential for emulating expert pathologist assessments. Furthermore, it improves tissue segmentation and supports the development of more clinically relevant insights. Ignoring context would result in limited and less reliable diagnostic interpretations.

#### Hibou Baseline
The paper utilizes a **Hibou-L foundation model** as a core component for feature extraction. It is then combined with an **attention-based classification head** to classify pathology images. By freezing the Hibou feature extractor during training and focusing on training the classification head. This approach efficiently leverages the robust features learned during pretraining, allowing for strong performance even with a moderately sized dataset. This design reflects a deliberate choice to leverage the generalization capabilities of foundation models, **mitigating overfitting** and enhancing the model's ability to perform well on diverse pathology images. This architecture serves as a strong baseline and starting point for future research.

#### Few Organs Now
While the paper does not explicitly have a section titled 'Few Organs Now,' we can infer the implications of limited organ coverage in pathology datasets. **Current datasets often focus on a single organ, hindering the development of generalizable AI models.** This narrow focus means models trained on, say, colorectal tissue, may perform poorly on skin or lung tissue. **The lack of organ diversity limits the scope of AI applications** in computational pathology. Expanding datasets to include more organ types would enable the creation of more versatile and robust AI tools applicable across a broader range of diagnostic scenarios and research questions, ultimately improving diagnostic accuracy and efficiency for a wider patient population. **SPIDER aims to tackle this limitation**.

#### Supervised > VLM
The text refers to 'Supervised > VLM', implying a transition or evolution from supervised learning methodologies towards Vision-Language Models (VLMs). This suggests leveraging the strengths of supervised learning, such as **expert-annotated datasets for fine-tuning**, to enhance VLM performance in computational pathology. The value lies in creating more detailed representations of tissue morphology and it helps to accelerate digital pathology research. Such models can be trained or augmented which require large amounts of paired text-image data and by automatically generating such pairs, the approach scales the development of richer AI solutions and it pushes the field towards more generalizable AI system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/classifier.png)

> 🔼 This figure illustrates the architecture of the model used for patch-level classification in the SPIDER dataset.  The model takes as input a large patch (1120x1120 pixels) composed of a central patch and 24 surrounding context patches.  Each of these 25 smaller (224x224 pixels) patches is processed individually by the Hibou-L feature extractor. The resulting embeddings from all 25 patches are then concatenated and fed into a transformer-based classification head. This head utilizes an attention mechanism to weigh the importance of the central patch and its surrounding context patches.  Finally, the classifier outputs probabilities for each class, which represent the likelihood of the central patch belonging to each class.  The use of context patches is a key feature, designed to improve the accuracy of the central patch classification by providing additional spatial information.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model architecture overview: The classifier processes a central patch alongside surrounding context patches. Features are extracted using the Hibou-L model, and an attention-based classification head integrates context information to improve central patch classification.
> </details>



![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/patches_per_class_skin.png)

> 🔼 This bar chart visualizes the distribution of different skin tissue classes within the SPIDER dataset.  Each bar represents a specific skin morphology (e.g., Actinic Keratosis, Basal Cell Carcinoma, Epidermis, etc.), and its length corresponds to the number of image patches belonging to that class. The total number of central patches in the dataset is also indicated.
> <details>
> <summary>read the caption</summary>
> Figure A1: Dataset skin class distribution
> </details>



![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/patches_per_class_colorectal.png)

> 🔼 This bar chart visualizes the distribution of colorectal tissue classes within the SPIDER dataset.  Each bar represents a specific colorectal tissue class (e.g., Adenocarcinoma High Grade, Adenoma Low Grade, etc.), and the length of the bar indicates the number of patches belonging to that class. The total number of central patches in the colorectal dataset is also displayed.
> <details>
> <summary>read the caption</summary>
> Figure A2: Dataset colorectal class distribution
> </details>



![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/patches_per_class_thorax.png)

> 🔼 This bar chart visualizes the distribution of classes within the thorax section of the SPIDER dataset.  Each bar represents a different tissue type (e.g., alveoli, bronchial glands, fibrosis, tumor) found in the thorax, and the length of the bar corresponds to the number of patches labeled with that specific class.  The total number of central patches in the thorax dataset is also indicated in the legend.
> <details>
> <summary>read the caption</summary>
> Figure A3: Dataset thorax class distribution
> </details>



![](https://arxiv.org/html/2503.02876/extracted/6252553/plots/full-slide-segmentation.png)

> 🔼 This figure shows an example of a whole-slide image (WSI) that has been segmented using the model described in the paper. Each color in the image represents a different tissue class or morphology as identified by the model.  The segmentation highlights the model's ability to delineate different tissue types within the WSI, demonstrating its potential for applications such as region of interest (ROI) identification and quantitative analysis of tissue composition.
> <details>
> <summary>read the caption</summary>
> Figure A4: Example of a full slide segmentation. Each color represents a separate class.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1">Organ</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2">Accuracy</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3">Precision</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4">F1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1">Skin</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.2">0.940</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.3">0.935</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.4">0.937</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1">Colorectal</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.2.2">0.914</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.2.3">0.917</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.2.4">0.915</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.4.3.1">Thorax</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.4.3.2">0.962</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.4.3.3">0.958</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.4.3.4">0.960</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the trained models on the test dataset, broken down by organ (Skin, Colorectal, and Thorax).  For each organ, the table reports three key metrics: Accuracy (the overall correctness of the model's predictions), Precision (the proportion of correctly identified positive cases out of all cases identified as positive), and F1 score (the harmonic mean of precision and recall, providing a balanced measure of model performance).  The F1 score is particularly useful when dealing with imbalanced datasets, as it considers both false positives and false negatives.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance metrics of models across different organs on the test set. Accuracy, Precision, and F1 score are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1">Organ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2">Large Context (1120×1120)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3">Medium Context (672×672)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4">No Context (224×224)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.1">Skin</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.2">0.940</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.3">0.935</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.4">0.923</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.3.2.1">Colorectal</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.2">0.914</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.3">0.906</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.4">0.895</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.4.3.1">Thorax</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.2">0.962</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.3">0.960</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.4">0.956</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the effect of different context window sizes on the model's accuracy for classifying pathology images. Three different context sizes are evaluated: a large context (1120x1120 pixels), a medium context (672x672 pixels), and no context (224x224 pixels). The accuracy of the model is reported for each context size and for three different organs: Skin, Colorectal, and Thorax. The results demonstrate that larger context windows significantly improve the model's accuracy, highlighting the importance of contextual information in accurate image classification.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of context size on model accuracy across different organs. Larger context windows improve accuracy, emphasizing the importance of contextual information.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T1.1.2.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T1.1.2.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T1.1.3.1.1">Epochs</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T1.1.3.1.2">10</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.4.2.1">Batch size</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.4.2.2">256</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.5.3.1">Loss function</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.5.3.2">Cross entropy</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.6.4.1">Label smoothing</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.6.4.2">0.2</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.7.5.1">Optimizer</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.7.5.2">AdamW <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02876v1#bib.bib14" title="">14</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.1.2">Learning rate</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.1.1"><math alttext="4\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T1.1.1.1.m1.1"><semantics id="A1.T1.1.1.1.m1.1a"><mrow id="A1.T1.1.1.1.m1.1.1" xref="A1.T1.1.1.1.m1.1.1.cmml"><mn id="A1.T1.1.1.1.m1.1.1.2" xref="A1.T1.1.1.1.m1.1.1.2.cmml">4</mn><mo id="A1.T1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T1.1.1.1.m1.1.1.3" xref="A1.T1.1.1.1.m1.1.1.3.cmml"><mn id="A1.T1.1.1.1.m1.1.1.3.2" xref="A1.T1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T1.1.1.1.m1.1.1.3.3" xref="A1.T1.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T1.1.1.1.m1.1.1.3.3a" xref="A1.T1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T1.1.1.1.m1.1.1.3.3.2" xref="A1.T1.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.1.1.1.m1.1b"><apply id="A1.T1.1.1.1.m1.1.1.cmml" xref="A1.T1.1.1.1.m1.1.1"><times id="A1.T1.1.1.1.m1.1.1.1.cmml" xref="A1.T1.1.1.1.m1.1.1.1"></times><cn id="A1.T1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T1.1.1.1.m1.1.1.2">4</cn><apply id="A1.T1.1.1.1.m1.1.1.3.cmml" xref="A1.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T1.1.1.1.m1.1.1.3.1.cmml" xref="A1.T1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T1.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T1.1.1.1.m1.1.1.3.3.cmml" xref="A1.T1.1.1.1.m1.1.1.3.3"><minus id="A1.T1.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T1.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T1.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.1.1.1.m1.1c">4\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.1.1.1.m1.1d">4 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.8.6.1">Weight decay</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.8.6.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.9.7.1">Learning rate scheduler</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.9.7.2">Linear warmup + Cosine annealing</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.1.10.8.1">Warmup epochs</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.10.8.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T1.1.11.9.1">Mixed precision</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T1.1.11.9.2">FP16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A1 presents the hyperparameters used during the training of the models.  It details the settings for various aspects of the training process, including the number of training epochs, batch size, loss function used, label smoothing techniques, optimizer employed, learning rate, weight decay, and the learning rate scheduler strategy.  The table also indicates the number of warmup epochs and the mixed precision used.
> <details>
> <summary>read the caption</summary>
> Table A1: Training hyperparameters
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.1">Parameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.1.2.2.1">Feature extractor</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.1.2.2.2">Hibou-L</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T2.1.3.3.1">Classification head</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.3.3.2">Bert <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02876v1#bib.bib15" title="">15</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T2.1.4.4.1">Hidden size</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.4.4.2">128</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T2.1.5.5.1">Number of hidden layers</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.5.5.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.6.6">
<td class="ltx_td ltx_align_left" id="A1.T2.1.6.6.1">Number of attention heads</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.6.6.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T2.1.7.7.1">Intermediate size</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.7.7.2">128</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.8.8">
<td class="ltx_td ltx_align_left" id="A1.T2.1.8.8.1">Maximum position embeddings</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.8.8.2">25</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.9.9">
<td class="ltx_td ltx_align_left" id="A1.T2.1.9.9.1">Hidden dropout probability</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.9.9.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.10.10">
<td class="ltx_td ltx_align_left" id="A1.T2.1.10.10.1">Attention dropout probability</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.10.10.2">0.3</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.1.11.11.1">Head dropout probability</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.1.11.11.2">0.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters and architectural choices used to configure the model used in the experiments.  It covers aspects of the feature extractor, classification head, and various layer dimensions, allowing for reproducibility and understanding of the model's design.
> <details>
> <summary>read the caption</summary>
> Table A2: Model configuration
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1">Class</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.3.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.4.1">F1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T3.1.2.1.1">Actinic Keratosis</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.2.1.2">0.768</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.2.1.3">0.817</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.2.1.4">0.792</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.3.2.1">Apocrine Glands</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.3.2.2">0.999</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.3.2.3">0.999</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.3.2.4">0.999</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.4.3.1">Basal Cell Carcinoma</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.4.3.2">0.959</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.4.3.3">0.913</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.4.3.4">0.935</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.5.4.1">Carcinoma In Situ</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.5.4.2">0.761</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.5.4.3">0.698</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.5.4.4">0.728</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.6.5.1">Collagen</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.6.5.2">0.989</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.6.5.3">0.992</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.6.5.4">0.990</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.7.6.1">Epidermis</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.7.6.2">0.871</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.7.6.3">0.933</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.7.6.4">0.901</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.8.7.1">Fat</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.8.7.2">0.997</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.8.7.3">0.998</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.8.7.4">0.997</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.9.8.1">Follicle</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.9.8.2">0.942</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.9.8.3">0.953</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.9.8.4">0.947</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.10.9.1">Inflammation</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.10.9.2">0.926</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.10.9.3">0.974</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.10.9.4">0.949</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.11.10.1">Invasive Melanoma</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.11.10.2">0.936</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.11.10.3">0.937</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.11.10.4">0.937</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.12.11.1">Kaposi’s Sarcoma</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.12.11.2">0.990</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.12.11.3">0.906</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.12.11.4">0.946</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.13.12.1">Keratin</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.13.12.2">0.994</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.13.12.3">0.977</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.13.12.4">0.985</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.14.13.1">Melanoma In Situ</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.14.13.2">0.976</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.14.13.3">0.962</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.14.13.4">0.969</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.15.14.1">Mercel Cell Carcinoma</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.15.14.2">0.887</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.15.14.3">0.998</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.15.14.4">0.939</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.16.15.1">Muscle</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.16.15.2">0.984</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.16.15.3">0.984</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.16.15.4">0.984</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.17.16.1">Necrosis</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.17.16.2">0.981</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.17.16.3">0.954</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.17.16.4">0.967</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.18.17.1">Nerves</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.18.17.2">0.999</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.18.17.3">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.18.17.4">0.999</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.19.18.1">Nevus</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.19.18.2">0.973</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.19.18.3">0.981</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.19.18.4">0.977</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.20.19.1">Sebaceous Gland</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.20.19.2">0.987</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.20.19.3">0.984</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.20.19.4">0.985</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.21.20.1">Seborrheic Keratosis</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.21.20.2">0.929</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.21.20.3">0.914</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.21.20.4">0.922</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.22.21.1">Solar Elastosis</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.22.21.2">0.997</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.22.21.3">0.988</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.22.21.4">0.993</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.23.22.1">Squamous Cell Carcinoma</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.23.22.2">0.839</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.23.22.3">0.826</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.23.22.4">0.832</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.24.23.1">Vessels</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.24.23.2">0.991</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.24.23.3">0.991</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.24.23.4">0.991</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.25.24.1">Wart</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.25.24.2">0.881</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.25.24.3">0.772</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.25.24.4">0.823</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T3.1.26.25.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T3.1.26.25.2">0.940</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T3.1.26.25.3">0.935</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T3.1.26.25.4">0.937</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A3 presents a detailed breakdown of the model's performance on the skin tissue classification task.  For each skin morphology class (e.g., Actinic Keratosis, Apocrine Glands, Basal Cell Carcinoma, etc.), the table displays the accuracy, precision, and F1-score achieved by the model. These metrics provide a granular assessment of the model's ability to correctly identify and classify each specific type of skin tissue, offering insights into the model's strengths and weaknesses across different tissue classes.
> <details>
> <summary>read the caption</summary>
> Table A3: Extended classification metrics for skin model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1">Class</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.3.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.4.1">F1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.1">Adenocarcinoma High Grade</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.2">0.861</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.3">0.963</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.4">0.909</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.3.2.1">Adenocarcinoma Low Grade</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.2">0.819</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.3">0.848</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.4">0.833</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.4.3.1">Adenoma High Grade</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.2">0.805</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.3">0.762</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.4">0.783</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.5.4.1">Adenoma Low Grade</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.4.2">0.915</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.4.3">0.865</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.4.4">0.889</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.6.5.1">Fat</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.2">0.994</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.3">0.997</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.4">0.995</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.7.6.1">Hyperplastic Polyp</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.2">0.833</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.3">0.866</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.4">0.850</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.8.7.1">Inflammation</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.7.2">0.978</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.7.3">0.959</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.7.4">0.969</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.9.8.1">Mucus</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.2">0.895</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.3">0.818</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.4">0.855</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.10.9.1">Muscle</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.9.2">0.981</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.9.3">0.970</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.9.4">0.976</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.11.10.1">Necrosis</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.10.2">0.977</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.10.3">0.976</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.10.4">0.977</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.12.11.1">Sessile Serrated Lesion</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.11.2">0.889</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.11.3">0.961</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.11.4">0.924</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.13.12.1">Stroma Healthy</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.12.2">0.977</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.12.3">0.970</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.12.4">0.974</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.14.13.1">Vessels</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.13.2">0.961</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.13.3">0.969</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.13.4">0.965</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T4.1.15.14.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T4.1.15.14.2">0.914</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T4.1.15.14.3">0.917</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T4.1.15.14.4">0.915</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A4 presents a detailed breakdown of the model's performance on a per-class basis for colorectal tissue classification.  It shows the accuracy, precision, and F1 score achieved by the model for each specific colorectal tissue class in the test dataset.  This provides a more granular view of the model's capabilities than the overall accuracy reported in the main text, revealing strengths and weaknesses across various tissue types.
> <details>
> <summary>read the caption</summary>
> Table A4: Extended classification metrics for colorectal model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Class</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.3.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.4.1">F1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.2.1.1">Alveoli</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.2">0.986</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.3">0.926</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.4">0.955</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.3.2.1">Bronchial Cartilage</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.2.2">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.2.3">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.2.4">1.000</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.4.3.1">Bronchial Glands</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.4.3.2">0.995</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.4.3.3">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.4.3.4">0.998</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.5.4.1">Chronic Inflammation + Fibrosis</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.5.4.2">0.950</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.5.4.3">0.998</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.5.4.4">0.973</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.6.5.1">Detritus</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.6.5.2">0.961</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.6.5.3">0.959</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.6.5.4">0.960</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.7.6.1">Fibrosis</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.7.6.2">0.932</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.7.6.3">0.918</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.7.6.4">0.925</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.8.7.1">Hemorrhage</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.8.7.2">0.948</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.8.7.3">0.988</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.8.7.4">0.968</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.9.8.1">Lymph Node</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.9.8.2">0.962</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.9.8.3">0.994</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.9.8.4">0.978</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.10.9.1">Pigment</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.10.9.2">0.935</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.10.9.3">0.863</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.10.9.4">0.898</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.11.10.1">Pleura</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.11.10.2">0.914</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.11.10.3">0.892</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.11.10.4">0.903</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.12.11.1">Tumor Non-Small Cell</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.12.11.2">0.995</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.12.11.3">0.997</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.12.11.4">0.996</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.13.12.1">Tumor Small Cell</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.13.12.2">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.13.12.3">0.993</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.13.12.4">0.996</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.14.13.1">Tumor Soft</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.14.13.2">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.14.13.3">1.000</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.14.13.4">1.000</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.15.14.1">Vessel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.15.14.2">0.887</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.15.14.3">0.885</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.15.14.4">0.886</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T5.1.16.15.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.1.16.15.2">0.962</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.1.16.15.3">0.958</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.1.16.15.4">0.960</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A5 presents a detailed breakdown of the model's performance on the thorax organ dataset.  It shows the accuracy, precision, and F1-score for each individual class within the thorax category, allowing for a granular assessment of the model's strengths and weaknesses in classifying different thorax tissue types. This level of detail helps in understanding the overall model performance and identifying areas for potential improvement.
> <details>
> <summary>read the caption</summary>
> Table A5: Extended classification metrics for thorax model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02876/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02876/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}