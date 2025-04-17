---
title: "ModernBERT or DeBERTaV3? Examining Architecture and Data Influence on Transformer Encoder Models Performance"
summary: "ModernBERT's speed doesn't guarantee superior performance; data matters! This study untangles architecture vs. data influence on transformer encoders."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Inria",]
showSummary: true
date: 2025-04-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08716 {{< /keyword >}}
{{< keyword icon="writer" >}} Wissam Antoun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08716" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08716" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08716/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Transformer encoder models like DeBERTaV3 and ModernBERT introduce architectural improvements for better efficiency. However, it is difficult to determine whether these gains come from architecture or differences in training data. This study conducts a controlled comparison by pretraining ModernBERT on the same dataset as CamemBERTaV2, a DeBERTaV3 French model, isolating the effect of model design. The study also pretrains another ModernBERT variant to explore the role of dataset quality in model performance.



The results show that the previous model generation remains superior in sample efficiency and overall benchmark performance, but ModernBERT's advantage is faster training and inference speed. It still provides architectural improvements compared to older models. High-quality pre-training data accelerates convergence but does not significantly improve final performance. These findings show the importance of disentangling pretraining data from architectural innovations when evaluating transformer models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DeBERTaV3 outperforms ModernBERT in benchmark performance and training efficiency when dataset differences are controlled. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ModernBERT offers faster training and inference speeds, making it suitable for time-sensitive applications. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} High-quality training data accelerates convergence but does not significantly improve final performance, indicating potential benchmark saturation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study enhances understanding of **modern Transformer encoder architectures** by disentangling architectural and pretraining data effects. It provides a comprehensive analysis and resources for further research in efficient and performant NLP models, revealing nuances for model selection in various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08716/x1.png)

> 🔼 This figure displays the F1 scores achieved on Question Answering (QA) downstream tasks for various models throughout their pre-training phase.  The x-axis represents the number of tokens processed during pre-training, while the y-axis shows the corresponding F1 score.  Multiple models are compared, including ModernBERT-CV2, ModernBERT-HQ, CamemBERTav2, and CamemBERTv2.  The lines labeled with '-wsd' represent the models' performance *before* the additional cooldown training period. This visualization helps to compare the training dynamics and sample efficiency of different transformer models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Downstream Performance on QA throughout the pre-training stage. wsd are the models tested before the cooldown period.
> </details>







### In-depth insights


#### Data vs. Design
The paper explores the interplay between pre-training data and model architecture, a 'Data vs. Design' question. The study suggests that advancements in architecture, such as those in ModernBERT, offer efficiency gains like faster training and inference. However, these might not translate directly to superior performance compared to models like DeBERTaV3, which leverage more effective training objectives. The research highlights that high-quality pre-training data accelerates convergence but doesn't dramatically improve final benchmark scores, hinting at potential saturation in current NLP benchmarks. **Therefore, disentangling the impact of data and design is crucial for evaluating new transformer models.** While better data may offer diminishing returns beyond a certain point, architectural improvements primarily enhance speed and efficiency, whereas the training objective dictates how effectively the model learns from the data. **The paper underscores that focusing solely on benchmark improvements can be misleading** without accounting for data quality and training regime, and it is important to note that ModernBERT's efficiency optimizations are independent of DeBERTaV3's architecture changes. It is also important to consider dataset size and pre-processing techniques.

#### DeBERTaV3 wins
**DeBERTaV3 demonstrates superior sample efficiency** and **overall benchmark performance**, suggesting advanced learning capabilities. While ModernBERT offers faster training and inference speeds, **DeBERTaV3's architecture** and training objective optimization provide superior learning capabilities. This could be due to RTD and GDES, making it a suitable choice for lower data, highlighting the importance of architecture and pretraining objectives in transformer models and sample efficiency. The study reinforces the importance of evaluating models to see the contributions of each factor involved, training data, and design choices. ModernBERT offers a fast and efficient alternative when needed.

#### Bench Saturation
**Benchmark saturation** is a critical consideration in NLP. It suggests that existing benchmarks may no longer effectively differentiate between models due to limited task complexity or dataset diversity. When models achieve near-perfect scores, it becomes difficult to assess true improvements. This can lead to a false sense of progress. **Addressing saturation** requires developing new benchmarks that are more challenging, diverse, and representative of real-world scenarios. It can involve incorporating adversarial examples or tasks that demand deeper reasoning and understanding. Furthermore, focusing on **metrics** beyond accuracy, such as efficiency and robustness, can provide a more comprehensive evaluation. Ultimately, **overcoming benchmark saturation** is essential for driving meaningful advancements in NLP.

#### Fine-tune Issues
It appears that **ModernBERT**, while offering speed and efficiency gains, may present some challenges during the fine-tuning stage. The research paper points out a practical problem with sensitivity to hyperparameter choices, a problem not encountered with the V2 baselines which suggests that the architecture requires more careful configuration during downstream adaptation. This could be attributed to the interplay between the new attention mechanism and other optimizations. Furthermore, fine-tuning instability and hyperparameter sensitivity suggest that ModernBERT's optimization landscape might be more complex than its predecessors, requiring careful tuning and potentially more data to achieve stable convergence. This also raises questions about reproducibility across different datasets or experimental setups, as even small variations in hyperparameters could lead to significant differences in performance. All of those **stability concerns present challenges for reproducibility and deployment**, and deserve further investigation.

#### Speed vs. Perf
The trade-off between speed and performance is a central theme in modern machine learning. While model accuracy remains paramount, the practical implications of training and inference speed are increasingly important. **Faster models enable quicker iteration cycles**, allowing researchers and practitioners to experiment more rapidly and deploy solutions more efficiently. **Speed improvements reduce computational costs**, making AI more accessible and sustainable. However, prioritizing speed at the expense of accuracy can be detrimental, especially in critical applications where reliability is paramount. It is essential to consider the specific use case and strike a balance between speed and performance that aligns with the application's requirements. For instance, in real-time systems like fraud detection or autonomous driving, low latency is crucial, even if it means sacrificing some degree of accuracy. Conversely, in medical diagnosis or scientific discovery, accuracy may take precedence over speed, as the cost of errors can be high. Additionally, architectural innovations, data optimization, and hardware acceleration play crucial roles in navigating the speed-performance trade-off and creating efficient, high-performing models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.08716/x2.png)

> 🔼 This figure illustrates the performance of different models on the NER (Named Entity Recognition) task throughout the pre-training phase.  It specifically tracks the F1 score, a common metric for evaluating NER performance, as the models are trained on an increasing amount of data.  The lines represent different models, including those tested both before and after a 'cooldown' period (indicated by 'wsd'). This allows for a comparison of the models' performance at different stages of training and helps to understand their relative efficiency and convergence speed. The x-axis represents the amount of data (in tokens) used for pre-training, while the y-axis shows the F1 score achieved.
> <details>
> <summary>read the caption</summary>
> Figure 2: Downstream Performance on NER throughout the pre-training stage. wsd are the models tested before the cooldown period.
> </details>



![](https://arxiv.org/html/2504.08716/x3.png)

> 🔼 Figure 3 illustrates the training stability of different transformer models during fine-tuning on the FQuAD question answering task.  The colored lines track the maximum F1 score achieved at each training step for each model. The figure highlights instances where specific models (particularly ModernBERT variants) failed to converge, indicating potential instability issues during the fine-tuning process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Instances of divergence during QA fine-tuning. Colored lines illustrate the maximum score at a given step.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08716/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08716/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}