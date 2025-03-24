---
title: "From Head to Tail: Towards Balanced Representation in Large Vision-Language Models through Adaptive Data Calibration"
summary: "ADR balances visual-language models by adaptively calibrating long-tail data, boosting LLaVA 1.5 by 4.36% without increasing training data volume."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Fudan University",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12821 {{< /keyword >}}
{{< keyword icon="writer" >}} Mingyang Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12821" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12821" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12821/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models (LVLMs) often struggle with **long-tail (LT) problems**, where some data categories are over-represented while others are scarce. Current methods focus on traditional VLM architectures and specific tasks, leaving the broader exploration of LVLMs and general tasks under-explored. A key issue identified here is that head concepts are overly represented while tail concepts are under-represented, leading to imbalanced model performance.



To address this, the paper introduces an **Adaptive Data Refinement Framework (ADR)**, consisting of Data Rebalancing (DR) and Data Synthesis (DS) stages. DR adaptively rebalances redundant data based on entity distributions, while DS uses Denoising Diffusion Probabilistic Models to supplement under-represented portions. The results show that ADR effectively improves the performance of LLaVA 1.5 across eleven benchmarks by 4.36% without increasing the data volume.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LVLMs suffer from significant long-tail problems due to imbalanced training data, causing over-representation of head concepts and under-representation of tail concepts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Adaptive Data Refinement Framework (ADR) effectively mitigates long-tail issues by adaptively rebalancing data and synthesizing scarce examples. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ADR enhances model performance across various benchmarks and improves tail concept performance without increasing the training data volume. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers due to its **in-depth analysis of LT problems in LVLMs** and the introduction of **ADR**, a novel framework, easily integrated into open-source LVLMs. ADR's dual approach of rebalancing and synthesizing data addresses unique challenges. The **significant performance gains** without increasing data volume make it highly relevant for advancing more robust and balanced multimodal AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12821/x1.png)

> 🔼 This figure shows the performance comparison between the original LLaVA 1.5 model and the model enhanced with the proposed Adaptive Data Refinement (ADR) framework.  The (a) subplot displays a radar chart comparing the performance across eleven benchmarks. Each axis represents a benchmark, and the distance from the center represents the performance score, showing that the ADR-enhanced model consistently outperforms LLaVA 1.5 across all benchmarks. The (b) subplot focuses specifically on the accuracy of the tail 30% of concepts within the VQAV2 benchmark, further illustrating the improved performance of the ADR-enhanced model in handling the long-tail distribution problem.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.6.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.1.1.1">Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.1.2.1">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.1.3.1">thres</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.1.4.1">% E</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.1.5.1">% DI</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.6.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.2.1.1" rowspan="4"><span class="ltx_text" id="S2.T1.6.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.2.1.1.1.1">LLaVA</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12821v2#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.2.1.2">Tok</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.2.1.3">120</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.2.1.4">98.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.2.1.5">10.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.3.2">
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.3.2.1">Obj</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.3.2.2">304</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.3.2.3">98.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.3.2.4">10.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.4.3">
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.4.3.1">Co</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.4.3.2">24</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.4.3.3">92.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.4.3.4">25.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.5.4">
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.5.4.1">Int</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.5.4.2">4895</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.5.4.3">99.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.5.4.4">10.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T1.6.1.6.5.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S2.T1.6.1.6.5.1.1" style="background-color:#F2F2F2;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T1.6.1.6.5.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S2.T1.6.1.6.5.2.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T1.6.1.6.5.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S2.T1.6.1.6.5.3.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T1.6.1.6.5.4" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.6.5.4.1" style="background-color:#F2F2F2;">97.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T1.6.1.6.5.5" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.6.5.5.1" style="background-color:#F2F2F2;">13.75</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the relative amount of tail data (data representing less frequent entities) remaining after a reverse indexing process was applied to the LLaVA 1.5 instruction tuning dataset.  The analysis considers four different perspectives: Tokens (individual words), Objects (visual concepts), Co-occurrences (relationships between objects), and Interrogations (types of questions).  For each perspective, it shows the percentage of tail entities (%E) and the percentage of data instances associated with these tail entities (%DI).  A higher percentage of data instances associated with a smaller percentage of entities indicates a long-tail problem, where a few frequent entities dominate the data while many infrequent entities are underrepresented.
> <details>
> <summary>read the caption</summary>
> Table 1: Relative data volume of tail data after reverse indexing. “Tok”, “Obj”, “Co”, and “Int” represent Token, Object, Co-occurrence, and Interrogation, respectively. %E denotes the percentage of tail entities, while %DI indicates the percentage of tail data instances.
> </details>





### In-depth insights


#### LVLM Long-Tail
The Long-Tail (LT) problem in Large Vision-Language Models (LVLMs) highlights a critical challenge: **data imbalance**. Traditional methods often focus on CLIP or ViT architectures and specific tasks like classification.  However, LVLMs, exemplified by LLaVA, performing general tasks like visual question answering require deeper exploration. This imbalance manifests as an **overrepresentation of common concepts** and an **underrepresentation of rarer ones**, skewing model learning. This analysis shows many open-source LVLMs need improvement. The unique co-occurrence and cross-modal nature of LVLMs pose distinct challenges compared to traditional models. A potential solution involves Adaptive Data Refinement (ADR). ADR integrates data rebalancing and synthesis which helps to mitigate the issues of over represented and under represented data. A comprehensive analysis of tokens, objects, co-occurrences, and interrogations provides insights into the causes and propose solutions to resolve the LT issues.

#### Adaptive Refine
The concept of an 'Adaptive Refinement' process, likely within a model like an LVLM, strongly suggests a methodology for **iteratively improving performance by adjusting data**. This could involve techniques like **re-weighting data based on difficulty or importance**, focusing on areas where the model struggles. Data augmentation or synthesis, **generating new examples to address imbalances**, could also fall under adaptive refinement. **Calibration**, is a key component, it could also be dynamically adjusting model parameters to better align with the true data distribution. This approach indicates a commitment to **robustness and generalization**, addressing potential biases or weaknesses in the initial training. The adaptation **iteratively refines the model's ability to extract information**.

#### LT Problem Causes
The research paper identifies two primary causes for the Long-Tail (LT) problem in Large Vision-Language Models (LVLMs). First, there is an **overrepresentation of head concepts** in the training data. This means that common objects, entities, or relationships are disproportionately present. Second, there is an **underrepresentation of tail concepts**. Rare objects, unusual relationships, or subtle visual cues are scarce in the data. This imbalance leads the LVLMs to perform well on frequent concepts but struggle with infrequent ones. Addressing these causes is crucial for improving the robustness and generalization ability of LVLMs.

#### Synthesizing Data
Data synthesis emerges as a crucial strategy to tackle the challenge of **scarce data**, especially in vision-language models.  This involves creating new, realistic data points to augment existing datasets, thereby **improving model generalization and robustness**.  Effective synthesis techniques leverage methods such as generative adversarial networks and variational autoencoders, carefully crafting images and text to **mimic real-world distributions**. The goal is to populate underrepresented regions of the data space, **reducing bias and enhancing performance** on tail concepts that are often poorly captured in imbalanced datasets. A careful balance must be struck to avoid introducing artifacts or unrealistic patterns that could negatively affect model learning.

#### ADR Superiority
The concept of 'ADR Superiority' suggests an innovative approach to enhancing model performance, likely through adaptive data refinement. This implies **superiority over existing methods** due to ADR's capability to dynamically adjust data based on underlying patterns, **addressing imbalances and biases**. It highlights the significance of **data-centric refinement**, where superior outcomes aren't achieved by tweaking the model but by **optimizing the training data itself**. ADR's superiority could stem from its ability to **automate intricate data adjustments**, reducing manual intervention. The 'superiority' further emphasizes the **efficiency and efficacy** of ADR in diverse scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12821/x2.png)

> 🔼 This figure shows the accuracy of the model on the tail 30% of the data in VQAV2.  The baseline LLaVA 1.5 model and the improved model using the proposed ADR method are compared. The chart displays a radar plot showing performance across multiple aspects of the task. The ADR method demonstrates significantly improved accuracy for the tail 30% concepts. 
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2503.12821/x3.png)

> 🔼 This figure displays a comparison of performance on various benchmarks before and after addressing the long-tail (LT) problem in Large Vision-Language Models (LVLMs). The left subplot (a) shows the performance improvement of the proposed method (Ours) compared to the LLaVA 1.5 baseline across different benchmarks. The right subplot (b) focuses specifically on the accuracy achieved on the tail 30% of concepts within the VQAV2 benchmark, highlighting that the proposed method significantly enhances the performance on the tail concepts.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Performance before and after addressing the LT problem. Our method surpasses the baseline over all benchmarks and also effectively improves the performance of tail 30% concepts.
> </details>



![](https://arxiv.org/html/2503.12821/x4.png)

> 🔼 Figure 2 illustrates the Adaptive Data Refinement Framework (ADR), a three-stage process to address data imbalance in large vision-language models.  Stage (a) Analyzing, extracts key features (tokens, objects, co-occurrences, and interrogations) from the training data and generates their distributions. Stage (b) Data Rebalancing, uses this information to identify and remove redundant data while retaining the data with under-represented entities.  Finally, stage (c) Data Synthesis, leverages diffusion probabilistic models and limited data to generate synthetic data for underrepresented categories.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The overview of our Adaptive Data Refinement Framework (ADR). (a) In the Analyzing Stage, we first extract tokens, objects, co-occurrences, and interrogations from the training instances, then construct corresponding distribution using a reverse-indexed mapping. (b) In the Data Rebalancing stage, we analyze the optimizing direction and adaptively rebalance the redundant data based on the entity distribution identified in the Analyzing stage. (c) Finally, in the Data Synthesis stage, we utilize DDPM and the latent representations of scarce image instances to synthesize the underrepresented data.
> </details>



![](https://arxiv.org/html/2503.12821/x5.png)

> 🔼 The figure shows the performance comparison between LLaVA 1.5 and the proposed method on eleven benchmarks.  Subfigure (a) displays the average performance improvement across all benchmarks, showing that the proposed method outperforms LLaVA 1.5. Subfigure (b) focuses on the accuracy achieved on the tail 30% of concepts within the VQAV2 benchmark, demonstrating a significant improvement by the proposed method compared to LLaVA 1.5. This visualization highlights the effectiveness of the proposed method in addressing the long-tail problem in large vision-language models.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2503.12821/x6.png)

> 🔼 This figure shows the accuracy of the model on the tail 30% of concepts in the VQAV2 benchmark.  It compares the performance of the original LLaVA 1.5 model to the model enhanced with the proposed ADR (Adaptive Data Refinement) framework. The chart visually demonstrates that the ADR-improved model significantly outperforms the baseline model on the more challenging, less frequent concepts (tail data).
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2503.12821/x7.png)

> 🔼 This figure shows the Data Synthesis stage of the Adaptive Data Refinement Framework (ADR).  It illustrates the process of generating underrepresented tail data using Denoising Diffusion Probabilistic Models (DDPMs). Specifically, it demonstrates how latent representations of scarce images are leveraged to synthesize new images and captions representing underrepresented concepts, thereby mitigating the long-tail problem in the training data.
> <details>
> <summary>read the caption</summary>
> ((c))
> </details>



![](https://arxiv.org/html/2503.12821/x8.png)

> 🔼 This figure shows the object-level word distribution in LLaVA's instruction tuning dataset.  It illustrates the long-tail distribution problem in the training data, where a small number of objects are overrepresented (head), while a large number of objects are underrepresented (tail).  This imbalance can negatively affect the performance of the model on the underrepresented tail concepts.
> <details>
> <summary>read the caption</summary>
> ((d))
> </details>



![](https://arxiv.org/html/2503.12821/x9.png)

> 🔼 This figure visualizes the long-tail distributions in instruction-tuning and benchmark datasets, specifically focusing on token-level and object-level distributions.  Subfigures (a) and (c) show the distributions in the MME dataset, while subfigures (b) and (d) show those in the InstructMix665K dataset.  The long tail is a common problem in datasets where some categories have far more examples than others.  These plots help illustrate the severity of this class imbalance, indicating the challenge for models trained on such data.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Long-tail distribution in instruction-tuning and benchmark datasets: (a) Token-level distribution in MME [16]. (b) Token-level distribution in InstructMix665K [28]. (c) Object-level distribution in MME [16]. (d) Object-level distribution in InstructMix665K [28].
> </details>



![](https://arxiv.org/html/2503.12821/x10.png)

> 🔼 This figure shows the performance comparison between LLaVA 1.5 and the proposed method (Ours) on various vision-language benchmarks. Subfigure (a) presents the performance comparison across different benchmarks, demonstrating that the proposed method outperforms LLaVA 1.5 consistently and significantly improves the average performance. Subfigure (b) focuses on the accuracy on the tail 30% of concepts in the VQAV2 benchmark, illustrating the effectiveness of the proposed method in mitigating the long-tail problem and improving the performance on less frequent concepts.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2503.12821/x11.png)

> 🔼 This figure shows the accuracy of the model on the tail 30% of the data in the VQAV2 benchmark.  It compares the performance of the original LLaVA 1.5 model against the improved model after applying the Adaptive Data Refinement (ADR) framework. The chart visually demonstrates the significant improvement achieved by ADR in handling the long-tail problem. The increased accuracy on the tail data indicates that the ADR method effectively addresses the imbalance in the training data and enhances the model's overall performance.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2503.12821/x12.png)

> 🔼 This figure shows the Data Synthesis stage of the Adaptive Data Refinement Framework (ADR).  It illustrates the process of using Denoising Diffusion Probabilistic Models (DDPMs) and latent representations of scarce images to supplement under-represented portions of the training data.  The diagram details how the system leverages vision encoders, captioners, and language models (LMs) to synthesize both visual and textual information, generating new image-caption pairs for underrepresented tail concepts.
> <details>
> <summary>read the caption</summary>
> ((c))
> </details>



![](https://arxiv.org/html/2503.12821/x13.png)

> 🔼 Figure 4 displays error accumulation curves for the POPE and MME datasets, illustrating the disproportionate contribution of tail entities to prediction errors. The curves show that while a small percentage of frequent entities account for many correct predictions, a large portion of less frequent tail entities are associated with the majority of failures.  Panel (a) shows the analysis at the token level, panel (b) at the object level, and panel (c) at the co-occurrence level, offering a multi-faceted understanding of how long-tail effects manifest across different granularities of analysis in the datasets.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Error accumulation curve of POPE and MME based on the training data distribution. It reveals that tail entities contribute to the majority of failure cases. (a) Token-level word distribution in MME [16] and POPE [25]. (b) Object-level word distribution in MME and POPE. (c) Co-occurrence-level word distribution in MME and POPE.
> </details>



![](https://arxiv.org/html/2503.12821/x14.png)

> 🔼 This ablation study investigates the impact of different combinations of data rebalancing methods on the overall performance of a large vision-language model (LLaVA 1.5).  The study uses four perspectives to rebalance the data: Token, Object, Co-occurrence, and Interrogation (represented by T, O, C, and W respectively). Each bar in the graph shows the average performance across multiple benchmarks when using various combinations of these rebalancing techniques. The blue dashed line serves as the baseline performance of LLaVA 1.5 without any data rebalancing. This allows for a direct comparison and visualization of the effectiveness of different rebalancing strategies.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Ablation study on data rebalancing combinations. T, O, C, and W refer to Token, Object, Co-occurrence, and Interrogation respectively. The values displayed in the graph represent average scores across a variety of comprehensive benchmarks. The blue dashed line indicates the baseline performance of LLaVA 1.5.
> </details>



![](https://arxiv.org/html/2503.12821/x15.png)

> 🔼 This ablation study investigates the impact of different data rebalancing and synthesis methods on the overall performance of a large vision-language model (LLaVA 1.5).  The x-axis represents various combinations of techniques (explained in Section 6.2), and the y-axis shows the average performance across multiple comprehensive benchmarks. The blue dashed line indicates the baseline performance of the LLaVA 1.5 model without any data augmentation or rebalancing. The results illustrate which combination of data rebalancing and synthesis methods yields the best performance improvement on average.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Ablation study on data rebalancing synthesis methods. The meaning of abbrs occurred here is explained in Section 6.2. The values displayed in the graph represent average scores across a variety of comprehensive benchmarks. The blue dashed line indicates the baseline performance of LLaVA 1.5.
> </details>



![](https://arxiv.org/html/2503.12821/x16.png)

> 🔼 This figure presents a qualitative comparison of LLaVA 1.5 (baseline) and LLaVA with the proposed ADR method in answering tail questions (questions related to less frequent concepts).  A tail example is provided to highlight the difference in performance.  The example demonstrates that LLaVA 1.5 struggles with the tail question and fails to provide a correct answer, while LLaVA with ADR successfully answers the same question.  This visually demonstrates the improvement in handling under-represented data achieved through the use of the ADR framework.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Qualitative comparison between the baseline model (LLaVA 1.5) and our proposed method (LLaVA w/ ADR) on a tail example. LLaVA w/ ADR can handle tail questions while LLaVA 1.5 fails to answer. While LLaVA 1.5 fails to answer tail questions, LLaVA w/ ADR successfully addresses them.
> </details>



![](https://arxiv.org/html/2503.12821/x17.png)

> 🔼 Figure 8 visualizes a comparison between the original instruction-tuning dataset and the data synthesized by the proposed method.  The image showcases examples from both datasets, highlighting tail concepts (under-represented concepts in the original dataset). Tail concepts in the original data are marked with red boxes and red font, while the synthesized tail concepts are marked with green boxes and yellow font. This allows for a direct visual comparison of the original data's limitations and how the proposed method addresses these limitations by supplementing the dataset with synthesized examples of tail concepts.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Comparison between the original instruction-tuning (IT) data and our synthesized IT data. Tail concepts in the original data are highlighted using red boxes and fonts, whereas synthesized tail concepts are marked with green boxes and yellow fonts.
> </details>



![](https://arxiv.org/html/2503.12821/x18.png)

> 🔼 A photograph depicting a bear calmly situated next to a rock wall. The setting appears natural and serene, suggesting a wildlife environment. The bear's posture is relaxed, indicating a peaceful moment.
> <details>
> <summary>read the caption</summary>
> ((a)) A bear resting peacefully beside a rock wall.
> </details>



![](https://arxiv.org/html/2503.12821/x19.png)

> 🔼 A cell phone screen displays a cartoon princess.  The image is used as an example in the paper to illustrate a challenge in a Vision-Language Model (VLM). The model is shown to have difficulty in identifying details in images containing underrepresented concepts or objects (referred to as 'tail concepts' in the paper). The example highlights the need for the Adaptive Data Refinement Framework (ADR) that the paper proposes.
> <details>
> <summary>read the caption</summary>
> ((b)) A cell phone displaying a cartoon princess on its screen.
> </details>



![](https://arxiv.org/html/2503.12821/x20.png)

> 🔼 The image shows a dump truck, a large motor vehicle used for hauling materials.  It is typically characterized by its open-box bed at the rear, used for carrying loose materials like dirt, gravel, sand, or demolition debris.  The truck in the image likely represents a common type found in construction, mining, or waste management.
> <details>
> <summary>read the caption</summary>
> ((c)) A dump truck.
> </details>



![](https://arxiv.org/html/2503.12821/x21.png)

> 🔼 This figure presents a qualitative comparison of LLaVA 1.5 (baseline) and LLaVA with ADR (the proposed method) on several examples of tail questions (questions related to underrepresented concepts in the training data).  The images show that while the baseline model, LLaVA 1.5, fails to answer these challenging, less frequent questions correctly, the model incorporating the ADR framework successfully answers the tail questions.  This demonstrates the effectiveness of ADR in improving the model's ability to handle underrepresented concepts and generalize better to less frequent scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Qualitative comparison between the baseline model (LLaVA 1.5) and our proposed method (LLaVA w/ ADR) on a few tail examples. While LLaVA 1.5 fails to answer tail questions, LLaVA w/ ADR successfully addresses them.
> </details>



![](https://arxiv.org/html/2503.12821/x22.png)

> 🔼 The image depicts a train traveling on a railway line adjacent to a church. The scene likely represents a rural or suburban area. The railway track is visible, and the train appears to be in motion, possibly suggesting a journey in progress. The church is a prominent feature of the background, and its architectural style and surroundings could offer insights into the local context or history.
> <details>
> <summary>read the caption</summary>
> ((a)) A train traveling along a railway near a church.
> </details>



![](https://arxiv.org/html/2503.12821/x23.png)

> 🔼 The image depicts a wooden bench situated next to a serene lake. Lush greenery, suggestive of a forest, is visible on the opposite bank of the lake. The scene appears tranquil and peaceful, showcasing a natural setting with a simple structure.
> <details>
> <summary>read the caption</summary>
> ((b)) A bench by the lake, with a forest on the opposite shore.
> </details>



![](https://arxiv.org/html/2503.12821/x24.png)

> 🔼 The image shows a living room scene with a variety of furniture pieces, including a coffee table and a sofa. Several potted plants are placed around the room, acting as decorative elements. The overall impression is one of a homey and well-decorated space.
> <details>
> <summary>read the caption</summary>
> ((c)) A furniture arrangement complemented by a variety of planters.
> </details>



![](https://arxiv.org/html/2503.12821/x25.png)

> 🔼 Figure 10 displays a comparison of original and synthesized instruction-tuning data.  The figure highlights the differences in the representation of 'tail concepts' – concepts that are under-represented in the original dataset.  The original data's tail concepts are shown in red boxes and fonts, while those generated through the data synthesis process in the proposed ADR framework are highlighted in green boxes and yellow fonts. This visual comparison demonstrates the effectiveness of the data synthesis stage in enriching the dataset with more examples of under-represented concepts.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Comparison between the original instruction-tuning (IT) data and our synthesized IT data. Tail concepts in the original data are highlighted using red boxes and fonts, whereas synthesized tail concepts are marked with green boxes and yellow fonts.
> </details>



![](https://arxiv.org/html/2503.12821/x26.png)

> 🔼 This bar chart visualizes the top 20 most frequent entities across four categories (tokens, objects, co-occurrences, and interrogations) within the instruction-tuning dataset used to train the LLaVA 1.5 large vision-language model.  For each entity, the bar's height represents its frequency of occurrence in the dataset.  The chart offers insights into the prevalent themes and concepts within the training data, highlighting which aspects are most heavily represented and thus may influence the model's performance and potential biases.
> <details>
> <summary>read the caption</summary>
> Figure 11: Top 20 most frequent entities in the instruction-tuning dataset of LLaVA 1.5.
> </details>



![](https://arxiv.org/html/2503.12821/x27.png)

> 🔼 This figure shows the token-level word distribution in the MME dataset.  The graph displays the frequency distribution of different words, highlighting the long-tail phenomenon where a small number of frequent words make up a large proportion of the data, while a vast number of infrequent words constitute the remaining portion.
> <details>
> <summary>read the caption</summary>
> ((a)) MME: Tok
> </details>



![](https://arxiv.org/html/2503.12821/x28.png)

> 🔼 This figure shows the token-level word distribution in the LCS558K dataset.  The x-axis represents the word frequency, and the y-axis represents the relative frequency of words. The graph visualizes the long-tail distribution of words in the dataset, indicating a significant imbalance in the distribution of word frequencies.  Many words appear infrequently, while a few words appear very frequently. This is typical of natural language data and highlights the long-tail problem which the paper attempts to address.
> <details>
> <summary>read the caption</summary>
> ((b)) LCS558K: Tok
> </details>



![](https://arxiv.org/html/2503.12821/x29.png)

> 🔼 This figure shows the token-level word distribution in the InstructMix665K dataset.  It's a histogram illustrating the frequency of different words.  The x-axis represents the words and the y-axis represents their frequency or relative count in the dataset. This visualization helps to understand the distribution of words, showing which words are frequent and which words are rare.
> <details>
> <summary>read the caption</summary>
> ((c)) InstructMix665K: Tok
> </details>



![](https://arxiv.org/html/2503.12821/x30.png)

> 🔼 This figure shows the object-level word distribution in the MME benchmark dataset.  It illustrates the frequency of different object words within the dataset, highlighting the imbalance in representation. The x-axis represents the object words, and the y-axis represents their frequency or proportion in the dataset.  The graph visually demonstrates the long-tail distribution characteristic of the MME dataset where some object categories are highly frequent, while others are very infrequent.
> <details>
> <summary>read the caption</summary>
> ((d)) MME: Obj
> </details>



![](https://arxiv.org/html/2503.12821/x31.png)

> 🔼 This figure shows the object-level word distribution in the LCS558K dataset.  The x-axis represents the word, and the y-axis represents the frequency. The plot displays the distribution of object words within the training data of the LCS558K dataset. It illustrates the imbalance in the data, showing the presence of a long tail, indicating that many objects have low frequency counts, while a few objects have very high frequency counts. This plot helps to visualize the long-tail problem in the dataset and how this data imbalance may affect the performance of Large Vision-Language Models (LVLMs).
> <details>
> <summary>read the caption</summary>
> ((e)) LCS558K: Obj
> </details>



![](https://arxiv.org/html/2503.12821/x32.png)

> 🔼 This figure shows the object-level word distribution in the InstructMix665K dataset.  The x-axis represents the words, and the y-axis represents their relative frequency.  The distribution illustrates the long-tail phenomenon, where a small number of objects account for a large proportion of the data, while a vast number of objects are sparsely represented. This visualization highlights the imbalance in the dataset, demonstrating the challenge posed by long-tail data for training effective vision-language models.
> <details>
> <summary>read the caption</summary>
> ((f)) InstructMix665K: Obj
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.7.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.1.1">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.2.1">Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.3.1">thres</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.4.1">% E</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.5.1">% DI</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.2.2.1" rowspan="3"><span class="ltx_text" id="S3.T2.7.1.2.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.2.2.1.1.1">MME</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12821v2#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.2.2.2">Tok</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.2.2.3">156</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.2.2.4">99.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.2.2.5">75.23</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.3.3">
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.3.3.1">Obj</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.3.3.2">153</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.3.3.3">99.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.3.3.4">51.33</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.4.4">
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.4.4.1">Co</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.4.4.2">7448</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.4.4.3">99.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.4.4.4">69.62</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.5.5.1" rowspan="3"><span class="ltx_text" id="S3.T2.7.1.5.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.5.5.1.1.1">POPE</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12821v2#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.5.5.2">Tok</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.5.5.3">120</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.5.5.4">99.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.5.5.5">80.50</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.6.6">
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.6.6.1">Obj</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.6.6.2">90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.6.6.3">99.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.6.6.4">59.76</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.7.7">
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.7.7.1">Co</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.7.7.2">3496</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.7.7.3">99.54</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.7.7.4">75.45</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.7.1.8.8.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.7.1.8.8.1.1" style="background-color:#F2F2F2;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.7.1.8.8.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.7.1.8.8.2.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.7.1.8.8.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.7.1.8.8.3.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.7.1.8.8.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.7.1.8.8.4.1" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.8.8.4.1.1" style="background-color:#F2F2F2;">99.68</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.7.1.8.8.5" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.7.1.8.8.5.1" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.8.8.5.1.1" style="background-color:#F2F2F2;">68.65</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an analysis of the long-tail problem in Large Vision-Language Models (LVLMs).  It focuses on the portion of training data associated with the 50% of cases where the model failed to produce a correct answer. For each of three data categories (tokens, objects, and co-occurrences), the table shows the percentage of tail entities (%E) and the percentage of tail data instances (%DI) contained within the 50% of failed cases.  This highlights the disproportionate impact of underrepresented data on model failures.
> <details>
> <summary>read the caption</summary>
> Table 2: Relative training data volume for the tail 50% of failed cases. “Tok”, “Obj”, and “Co” refer to Token, Object, and Co-occurrence, respectively. %E denotes the percentage of tail entities, while %DI represents the percentage of tail data instances.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.7.7.7.8">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.7.7.7.9">IT*</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">VQA<math alttext="{}^{\text{OK}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><msup id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.m1.1.1a" xref="S4.T3.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.1.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.1a.cmml">OK</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1"><ci id="S4.T3.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.1.1.1.1.m1.1.1.1"><mtext id="S4.T3.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.1.1.1.1.m1.1.1.1">OK</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">{}^{\text{OK}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT OK end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">SEED<math alttext="{}^{\text{2}}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><msup id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.2.m1.1.1a" xref="S4.T3.2.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T3.2.2.2.2.m1.1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.1a.cmml">2</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1"><ci id="S4.T3.2.2.2.2.m1.1.1.1a.cmml" xref="S4.T3.2.2.2.2.m1.1.1.1"><mtext id="S4.T3.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.2.2.2.2.m1.1.1.1">2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">{}^{\text{2}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT 2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">QB<math alttext="{}^{\text{2}}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><msup id="S4.T3.3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.cmml"><mi id="S4.T3.3.3.3.3.m1.1.1a" xref="S4.T3.3.3.3.3.m1.1.1.cmml"></mi><mtext id="S4.T3.3.3.3.3.m1.1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.1a.cmml">2</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1"><ci id="S4.T3.3.3.3.3.m1.1.1.1a.cmml" xref="S4.T3.3.3.3.3.m1.1.1.1"><mtext id="S4.T3.3.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.3.3.3.3.m1.1.1.1">2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">{}^{\text{2}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT 2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.7.7.10">MMS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4">MME<math alttext="{}^{\text{P}}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><msup id="S4.T3.4.4.4.4.m1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.cmml"><mi id="S4.T3.4.4.4.4.m1.1.1a" xref="S4.T3.4.4.4.4.m1.1.1.cmml"></mi><mtext id="S4.T3.4.4.4.4.m1.1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.1a.cmml">P</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1"><ci id="S4.T3.4.4.4.4.m1.1.1.1a.cmml" xref="S4.T3.4.4.4.4.m1.1.1.1"><mtext id="S4.T3.4.4.4.4.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.4.4.4.4.m1.1.1.1">P</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">{}^{\text{P}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">start_FLOATSUPERSCRIPT P end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.5.5.5">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><msup id="S4.T3.5.5.5.5.m1.1.1" xref="S4.T3.5.5.5.5.m1.1.1.cmml"><mi id="S4.T3.5.5.5.5.m1.1.1a" xref="S4.T3.5.5.5.5.m1.1.1.cmml"></mi><mtext id="S4.T3.5.5.5.5.m1.1.1.1" xref="S4.T3.5.5.5.5.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><apply id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1"><ci id="S4.T3.5.5.5.5.m1.1.1.1a.cmml" xref="S4.T3.5.5.5.5.m1.1.1.1"><mtext id="S4.T3.5.5.5.5.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.5.5.5.5.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.7.7.11">MMMU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6.6">VQA<math alttext="{}^{\text{T}}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><msup id="S4.T3.6.6.6.6.m1.1.1" xref="S4.T3.6.6.6.6.m1.1.1.cmml"><mi id="S4.T3.6.6.6.6.m1.1.1a" xref="S4.T3.6.6.6.6.m1.1.1.cmml"></mi><mtext id="S4.T3.6.6.6.6.m1.1.1.1" xref="S4.T3.6.6.6.6.m1.1.1.1a.cmml">T</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><apply id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1"><ci id="S4.T3.6.6.6.6.m1.1.1.1a.cmml" xref="S4.T3.6.6.6.6.m1.1.1.1"><mtext id="S4.T3.6.6.6.6.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.6.6.6.6.m1.1.1.1">T</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">{}^{\text{T}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">start_FLOATSUPERSCRIPT T end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.7.7.12">GQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.7.7.13">MMB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.7.7.7">VQA<math alttext="{}^{\text{v2}}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><msup id="S4.T3.7.7.7.7.m1.1.1" xref="S4.T3.7.7.7.7.m1.1.1.cmml"><mi id="S4.T3.7.7.7.7.m1.1.1a" xref="S4.T3.7.7.7.7.m1.1.1.cmml"></mi><mtext id="S4.T3.7.7.7.7.m1.1.1.1" xref="S4.T3.7.7.7.7.m1.1.1.1a.cmml">v2</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><apply id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1"><ci id="S4.T3.7.7.7.7.m1.1.1.1a.cmml" xref="S4.T3.7.7.7.7.m1.1.1.1"><mtext id="S4.T3.7.7.7.7.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.7.7.7.7.m1.1.1.1">v2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">{}^{\text{v2}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">start_FLOATSUPERSCRIPT v2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.7.7.8.1.1">LLaVA 1.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.7.8.1.2">665.0K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.3">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.4">48.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.5">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.6">33.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.7">1510.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.8">69.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.9">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.10">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.11">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.12">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8.1.13">76.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.7.9.2.1"><span class="ltx_text" id="S4.T3.7.7.9.2.1.1" style="color:#0000FF;">+DR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.7.9.2.2">581.0K</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.3">55.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.4">57.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.5">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.6">33.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.7">1470.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.8">69.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.9">34.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.10">46.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.11">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.12"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.9.2.12.1">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.9.2.13">76.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.7.10.3.1">
<span class="ltx_text" id="S4.T3.7.7.10.3.1.1" style="color:#0000FF;">+DR</span> <span class="ltx_text" id="S4.T3.7.7.10.3.1.2" style="color:#FF0000;">+DS</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.7.10.3.2">665.0K</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.3.1">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.4.1">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.5.1">49.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.6.1">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.7.1">1512.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.8"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.8.1">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.9"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.9.1">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.10"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.10.1">47.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.11"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.11.1">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.12">65.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.10.3.13"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.10.3.13.1">76.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.7.7.11.4.1">ShareGPT4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.7.11.4.2">1246.0K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.3">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.4">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.5">44.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.6">34.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.7">1560.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.8">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.9">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.10">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.11">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.12">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.11.4.13">78.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.7.12.5.1"><span class="ltx_text" id="S4.T3.7.7.12.5.1.1" style="color:#0000FF;">+DR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.7.12.5.2">1168.0K</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.3">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.4">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.5">44.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.6">35.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.7">1542.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.8">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.9">35.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.10"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.12.5.10.1">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.11"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.12.5.11.1">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.12">67.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.12.5.13">78.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.7.7.13.6.1">
<span class="ltx_text" id="S4.T3.7.7.13.6.1.1" style="color:#0000FF;">+DR</span> <span class="ltx_text" id="S4.T3.7.7.13.6.1.2" style="color:#FF0000;">+DS</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.7.7.13.6.2">1246.0K</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.3.1">57.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.4.1">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.5.1">45.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.6.1">35.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.7.1">1564.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.8"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.8.1">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.9"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.9.1">36.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.10">50.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.11">63.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.12"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.12.1">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.13.6.13"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.13.6.13.1">78.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several large vision-language models (LVLMs) on eleven benchmark datasets.  The models were trained using different methods: a baseline LLaVA 1.5 model, the same model with data rebalancing (+DR), the rebalanced model with data synthesis (+DR+DS), and the ShareGPT4V model with and without data rebalancing (+DR, +DR+DS). The table shows the number of training instances (IT) used for each model and its performance on each benchmark (VQAOK, SEED2, QB2, etc.).  ShareGPT4V's numbers reflect only the second of its three training stages. The best performance in each benchmark is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with models trained with different methods on different benchmarks. IT represents the number of training instances used during instruction tuning. +DR denotes the results after the data rebalancing stage, while +DS represents the results following the data synthesis stage. Benchmark names are abbreviated due to space limits. *: ShareGPT4V’s instruction tuning stage refers to the 2nd stage (3 in total). The best results are indicated in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.3">IT</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4">GQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5">SEED</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">SEED<math alttext="{}^{\text{v2}}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msup id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1a" xref="S4.T4.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T4.1.1.1.1.m1.1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.1a.cmml">v2</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><ci id="S4.T4.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T4.1.1.1.1.m1.1.1.1"><mtext id="S4.T4.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.1.1.1.1.m1.1.1.1">v2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">{}^{\text{v2}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT v2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.6">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.7">MMB</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.2.1.1">Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.2.1.2">665K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.3">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.4">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.5">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.6">87.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.7">65.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.3.2.1">EL2N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.3.2.2">581K</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.3">62.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.4">53.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.5">47.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.6">87.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.7">65.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.3.1">Perplexity</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.4.3.2">581K</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.3">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.4">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.5">47.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.6">86.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.7">63.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.4.1">CLIP Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.5.4.2">581K</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.3">62.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.4">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.5">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.6">87.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.7">64.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.6.5.1">COINCIDE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.6.5.2">133K</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.3">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.6">86.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.7">63.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.7.6.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.7.6.1.1" style="background-color:#F2F2F2;">Ours-DR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.7.6.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.7.6.2.1" style="background-color:#F2F2F2;">581K</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6.3" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.7.6.3.1" style="background-color:#F2F2F2;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.7.6.4.1" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.7.6.4.1.1">61.0</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6.5" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.7.6.5.1" style="background-color:#F2F2F2;">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6.6" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.7.6.6.1" style="background-color:#F2F2F2;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6.7" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.6.7.1" style="background-color:#F2F2F2;">65.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T4.1.1.8.7.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.8.7.1.1" style="background-color:#F2F2F2;">Ours</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T4.1.1.8.7.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.8.7.2.1" style="background-color:#F2F2F2;">665K</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.8.7.3" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.3.1" style="background-color:#F2F2F2;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.8.7.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T4.1.1.8.7.4.1" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.4.1.1" style="background-color:#F2F2F2;">61.3</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.8.7.5" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.5.1" style="background-color:#F2F2F2;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.8.7.6" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.6.1" style="background-color:#F2F2F2;">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.8.7.7" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.8.7.7.1" style="background-color:#F2F2F2;">65.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different data balancing methods on various benchmarks, specifically focusing on general-purpose visual and language understanding tasks.  The methods are evaluated based on their performance on the GQA, SEED, SEEDV2, POPE, and MMB benchmarks. The table highlights the best performing method for each metric in bold and the second-best in underline. The number of training instances (IT) used in instruction tuning for each method is also included, providing context for the performance comparison.  The table provides insights into the effectiveness of various data balancing techniques for improving the performance of large vision-language models.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison across existing data balancing methods. The best results are indicated in bold, and the second-best results are underlined. IT represents the number of training instances used during instruction tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.14.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.14.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.14.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T5.14.1.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.14.1.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T5.14.1.1.1.2.1">IT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S5.T5.14.1.1.1.3">ScienceQA</th>
</tr>
<tr class="ltx_tr" id="S5.T5.14.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.1">@5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.2">@10</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.3">@15</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.4">@20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.5">H@80</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.14.1.2.2.6">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.14.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.14.1.3.1.1">LLaVA 1.5</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.2">665.0K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.3">67.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.4">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.5">67.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.6">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.7">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.1.3.1.8">69.3</td>
</tr>
<tr class="ltx_tr" id="S5.T5.14.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.14.1.4.2.1"><span class="ltx_text" id="S5.T5.14.1.4.2.1.1" style="color:#0000FF;">+DR</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.2">581.0K</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.3">69.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.4">69.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.5">67.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.6">68.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.7">76.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.14.1.4.2.8">69.5</td>
</tr>
<tr class="ltx_tr" id="S5.T5.14.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.14.1.5.3.1">
<span class="ltx_text" id="S5.T5.14.1.5.3.1.1" style="color:#0000FF;">+DR</span> <span class="ltx_text" id="S5.T5.14.1.5.3.1.2" style="color:#FF0000;">+DS</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.2">665.0K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.3.1">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.4.1">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.5"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.5.1">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.6.1">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.7"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.7.1">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.1.5.3.8"><span class="ltx_text ltx_font_bold" id="S5.T5.14.1.5.3.8.1">70.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the model's performance on the ScienceQA-IMG dataset, focusing specifically on its ability to accurately predict 'tail concepts.'  Tail concepts refer to those that appear infrequently in the dataset. The table shows prediction accuracy at different thresholds (@k, representing the top k% of tail concepts) and for the top 80% of head concepts (H@k).  It compares the baseline performance of LLaVA 1.5 to the performance after applying data rebalancing (+DR) and after both data rebalancing and data synthesis (+DR +DS).  The number of training instances used is also provided, allowing for a comparison of performance across different training scales. The best result for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 5: Tail concept prediction accuracy (%) on ScienceQA-IMG [32] dataset. Tail@k%percent𝑘k\%italic_k % (simplified as @k𝑘kitalic_k), head@k%percent𝑘k\%italic_k % (simplified as H@k𝑘kitalic_k), and overall accuracy are reported. +DR denotes the results after data rebalancing, while +DS represents the results following the data synthesis stage. Bold numbers represent the best results across all methods. IT represents the number of training instances used during instruction tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T6.7.7.7.8">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.7.7.7.9">IT*</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1">VQA<math alttext="{}^{\text{OK}}" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><msup id="A1.T6.1.1.1.1.m1.1.1" xref="A1.T6.1.1.1.1.m1.1.1.cmml"><mi id="A1.T6.1.1.1.1.m1.1.1a" xref="A1.T6.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A1.T6.1.1.1.1.m1.1.1.1" xref="A1.T6.1.1.1.1.m1.1.1.1a.cmml">OK</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><apply id="A1.T6.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.m1.1.1"><ci id="A1.T6.1.1.1.1.m1.1.1.1a.cmml" xref="A1.T6.1.1.1.1.m1.1.1.1"><mtext id="A1.T6.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.1.1.1.1.m1.1.1.1">OK</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">{}^{\text{OK}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT OK end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.2.2.2">SEED<math alttext="{}^{\text{2}}" class="ltx_Math" display="inline" id="A1.T6.2.2.2.2.m1.1"><semantics id="A1.T6.2.2.2.2.m1.1a"><msup id="A1.T6.2.2.2.2.m1.1.1" xref="A1.T6.2.2.2.2.m1.1.1.cmml"><mi id="A1.T6.2.2.2.2.m1.1.1a" xref="A1.T6.2.2.2.2.m1.1.1.cmml"></mi><mtext id="A1.T6.2.2.2.2.m1.1.1.1" xref="A1.T6.2.2.2.2.m1.1.1.1a.cmml">2</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.2.m1.1b"><apply id="A1.T6.2.2.2.2.m1.1.1.cmml" xref="A1.T6.2.2.2.2.m1.1.1"><ci id="A1.T6.2.2.2.2.m1.1.1.1a.cmml" xref="A1.T6.2.2.2.2.m1.1.1.1"><mtext id="A1.T6.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.2.2.2.2.m1.1.1.1">2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.2.m1.1c">{}^{\text{2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT 2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.3.3.3.3">QB<math alttext="{}^{\text{2}}" class="ltx_Math" display="inline" id="A1.T6.3.3.3.3.m1.1"><semantics id="A1.T6.3.3.3.3.m1.1a"><msup id="A1.T6.3.3.3.3.m1.1.1" xref="A1.T6.3.3.3.3.m1.1.1.cmml"><mi id="A1.T6.3.3.3.3.m1.1.1a" xref="A1.T6.3.3.3.3.m1.1.1.cmml"></mi><mtext id="A1.T6.3.3.3.3.m1.1.1.1" xref="A1.T6.3.3.3.3.m1.1.1.1a.cmml">2</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.3.m1.1b"><apply id="A1.T6.3.3.3.3.m1.1.1.cmml" xref="A1.T6.3.3.3.3.m1.1.1"><ci id="A1.T6.3.3.3.3.m1.1.1.1a.cmml" xref="A1.T6.3.3.3.3.m1.1.1.1"><mtext id="A1.T6.3.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.3.3.3.3.m1.1.1.1">2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.3.m1.1c">{}^{\text{2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT 2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.7.7.7.10">MMS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.4.4.4.4">MME<math alttext="{}^{\text{P}}" class="ltx_Math" display="inline" id="A1.T6.4.4.4.4.m1.1"><semantics id="A1.T6.4.4.4.4.m1.1a"><msup id="A1.T6.4.4.4.4.m1.1.1" xref="A1.T6.4.4.4.4.m1.1.1.cmml"><mi id="A1.T6.4.4.4.4.m1.1.1a" xref="A1.T6.4.4.4.4.m1.1.1.cmml"></mi><mtext id="A1.T6.4.4.4.4.m1.1.1.1" xref="A1.T6.4.4.4.4.m1.1.1.1a.cmml">P</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.4.m1.1b"><apply id="A1.T6.4.4.4.4.m1.1.1.cmml" xref="A1.T6.4.4.4.4.m1.1.1"><ci id="A1.T6.4.4.4.4.m1.1.1.1a.cmml" xref="A1.T6.4.4.4.4.m1.1.1.1"><mtext id="A1.T6.4.4.4.4.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.4.4.4.4.m1.1.1.1">P</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.4.m1.1c">{}^{\text{P}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.4.m1.1d">start_FLOATSUPERSCRIPT P end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.5.5.5.5">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="A1.T6.5.5.5.5.m1.1"><semantics id="A1.T6.5.5.5.5.m1.1a"><msup id="A1.T6.5.5.5.5.m1.1.1" xref="A1.T6.5.5.5.5.m1.1.1.cmml"><mi id="A1.T6.5.5.5.5.m1.1.1a" xref="A1.T6.5.5.5.5.m1.1.1.cmml"></mi><mtext id="A1.T6.5.5.5.5.m1.1.1.1" xref="A1.T6.5.5.5.5.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.5.5.m1.1b"><apply id="A1.T6.5.5.5.5.m1.1.1.cmml" xref="A1.T6.5.5.5.5.m1.1.1"><ci id="A1.T6.5.5.5.5.m1.1.1.1a.cmml" xref="A1.T6.5.5.5.5.m1.1.1.1"><mtext id="A1.T6.5.5.5.5.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.5.5.5.5.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.5.5.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.5.5.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.7.7.7.11">MMMU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.6.6.6.6">VQA<math alttext="{}^{\text{T}}" class="ltx_Math" display="inline" id="A1.T6.6.6.6.6.m1.1"><semantics id="A1.T6.6.6.6.6.m1.1a"><msup id="A1.T6.6.6.6.6.m1.1.1" xref="A1.T6.6.6.6.6.m1.1.1.cmml"><mi id="A1.T6.6.6.6.6.m1.1.1a" xref="A1.T6.6.6.6.6.m1.1.1.cmml"></mi><mtext id="A1.T6.6.6.6.6.m1.1.1.1" xref="A1.T6.6.6.6.6.m1.1.1.1a.cmml">T</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.6.6.m1.1b"><apply id="A1.T6.6.6.6.6.m1.1.1.cmml" xref="A1.T6.6.6.6.6.m1.1.1"><ci id="A1.T6.6.6.6.6.m1.1.1.1a.cmml" xref="A1.T6.6.6.6.6.m1.1.1.1"><mtext id="A1.T6.6.6.6.6.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.6.6.6.6.m1.1.1.1">T</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.6.6.m1.1c">{}^{\text{T}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.6.6.m1.1d">start_FLOATSUPERSCRIPT T end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.7.7.7.12">GQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.7.7.7.13">MMB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.7.7.7.7">VQA<math alttext="{}^{\text{v2}}" class="ltx_Math" display="inline" id="A1.T6.7.7.7.7.m1.1"><semantics id="A1.T6.7.7.7.7.m1.1a"><msup id="A1.T6.7.7.7.7.m1.1.1" xref="A1.T6.7.7.7.7.m1.1.1.cmml"><mi id="A1.T6.7.7.7.7.m1.1.1a" xref="A1.T6.7.7.7.7.m1.1.1.cmml"></mi><mtext id="A1.T6.7.7.7.7.m1.1.1.1" xref="A1.T6.7.7.7.7.m1.1.1.1a.cmml">v2</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T6.7.7.7.7.m1.1b"><apply id="A1.T6.7.7.7.7.m1.1.1.cmml" xref="A1.T6.7.7.7.7.m1.1.1"><ci id="A1.T6.7.7.7.7.m1.1.1.1a.cmml" xref="A1.T6.7.7.7.7.m1.1.1.1"><mtext id="A1.T6.7.7.7.7.m1.1.1.1.cmml" mathsize="70%" xref="A1.T6.7.7.7.7.m1.1.1.1">v2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.7.7.7.7.m1.1c">{}^{\text{v2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.7.7.7.7.m1.1d">start_FLOATSUPERSCRIPT v2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.7.7.8.1.1">LLaVA 1.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.7.7.8.1.2">665.0K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.3">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.4">48.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.5">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.6">33.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.7">1510.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.8">69.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.9">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.10">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.11">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.12">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.8.1.13">76.6</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.7.7.9.2.1"><span class="ltx_text" id="A1.T6.7.7.9.2.1.1" style="color:#0000FF;">+DR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.7.7.9.2.2">581.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.3">55.3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.4">57.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.5">46.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.6">33.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.7">1470.6</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.8">69.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.9">34.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.10">46.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.11">62.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.12">65.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.9.2.13">76.9</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.7.7.10.3.1">
<span class="ltx_text" id="A1.T6.7.7.10.3.1.1" style="color:#0000FF;">+DR</span> <span class="ltx_text" id="A1.T6.7.7.10.3.1.2" style="color:#FF0000;">+DS</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.7.7.10.3.2">665.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.3"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.3.1">57.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.4"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.4.1">57.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.5"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.5.1">49.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.6"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.6.1">35.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.7"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.7.1">1512.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.8"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.8.1">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.9">36.7</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.10"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.10.1">47.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.11"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.10.3.11.1">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.12">65.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.10.3.13">76.9</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.7.7.11.4.1">
<span class="ltx_text" id="A1.T6.7.7.11.4.1.1" style="color:#FF0000;">+DS</span> 25K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.7.7.11.4.2">690.0K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.3">56.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.4">47.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.5">47.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.6">34.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.7">1486.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.8">68.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.9">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.10">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.11">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.12">66.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.7.11.4.13"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.11.4.13.1">77.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.7.7.12.5.1">
<span class="ltx_text" id="A1.T6.7.7.12.5.1.1" style="color:#FF0000;">+DS</span> 50K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.7.7.12.5.2">715.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.3">57.3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.4">47.3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.5">47.7</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.6">35.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.7">1472.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.8">69.9</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.9"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.12.5.9.1">36.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.10">47.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.11">62.7</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.12"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.12.5.12.1">66.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.12.5.13">77.1</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T6.7.7.13.6.1">
<span class="ltx_text" id="A1.T6.7.7.13.6.1.1" style="color:#FF0000;">+DS</span> 100K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T6.7.7.13.6.2">765.0K</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.3">54.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.4">47.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.5">46.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.6">34.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.7">1502.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.8">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.9">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.10">46.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.11">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.12">64.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.7.13.6.13">76.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of several large vision-language models' performance across various benchmarks.  The models are trained using different methods: a baseline model (LLaVA 1.5), a model with data rebalancing (+DR), and models with data rebalancing and varying levels of data synthesis (+DS). The table shows the number of training instances used, and the performance results (scores) for each model and benchmark.  The benchmarks are abbreviated for brevity. The best performance for each benchmark is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of models trained with different approaches across multiple benchmarks. IT represents the number of training instances used during instruction tuning. +DR signifies performance after the data rebalancing stage, and +DS indicates performance after the data synthesis stage, with the number following DS denoting the augmentation volume from the DS stage. Benchmark names are abbreviated due to space constraints. The best results are indicated in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">O</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">W</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">IT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{v2}}" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><msup id="A1.T7.1.1.1.1.m1.1.1" xref="A1.T7.1.1.1.1.m1.1.1.cmml"><mi id="A1.T7.1.1.1.1.m1.1.1a" xref="A1.T7.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A1.T7.1.1.1.1.m1.1.1.1" xref="A1.T7.1.1.1.1.m1.1.1.1a.cmml">v2</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><apply id="A1.T7.1.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.1.m1.1.1"><ci id="A1.T7.1.1.1.1.m1.1.1.1a.cmml" xref="A1.T7.1.1.1.1.m1.1.1.1"><mtext id="A1.T7.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T7.1.1.1.1.m1.1.1.1">v2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">{}^{\text{v2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT v2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{T}}" class="ltx_Math" display="inline" id="A1.T7.2.2.2.2.m1.1"><semantics id="A1.T7.2.2.2.2.m1.1a"><msup id="A1.T7.2.2.2.2.m1.1.1" xref="A1.T7.2.2.2.2.m1.1.1.cmml"><mi id="A1.T7.2.2.2.2.m1.1.1a" xref="A1.T7.2.2.2.2.m1.1.1.cmml"></mi><mtext id="A1.T7.2.2.2.2.m1.1.1.1" xref="A1.T7.2.2.2.2.m1.1.1.1a.cmml">T</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.2.m1.1b"><apply id="A1.T7.2.2.2.2.m1.1.1.cmml" xref="A1.T7.2.2.2.2.m1.1.1"><ci id="A1.T7.2.2.2.2.m1.1.1.1a.cmml" xref="A1.T7.2.2.2.2.m1.1.1.1"><mtext id="A1.T7.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="A1.T7.2.2.2.2.m1.1.1.1">T</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.2.m1.1c">{}^{\text{T}}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT T end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{OK}}" class="ltx_Math" display="inline" id="A1.T7.3.3.3.3.m1.1"><semantics id="A1.T7.3.3.3.3.m1.1a"><msup id="A1.T7.3.3.3.3.m1.1.1" xref="A1.T7.3.3.3.3.m1.1.1.cmml"><mi id="A1.T7.3.3.3.3.m1.1.1a" xref="A1.T7.3.3.3.3.m1.1.1.cmml"></mi><mtext id="A1.T7.3.3.3.3.m1.1.1.1" xref="A1.T7.3.3.3.3.m1.1.1.1a.cmml">OK</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.3.m1.1b"><apply id="A1.T7.3.3.3.3.m1.1.1.cmml" xref="A1.T7.3.3.3.3.m1.1.1"><ci id="A1.T7.3.3.3.3.m1.1.1.1a.cmml" xref="A1.T7.3.3.3.3.m1.1.1.1"><mtext id="A1.T7.3.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="A1.T7.3.3.3.3.m1.1.1.1">OK</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.3.m1.1c">{}^{\text{OK}}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT OK end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">GQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">SQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="A1.T7.4.4.4.4.m1.1"><semantics id="A1.T7.4.4.4.4.m1.1a"><msup id="A1.T7.4.4.4.4.m1.1.1" xref="A1.T7.4.4.4.4.m1.1.1.cmml"><mi id="A1.T7.4.4.4.4.m1.1.1a" xref="A1.T7.4.4.4.4.m1.1.1.cmml"></mi><mtext id="A1.T7.4.4.4.4.m1.1.1.1" xref="A1.T7.4.4.4.4.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.4.m1.1b"><apply id="A1.T7.4.4.4.4.m1.1.1.cmml" xref="A1.T7.4.4.4.4.m1.1.1"><ci id="A1.T7.4.4.4.4.m1.1.1.1a.cmml" xref="A1.T7.4.4.4.4.m1.1.1.1"><mtext id="A1.T7.4.4.4.4.m1.1.1.1.cmml" mathsize="70%" xref="A1.T7.4.4.4.4.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.4.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.4.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">REF</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">REF+</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">FLIK</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">POPE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.16" style="padding-left:4.0pt;padding-right:4.0pt;">SEED</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.17" style="padding-left:4.0pt;padding-right:4.0pt;">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="A1.T7.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">baseline</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.0K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">69.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">28.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">74.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">86.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.4.5.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.6.2">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">488.1K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">46.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">55.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">69.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">28.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">28.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">73.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.16" style="padding-left:4.0pt;padding-right:4.0pt;">60.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6.2.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.7.3">
<td class="ltx_td" id="A1.T7.4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">197.9K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">50.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">61.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">67.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">74.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.7.3.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.8.4">
<td class="ltx_td" id="A1.T7.4.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">242.4K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">61.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.8.4.12.1">31.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.8.4.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.9.5">
<td class="ltx_td" id="A1.T7.4.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">176.3K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">73.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">46.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">60.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">69.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.9.5.12.1">32.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.9.5.13.1">31.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.14" style="padding-left:4.0pt;padding-right:4.0pt;">71.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.15" style="padding-left:4.0pt;padding-right:4.0pt;">85.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.16" style="padding-left:4.0pt;padding-right:4.0pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.9.5.17" style="padding-left:4.0pt;padding-right:4.0pt;">58.1</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.10.6">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">534.2K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.10.6.7.1">47.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.10.6.8.1">55.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">71.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.16" style="padding-left:4.0pt;padding-right:4.0pt;">60.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.10.6.17" style="padding-left:4.0pt;padding-right:4.0pt;">60.4</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.11.7">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.11.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.11.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.11.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">553.4K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.11.7.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.12.8">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.12.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.12.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.12.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.12.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">521.5K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.12.8.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.13.9">
<td class="ltx_td" id="A1.T7.4.4.13.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.13.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.13.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">276.9K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">61.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">66.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.14" style="padding-left:4.0pt;padding-right:4.0pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.15" style="padding-left:4.0pt;padding-right:4.0pt;">87.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.13.9.17" style="padding-left:4.0pt;padding-right:4.0pt;">58.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.14.10">
<td class="ltx_td" id="A1.T7.4.4.14.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.14.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.14.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.14.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">318.3K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">50.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">61.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.12" style="padding-left:4.0pt;padding-right:4.0pt;">29.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.14" style="padding-left:4.0pt;padding-right:4.0pt;">74.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.14.10.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.4</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.15.11">
<td class="ltx_td" id="A1.T7.4.4.15.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="A1.T7.4.4.15.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.15.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.15.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">349.9K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">54.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.12" style="padding-left:4.0pt;padding-right:4.0pt;">29.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.15.11.16.1">61.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.15.11.17" style="padding-left:4.0pt;padding-right:4.0pt;">60.4</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.16.12">
<td class="ltx_td" id="A1.T7.4.4.16.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.16.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.16.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">375.9K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">45.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">54.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.16.12.9.1">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">70.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.11" style="padding-left:4.0pt;padding-right:4.0pt;">67.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.13" style="padding-left:4.0pt;padding-right:4.0pt;">28.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.14" style="padding-left:4.0pt;padding-right:4.0pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.16" style="padding-left:4.0pt;padding-right:4.0pt;">60.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.16.12.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.7</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.17.13">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.17.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.17.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.17.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">575.5K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.17.13.8.1">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.11" style="padding-left:4.0pt;padding-right:4.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.15" style="padding-left:4.0pt;padding-right:4.0pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.17.13.16.1">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.17.13.17" style="padding-left:4.0pt;padding-right:4.0pt;">60.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.18.14">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td" id="A1.T7.4.4.18.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.18.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.18.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">559.3K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">52.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.18.14.10.1">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.11" style="padding-left:4.0pt;padding-right:4.0pt;">69.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.18.14.13.1">30.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.18.14.14.1">76.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.18.14.15.1">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.16" style="padding-left:4.0pt;padding-right:4.0pt;">61.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.18.14.17" style="padding-left:4.0pt;padding-right:4.0pt;">60.5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.19.15">
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_border_r" id="A1.T7.4.4.19.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.19.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">561.5K</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.19.15.6.1">76.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.19.15.7.1">47.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">62.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.19.15.10.1">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.19.15.11.1">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.12" style="padding-left:4.0pt;padding-right:4.0pt;">28.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.13" style="padding-left:4.0pt;padding-right:4.0pt;">28.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.14" style="padding-left:4.0pt;padding-right:4.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.15" style="padding-left:4.0pt;padding-right:4.0pt;">86.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.16" style="padding-left:4.0pt;padding-right:4.0pt;">60.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.19.15.17" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.20.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.4.20.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.4.20.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">581.7K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.20.16.6.1">76.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">55.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.20.16.9.1">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.20.16.11.1">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.12" style="padding-left:4.0pt;padding-right:4.0pt;">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.20.16.14.1">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.4.4.20.16.15.1">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.16" style="padding-left:4.0pt;padding-right:4.0pt;">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.4.20.16.17" style="padding-left:4.0pt;padding-right:4.0pt;">60.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comprehensive ablation study analyzing the impact of different combinations of perspectives (Token, Object, Co-occurrence, and Interrogation) on the performance of a large vision-language model.  The table shows the results across various evaluation metrics on several benchmarks.  Each row represents a unique combination of perspectives used for data refinement, enabling the assessment of the individual contribution of each aspect to the overall model performance.  The best-performing combination for each metric is highlighted in bold, with the second-best underlined. This allows for a detailed comparison of model performance under various data refinement strategies.
> <details>
> <summary>read the caption</summary>
> Table 7: Full results of ablation study on different combinations of perspectives. T, O, C, and W refer to Token, Object, Co-occurrence, and Interrogation respectively. The best results are indicated in bold, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T8.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">IT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{v2}}" class="ltx_Math" display="inline" id="A1.T8.1.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.1.m1.1a"><msup id="A1.T8.1.1.1.1.m1.1.1" xref="A1.T8.1.1.1.1.m1.1.1.cmml"><mi id="A1.T8.1.1.1.1.m1.1.1a" xref="A1.T8.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A1.T8.1.1.1.1.m1.1.1.1" xref="A1.T8.1.1.1.1.m1.1.1.1a.cmml">v2</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.1.m1.1b"><apply id="A1.T8.1.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.1.m1.1.1"><ci id="A1.T8.1.1.1.1.m1.1.1.1a.cmml" xref="A1.T8.1.1.1.1.m1.1.1.1"><mtext id="A1.T8.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T8.1.1.1.1.m1.1.1.1">v2</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.1.m1.1c">{}^{\text{v2}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT v2 end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{T}}" class="ltx_Math" display="inline" id="A1.T8.2.2.2.2.m1.1"><semantics id="A1.T8.2.2.2.2.m1.1a"><msup id="A1.T8.2.2.2.2.m1.1.1" xref="A1.T8.2.2.2.2.m1.1.1.cmml"><mi id="A1.T8.2.2.2.2.m1.1.1a" xref="A1.T8.2.2.2.2.m1.1.1.cmml"></mi><mtext id="A1.T8.2.2.2.2.m1.1.1.1" xref="A1.T8.2.2.2.2.m1.1.1.1a.cmml">T</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.2.2.m1.1b"><apply id="A1.T8.2.2.2.2.m1.1.1.cmml" xref="A1.T8.2.2.2.2.m1.1.1"><ci id="A1.T8.2.2.2.2.m1.1.1.1a.cmml" xref="A1.T8.2.2.2.2.m1.1.1.1"><mtext id="A1.T8.2.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="A1.T8.2.2.2.2.m1.1.1.1">T</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.2.2.m1.1c">{}^{\text{T}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.2.2.m1.1d">start_FLOATSUPERSCRIPT T end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">VQA<math alttext="{}^{\text{OK}}" class="ltx_Math" display="inline" id="A1.T8.3.3.3.3.m1.1"><semantics id="A1.T8.3.3.3.3.m1.1a"><msup id="A1.T8.3.3.3.3.m1.1.1" xref="A1.T8.3.3.3.3.m1.1.1.cmml"><mi id="A1.T8.3.3.3.3.m1.1.1a" xref="A1.T8.3.3.3.3.m1.1.1.cmml"></mi><mtext id="A1.T8.3.3.3.3.m1.1.1.1" xref="A1.T8.3.3.3.3.m1.1.1.1a.cmml">OK</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.3.3.m1.1b"><apply id="A1.T8.3.3.3.3.m1.1.1.cmml" xref="A1.T8.3.3.3.3.m1.1.1"><ci id="A1.T8.3.3.3.3.m1.1.1.1a.cmml" xref="A1.T8.3.3.3.3.m1.1.1.1"><mtext id="A1.T8.3.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="A1.T8.3.3.3.3.m1.1.1.1">OK</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.3.3.m1.1c">{}^{\text{OK}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT OK end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">GQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">SQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="A1.T8.4.4.4.4.m1.1"><semantics id="A1.T8.4.4.4.4.m1.1a"><msup id="A1.T8.4.4.4.4.m1.1.1" xref="A1.T8.4.4.4.4.m1.1.1.cmml"><mi id="A1.T8.4.4.4.4.m1.1.1a" xref="A1.T8.4.4.4.4.m1.1.1.cmml"></mi><mtext id="A1.T8.4.4.4.4.m1.1.1.1" xref="A1.T8.4.4.4.4.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.4.4.m1.1b"><apply id="A1.T8.4.4.4.4.m1.1.1.cmml" xref="A1.T8.4.4.4.4.m1.1.1"><ci id="A1.T8.4.4.4.4.m1.1.1.1a.cmml" xref="A1.T8.4.4.4.4.m1.1.1.1"><mtext id="A1.T8.4.4.4.4.m1.1.1.1.cmml" mathsize="70%" xref="A1.T8.4.4.4.4.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.4.4.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.4.4.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">REF</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">REF+</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">FLIK</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">POPE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">SEED</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.4.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T8.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">ALL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.0K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.5.1.4.1">47.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.5.1.5.1">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.5.1.6.1">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.5.1.7.1">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.5.1.8.1">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">30.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">86.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.5.1.13.1">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.5.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">61.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image Only</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.6.2.3.1">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.6.2.5.1">57.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">62.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">30.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">75.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">87.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">53.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.6.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Token Rewrite</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.7.3.3.1">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">49.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">70.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.7.3.9.1">32.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.7.3.10.1">31.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">87.4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">54.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.7.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">TW Rewrite</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.0K</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.8.4.4.1">46.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">54.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">62.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">68.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">68.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.8.4.11.1">77.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.8.4.12.1">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">53.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.8.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">59.9</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">PlainAug SimpAdd</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.3K</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.9.5.6.1">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.9.5.7.1">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">29.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">28.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">74.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">86.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.9.5.13.1">61.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.9.5.14" style="padding-left:4.0pt;padding-right:4.0pt;">60.3</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T8.4.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">PlainAug NewCap</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T8.4.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">665.3K</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">54.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">62.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.10.6.8.1">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.10.6.9.1">31.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.10.6.10.1">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.4.10.6.11.1">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.10.6.12.1">87.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.4.10.6.14" style="padding-left:4.0pt;padding-right:4.0pt;">59.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive ablation study comparing various data augmentation methods used in the Data Synthesis stage of the Adaptive Data Refinement Framework (ADR).  The study evaluates six different techniques for generating synthetic data to address the long-tail problem in large vision-language models. Each method is tested on multiple benchmark datasets, and the results (average scores across multiple metrics) are shown. The best and second-best results for each benchmark are highlighted in bold and underlined, respectively.  This allows for a detailed comparison of the effectiveness of each augmentation strategy in improving model performance, specifically focusing on tail concepts (under-represented data). The table provides valuable insights into the optimal synthesis method within the ADR framework.
> <details>
> <summary>read the caption</summary>
> Table 8: Full results of ablation study on different augmentation methods. Methods are introduced in Sec. 6.2. The best results are indicated in bold, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T9.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T9.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T9.4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T9.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.1.1.2.1">MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T9.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.1.1.3.1">POPE</span></th>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.1.1">Tok-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.2.1">Tok-W</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.3.1">Obj-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.4.1">Obj-W</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.5.1">Co-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.6.1">Co-W</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.7.1">Tok-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.8"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.8.1">Tok-W</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.9"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.9.1">Obj-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.10"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.10.1">Obj-W</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.11"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.11.1">Co-C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T9.4.1.2.2.12"><span class="ltx_text ltx_font_bold" id="A2.T9.4.1.2.2.12.1">Co-W</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T9.4.1.3.1.1">Max</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.2">9738</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.3">10377</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.4">2708</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.5">3222</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.6">247315</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.7">257107</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.8">2242</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.9">2772</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.10">1085</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.11">1100</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.12">130043</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.4.1.3.1.13">141722</td>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.4.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T9.4.1.4.2.1"></th>
<td class="ltx_td" id="A2.T9.4.1.4.2.2"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.3"><span class="ltx_text" id="A2.T9.4.1.4.2.3.1" style="color:#FF0000;background-color:#D9D9D9;">+639</span></td>
<td class="ltx_td" id="A2.T9.4.1.4.2.4"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.5"><span class="ltx_text" id="A2.T9.4.1.4.2.5.1" style="color:#FF0000;background-color:#D9D9D9;">+514</span></td>
<td class="ltx_td" id="A2.T9.4.1.4.2.6"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.7"><span class="ltx_text" id="A2.T9.4.1.4.2.7.1" style="color:#FF0000;background-color:#D9D9D9;">+9792</span></td>
<td class="ltx_td" id="A2.T9.4.1.4.2.8"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.9"><span class="ltx_text" id="A2.T9.4.1.4.2.9.1" style="color:#FF0000;background-color:#D9D9D9;">+30</span></td>
<td class="ltx_td" id="A2.T9.4.1.4.2.10"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.11"><span class="ltx_text" id="A2.T9.4.1.4.2.11.1" style="color:#FF0000;background-color:#D9D9D9;">+15</span></td>
<td class="ltx_td" id="A2.T9.4.1.4.2.12"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.4.2.13"><span class="ltx_text" id="A2.T9.4.1.4.2.13.1" style="color:#FF0000;background-color:#D9D9D9;">+11679</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.4.1.5.3.1">Min</th>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.2">1</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.3">1</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.4">60</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.5">131</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.6">12732</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.7">20741</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.8">1</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.9">1</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.10">17</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.11">21</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.12">926</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.5.3.13">1033</td>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.6.4">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T9.4.1.6.4.1"></th>
<td class="ltx_td" id="A2.T9.4.1.6.4.2"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.3"><span class="ltx_text" id="A2.T9.4.1.6.4.3.1" style="color:#00FF00;background-color:#D9D9D9;">+0</span></td>
<td class="ltx_td" id="A2.T9.4.1.6.4.4"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.5"><span class="ltx_text" id="A2.T9.4.1.6.4.5.1" style="color:#FF0000;background-color:#D9D9D9;">+71</span></td>
<td class="ltx_td" id="A2.T9.4.1.6.4.6"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.7"><span class="ltx_text" id="A2.T9.4.1.6.4.7.1" style="color:#FF0000;background-color:#D9D9D9;">+8009</span></td>
<td class="ltx_td" id="A2.T9.4.1.6.4.8"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.9"><span class="ltx_text" id="A2.T9.4.1.6.4.9.1" style="color:#00FF00;background-color:#D9D9D9;">+0</span></td>
<td class="ltx_td" id="A2.T9.4.1.6.4.10"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.11"><span class="ltx_text" id="A2.T9.4.1.6.4.11.1" style="color:#FF0000;background-color:#D9D9D9;">+4</span></td>
<td class="ltx_td" id="A2.T9.4.1.6.4.12"></td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.6.4.13"><span class="ltx_text" id="A2.T9.4.1.6.4.13.1" style="color:#FF0000;background-color:#D9D9D9;">+107</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.4.1.7.5.1">Mean</th>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.2">1035</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.3">1068</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.4">842</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.5">1035</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.6">71123</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.7">79104</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.8">313</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.9">340</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.10">319</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.11">336</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.12">27457</td>
<td class="ltx_td ltx_align_left" id="A2.T9.4.1.7.5.13">30989</td>
</tr>
<tr class="ltx_tr" id="A2.T9.4.1.8.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="A2.T9.4.1.8.6.1"></th>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.2"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.3"><span class="ltx_text" id="A2.T9.4.1.8.6.3.1" style="color:#FF0000;background-color:#D9D9D9;">+33</span></td>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.4"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.5"><span class="ltx_text" id="A2.T9.4.1.8.6.5.1" style="color:#FF0000;background-color:#D9D9D9;">+193</span></td>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.6"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.7"><span class="ltx_text" id="A2.T9.4.1.8.6.7.1" style="color:#FF0000;background-color:#D9D9D9;">+7981</span></td>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.8"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.9"><span class="ltx_text" id="A2.T9.4.1.8.6.9.1" style="color:#FF0000;background-color:#D9D9D9;">+27</span></td>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.10"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.11"><span class="ltx_text" id="A2.T9.4.1.8.6.11.1" style="color:#FF0000;background-color:#D9D9D9;">+17</span></td>
<td class="ltx_td ltx_border_bb" id="A2.T9.4.1.8.6.12"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.4.1.8.6.13"><span class="ltx_text" id="A2.T9.4.1.8.6.13.1" style="color:#FF0000;background-color:#D9D9D9;">+3532</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comparative analysis of the distribution of entities (tokens, objects, and co-occurrences) in both correct and incorrect answers generated by the LLaVA 1.5 model on the POPE and MME benchmarks.  The table quantifies the maximum, minimum, and average positions of these entities within their respective distributions.  The highlighted rows show the difference in the average position between correct and incorrect answers, illustrating the tendency for incorrect responses to involve entities located further towards the tail of the distribution.
> <details>
> <summary>read the caption</summary>
> Table 9: Distribution locations of entities in correct and incorrect answers for POPE and MME, generated by LLaVA 1.5. “Tok,” “Obj,” and “Co” refer to Token, Object, and Co-occurrence, respectively, while “W” and “C” represent wrong and correct answers, respectively. The gray rows ( ) indicate the relative displacement of incorrect concepts in the distribution compared to correct concepts.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12821/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12821/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}