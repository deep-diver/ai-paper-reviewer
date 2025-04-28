---
title: "Optimizing LLMs for Italian: Reducing Token Fertility and Enhancing Efficiency Through Vocabulary Adaptation"
summary: "SAVA optimizes LLMs for Italian by vocabulary adaptation, achieving efficient encoding & faster inference."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Sapienza University of Rome",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17025 {{< /keyword >}}
{{< keyword icon="writer" >}} Luca Moroni et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17025" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17025" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17025/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Most LLMs are designed for English, leading to inefficient encoding for other languages. This paper thoroughly compares vocabulary adaptation techniques for optimizing English LLMs for Italian, focusing on reducing token fertility and enhancing efficiency. The work addresses the challenges of language contamination and sub-optimal performance in non-English languages.



The paper introduces Semantic Alignment Vocabulary Adaptation (SAVA), a method leveraging neural mapping for vocabulary substitution. SAVA achieves competitive performance across downstream tasks. They adapt Mistral-7B-v0.1, reducing token fertility by 25%, and Llama-3.1-8B, reducing parameters by 1 billion. After vocabulary adaptation, the models recover performance with limited continual training.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Semantic Alignment Vocabulary Adaptation (SAVA) enhances grounded alignment strategies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Adapting vocabularies reduces token fertility and model size while recovering performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Continual training following vocabulary adaptation is crucial for performance recovery. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper addresses the critical issue of **optimizing LLMs for languages other than English**, which is increasingly relevant as the field moves towards more inclusive and globally applicable AI. The SAVA method offers a **promising avenue for improving the efficiency and performance** of LLMs in low-resource language scenarios, potentially **opening up new research directions** in vocabulary adaptation and cross-lingual transfer learning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17025/x1.png)

> 🔼 This figure compares the token fertility of two different tokenizers when processing Italian text.  The tokenizers are Mistral-7B-v0.1 (an English-centric model) and Minerva (an Italian-centric model). The data used for comparison comes from two Italian text corpora: CulturaX and Wikipedia.  The bar chart visually represents the average number of tokens each tokenizer produces for a given word in each corpus, illustrating the difference in efficiency and potential impact on downstream tasks between the two approaches. Lower fertility numbers indicate more efficient tokenization and potentially faster processing.
> <details>
> <summary>read the caption</summary>
> Figure 1: Fertility for two different tokenizers, Mistral-7B-v0.1 (left) and Minerva (right), over Italian texts from CulturaX (blue) and Wikipedia (red).
> </details>







### In-depth insights


#### Token Fertility
The idea of **token fertility** is crucial in understanding the efficiency of LLMs, especially when adapting them to new languages. It essentially measures how many tokens a word is split into. **High token fertility indicates inefficiency**, requiring more computational resources for processing. The paper aims to reduce token fertility for Italian, thus improving performance. This is a significant challenge because many LLMs are designed primarily for English, and their tokenizers are not optimized for other languages. **Adapting the vocabulary** is a key strategy. By refining the vocabulary to better suit the target language, the models achieve more efficient encoding and faster processing. This involves techniques like vocabulary substitution and continual training, ensuring the adapted models maintain high performance while reducing the compute footprint.

#### SAVA Adapation
The research paper introduces Semantic Alignment Vocabulary Adaptation (SAVA) as a novel method for vocabulary adaptation, aiming to optimize English LLMs for the Italian language. SAVA leverages **neural mapping for vocabulary substitution**, achieving competitive performance across multiple downstream tasks and enhancing grounded alignment strategies. It uses a helper embedding space, optimized for the target language, to map and initialize target vocabulary tokens. **SAVA consistently achieves higher overall scores** throughout the training process, and **SAVA's architecture exhibited closer alignment** with the helper model. This innovative approach contributes to more efficient language encoding by reducing token fertility and optimizing vocabulary, resulting in memory and computational footprint of the models.

#### Italian LLMs
The pursuit of effective **Italian LLMs** is driven by the limitations of English-centric models in handling the nuances of the Italian language. Research focuses on adapting these models through techniques like vocabulary adaptation and continual learning to improve encoding efficiency, reflected in reduced token fertility. Key strategies involve **modifying tokenizers** and vocabularies to better align with Italian, using methods like Semantic Alignment Vocabulary Adaptation (SAVA) to leverage neural mapping for vocabulary substitution. Evaluation involves assessing performance on Italian-translated benchmarks and generative tasks, indicating the potential for enhanced efficiency and performance in Italian language processing.

#### LAPT insights
Language-Adaptive Pre-Training (LAPT) provides a baseline for comparison, showcasing the impact of vocabulary adaptation techniques. It consistently demonstrates robust performance, suggesting that further improvements can be attained by leveraging the benefits of vocabulary adaptation. The results indicate that while LAPT offers an effective means to adapt models, it does not fully leverage the potential of vocabulary tuning and aligning, leaving scope for other adaptation strategies to bridge the gap. **It serves as a foundational method, particularly useful in scenarios where architectural changes or vocabulary modifications are undesirable or computationally prohibitive**. **The advantage of LAPT is its simplicity and non-disruptive nature**, preserving the original model's structure while enhancing linguistic capabilities. It suggests a holistic adaptation approach is more impactful for optimizing LLMs for the Italian language, but the impact is marginal with sufficient training and aligning.

#### Limited Corpus
The effectiveness of vocabulary adaptation and continual training is strongly influenced by the corpus used. A **small or biased corpus** might limit the model's ability to generalize well to diverse real-world scenarios. A **larger, more diverse corpus** usually leads to better adaptation, but gathering such a corpus can be resource-intensive, especially for low-resource languages. **Data cleaning and preprocessing** are also important considerations, as noisy or inconsistent data can negatively impact the training process. Also, the **quality** of the data is a factor. Ultimately, choosing the right corpus is a balancing act between data availability, computational resources, and the desired level of model performance. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17025/extracted/6384534/mistral_it_0shot.png)

> 🔼 This figure shows the average performance of six different Mistral-7B-v0.1 based models during continual training on Italian translated benchmarks.  The models are: the baseline Mistral-7B-v0.1 model (LAPT), and five variations produced using different vocabulary adaptation techniques: Random, FVT, CLP, SAVA and Minerva. The x-axis represents training steps, while the y-axis represents average accuracy across the six datasets. The graph illustrates how the performance of each model evolves over the course of the training, allowing for a comparison of the effectiveness of different vocabulary adaptation strategies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Average performance of Mistral-7B-v0.1 based models during training on Italian translated benchmarks. The average was calculated over six datasets.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/llama_it_0shot-new.png)

> 🔼 This figure displays the average performance of Llama-3.1-8B language models during continual training on Italian-translated benchmark datasets.  The continual training involved adapting the models to the Italian language, and the graph shows how their performance changes across different stages of training, measured by the average accuracy across six different benchmark datasets. This illustrates the model's learning progress over time, allowing for an assessment of its adaptation efficacy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Average performance of Llama-3.1-8B based models during training on Italian translated benchmarks. The average was calculated over six datasets.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/mistral_en_0shot.png)

> 🔼 This figure displays the average performance of Mistral-7B-v0.1 language models across six different English benchmark datasets throughout a continual training process.  The x-axis represents the number of training steps completed, and the y-axis shows the average accuracy achieved across the six benchmarks.  Different lines represent different vocabulary adaptation methods, showing how each method affects model performance over time.
> <details>
> <summary>read the caption</summary>
> Figure 4: Average performance of Mistral-7B-v0.1 based models during training on English benchmarks. The average was calculated over six datasets.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/llama_en_0shot-new.png)

> 🔼 This figure displays the average performance of Llama-3.1-8B language models over six different English benchmark datasets throughout the continual training process.  The x-axis represents the number of training steps completed and the y-axis shows the average accuracy across the six datasets. This visual helps to assess how the model's performance on English language tasks evolves as it undergoes further training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Average performance of Llama-3.1-8B based models during training on English benchmarks. The average was calculated over six datasets.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/mistral_training_loss-new.png)

> 🔼 This figure shows the training loss curves for Mistral-7B-v0.1 models during continual training.  The curves represent different vocabulary adaptation techniques applied to the model: Random, FVT, CLP, SAVA, and LAPT. The x-axis represents the training steps, and the y-axis represents the training loss. The plot visually compares the convergence speed and overall loss achieved by each method, offering insights into their efficiency and effectiveness in adapting the model to the target language.
> <details>
> <summary>read the caption</summary>
> Figure 6: Loss during continual training of Mistral-7B-v0.1 models.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/llama_training_loss-new.png)

> 🔼 This figure shows the training loss curves for the Llama-3.1-8B language model during continual training.  Several different vocabulary adaptation techniques (FVT, SAVA, and LAPT) are compared to a random baseline. The x-axis represents the number of training steps, and the y-axis shows the training loss. The plot illustrates how the loss decreases over time for each method, indicating the model's improvement in learning the target language.  This visualization helps to assess the effectiveness of different vocabulary adaptation strategies and their impact on training efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 7: Loss during continual training of Llama-3.1-8B models.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/cross_similarity.jpg)

> 🔼 This figure visualizes the cosine similarity between different Mistral-7B-v0.1 models after undergoing continual training with 12 billion tokens.  Each model was adapted using a different vocabulary adaptation technique (Random, FVT, CLP, SAVA). The heatmap shows the pairwise similarity scores, illustrating the relationships and differences in the embedding space structures resulting from each adaptation method.  Higher similarity scores indicate greater similarity in the embedding space representations learned by the models.
> <details>
> <summary>read the caption</summary>
> Figure 8: Similarity across models after continual training on 12B tokens.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/mistral_training_loss_sava_models-new.png)

> 🔼 This figure displays the training loss curves for Mistral-7B-v0.1 models during continual training.  Different lines represent models adapted using various vocabulary adaptation techniques: SAVA with different helper model sizes (350M, 1B, and 3B parameters). The x-axis represents the number of training steps, and the y-axis shows the training loss.  The plot helps to visualize the convergence speed and overall performance of each adaptation method during the continual training process, showing how the size of the helper model affects training.
> <details>
> <summary>read the caption</summary>
> Figure 9: Loss during continual training of Mistral models.
> </details>



![](https://arxiv.org/html/2504.17025/extracted/6384534/mistral_training_loss_sava_anchors-new.png)

> 🔼 This figure displays the training loss curves for Mistral-7B-v0.1 models during continual training using the SAVA method with varying numbers of tokens used to train the linear mapping function (φ).  The curves show how the training loss changes over time (number of training steps) for different configurations of the SAVA method, demonstrating the impact of the number of tokens selected from the intersection of the source and target vocabularies on model convergence during the continual training process.
> <details>
> <summary>read the caption</summary>
> Figure 10: Loss during continual training of Mistral models.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17025/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17025/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}