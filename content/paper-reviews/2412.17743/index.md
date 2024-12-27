---
title: "YuLan-Mini: An Open Data-efficient Language Model"
summary: "YuLan-Mini: An open, data-efficient 2.42B parameter LLM achieving top-tier performance with innovative training techniques."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Renmin University of China",]
showSummary: true
date: 2024-12-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.17743 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiwen Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.17743" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.17743" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/yulan-mini-an-open-data-efficient-language" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.17743/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Developing effective Large Language Models (LLMs) is challenging due to immense resource demands and complex training processes.  Existing open-source LLMs often underperform compared to their commercial counterparts, hindering research reproducibility and progress.  This paper addresses this gap by focusing on efficient LLM training, a critical area that is often lacking in detail from industry reports. 

The researchers introduce YuLan-Mini, a 2.42B parameter LLM that exhibits state-of-the-art performance at its size.  **YuLan-Mini's success stems from three key technical advancements**: a well-designed data pipeline that incorporates data cleaning and scheduling strategies; a robust optimization method to mitigate training instability; and an effective annealing approach that utilizes targeted data selection and long context training.  The authors also **publicly release the full data composition and training details**, significantly contributing to the LLM research community by facilitating reproducibility and promoting open science.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} YuLan-Mini, a 2.42B parameter LLM, achieves top-tier performance compared to models of similar size. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper details a novel training approach focusing on data pipeline, optimization, and annealing for enhanced efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} YuLan-Mini's data composition and training details are publicly available, promoting reproducibility and furthering open-source LLM research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on efficient LLMs because it presents a **highly capable, data-efficient 2.42B parameter base model**, YuLan-Mini, along with the **full technical details of its training**. This allows for easier reproducibility and benchmarking, contributing significantly to the advancement of open-source LLM research.  Furthermore, the paper's systematic exploration of training stability issues and mitigation methods provides valuable insights for the broader LLM community. Its findings on data and optimization techniques are highly relevant to current research trends aiming to improve LLM training efficiency.

------
#### Visual Insights



![](https://arxiv.org/html/2412.17743/x1.png)

> 🔼 This figure showcases the performance of YuLan-Mini, a 2.42B parameter language model, compared to other base models of similar size.  Performance is measured by averaging scores across eight benchmark tasks: GSM8K, MATH-500, HumanEval, MBPP, MMLU, ARC-Challenge, HellaSwag, and CEval.  The x-axis represents the model's approximate computational cost (FLOPs), calculated using the scaling law formula C = 6ND from Kaplan et al. (2020), where N is the model size and D is the dataset size.  Models larger than 3B parameters are shown in gray to highlight YuLan-Mini's competitive performance within its parameter range.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance comparison of YuLan-Mini against other base models, based on the average scores across eight benchmarks: GSM8K, MATH-500, HumanEval, MBPP, MMLU, ARC-Challenge, HellaSwag, and CEval. Floating Point Operations (FLOPs) are estimated using the scaling law formula C=6⁢N⁢D𝐶6𝑁𝐷C=6NDitalic_C = 6 italic_N italic_D proposed by Kaplan et al. (2020), where N𝑁Nitalic_N is the model size and D𝐷Ditalic_D is the size of the dataset. The models with a size larger than 3B are plotted in gray.
> </details>





{{< table-caption >}}
| Model | $n_{\text{layers}}$ | $d_{\text{model}}$ | $r_{\text{ffn}}$ | $n_{\text{heads}}$ | $n_{\text{kv_heads}}$ |
|---|---|---|---|---|---| 
| LLaMA-3.2-3B | 28 | 3,072 | 2.7 | 24 | 8 |
| Phi-3-mini-4k-instruct | 32 | 3,072 | 2.7 | 32 | 32 |
| MiniCPM-2B | 40 | 2,304 | 2.5 | 36 | 36 |
| MiniCPM3-4B | 62 | 2,560 | 2.5 | 40 | 40 |
| Qwen2.5-1.5B | 28 | 1,536 | 5.8 | 12 | 2 |
| MobileLLM-1B | 54 | 1,280 | 2.8 | 20 | 5 |
| YuLan-Mini | 56 | 1,920 | 2.5 | 30 | 6 |{{< /table-caption >}}

> 🔼 This table details the hyperparameter settings for various language models, highlighting the differences in their architectures.  It shows the number of layers (Nlayers), the model's hidden dimension (dmodel), the feed-forward network hidden size relative to the model's hidden size (rffn), the number of attention heads (Nheads), and the number of key-value heads (Nkv_heads). These hyperparameters are crucial in determining the model's capacity, training efficiency, and overall performance.  A full definition of these symbols can be found in Table 8 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Hyperparameter settings of diffrent models. rffnsubscript𝑟ffnr_{\text{ffn}}italic_r start_POSTSUBSCRIPT ffn end_POSTSUBSCRIPT is the ratio of the feed-forward network’s hidden size to the model’s hidden size. The definition of the symbols is available at Table 8
> </details>





### In-depth insights


#### Data-Efficient LLMs
Data-efficient LLMs are a crucial area of research because they address the limitations of traditional large language models (LLMs) which demand immense computational resources and massive datasets for training.  **Reducing the data requirements** allows for broader accessibility to LLM development, particularly for researchers with limited resources.  **Effective optimization strategies** are key, as are techniques to mitigate training instability. This includes exploring novel training methodologies, **targeted data selection**, and improved data preprocessing.  **The use of synthetic data**, or data augmentation, is also a promising avenue to expand training data without needing huge amounts of real-world data. By focusing on efficiency, researchers hope to create LLMs that deliver comparable performance to larger models while significantly minimizing resource consumption and environmental impact.  Successfully achieving this goal would democratize the field and drive innovation by making LLM development more accessible.

#### Training Stability
Training stability in large language models (LLMs) is crucial for efficient and effective pre-training.  **Instability manifests as loss spikes, gradient explosions, or vanishing gradients**, hindering the model's ability to learn effectively and potentially leading to training failure.  The authors of this paper explore various factors contributing to instability, including **inappropriate initialization strategies**, the use of **unsuitable architectures**, and **issues with layer normalization**. They demonstrate that a lack of systematic investigation into these effects in large-scale pre-training hinders the ability to effectively mitigate these issues. To address training instability, the researchers employed several strategies:  **adopting µP-like initialization with re-parametrization to adjust learning rates and stabilize training**. Additionally, they investigated multiple factors that contribute to instability and provided a detailed analysis of their findings, including empirical findings, theoretical analysis, and practical implementation methods.  Through a combination of techniques, they successfully achieved significantly enhanced stability, ultimately resulting in a model that performs better with less data.

#### Annealing Strategies
Annealing, in the context of large language model (LLM) training, is a crucial stage that significantly enhances performance.  **It focuses on refining the model using high-quality data and extending its capacity to handle longer contexts.**  The effectiveness of annealing hinges on several key strategies.  **A carefully designed learning rate schedule is paramount**, gradually decreasing the learning rate to prevent instability and ensure fine-tuning. **Context window extension** is another vital aspect, progressively increasing the model's ability to process longer sequences and capture more complex relationships within text.  **Strategic data selection**, prioritizing high-quality and diverse data, including synthetic reasoning data, is also crucial. This selection enhances the model's abilities in specific domains (e.g., mathematics, code). Finally, **optimization techniques** such as checkpoint merging, further improve the model's overall performance and robustness.  In essence, annealing strategies act as a powerful final optimization phase, leveraging refined data and enhanced processing capabilities to achieve peak model performance.

#### Synthetic Data Gen
Synthetic data generation is a crucial aspect of modern machine learning, particularly in domains where real-world data is scarce, expensive, or sensitive.  In the context of large language models (LLMs), synthetic data can **augment training datasets**, improving model performance and generalization.  **Strategies for generating synthetic data for LLMs** vary widely, from simple rule-based approaches to more sophisticated techniques like chain-of-thought prompting.  The quality and diversity of synthetic data are critical factors influencing the success of such approaches.  Careful design of synthetic data generation processes can **mitigate issues like data bias or overfitting**.  However, challenges remain: it's difficult to guarantee the synthetic data perfectly reflects the properties of real-world data, and over-reliance on synthetic data can hinder model's ability to generalize to unseen real-world examples.  **Careful evaluation is critical** to ensure that synthetic data improves, rather than hinders, LLM performance and reliability.

#### Future Work
The authors express intentions to release an instruction-tuned version of YuLan-Mini, a significant step towards enhancing its real-world applicability.  They also plan to explore extending YuLan-Mini's capabilities by investigating alternative architectures and training methodologies, potentially improving efficiency and performance. **Specialization in professional domains** like mathematics and coding is another key area of focus, which could lead to the development of even more powerful and specialized models.  The overall direction points towards a continued effort to improve the model's versatility, efficiency, and suitability for a wider range of applications while remaining committed to open-source principles and data efficiency.  Further research into the dynamics of model capacity and the impact of various training choices will likely drive future development, potentially leading to a more sophisticated understanding of effective LLM training and development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.17743/x2.png)

> 🔼 The figure shows the training loss curve during the pre-training process of the YuLan-Mini language model.  The x-axis represents the number of training steps, and the y-axis represents the training loss. The curve visually demonstrates how the training loss decreased over time, indicating the effectiveness of the training process. It provides insights into training stability and convergence.
> <details>
> <summary>read the caption</summary>
> (a) Training loss.
> </details>



![](https://arxiv.org/html/2412.17743/x3.png)

> 🔼 The figure shows the gradient norm during the model's pre-training process.  It illustrates how the magnitude of gradients changes over the course of training.  The gradient norm is a crucial indicator of training stability; a consistently high gradient norm could indicate instability, while a smooth, decreasing gradient norm suggests stable training.
> <details>
> <summary>read the caption</summary>
> (b) Gradient norm.
> </details>



![](https://arxiv.org/html/2412.17743/x4.png)

> 🔼 This figure visualizes the training stability of the YuLan-Mini model during the pre-training phase.  The left subplot (a) displays the training loss over time, illustrating its decrease and relative stability during the training process. The right subplot (b) presents the gradient norm, another key indicator of training stability.  A consistently low gradient norm is desirable, as it indicates that the model is learning smoothly and not experiencing instability, such as gradient explosions or vanishing gradients.  Analysis of both the training loss and gradient norm provides a comprehensive assessment of the training process' stability.
> <details>
> <summary>read the caption</summary>
> Figure 2: Training loss and gradients during pre-training process.
> </details>



![](https://arxiv.org/html/2412.17743/x5.png)

> 🔼 The figure shows the variance of hidden states across different layers during the training process.  The x-axis represents the training steps, and the y-axis shows the variance (on a log-scale) of the hidden states within different layers (layer 1, layer 7, layer 13, layer 19, layer 25, layer 30).  The plot illustrates an 'exploding' trend where the variance increases dramatically as training progresses, indicating potential instability in the training process. This is contrasted with a similar figure (Figure 3b) showing convergent hidden states, which would represent a stable training process.
> <details>
> <summary>read the caption</summary>
> (a) Exploding hidden states.
> </details>



![](https://arxiv.org/html/2412.17743/x6.png)

> 🔼 Figure 3(b) displays the training dynamics of a convergent trial, illustrating the stability of hidden states and gradient norms throughout the training process. Unlike the divergent trial shown in Figure 3(a), where hidden states variance and gradient norm exhibit an upward trend, this convergent trial demonstrates stable values for these indicators, indicating a well-behaved training process.
> <details>
> <summary>read the caption</summary>
> (b) Convergent hidden states.
> </details>



![](https://arxiv.org/html/2412.17743/x7.png)

> 🔼 Figure 3(c) shows an example where the training process fails to predict the loss accurately.  The y-axis (log scale) represents the loss, while the x-axis shows the number of training steps.  The loss curve deviates significantly from what would be expected during normal training. This deviation may be indicative of problems within the training process such as unstable gradients, exploding gradients, or other numerical instability. In this specific case, this could indicate a failure in the optimization or a problem with the data used for training.
> <details>
> <summary>read the caption</summary>
> (c) Loss prediction failure.
> </details>



![](https://arxiv.org/html/2412.17743/x8.png)

> 🔼 This figure illustrates the difference in training dynamics between a successful (convergent) and an unsuccessful (divergent) training run.  While both trials show consistent loss values over time, the key difference lies in the behavior of the hidden state variance and gradient norm.  The y-axis uses a logarithmic scale to display these values.  The figure visually demonstrates that even with similar loss, the variance in hidden states and gradient norms can diverge dramatically in an unstable training process, highlighting the importance of monitoring these metrics for effective training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of training dynamics between divergent and convergent trial. The y𝑦yitalic_y-axis denotes the value of the hidden states variance and gradient norm on a log-scale. Both trials have consistent loss, but different trends of hidden states variance and gradient norm.
> </details>



![](https://arxiv.org/html/2412.17743/x9.png)

> 🔼 This figure shows the variance of the output of each layer normalization (LN) layer across different layers in the model during training.  It visually represents how much the LN layer's output varies from its mean.  High variance might indicate instability in the training process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Variance of LN output of each layers.
> </details>



![](https://arxiv.org/html/2412.17743/x10.png)

> 🔼 This figure shows that before applying Layer Normalization (LN), the attention scores can explode, leading to instability in training.  The plot likely displays the attention scores across different layers of the model over the course of training.  An exploding attention score implies that the values are significantly large, exceeding a stable range, resulting in unstable or divergent training dynamics.  The figure supports the argument in the paper about the importance of Layer Normalization for stabilizing the model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Attention scores explodes before LN.
> </details>



![](https://arxiv.org/html/2412.17743/x11.png)

> 🔼 This ablation study investigates the impact of various training instability mitigation methods on model performance and training time.  The experiment uses LAMBADA accuracy as the evaluation metric, averaging the scores from the last three checkpoints of the training process. Training time is estimated based on a 48 A800-GPU cluster.  Results are visually represented using bar charts, where red bars indicate training instability (divergent gradient norms or loss spikes) and green bars indicate stable training (convergent loss trajectories). This allows for a direct comparison of the effectiveness of different techniques in preventing training issues, and provides insight into the trade-off between performance and computational cost. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation experiments on training instability mitigation methods are conducted. We report the average of LAMBADA accuracy of the last three checkpoints of the training and the estimated running time on our 48 A800-GPU cluster. Divergent gradient norm or spiking loss trajectories are shown in red bars, and convergent training is shown in green.
> </details>



![](https://arxiv.org/html/2412.17743/x12.png)

> 🔼 The figure shows the variance of Layer Normalization (LN) outputs and attention values over the course of training.  It illustrates how these metrics change with the number of training steps, providing insight into the stability of the training process.  High variance in these values can indicate instability or potential problems during training, such as exploding gradients or other issues that might lead to model failure.
> <details>
> <summary>read the caption</summary>
> (a) Variance of attention values and LN outputs
> </details>



![](https://arxiv.org/html/2412.17743/x13.png)

> 🔼 The figure shows the gradient norm and loss trajectory during the model's pre-training process.  The gradient norm plot illustrates the magnitude of the gradients during training, indicating the stability of the training process.  A smooth trajectory suggests stable training, while sharp spikes or oscillations may point to instability. The loss trajectory shows how the model's performance improves over the number of training steps. A steady downward trend indicates successful training, while plateaus or upward trends suggest potential issues. The combined plot allows one to assess the overall training stability and progress simultaneously.
> <details>
> <summary>read the caption</summary>
> (b) Gradient norm and loss trajectory
> </details>



![](https://arxiv.org/html/2412.17743/x14.png)

> 🔼 Figure 7 demonstrates the effectiveness of QK LayerNorm in stabilizing the training process.  The left panel displays the variance of attention values and Layer Normalization (LN) output for each layer.  Before employing QK LayerNorm, the variance of attention scores and LN output would increase excessively with more training steps, reflecting instability.  QK LayerNorm prevents this by maintaining a stable LN output around 1 and preventing the growth of gradients and attention logits. The right panel shows that gradient norms and loss values remain consistent after applying QK LayerNorm.  The stability achieved is crucial for efficient and reliable training of LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 7: The curves of attention value and LN output variances (left) and gradient norm and loss (right). After using QK LayerNorm, we prevent the explosion of attention logits and gradients, keeping the LN output stable around 1 and the loss consistent.
> </details>



![](https://arxiv.org/html/2412.17743/x15.png)

> 🔼 This figure illustrates the YuLan-Mini data processing pipeline.  The top half shows the six steps involved in filtering the real-world data used for pre-training. These steps are data collection, de-duplication, heuristic filtering, topic-based text recall, model-based quality scoring, and decontamination. The bottom half of the figure depicts the synthetic data generation process.  This includes generating both pretraining data and instruction data for math, coding, and scientific reasoning tasks. The synthetic data generation process is further broken down into sub-tasks, including those for mathematical documents, chain-of-thought reasoning, formal mathematical reasoning, program-generated numerical reasoning, competition code synthesis, OSS-Instruct code generation, and scientific chain-of-thought reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 8: Illustration of our data filtering pipeline and synthetic generation for reasoning data. The filtering pipeline consists of six steps starting from data collection. Synthetic data generation includes both pretraining data (above the horizontal line) and instruction data (below the line).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Tokenizer | Vocabulary Size | Web | Chinese | Math | Code |
|---|---|---|---|---|---| 
| Gemma2-2B | 256,000 | 4.928 | 3.808 | 2.865 | 3.309 |
| Qwen2.5 | 151,936 | 4.935 | 3.956 | 2.890 | 3.881 |
| LLaMA-3.1 | 128,000 | 4.994 | 3.263 | 3.326 | 3.911 |
| MiniCPM-2.4B | 122,753 | 4.753 | 4.273 | 2.739 | 3.052 |
| Phi-3.5-mini | 100,352 | 4.311 | 1.914 | 2.654 | 3.110 |
| MiniCPM-1.2B | 73,440 | 4.631 | 4.042 | 2.696 | 3.017 |
| YuLan-Mini | 99,000 | 4.687 | 4.147 | 2.716 | 3.033 |
| YuLan-Mini + Dropout | 99,000 | 4.687 | 4.146 | 2.715 | 3.031 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the compression rates achieved by different tokenizers.  The compression rate is calculated based on the size of the vocabulary (in terms of the number of unique tokens) and the amount of text compressed in different domains: Web, Chinese, Math, and Code. A higher compression rate indicates that the tokenizer is able to represent the same amount of text using a smaller vocabulary, leading to increased efficiency and reduced storage requirements.
> <details>
> <summary>read the caption</summary>
> Table 2: Compression rate of different tokenizers. Higher values indicate more effective compression.
> </details>

{{< table-caption >}}
Method|SI|MiniCPM|CerebrasGPT|YuLan-Mini
---|---|---|---|---
Scale Embedding Output|1|12|10|10
Scale MHA equation|1/√d<sub>head</sub>|1/√d<sub>head</sub>|1/d<sub>head</sub>|1/√d<sub>head</sub>
Scale Residual Connection|1|1.4/√n<sub>layers</sub>|1|1.4/√n<sub>layers</sub>
QKV Weights LR|η<sub>base</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>
QKV σ Init|σ<sub>base</sub><sup>2</sup>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>
O Weights LR|η<sub>base</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>
O σ Init|σ<sub>base</sub><sup>2</sup>/(2n<sub>layers</sub>)|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/(2m<sub>width</sub>⋅n<sub>layers</sub>)
FFN1 Weights LR|η<sub>base</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>
FFN1 σ Init|σ<sub>base</sub><sup>2</sup>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>
FFN2 Weights LR|η<sub>base</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>|η<sub>base</sub>/m<sub>width</sub>
FFN2 σ Init|σ<sub>base</sub><sup>2</sup>/(2n<sub>layers</sub>)|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/m<sub>width</sub>|σ<sub>base</sub><sup>2</sup>/(2m<sub>width</sub>⋅n<sub>layers</sub>)
Scale Output logits|1|1/m<sub>width</sub>|1/m<sub>width</sub>|1{{< /table-caption >}}
> 🔼 Table 3 compares the hyperparameter settings used for training stability across four different language models: YuLan-Mini, SI, MiniCPM, and CerebrasGPT.  It details various scaling factors, learning rates, and initialization methods applied to different model components (embeddings, attention, feedforward network) to improve training stability.  The table highlights the choices made in each model and helps to understand why the different models may have different training stability properties. Refer to Table 8 for the meaning of the symbols used.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of the used hyperparameter settings for training stability, where the detailed explanation for the variables are in Table 8. We include SI (Takase et al., 2023) for comparison, MiniCPM (Hu et al., 2024), CerebrasGPT (Dey et al., 2023a). The definition of the symbols is available at Table 8 .
> </details>

{{< table-caption >}}
| Type | Source | Volume |
|---|---|---|
| Web Pages | FineWeb-Edu, DCLM, Chinese-FineWeb-Edu | 559.76B |
| Math (Pretrain) | AutoMathText, Proof-Pile-2, OpenWebMath Pro | 85.00B |
| Code (Pretrain) | the-stack-v2, StarCoder | 202.44B |
| General Knowledge | arXiv, StackExchange, English News | 121.87B |
| Books | CBook, Gutenberg, LoC-PD-Books | 52.13B |
| Encyclopedia | Wikipedia, Baidu-Baike | 14.80B |
| Open-Source Instruction | SlimOrca, OpenMathInstruct-1, JiuZhang3.0 | 11.64B |
| Synthetic Pretrain Data (Ours) | Synthetic document (seed: AutoMathText, LeetCode) | 8.76B |
| Synthetic Instruction (Ours) | Reasoning (seed: MetaMathQA, DeepMind Math, …) | 23.52B |
| Total | - | 1,080B |{{< /table-caption >}}
> 🔼 This table details the composition of the 1.08 trillion tokens used to pre-train the YuLan-Mini language model.  It breaks down the data by type (web pages, math, code, general knowledge, books, etc.), source (specific datasets used), and volume (in billions of tokens). The data used in the annealing phase of training is further detailed in Table 5. To ensure reproducibility, the curated datasets are available in Appendix D, and the synthetically generated data is open-sourced.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistical information of the entire pre-training corpus for YuLan-Mini. The data during the annealing process is detailed in Table 5. For model reproducibility, all curated datasets are placed in Appendix D, and the remaining synthetic data we generated is open-sourced.
> </details>

{{< table-caption >}}
| Domain | Type | Dataset | Volume |
|---|---|---|---| 
| Mix | Pretrain | FineWeb-Edu, CBook, arXiv | 64.65B |
| Math | (1) CoT | Deepmind-Math, MathInstruct | 3.07B |
|  | (2) Long CoT | Numina, AMPS, Platypus | 0.61B |
|  | (3) Formal math | Lean-GitHub, Lean-WorkBook, DeepSeek-Prover-V1 | 0.10B |
|  | (4) Curated | Tulu v3, MathInstruct | 1.42B |
| Code | (1) CoT | OSS-Instruct (seed: the-Stack-v2), OpenCoder-LLM | 6.66B |
|  | (2) Curated | LeetCode, XCoder-80K | 2.39B |
| Science | (1) Long CoT | Camel-ai | 0.04B |
|  | (2) Curated | EvolKit-20k, Celestia, Supernova | 1.06B |
| Total | - | - | 80B |{{< /table-caption >}}
> 🔼 This table details the composition of the training dataset used during the annealing phase of the YuLan-Mini language model pre-training. It breaks down the data by domain (Mix, Math, Code, Science) and further categorizes it by type (pretrain, CoT, long CoT, formal, curated), showing the source dataset and volume (in billions of tokens) for each category. This provides a granular view of the high-quality data used to optimize YuLan-Mini's capabilities in the final stage of training.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed information of the training data in the annealing stage.
> </details>

{{< table-caption >}}
| Models | Model | Size | # Train | Tokens | Context | Length | MATH | GSM | Human | Eval | MBPP | RACE | Middle | RACE | High | RULER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MiniCPM | 2.6B | 1.06T | 4K | 15.00 | 53.83 | 50.00<sup>∗</sup> | 47.31 | 56.61 | 44.27 | N/A |
| Qwen-2 | 1.5B | 7T | 128K | 22.60 | 46.90<sup>∗</sup> | 34.80<sup>∗</sup> | 46.90<sup>∗</sup> | 55.77 | 43.69 | 60.16 |
| Qwen2.5 | 0.5B | 18T | 128K | 23.60 | 41.60<sup>∗</sup> | 30.50<sup>∗</sup> | 39.30<sup>∗</sup> | 52.36 | 40.31 | 49.23 |
| Qwen2.5 | 1.5B | 18T | 128K | 45.40 | 68.50<sup>∗</sup> | 37.20<sup>∗</sup> | 60.20<sup>∗</sup> | 58.77 | 44.33 | 68.26 |
| Gemma2 | 2.6B | 2T | 8K | 18.30<sup>∗</sup> | 30.30<sup>∗</sup> | 19.50<sup>∗</sup> | 42.10<sup>∗</sup> | - | - | N/A |
| StableLM2 | 1.7B | 2T | 4K | - | 20.62 | 8.50 | 17.50 | 56.33 | 45.06 | N/A |
| SmolLM2 | 1.7B | 11T | 8K | 11.80 | - | 23.35 | 45.00 | 55.77 | 43.06 | N/A |
| Llama3.2 | 3.2B | 9T | 128K | 7.40 | - | 29.30 | 49.70 | 55.29 | 43.34 | 77.06 |
| YuLan-Mini | 2.4B | 1.04T | 4K | 32.60 | 66.65 | 61.60 | 66.70 | 55.71 | 43.58 | N/A |
| YuLan-Mini | 2.4B | 1.08T | 28K | 37.80 | 68.46 | 64.00 | 65.90 | 57.18 | 44.57 | 51.48 |{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of YuLan-Mini's performance against other baseline language models across various benchmarks categorized into mathematical reasoning, code generation, and long-context understanding.  The benchmarks used are designed to evaluate different aspects of language model capabilities, including mathematical problem-solving, code generation, and understanding long sequences of text. For each benchmark, the table shows the model's performance, indicating its relative strength across different types of tasks.  Results marked with an asterisk (*) were obtained from the cited models' official publications or reports. The best and second-best performance scores for each benchmark are highlighted in bold and underlined, respectively, to facilitate easy identification of top-performing models.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance on math, code, and long context benchmarks. Results marked with * are cited from their official paper or report. The best and second best results are bold and underlined, respectively.
> </details>

{{< table-caption >}}
| Model | Size |
|---|---|{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of YuLan-Mini's performance against other base models on several established commonsense reasoning benchmarks.  The benchmarks assess the model's abilities in understanding and utilizing common sense knowledge, evaluating performance across various aspects of logical and language comprehension.  Each benchmark's results, presented as a percentage score, reflects the model's success rate or accuracy in completing the tasks. Results marked with an asterisk (*) indicate scores reported in other papers or technical reports, not directly obtained in this study. The comparison allows for an evaluation of YuLan-Mini's strengths and weaknesses in comparison to other models and highlights its performance relative to others of similar scale.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance on commonsense reasoning benchmarks. Results marked with * are cited from their official paper or report.
> </details>

{{< table-caption >}}
| # Train |
|---|---| 
| Tokens |{{< /table-caption >}}
> 🔼 This table lists the meaning of all variables used in Section 3 of the paper for calculating the hyperparameters of the YuLan-Mini model.  Understanding these variables is crucial for reproducing the model's training configuration and results. The table provides a clear reference for the symbols used throughout the paper.
> <details>
> <summary>read the caption</summary>
> Table 8: Definition of the variables for computing the hyperparameters.
> </details>

{{< table-caption >}}
| Context | Length |
|---|---|{{< /table-caption >}}
> 🔼 This table presents the configurations of smaller proxy models utilized in experiments to analyze training dynamics and instability.  These smaller models, with varying numbers of parameters and layers, helped to explore different aspects of training behavior, such as the impact of learning rate and the effects of various initialization strategies, without the high computational cost of conducting experiments on the full-scale model.
> <details>
> <summary>read the caption</summary>
> Table 9: Small proxy models used to explore the training dynamics.
> </details>

{{< table-caption >}}
| MATH | 500 |
|---|---|{{< /table-caption >}}
> 🔼 This table lists all open-source datasets used in the YuLan-Mini language model's pre-training.  It's categorized by domain (General, Code, Math) and provides the specific dataset names. For datasets only accessible via links, the table refers readers to the project's GitHub repository for further information.
> <details>
> <summary>read the caption</summary>
> Table 10: Comprehensive list of all open-source datasets used. For datasets that are only available via links, we also offer additional guidance on our project website https://github.com/RUC-GSAI/YuLan-Mini.
> </details>

{{< table-caption >}}
| GSM | 8K |
|---|---|{{< /table-caption >}}
> 🔼 This table details the composition of the training data used in each of the 27 curriculum phases of the YuLan-Mini language model pre-training.  It breaks down the proportion of different data sources (English web pages and general content, Chinese data, code data, and mathematical data) used in each phase.  The phases are categorized into three stages: warm-up, stable training, and annealing.  The table shows how the data mix changes throughout these stages to optimize training efficiency and model performance.  Specific datasets contributing to each data category are listed within each phase.
> <details>
> <summary>read the caption</summary>
> Table 12: Detailed data composition by training curriculum phases.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.17743/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17743/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}