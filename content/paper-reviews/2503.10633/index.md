---
title: "Charting and Navigating Hugging Face's Model Atlas"
summary: "Navigating millions of models is hard. This paper charts Hugging Face, revealing model relationships and attribute predictions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 School of Computer Science and Engineering",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10633 {{< /keyword >}}
{{< keyword icon="writer" >}} Eliahu Horwitz et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10633" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10633" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10633/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

As the number of publicly available models grows, navigating and analyzing these repositories becomes increasingly challenging. Existing model documentation is often incomplete. This limitation hinders the discovery of valuable models and the understanding of the machine learning landscape. To address these issues, this work focuses on charting a preliminary atlas of models within the Hugging Face repository. Visualizations reveal intricate structures and trends in the relationships between these models. 



To address the challenge, the paper introduces a novel atlas charting method that identifies and leverages common patterns in model repositories. This enables accurate mapping of previously undocumented regions. The paper makes its dataset, code, and interactive atlas publicly available. **This enables trend analysis, measuring model impact, predicting model attributes, and recovering the lineage of models in large repositories.** The results demonstrate significant improvements in atlas structure recovery and attribute prediction, paving the way for more effective model discovery and utilization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The atlas of Hugging Face reveals complex relationships between models, including the prevalence of different training techniques and the impact of model merging. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Atlas structure can be used to predict model attributes such as accuracy and license, improving model selection and utilization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new charting method is proposed that leverages real-world patterns in model repositories to accurately map model relationships, even in the presence of incomplete documentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel atlas and charting method for Hugging Face models, revealing hidden model relationships and improving attribute prediction. This work provides insights that can **help researchers better navigate and utilize the growing number of available models**, optimize resource allocation, and explore novel model training paradigms.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10633/x2.png)

> 🔼 This figure visualizes a graph representation of machine learning models from the Hugging Face model repository, focusing on the Stable Diffusion and Llama model families.  Nodes represent individual models, with their size corresponding to the cumulative number of monthly downloads.  Directed edges connect models, showing the lineage of transformations applied (e.g., fine-tuning, quantization, merging). The color of an edge indicates the type of transformation. By comparing the two model families, the visualization highlights differences in model complexity and the types of transformations used, revealing that Llama models exhibit a richer diversity of transformation techniques and a more complex structure than Stable Diffusion models.
> <details>
> <summary>read the caption</summary>
> Figure 1:  The model atlas - Stable Diffusion vs. Llama: The model atlas visualizes models as nodes in a graph, with directed edges indicating transformations (e.g., fine-tuning). This figure shows the top 30% most downloaded models in the Stable Diffusion and Llama regions. Node size reflects cumulative monthly downloads, and color denotes the transformation type relative to the parent model. Please zoom in to see the detailed model trajectories. We observe that the Llama region has more complex structure and a wider diversity of transformation techniques (e.g., quantization, merging) compared to Stable Diffusion. Note that node position is optimized for clarity [20] and does directly reflect distance between model weights. Zoom in to view edges, best viewed in color.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.F3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.2.2">
<td class="ltx_td ltx_align_center" id="S3.F3.1.1.1">
<div class="ltx_block ltx_minipage ltx_align_middle" id="S3.F3.1.1.1.1" style="width:173.4pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="719" id="S3.F3.1.1.1.1.g1" src="extracted/6277902/figs/depth_distribution.png" width="598"/>
<figcaption class="ltx_caption ltx_centering"><span class="ltx_tag ltx_tag_block"><span class="ltx_text" id="S3.F3.1.1.1.1.2.1.1" style="font-size:90%;">(a)</span> </span><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.F3.1.1.1.1.3.2" style="font-size:90%;">Vision vs. NLP node depth</span></figcaption>
</div>
</td>
<td class="ltx_td ltx_align_center" id="S3.F3.2.2.2">
<div class="ltx_block ltx_minipage ltx_align_middle" id="S3.F3.2.2.2.1" style="width:260.2pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="785" id="S3.F3.2.2.2.1.g1" src="x3.png" width="829"/>
<figcaption class="ltx_caption ltx_centering"><span class="ltx_tag ltx_tag_block"><span class="ltx_text" id="S3.F3.2.2.2.1.2.1.1" style="font-size:90%;">(b)</span> </span><span class="ltx_text ltx_font_bold" id="S3.F3.2.2.2.1.3.2" style="font-size:90%;">Documentation levels in HF</span></figcaption>
</div>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of model attribute prediction using two methods: a baseline approach that uses the majority label and an atlas-based approach that leverages the model's relationships within the atlas.  Part (a) shows the results for predicting model accuracy using the Mistral-7B CC dataset, comparing mean squared error (MSE), mean absolute error (MAE), and correlation between predicted and actual accuracy values for different numbers of nearest neighbors considered in the atlas-based prediction. Part (b) shows the prediction accuracy for other model attributes (pipeline tag, library name, model type, license, and relation type), comparing the atlas-based approach's results with a simple graph average baseline. The atlas-based approach significantly improves prediction accuracy for all attributes over the baseline method.
> <details>
> <summary>read the caption</summary>
> Table 1: Atlas-based documentation imputation: Using atlas structure improves prediction of model accuracy and other attributes, compared to naively using the majority label. In (b), we report the prediction accuracy.
> </details>





### In-depth insights


#### HF Atlas: Overview
The Hugging Face (HF) Atlas, as conceived in this research, represents a significant advancement in navigating and understanding the complex landscape of pre-trained models. **It aims to create a structured representation of the HF repository, capturing relationships between models based on their evolution, tasks, and performance.** This is crucial because the sheer volume of models (millions) makes manual discovery and analysis impractical. **The atlas uses a directed acyclic graph (DAG) to visualize model lineages, where nodes represent models and edges indicate transformations like fine-tuning or quantization.** The research highlights the limitations of relying solely on model documentation (Model Cards), which is often incomplete. **The atlas, therefore, acts as a knowledge graph, providing insights into model trends, accuracy prediction, and heritage recovery.** Visualizations of the atlas reveal interesting patterns, such as the differing adoption of techniques (quantization, adapters) across modalities (vision vs. language). **The atlas facilitates a deeper understanding of model relationships and dependencies.**

#### Charting HF: Method
Charting a model repository like Hugging Face (HF) requires a robust methodology to map the complex relationships between models. The method should address challenges like incomplete documentation, model duplication, and diverse transformation techniques (fine-tuning, quantization, merging). **Handling duplicates** and near-duplicates, which can skew distance-based approaches, is also crucial. The method also needs to take account of **temporal dependencies**, where the creation timestamp is a crucial piece of information, parent models typically have earlier upload times than their children; thus incorporating temporal dynamics becomes essential for accurately inferring model lineage. A sophisticated method will **classify patterns, such as “fan” or “snake”**, from weight distance, identifying hyper parameter sweeps (fan) and checkpoint trajectories (snake). This involves efficient distance metric calculation between model weights and handling merges, which create non-tree DAG structures. Efficient charting also needs to handle situations where model weights variance is low. A good method should classify structure to distinguish between model types.

#### ML Trend Analysis
**Model repository atlases** offer a structured view of ML evolution, showing relationships, tasks, and performance. **Hugging Face (HF)**, the largest public model repository, shows complex model landscape with intriguing structures. Visualizations expose trends in **computer vision (CV)** and **natural language processing (NLP)**. **NLP models** exhibit greater DAG depth, suggesting iterative refinement, while **CV models** often directly link to foundation models. **Quantization** is common in **LLMs**, but emerging in vision (e.g., Flux). **Fine-tuning** dominates discriminative vision models; generative models increasingly adopt adapters. Merging is more prevalent in **NLP** than **CV**. These atlases offer valuable insights for analyzing model impact, tracing lineage, and charting undocumented areas of the model landscape. The research also suggests that the atlas structure can predict model attributes, improve model impact measurement, and helps in restoring removed models.

#### Accuracy Prediction
The section on accuracy prediction highlights a crucial aspect of model repositories: **the often-missing or incomplete accuracy metrics**. Given that users prioritize accurate models, this is a significant limitation. The paper's approach leverages the **model DAG structure to predict accuracy**, using nearest neighbors in the atlas. This is insightful, as it suggests that models derived from similar origins or with similar transformations tend to exhibit comparable performance. The use of average nearest neighbor accuracy improves over simply relying on the majority label. This reveals a potential for **'transfer learning' of accuracy metrics**, where knowledge about one model's performance can inform expectations about related models, even when direct evaluation data is scarce. **Effectively imputing such metrics** could greatly enhance model discoverability and selection within large repositories.

#### IP Tracking Atlas
**Intellectual Property (IP) tracking** is critical in AI. An atlas helps determine **model usage** and data dependencies, crucial for **rights management**. If a model has a specific license or uses particular data, all descendants are affected. Completing the atlas improves IP integrity and prevents unauthorized use, ensuring compliance and proper attribution. This aids in preventing copyright infringements and ensuring fairness in model deployment and usage.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10633/x4.png)

> 🔼 Figure 2 visualizes a portion of the Hugging Face model atlas, showcasing the relationships between 63,000 models.  The visualization highlights several key trends: the depth and complexity of Large Language Model (LLM) lineages compared to simpler structures like Flux; the prevalence of quantization in LLMs versus its near absence in vision models; and differing fine-tuning strategies between discriminative and generative vision models (discriminative models favor fine-tuning, while generative models use adapters like LoRA). The figure also shows how adapter usage has increased over time in certain model families (Stable Diffusion) and how LLMs utilize model merging more often than other model types.  The visualization includes nodes representing models and edges indicating transformations. Node sizes represent model popularity (top 30% of downloads shown), and colors represent transformation types. Zooming in is necessary to fully appreciate the details.
> <details>
> <summary>read the caption</summary>
> Figure 2: The Hugging Face atlas: While this is a small subset (63,000 models) of the documented regions of HF, it already reveals significant trends. Depth and structure. The LLM connected component (CC) is deep and complex. It includes almost a third of all models. In contrast, while Flux is also substantial, its structure is much simpler and more uniform. Quantization. Zoom-in (A) highlights quantization practices across vision, language, and vision-language (V&L) models. Vision models barely use quantization, despite Flux containing more parameters (12B) than Llama (8B). Conversely, quantization is commonplace in LLMs, constituting a large proportion of models. VLMs demonstrate a balance between these extremes. Adapter and fine-tuning strategies. A notable distinction exists between discriminative (top) and generative (bottom) vision models. Discriminative models primarily employ fine-tuning, while generative models have widely adopted adapters like LoRA. The evolution of adapter adoption over time is evident: Stable-Diffusion 1.4 (SD) (1) mostly used full fine-tuning, while SD 1.5 (2), SD 2 (3), SD XL (4), and Flux (5) progressively use more adapters. Interestingly, the atlas reveals that audio models rarely use adapters, suggesting gaps in cross-community knowledge transfer. This inter-community variation is particularly evident in model merging. LLMs have embraced model merging, with merged models frequently exceeding the popularity of their parents. This raises interesting questions about the limited role of merging in vision models. For enhanced visualization, we display the top 30% most downloaded models. Zoom in to view edges, best viewed in color.
> </details>



![](https://arxiv.org/html/2503.10633/x5.png)

> 🔼 This figure is a combined visualization showing two key aspects of the Hugging Face model repository. The left panel presents a bar chart comparing the depth of model trees in Computer Vision (CV) and Natural Language Processing (NLP).  It reveals that the vast majority (over 96%) of CV models have a shallow tree structure, with most being only one node away from the root.  Conversely, NLP models exhibit significantly greater depth, with over 5% having a depth of five or more nodes. This highlights a key difference in the model development approach between the two communities: CV leans towards using new foundation models, while NLP favors iterative refinement and building upon existing models. The right panel of the figure shows a pie chart illustrating the level of documentation available for models in the Hugging Face repository. It demonstrates that a substantial portion of models lack complete documentation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: By analyzing over 314k models, we found that over 96%percent9696\%96 % of CV models are situated one node away from the root, while only 55%percent5555\%55 % of NLP models have this shallow depth. Over 5%percent55\%5 % of NLP models have depth of at least five nodes. This shows that NLP models are much deeper than CV models, suggesting the NLP community embraces iterative refinement over new moving to the latest foundation models. Right: A significant portion of models on Hugging Face suffer from poor documentation quality.
> </details>



![](https://arxiv.org/html/2503.10633/x6.png)

> 🔼 This figure visualizes a subset of Llama-based models from the Hugging Face model repository to demonstrate a key observation: quantized models rarely have child models (i.e., they are leaf nodes).  An analysis of over 400,000 model relationships showed that 99.41% of quantized models are leaf nodes.  The figure uses color-coding (magenta) to highlight the quantized models, providing visual confirmation of this statistical finding. This suggests that quantized models are typically not further modified or used as bases for creating other models, possibly due to performance reasons.
> <details>
> <summary>read the caption</summary>
> Figure 4: Quantizations are leaves: Our analysis of over 400,000 documented model relationships reveals that 99.41%percent99.4199.41\%99.41 % of quantized models are leaf nodes. This figure shows this for a subset of the Llama-based models. Indeed, quantized models (magenta) are nearly always leaf nodes, corroborating the statistical finding.
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/neurons_ablation.png)

> 🔼 This figure demonstrates the strong correlation between model upload time and their position within the directed acyclic graph (DAG) structure of the model atlas.  By analyzing over 400,000 documented model relationships, the authors found that in 99.73% of cases, models uploaded earlier appear higher in the DAG hierarchy. The visualization focuses on a subset of the Llama model family, using green nodes to represent models that adhere to this temporal ordering and red nodes for exceptions. The single source model is shown in gray. The overwhelming prevalence of green nodes supports the temporal relationship as a strong indicator of the model lineage within the atlas.
> <details>
> <summary>read the caption</summary>
> Figure 5: Temporal dynamics indicate edge directionality: We analyzed over 400,000 documented model relationships and observed that in 99.73%percent99.7399.73\%99.73 % of cases, earlier upload times correlate with topologically higher positions in the DAG. Here, we visualize this trend on a subset of the Llama model family. Green nodes indicate models where earlier upload times align with topological order, while red nodes represent exceptions to this trend. The source (in gray) vacuously satisfied this assumption. It is clear that nearly all nodes satisfy our assumption.
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/base_model_relation_histogram.png)

> 🔼 This figure illustrates two distinct patterns observed in the evolution of machine learning models: 'snake' and 'fan' patterns. Snake patterns represent sequential model development, such as during checkpointing in training, where subsequent models exhibit minor changes and have weights highly correlated with their creation times.  Fan patterns emerge from hyperparameter sweeps where several models are trained with slightly different hyperparameters from a common ancestor; these models show low weight variance but have less correlation between their weight distance and creation times.  The figure visually compares the two patterns, highlighting how these temporal and structural differences can be used to differentiate between models developed through iterative refinement versus those generated by exploring different hyperparameters. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Snake vs. Fan patterns: Snake patterns often arise from sequential training checkpoints, while fan patterns typically result from hyperparameter sweeps. In both structures the model weight variance is low. However, in snake patterns the weight distance has high correlation with model upload time, whereas in fan patterns the correlation is lower. Note colors are the same as Fig. 4
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/6_rings.png)

> 🔼 This figure shows the relationship between the number of neurons used and the accuracy of the model.  The x-axis represents the number of neurons, and the y-axis represents the model accuracy.  Multiple lines represent different model types (SD, Qwen, Llama).  The graph shows that while increasing the number of neurons generally improves accuracy, the gains diminish at higher neuron counts.  The plot highlights that using 100 neurons offers a strong balance between achieving high accuracy and managing computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 7: Number of neurons: Accuracy as a function of the number of neurons, indeed, 100 presents a good tradeoff between performance and resources.
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/whisper.png)

> 🔼 This bar chart visualizes the distribution of various model relation types within the dataset used in the study.  It shows the proportions of different types of relationships between models, such as 'Adapter', 'Fine-tune', 'Quantization', 'Merge', 'Root', and 'Unknown'. This provides insight into the predominant ways models are derived or modified from one another within the Hugging Face repository.
> <details>
> <summary>read the caption</summary>
> Figure 8: Relation type in our dataset
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/Qwen_VL.png)

> 🔼 This figure shows the level of documentation completeness for models within the Hugging Face model repository.  It visually represents the percentage of models that have complete documentation for various attributes, such as the model's license, the type of model, the pipeline it's used in, and its base model.  The visualization highlights the significant incompleteness in model documentation, which is a key challenge addressed by the paper.
> <details>
> <summary>read the caption</summary>
> Figure 9: Documentation level in Hugging Face
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/gemma.png)

> 🔼 This figure is part of a series visualizing different connected components within a larger model atlas.  It shows a specific subgraph of the atlas, highlighting the relationships between various models.  Nodes represent individual models, edges represent relationships (such as fine-tuning or adaptation), node size likely indicates a metric like download count or usage, and node color likely represents the type of model relationship. This particular subgraph likely focuses on a subset of models related to computer vision or a similar domain, given the names of some models visible in other related figures in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 10: Individual connected components - 1/5
> </details>



![](https://arxiv.org/html/2503.10633/x9.png)

> 🔼 This figure shows one of five individual connected components from the Hugging Face model atlas.  It visualizes the relationships between different machine learning models within this specific component. Nodes represent individual models, and edges indicate the relationships (e.g., fine-tuning, adaptation) between them. Node size might correspond to a metric like the number of downloads, and color coding could represent the type of relationship or model attributes. This provides a detailed view of the evolution and connections within a subset of the larger model landscape.
> <details>
> <summary>read the caption</summary>
> Figure 11: Individual connected components - 2/5
> </details>



![](https://arxiv.org/html/2503.10633/extracted/6277902/figs/app/mistral.png)

> 🔼 This figure is part of a series visualizing different connected components within a larger model atlas.  It displays a specific subset of the atlas, showing the relationships between models (nodes) and the transformations applied between them (edges). The visualization highlights the structure and complexity of a particular area of the model landscape, potentially showing relationships such as fine-tuning, quantization, or merging, allowing the reader to trace the lineage of models and understand how they evolved.  Node sizes and colors likely represent additional metadata such as model popularity or type of transformation.
> <details>
> <summary>read the caption</summary>
> Figure 12: Individual connected components - 3/5
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.st1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.st1.3.1.1">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.st1.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S3.T1.st1.3.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st1.3.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.st1.3.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st1.3.1.1.3.1" style="font-size:90%;">MSE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.st1.3.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st1.3.1.1.4.1" style="font-size:90%;">MAE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.st1.3.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st1.3.1.1.5.1" style="font-size:90%;">Correlation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.st1.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.st1.3.2.1.1" rowspan="5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.2.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.st1.3.2.1.1.1.1" style="width:36.0pt;height:55.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:55.6pt;transform:translate(-9.78pt,-9.78pt) rotate(-90deg) ;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.st1.3.2.1.1.1.1.1">
<span class="ltx_tr" id="S3.T1.st1.3.2.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.st1.3.2.1.1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">TruthfulQA</span></span>
<span class="ltx_tr" id="S3.T1.st1.3.2.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.st1.3.2.1.1.1.1.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">(0-shot, mc2)</span></span>
</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.st1.3.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.2.1.2.1" style="font-size:90%;">Baseline</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.2.1.3.1" style="font-size:90%;">100.217</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.2.1.4.1" style="font-size:90%;">8.541</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.2.1.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.3.2.1.1" style="font-size:90%;">Ours 1-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.3.2.2.1" style="font-size:90%;">32.830</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.3.2.3.1" style="font-size:90%;">3.247</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.3.2.4.1" style="font-size:90%;">0.856</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.4.3.1.1" style="font-size:90%;">Ours 2-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.4.3.2.1" style="font-size:90%;">28.720</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.4.3.3.1" style="font-size:90%;">3.235</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.4.3.4.1" style="font-size:90%;">0.864</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.5.4.1.1" style="font-size:90%;">Ours 3-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.5.4.2.1" style="font-size:90%;">25.544</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.5.4.3.1" style="font-size:90%;">3.147</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.5.4.4.1" style="font-size:90%;">0.877</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.6.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.6.5.1.1" style="font-size:90%;">Ours 5-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.6.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.6.5.2.1" style="font-size:90%;">23.512</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.6.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.6.5.3.1" style="font-size:90%;">3.093</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.6.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.6.5.4.1" style="font-size:90%;">0.885</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.st1.3.7.6.1" rowspan="5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.7.6.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.st1.3.7.6.1.1.1" style="width:36.0pt;height:41.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.6pt;transform:translate(-2.78pt,-2.78pt) rotate(-90deg) ;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.st1.3.7.6.1.1.1.1">
<span class="ltx_tr" id="S3.T1.st1.3.7.6.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.st1.3.7.6.1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Helleswag</span></span>
<span class="ltx_tr" id="S3.T1.st1.3.7.6.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.st1.3.7.6.1.1.1.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">(0-shot)</span></span>
</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.st1.3.7.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.7.6.2.1" style="font-size:90%;">Baseline</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.7.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.7.6.3.1" style="font-size:90%;">95.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.7.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.7.6.4.1" style="font-size:90%;">7.500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st1.3.7.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.7.6.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.8.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.8.7.1.1" style="font-size:90%;">Ours 1-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.8.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.8.7.2.1" style="font-size:90%;">30.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.8.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.8.7.3.1" style="font-size:90%;">3.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.8.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.8.7.4.1" style="font-size:90%;">0.860</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.9.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.9.8.1.1" style="font-size:90%;">Ours 2-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.9.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.9.8.2.1" style="font-size:90%;">27.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.9.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.9.8.3.1" style="font-size:90%;">2.900</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.9.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.9.8.4.1" style="font-size:90%;">0.870</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.10.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.10.9.1.1" style="font-size:90%;">Ours 3-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.10.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.10.9.2.1" style="font-size:90%;">24.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.10.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.10.9.3.1" style="font-size:90%;">2.800</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.10.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.10.9.4.1" style="font-size:90%;">0.880</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.st1.3.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st1.3.11.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.11.10.1.1" style="font-size:90%;">Ours 5-NN</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.11.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.11.10.2.1" style="font-size:90%;">22.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.11.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.11.10.3.1" style="font-size:90%;">2.700</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st1.3.11.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st1.3.11.10.4.1" style="font-size:90%;">0.890</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1a presents the results of predicting model accuracy using the atlas.  The baseline uses the average accuracy of all models.  The 'Ours' rows show the Mean Squared Error (MSE), Mean Absolute Error (MAE), and correlation obtained by using the K-nearest neighbors in the atlas to predict the accuracy of a model.  Different values of K (1, 2, 3, and 5) are tested to determine the optimal number of neighbors for prediction.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.st2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.st2.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S3.T1.st2.5.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st2.5.6.1.1.1" style="font-size:90%;">Attribute</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.st2.5.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st2.5.6.1.2.1" style="font-size:90%;">Graph Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T1.st2.5.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.st2.5.6.1.3.1" style="font-size:90%;">Hub Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.st2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.st2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T1.st2.1.1.2.1" style="font-size:90%;">pipeline_tag</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st2.1.1.3.1" style="font-size:90%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.st2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.st2.1.1.1.1" style="font-size:90%;">0.79 </span><math alttext="(+0.19)" class="ltx_Math" display="inline" id="S3.T1.st2.1.1.1.m1.1"><semantics id="S3.T1.st2.1.1.1.m1.1a"><mrow id="S3.T1.st2.1.1.1.m1.1.1.1" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.1.1.1.m1.1.1.1.2" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.st2.1.1.1.m1.1.1.1.1" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.1.1.1.m1.1.1.1.1a" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml">+</mo><mn class="ltx_mathvariant_bold" id="S3.T1.st2.1.1.1.m1.1.1.1.1.2" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.2.cmml">0.19</mn></mrow><mo class="ltx_mathvariant_bold" id="S3.T1.st2.1.1.1.m1.1.1.1.3" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.st2.1.1.1.m1.1b"><apply id="S3.T1.st2.1.1.1.m1.1.1.1.1.cmml" xref="S3.T1.st2.1.1.1.m1.1.1.1"><plus id="S3.T1.st2.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T1.st2.1.1.1.m1.1.1.1"></plus><cn id="S3.T1.st2.1.1.1.m1.1.1.1.1.2.cmml" type="float" xref="S3.T1.st2.1.1.1.m1.1.1.1.1.2">0.19</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.st2.1.1.1.m1.1c">(+0.19)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.st2.1.1.1.m1.1d">bold_( bold_+ bold_0.19 bold_)</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.st2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T1.st2.2.2.2.1" style="font-size:90%;">library_name</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st2.2.2.3.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.st2.2.2.1.1" style="font-size:90%;">0.84 </span><math alttext="(+0.02)" class="ltx_Math" display="inline" id="S3.T1.st2.2.2.1.m1.1"><semantics id="S3.T1.st2.2.2.1.m1.1a"><mrow id="S3.T1.st2.2.2.1.m1.1.1.1" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.2.2.1.m1.1.1.1.2" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.st2.2.2.1.m1.1.1.1.1" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.2.2.1.m1.1.1.1.1a" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml">+</mo><mn class="ltx_mathvariant_bold" id="S3.T1.st2.2.2.1.m1.1.1.1.1.2" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.2.cmml">0.02</mn></mrow><mo class="ltx_mathvariant_bold" id="S3.T1.st2.2.2.1.m1.1.1.1.3" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.st2.2.2.1.m1.1b"><apply id="S3.T1.st2.2.2.1.m1.1.1.1.1.cmml" xref="S3.T1.st2.2.2.1.m1.1.1.1"><plus id="S3.T1.st2.2.2.1.m1.1.1.1.1.1.cmml" xref="S3.T1.st2.2.2.1.m1.1.1.1"></plus><cn id="S3.T1.st2.2.2.1.m1.1.1.1.1.2.cmml" type="float" xref="S3.T1.st2.2.2.1.m1.1.1.1.1.2">0.02</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.st2.2.2.1.m1.1c">(+0.02)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.st2.2.2.1.m1.1d">bold_( bold_+ bold_0.02 bold_)</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.st2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st2.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T1.st2.3.3.2.1" style="font-size:90%;">model_type</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st2.3.3.3.1" style="font-size:90%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.st2.3.3.1.1" style="font-size:90%;">0.81 </span><math alttext="(+0.15)" class="ltx_Math" display="inline" id="S3.T1.st2.3.3.1.m1.1"><semantics id="S3.T1.st2.3.3.1.m1.1a"><mrow id="S3.T1.st2.3.3.1.m1.1.1.1" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.3.3.1.m1.1.1.1.2" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.st2.3.3.1.m1.1.1.1.1" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.3.3.1.m1.1.1.1.1a" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml">+</mo><mn class="ltx_mathvariant_bold" id="S3.T1.st2.3.3.1.m1.1.1.1.1.2" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.2.cmml">0.15</mn></mrow><mo class="ltx_mathvariant_bold" id="S3.T1.st2.3.3.1.m1.1.1.1.3" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.st2.3.3.1.m1.1b"><apply id="S3.T1.st2.3.3.1.m1.1.1.1.1.cmml" xref="S3.T1.st2.3.3.1.m1.1.1.1"><plus id="S3.T1.st2.3.3.1.m1.1.1.1.1.1.cmml" xref="S3.T1.st2.3.3.1.m1.1.1.1"></plus><cn id="S3.T1.st2.3.3.1.m1.1.1.1.1.2.cmml" type="float" xref="S3.T1.st2.3.3.1.m1.1.1.1.1.2">0.15</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.st2.3.3.1.m1.1c">(+0.15)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.st2.3.3.1.m1.1d">bold_( bold_+ bold_0.15 bold_)</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.st2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st2.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T1.st2.4.4.2.1" style="font-size:90%;">license</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st2.4.4.3.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.st2.4.4.1.1" style="font-size:90%;">0.85 </span><math alttext="(+0.35)" class="ltx_Math" display="inline" id="S3.T1.st2.4.4.1.m1.1"><semantics id="S3.T1.st2.4.4.1.m1.1a"><mrow id="S3.T1.st2.4.4.1.m1.1.1.1" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.4.4.1.m1.1.1.1.2" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.st2.4.4.1.m1.1.1.1.1" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.4.4.1.m1.1.1.1.1a" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml">+</mo><mn class="ltx_mathvariant_bold" id="S3.T1.st2.4.4.1.m1.1.1.1.1.2" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.2.cmml">0.35</mn></mrow><mo class="ltx_mathvariant_bold" id="S3.T1.st2.4.4.1.m1.1.1.1.3" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.st2.4.4.1.m1.1b"><apply id="S3.T1.st2.4.4.1.m1.1.1.1.1.cmml" xref="S3.T1.st2.4.4.1.m1.1.1.1"><plus id="S3.T1.st2.4.4.1.m1.1.1.1.1.1.cmml" xref="S3.T1.st2.4.4.1.m1.1.1.1"></plus><cn id="S3.T1.st2.4.4.1.m1.1.1.1.1.2.cmml" type="float" xref="S3.T1.st2.4.4.1.m1.1.1.1.1.2">0.35</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.st2.4.4.1.m1.1c">(+0.35)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.st2.4.4.1.m1.1d">bold_( bold_+ bold_0.35 bold_)</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.st2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.st2.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T1.st2.5.5.2.1" style="font-size:90%;">relation_type</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.st2.5.5.3.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.st2.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.st2.5.5.1.1" style="font-size:90%;">0.80 </span><math alttext="(+0.19)" class="ltx_Math" display="inline" id="S3.T1.st2.5.5.1.m1.1"><semantics id="S3.T1.st2.5.5.1.m1.1a"><mrow id="S3.T1.st2.5.5.1.m1.1.1.1" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.5.5.1.m1.1.1.1.2" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.st2.5.5.1.m1.1.1.1.1" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml"><mo class="ltx_mathvariant_bold" id="S3.T1.st2.5.5.1.m1.1.1.1.1a" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml">+</mo><mn class="ltx_mathvariant_bold" id="S3.T1.st2.5.5.1.m1.1.1.1.1.2" mathcolor="#33CC33" mathsize="50%" mathvariant="bold" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.2.cmml">0.19</mn></mrow><mo class="ltx_mathvariant_bold" id="S3.T1.st2.5.5.1.m1.1.1.1.3" mathcolor="#33CC33" mathvariant="bold" maxsize="50%" minsize="50%" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.st2.5.5.1.m1.1b"><apply id="S3.T1.st2.5.5.1.m1.1.1.1.1.cmml" xref="S3.T1.st2.5.5.1.m1.1.1.1"><plus id="S3.T1.st2.5.5.1.m1.1.1.1.1.1.cmml" xref="S3.T1.st2.5.5.1.m1.1.1.1"></plus><cn id="S3.T1.st2.5.5.1.m1.1.1.1.1.2.cmml" type="float" xref="S3.T1.st2.5.5.1.m1.1.1.1.1.2">0.19</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.st2.5.5.1.m1.1c">(+0.19)</annotation><annotation encoding="application/x-llamapun" id="S3.T1.st2.5.5.1.m1.1d">bold_( bold_+ bold_0.19 bold_)</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1b presents the results of predicting model attributes using the atlas structure.  It compares the performance of using the graph average and the hub average methods for predicting five different model attributes: pipeline tag, library name, model type, license, and relation type. The 'Graph Avg.' column shows the accuracy achieved by simply using the majority label across all nodes in the graph, while the 'Hub Avg.' column displays the accuracy achieved by employing a hub-based prediction approach, where the majority label within a hub (a set of sibling leaf nodes) is used to predict the attributes of the unlabeled nodes within that hub. The numbers in parentheses in the 'Hub Avg.' column indicate the improvement in accuracy achieved by the hub-based method compared to the graph average method.  This table demonstrates the significant improvement in attribute prediction accuracy provided by the hub-based approach over the simpler graph-average approach, particularly for attributes like license.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T2.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.2.1">Qwen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.3.1">Llama</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.4.1">SD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.6.2.1.1">Random - root</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.1.2">1.77</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.1.3">1.84</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.1.4">0.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.3.2.1">Random</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.2.2">0.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.2.3">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.2.4">0.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.4.3.1">Majority</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.3.2">15.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.3.3">25.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.3.4">36.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.5.4.1">Price’s <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10633v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.4.2">2.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.4.3">5.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.5.4.4">8.50</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.5.1">MoTHer <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10633v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.5.2">32.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.5.3">19.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.5.4">50.51</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.7.6.1">Ours</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.6.2.1">78.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.6.3.1">80.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.6.4.1">85.10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the accuracy of different methods for recovering the structure of a model atlas.  The atlas, representing relationships between various machine learning models, is incomplete in real-world scenarios (in-the-wild). The table compares the performance of the authors' novel method against several baselines (Random, Majority, Price's algorithm, and MoTHer), quantifying their success rates in correctly identifying relationships between models in three separate dataset components (Qwen, Llama, and SD). The results demonstrate the superior performance of the authors' method.
> <details>
> <summary>read the caption</summary>
> Table 2: Atlas recovery results: Our method outperforms the baselines by a significant margin, even for in-the-wild models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" colspan="2" id="S4.T3.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.2.1">Qwen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.3.1">Llama</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.1.4.1">SD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.2" rowspan="5"><span class="ltx_text" id="S4.T3.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.1.1.2.1.1" style="width:6.8pt;height:21.2pt;vertical-align:-7.2pt;"><span class="ltx_transformed_inner" style="width:21.2pt;transform:translate(-7.18pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.1.1.2.1.1.1">Ours</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><minus id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">-</annotation></semantics></math> Greedy Alg.</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.3">77.34</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.4">78.98</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.5">Failed</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.2.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mo id="S4.T3.2.2.1.m1.1.1" xref="S4.T3.2.2.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><minus id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">-</annotation></semantics></math> Quantization</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2">70.57</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.3">36.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4">84.85</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mo id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><minus id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">-</annotation></semantics></math> Deduplication</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.2">67.85</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3">75.28</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1">88.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.4.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mo id="S4.T3.4.4.1.m1.1.1" xref="S4.T3.4.4.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><minus id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">-</annotation></semantics></math> Temporal Consistency</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2">75.47</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3">80.13</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4">80.86</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.5.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mo id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><minus id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">-</annotation></semantics></math> Fans vs. Snakes</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.2">75.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.3">76.03</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.4">71.72</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.6.6.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.1">
<math alttext="-" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mo id="S4.T3.6.6.1.m1.1.1" xref="S4.T3.6.6.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><minus id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">-</annotation></semantics></math> Merges</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.3">76.95</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.4">76.61</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.5">84.85</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T3.6.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.1.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.1.2.1">78.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.1.3.1">80.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.1.4">85.10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the individual contributions of different assumptions made in the atlas charting method. By systematically removing each assumption (greedy algorithm, quantization prior, deduplication, temporal consistency, snake/fan classification, and handling merges), the table quantifies the impact on the accuracy of recovering the atlas structure across three distinct model families (Qwen, Llama, and SD).  The results demonstrate that each assumption plays a significant role in achieving high recovery accuracy, highlighting the importance of these components in the overall methodology.
> <details>
> <summary>read the caption</summary>
> Table 3: Subtractive ablation: We remove each of our assumptions individually, indeed, we see that each one contributes to our final high recovery accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="A5.T4.1.1.1">
<math alttext="\#" class="ltx_Math" display="inline" id="A5.T4.1.1.1.m1.1"><semantics id="A5.T4.1.1.1.m1.1a"><mi id="A5.T4.1.1.1.m1.1.1" mathvariant="normal" xref="A5.T4.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="A5.T4.1.1.1.m1.1b"><ci id="A5.T4.1.1.1.m1.1.1.cmml" xref="A5.T4.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T4.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="A5.T4.1.1.1.m1.1d">#</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A5.T4.1.1.1.1"> of Nodes</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A5.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T4.1.1.2.1">Time (sec)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A5.T4.2.2.1"><math alttext="20" class="ltx_Math" display="inline" id="A5.T4.2.2.1.m1.1"><semantics id="A5.T4.2.2.1.m1.1a"><mn id="A5.T4.2.2.1.m1.1.1" xref="A5.T4.2.2.1.m1.1.1.cmml">20</mn><annotation-xml encoding="MathML-Content" id="A5.T4.2.2.1.m1.1b"><cn id="A5.T4.2.2.1.m1.1.1.cmml" type="integer" xref="A5.T4.2.2.1.m1.1.1">20</cn></annotation-xml><annotation encoding="application/x-tex" id="A5.T4.2.2.1.m1.1c">20</annotation><annotation encoding="application/x-llamapun" id="A5.T4.2.2.1.m1.1d">20</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T4.2.2.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A5.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T4.3.3.1"><math alttext="100" class="ltx_Math" display="inline" id="A5.T4.3.3.1.m1.1"><semantics id="A5.T4.3.3.1.m1.1a"><mn id="A5.T4.3.3.1.m1.1.1" xref="A5.T4.3.3.1.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="A5.T4.3.3.1.m1.1b"><cn id="A5.T4.3.3.1.m1.1.1.cmml" type="integer" xref="A5.T4.3.3.1.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="A5.T4.3.3.1.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="A5.T4.3.3.1.m1.1d">100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A5.T4.3.3.2">0.06</td>
</tr>
<tr class="ltx_tr" id="A5.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T4.4.4.1"><math alttext="1000" class="ltx_Math" display="inline" id="A5.T4.4.4.1.m1.1"><semantics id="A5.T4.4.4.1.m1.1a"><mn id="A5.T4.4.4.1.m1.1.1" xref="A5.T4.4.4.1.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A5.T4.4.4.1.m1.1b"><cn id="A5.T4.4.4.1.m1.1.1.cmml" type="integer" xref="A5.T4.4.4.1.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A5.T4.4.4.1.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A5.T4.4.4.1.m1.1d">1000</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A5.T4.4.4.2">0.58</td>
</tr>
<tr class="ltx_tr" id="A5.T4.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T4.5.5.1"><math alttext="10000" class="ltx_Math" display="inline" id="A5.T4.5.5.1.m1.1"><semantics id="A5.T4.5.5.1.m1.1a"><mn id="A5.T4.5.5.1.m1.1.1" xref="A5.T4.5.5.1.m1.1.1.cmml">10000</mn><annotation-xml encoding="MathML-Content" id="A5.T4.5.5.1.m1.1b"><cn id="A5.T4.5.5.1.m1.1.1.cmml" type="integer" xref="A5.T4.5.5.1.m1.1.1">10000</cn></annotation-xml><annotation encoding="application/x-tex" id="A5.T4.5.5.1.m1.1c">10000</annotation><annotation encoding="application/x-llamapun" id="A5.T4.5.5.1.m1.1d">10000</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A5.T4.5.5.2">19.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the runtime performance of the proposed atlas charting method for varying numbers of models.  It demonstrates the scalability and efficiency of the approach, showing that even with thousands of models, the atlas can be reconstructed in a matter of seconds. This highlights the practical applicability of the method to large-scale model repositories.
> <details>
> <summary>read the caption</summary>
> Table 4: Runtime: Our method can recover an atlas with thousands of models in a matter of seconds.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10633/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10633/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}