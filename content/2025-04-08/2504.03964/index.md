---
title: "Clinical ModernBERT: An efficient and long context encoder for biomedical text"
summary: "Clinical ModernBERT: Efficient, long-context encoder for enhanced biomedical text understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 UCLA",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03964 {{< /keyword >}}
{{< keyword icon="writer" >}} Simon A. Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03964" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03964" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03964/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

BERT models have been foundational to natural language processing. This paper addresses challenges in the biomedical and clinical domains, where specialized language and long-context documents are common. Existing models often struggle with the unique aspects of clinical text, such as medical terminology and the need to process lengthy patient narratives. These limitations hinder the effective application of NLP techniques in healthcare settings. 



To tackle this, the authors introduce Clinical ModernBERT, a transformer-based encoder pretrained on large-scale biomedical literature, clinical notes, and medical ontologies. It captures both granular medical terminology and global discourse structure of clinical documentation. This model integrates architectural advancements of ModernBERT, such as rotary positional embeddings and flash attention, enhancing efficiency and long-context processing capabilities. The effectiveness of Clinical ModernBERT is demonstrated through empirical evaluations on various clinical NLP benchmarks, showcasing its competitive performance in semantic retrieval, classification, and entity recognition.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Clinical ModernBERT enhances biomedical NLP with a domain-adapted transformer encoder. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model integrates architectural upgrades for improved efficiency and long-context processing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Clinical ModernBERT achieves competitive performance across diverse clinical NLP benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work offers researchers a **high-fidelity, efficient clinical encoder**, advancing clinical NLP with improved performance across diverse tasks. It provides a scalable solution for processing long clinical documents and facilitates deeper insights into medical data, opening new avenues for research and application.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03964/extracted/6337549/icd.png)

> 🔼 This figure illustrates how the model handles multiple versions of ICD codes. Each row shows a medical concept with its code and description from different ICD versions. These are then converted into a unified natural language representation to ensure consistency across evolving coding systems.  This approach is inspired by methods that use text templates to format tabular data, facilitating alignment and interoperability across different code versions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Medical Code Ontologies Construction: An illustration of structured ontology construction across multiple ICD code versions. Each row represents a distinct medical concept identified by its version-specific code and description, which is then converted into a standardized, descriptive natural language representation. This process facilitates alignment and interoperability across evolving coding schemes. This setup is inspired by methods like (Hegselmann et al., 2023; Ono and Lee, 2024) which use text templates to serialize tabular data.
> </details>







### In-depth insights


#### Arch. Innovation
**Architectural innovation** in the context of NLP models, particularly encoders, is crucial for advancing performance and efficiency. It encompasses novel designs like **rotary positional embeddings (RoPE)** and **Flash Attention**, which significantly enhance the capabilities of transformer-based models.  **RoPE** enables better generalization to longer contexts by embedding relative positional information. **Flash Attention** mitigates memory bottlenecks. These advancements lead to more performant, efficient, and scalable foundations for language understanding, especially in specialized domains such as biomedicine.

#### Ontology Matters
**Ontology is Critical** because it provides a structured framework for organizing and understanding complex knowledge domains, ensuring semantic consistency and facilitating reasoning.  A well-defined ontology enables **effective knowledge representation** by clarifying relationships between concepts, thus improving data integration and interoperability. In clinical and biomedical NLP, ontologies are essential for **standardizing medical terminologies**, enhancing data retrieval, and supporting clinical decision-making. By leveraging ontologies, models can achieve a **deeper understanding** of the relationships between diseases, treatments, and symptoms, leading to more accurate and reliable predictions. Ontologies also provide a basis for **explainable AI**, allowing models to justify their decisions based on established medical knowledge, thereby increasing trust and acceptance in clinical settings.

#### Long Context NLP
**Long context NLP** is revolutionizing how machines understand text. **Traditional models** struggle with longer documents, missing crucial connections. Now, models like **Clinical Longformer** can process thousands of tokens. This is vital in fields like healthcare, where patient records are extensive. **New architectures** and attention mechanisms, like Flash Attention, are key to efficient long context processing. **Domain-specific pretraining**, such as on medical literature, further enhances performance. The i2b2 dataset serves as a critical benchmark for evaluating long context NER capabilities. **This progress** unlocks deeper insights and better decision-making in complex, real-world scenarios.

#### Scaling Laws?
**Scaling laws** are essential for predicting large language model performance, and understanding how these laws translate to specialized domains like clinical NLP is vital. The paper suggests exploring whether the log-linear improvements seen in general language models hold true for clinical corpora or if new inflection points appear. **Clinical ModernBERT** demonstrates that carefully adapting general language modeling principles to the clinical domain yields models competitive with or superior to state-of-the-art models. Further research should focus on identifying how large the data needs to be for the performance to see gains.

#### Robust Encode
**Robust encoding** is vital for biomedical text, given its complexity and nuance. It necessitates models to capture subtle semantic differences and long-range dependencies. A robust encoder should effectively handle noisy data, such as abbreviations and clinical jargon, ensuring consistent and accurate representations. **Domain-specific pre-training** and architectural adaptations, such as attention mechanisms, are crucial for achieving robustness. The goal is to create an encoder that is not only performant on benchmark datasets but also reliable and generalizable across diverse clinical scenarios, ultimately enhancing clinical decision support and research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03964/extracted/6337549/final-tsne-side-by-side2.png)

> 🔼 This figure compares the t-distributed Stochastic Neighbor Embedding (t-SNE) visualizations of ICD-9 diagnosis code embeddings generated by two different models: ModernBERT and Clinical ModernBERT.  The visualizations project the high-dimensional embeddings into a 2D space, allowing for visual inspection of the semantic relationships between codes.  Each point represents an ICD-9 code, and the color of the point corresponds to its high-level ICD-9 category.  The visualization shows that Clinical ModernBERT, which was pre-trained on a dataset that included both free text and structured medical ontologies (including ICD-9 codes and their descriptions), produces a more distinct and organized clustering of ICD-9 codes according to their high-level categories. This improved clustering demonstrates that the inclusion of structured medical ontologies during pre-training helps the model learn more meaningful semantic relationships between the codes. In contrast, the ModernBERT model, which lacks this additional pretraining data, shows less distinct clusters.
> <details>
> <summary>read the caption</summary>
> Figure 2: ICD-9 tSNE Latent Space Visualization: A tSNE visualization of the ICD 9 Diagnoses codes using modernBERT versus Clinical ModernBERT. This visualization provides the added use of adding the medical code ontologies as a pre-training source to encode coded language seen frequently in clinical practice.
> </details>



![](https://arxiv.org/html/2504.03964/extracted/6337549/time.png)

> 🔼 This figure compares the processing time of three different BERT models: Distil-BERT, BioClinicalBERT, and Clinical ModernBERT.  The x-axis represents the number of data points (from 10,000 to 100,000), and the y-axis shows the processing time in seconds.  The graph clearly shows that Clinical ModernBERT is the most efficient, consistently having the lowest processing time. BioClinicalBERT is the least efficient, taking significantly longer than the other two models. This demonstrates that Clinical ModernBERT is a superior choice for applications with limited computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparative Performance Analysis of BERT Models: This figure demonstrates the processing time requirements across three BERT variants (Distil-BERT, BioClinicalBERT, and Clinical ModernBERT) as data volume increases from 10,000 to 100,000 points. BioClinicalBERT consistently shows the highest computational demand, requiring approximately 1.4x the processing time of Distil-BERT and 1.6x that of Clinical ModernBERT at maximum load. Clinical ModernBERT demonstrates superior efficiency, maintaining the lowest processing times across all data volumes, making it optimal for resource-constrained environments.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03964/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03964/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}