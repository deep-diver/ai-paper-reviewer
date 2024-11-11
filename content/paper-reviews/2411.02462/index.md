---
title: "Parameter-Efficient Fine-Tuning of Large Language Models for Unit Test Generation: An Empirical Study"
summary: "Boosting unit test generation efficiency, this study empirically evaluates various parameter-efficient fine-tuning methods on LLMs, demonstrating comparable performance to full fine-tuning at signific..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Norwegian University of Science and Technology",]
showSummary: true
date: 2024-11-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.02462 {{< /keyword >}}
{{< keyword icon="writer" >}} André Storhaug et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.02462" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.02462" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/parameter-efficient-fine-tuning-of-large-1" target="_self" >}}
↗ Papers with Code
{{< /button >}}


### TL;DR


{{< lead >}}

Generating unit tests automatically is a significant challenge in software development due to the high computational cost of training large language models (LLMs).  This paper investigates the use of parameter-efficient fine-tuning (PEFT), a technique that fine-tunes only a small subset of a model's parameters, as a more cost-effective alternative.  The research highlights a critical limitation in the current approaches to automate unit test generation, which predominantly use expensive full model fine-tuning methods. 

The study compares three popular PEFT methods (LoRA, (IA)³, and Prompt Tuning) against full fine-tuning, using ten LLMs of varying sizes.  The results show that PEFT methods can significantly reduce resource needs without sacrificing much accuracy.  **LoRA shows consistent reliability**, often matching full fine-tuning's performance, while **prompt tuning stands out as the most resource-efficient approach**, although its performance varied across models.  The findings provide valuable insights into choosing the optimal PEFT technique for different scenarios and model sizes in the context of unit test generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Parameter-efficient fine-tuning (PEFT) achieves performance comparable to full fine-tuning in unit test generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Prompt tuning is the most resource-efficient PEFT method, while LoRA often rivals full fine-tuning's effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PEFT methods show resilience against catastrophic forgetting, maintaining performance on other code-related tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it **demonstrates the effectiveness of parameter-efficient fine-tuning (PEFT)** for unit test generation, a resource-intensive task.  It **provides practical guidelines** for researchers, showing which PEFT methods (LoRA, Prompt Tuning) are most effective for different model sizes. This opens avenues for **more accessible and cost-effective automated testing**, a critical area for software development.

------
#### Visual Insights



![](https://arxiv.org/html/2411.02462/x1.png)

> 🔼 This figure shows a diagram of the LoRA (Low-Rank Adaptation) method for parameter-efficient fine-tuning.  It illustrates how LoRA works by adding low-rank updates to the weight matrices of the pre-trained model's attention layers, instead of fine-tuning all parameters. The diagram highlights the original weight matrices (K and V projection matrices), the low-rank matrices (WA and WB) added by LoRA, and how they are combined. The other modules of the pre-trained model remain unchanged.
> <details>
> <summary>read the caption</summary>
> (a) Diagram of LoRA (based on [15]).
> </details>





{{< table-caption >}}
| Hyperparameter | Method | Value |
|---|---|---|
| **Common** |  |  |
| Optimizer | - | AdamW |
| LR schedule | - | Linear |
| LR warmup ratio | - | 0.1 |
| Batch size | - | 1 |
| Gradient accumulation steps | - | 8 |
| # Epochs | - | 3 |
| Precision | - | Mixed |
| Learning rate | Full fine-tuning | 5E-5 |
|  | LoRA | 3E-4 |
|  | (IA)<sup class="ltx_sup">3</sup> | 3E-4 |
|  | Prompt tuning | 3E-3 |
| **Method specific** |  |  |
| Alpha | LoRA | 32 |
| Dropout | LoRA | 0.1 |
| Rank | LoRA | 16 |
| Virtual tokens | Prompt tuning | 20 |{{< /table-caption >}}

> 🔼 This table lists the hyperparameters used during the training process, excluding those specific to individual models.  It shows settings common to all training methods, including the optimizer used (AdamW), the learning rate schedule (linear), the learning rate warmup ratio, batch size, gradient accumulation steps, number of epochs, and the precision used.  It also includes the specific learning rates used for each of the training methods: full fine-tuning, LoRA, (IA)³, and prompt tuning.
> <details>
> <summary>read the caption</summary>
> TABLE I: Model-agnostic hyperparameters for training.
> </details>





### In-depth insights


#### PEFT for Unit Tests
The exploration of Parameter-Efficient Fine-Tuning (PEFT) methods for unit test generation represents a significant advancement in software engineering.  **PEFT offers a compelling solution to the computational cost and resource limitations associated with fine-tuning large language models (LLMs)** for specialized tasks like unit testing.  This approach strategically fine-tunes only a subset of model parameters, thereby reducing the computational burden while maintaining performance comparable to full fine-tuning.  **The study's findings highlight the effectiveness of PEFT techniques such as LoRA and prompt tuning**, showcasing their ability to deliver performance comparable to full fine-tuning, but with significantly reduced resource requirements.  **Prompt tuning emerges as particularly effective due to its efficiency**, while LoRA approaches the performance of full fine-tuning. These findings suggest that PEFT makes specialized LLM fine-tuning more accessible and cost-effective for unit test generation.  **The research underscores the importance of carefully selecting the appropriate PEFT method based on model architecture and size**, as different approaches demonstrate varying effectiveness depending on the specific LLM used. Overall, this approach presents a promising path towards more accessible and efficient automated unit test generation, a crucial area for improving software quality and development processes.

#### LLM Test Generation
The application of Large Language Models (LLMs) to automated unit test generation presents a significant opportunity to improve software development efficiency and quality.  **Research indicates that LLMs can generate tests with high syntactic correctness**, often exceeding 80%, but their effectiveness varies depending on the model architecture, size, and fine-tuning method.  **Parameter-efficient fine-tuning (PEFT) techniques offer a compelling approach**, significantly reducing computational costs while maintaining comparable performance to full fine-tuning.  Different PEFT methods, such as LoRA and prompt tuning, demonstrate varying degrees of effectiveness across different LLMs, highlighting the need for careful consideration in selecting the optimal technique.  **Prompt tuning exhibits the most efficiency in terms of resource utilization, but its performance can be inconsistent**, while LoRA often achieves performance comparable to full fine-tuning with significantly fewer parameters.  **Future research should focus on further optimizing PEFT methods** for test generation, exploring techniques that mitigate catastrophic forgetting, and developing more robust evaluation metrics beyond syntactic correctness to fully capture the quality of generated unit tests.  Ultimately, the goal is to create cost-effective and reliable LLM-based unit test generators that can be readily adopted by developers to enhance software quality and productivity.

#### PEFT Efficiency
The research reveals that **parameter-efficient fine-tuning (PEFT) methods offer a compelling alternative to traditional full fine-tuning**, especially when considering resource constraints. While full fine-tuning achieves high performance, its computational cost is substantial.  **Prompt tuning stands out as the most resource-efficient PEFT method**, often delivering comparable results with significantly fewer trainable parameters.  However, its performance variability across different models highlights the need for careful model selection.  **LoRA provides a more reliable alternative**, consistently approaching the effectiveness of full fine-tuning in several cases and demonstrating robustness. (IA)³ appears to be the least effective PEFT method, demonstrating lower efficiency and generally poorer performance.  Therefore, the choice of PEFT method should depend on the specific requirements of the task and available resources.  **The findings suggest that a thoughtful selection of PEFT techniques can greatly improve the cost-effectiveness of fine-tuning LLMs for unit test generation.**

#### Catastrophic Forgetting
Catastrophic forgetting, in the context of fine-tuning large language models (LLMs), refers to the phenomenon where a model, after being trained on a new task, loses its performance on previously learned tasks.  This is a significant challenge in LLM adaptation, particularly with parameter-efficient fine-tuning (PEFT) methods, as these methods aim to minimize changes to the model's weights.  **The study's findings suggest that PEFT methods are generally robust against catastrophic forgetting.** While some performance degradation was observed in a few cases when comparing PEFT to the baseline, the negative impact was not severe. **This resilience to forgetting is a key advantage of PEFT, as it allows for efficient adaptation to multiple tasks without substantial loss of prior knowledge.**  The paper highlights the importance of choosing the appropriate PEFT method (e.g., LoRA vs. prompt tuning) based on the specific task and model characteristics, further emphasizing that **carefully chosen PEFT strategies can largely prevent catastrophic forgetting.** This is crucial for practical applications where LLMs need to be adapted to multiple tasks without retraining from scratch.

#### Future Research
Future research should **explore the integration of PEFT with other code-related tasks**, such as code completion or bug detection, to evaluate its broader applicability.  **Investigating the effectiveness of PEFT across different programming languages** beyond Java is crucial for wider adoption.  It would also be valuable to **compare different PEFT methods on diverse codebases** with varying levels of complexity and structure to assess their robustness and generalizability.  Furthermore, **research into the development of novel PEFT techniques** optimized for unit test generation and tailored to the specific characteristics of LLMs could significantly enhance performance. Finally, a deeper investigation into the **trade-off between resource utilization and the quality of generated unit tests** is vital for practical applications and deployment of these techniques in real-world scenarios.  These future avenues of research could help to refine and enhance the application of parameter-efficient fine-tuning methods in unit test generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.02462/x2.png)

> 🔼 This figure shows the architecture of the Infused Adapter by Inhibiting and Amplifying Inner Activations (IA)³ method.  It's a type of parameter-efficient fine-tuning (PEFT) technique.  The diagram illustrates how (IA)³ works by adding three small adapter modules to the pre-trained language model.  These adapters (represented by magenta colored blocks) are trained, while the rest of the pre-trained model's parameters (striped blocks) remain frozen. Each adapter module modifies the flow of information through a specific part of the model, making it more efficient and less computationally expensive compared to full fine-tuning.
> <details>
> <summary>read the caption</summary>
> (b) Diagram of (IA)3 (based on [16]).
> </details>



![](https://arxiv.org/html/2411.02462/x3.png)

> 🔼 This figure shows an illustration of the prompt tuning method.  In prompt tuning, a small set of trainable parameters, often referred to as 'soft prompts', are prepended to the input embeddings of the language model.  Only these additional parameters are trained during the fine-tuning process, while the original model weights remain frozen. This approach enables adaptation to a specific task without adjusting all the model parameters, thus improving efficiency and potentially reducing the risk of overfitting or catastrophic forgetting. The diagram depicts the addition of these 'soft prompt' parameters to the input before processing by the main language model. 
> <details>
> <summary>read the caption</summary>
> (c) Diagram of prompt tuning (based on [17]).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Hyperparameter | Method | Model | Value |
|---|---|---|---| 
| Targeted attention modules | LoRA, (IA)<sup>3</sup> | codegen-350M-multi | qkv_proj |
|  |  | Salesforce/codegen2-1B_P | qkv_proj |
|  |  | Salesforce/codegen2-3_7B_P | qkv_proj |
|  |  | Salesforce/codegen2-7B_P | qkv_proj |
|  |  | Salesforce/codegen2-16B_P | qkv_proj |
|  |  | meta-llama/CodeLlama-7b-hf | q_proj, v_proj |
|  |  | bigcode/starcoderbase | c_attn |
|  |  | bigcode/starcoder2-3b | q_proj, v_proj |
|  |  | bigcode/starcoder2-7b | q_proj, v_proj |
|  |  | bigcode/starcoder2-15b | q_proj, v_proj |
| Targeted feedforward modules | (IA)<sup>3</sup> | codegen-350M-multi | fc_out |
|  |  | Salesforce/codegen2-1B_P | fc_out |
|  |  | Salesforce/codegen2-3_7B_P | fc_out |
|  |  | Salesforce/codegen2-7B_P | fc_out |
|  |  | Salesforce/codegen2-16B_P | fc_out |
|  |  | meta-llama/CodeLlama-7b-hf | down_proj |
|  |  | bigcode/starcoderbase | mlp.c_proj |
|  |  | bigcode/starcoder2-3b | q_proj, c_proj |
|  |  | bigcode/starcoder2-7b | q_proj, c_proj |
|  |  | bigcode/starcoder2-15b | q_proj, c_proj |{{< /table-caption >}}
> 🔼 This table details the model-specific hyperparameters used during the training phase of the experiment.  It shows which specific modules within each model architecture were targeted for modification by the different parameter-efficient fine-tuning (PEFT) methods used in the study.  Specifically, it indicates which attention and feed-forward modules were adjusted for LoRA and (IA)³ methods. The table is crucial for reproducibility as it provides the exact configurations used in the PEFT training process for each model, allowing researchers to recreate the experimental setup.
> <details>
> <summary>read the caption</summary>
> TABLE II: Model-specific hyperparameters for training.
> </details>

{{< table-caption >}}
| Hyperparameters | Value |
|---|---| 
| Do sample | False |
| Temperature | 0 |
| Top p | 0 |
| Frequency penalty | 0 |
| Max length | 2048 |{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the unit test generation phase of the experiment.  It includes parameters such as whether sampling is enabled (`Do sample`), temperature, top p, frequency penalty, and the maximum sequence length allowed. These hyperparameters control the randomness and length of the generated unit tests.
> <details>
> <summary>read the caption</summary>
> TABLE III: Hyperparameters for generation.
> </details>

{{< table-caption >}}
Model|Method|Trainable params|Methods2Test<sub>small</sub>|Methods2Test<sub>small</sub>|HumanEval-X<sub>java</sub>|HumanEval-X<sub>java</sub>|HumanEval-X<sub>java</sub>|HumanEval-X<sub>java</sub>|HumanEval-X<sub>java</sub>
---|---|---|---|---|---|---|---|---
CodeGen-350M-multi|None|0|95.43%|0.2170|100%|0.3608|0.0671|97.33%|89.77%
|Full fine-tuning|304.23M|97.87%|0.2988|100%|0.3293|0.0366|100%|83.33%
|LoRA|1.31M|95.22%|0.2553|100%|0.3907|0.0671|98.69%|89.29%
|(IA)<sup>3</sup>|0.14M|95.53%|0.2266|100%|0.3583|0.0549|97.69%|94.32%
|Prompt tuning|0.02M|96.03%|0.2208|100%|0.3290|0.0427|96.56%|91.67%
CodeGen2-1B|None|0|0%|0|0%|0|0|0%|0%
|Full fine-tuning|1,015.31M|76.73%|0.1474|5.49%|0.0359|0|0%|0%
|LoRA|2.10M|41.16%|0.0484|8.54%|0.0117|0|0%|0%
|(IA)<sup>3</sup>|0.23M|1.52%|0.2553|0%|0|0|0%|0%
|Prompt tuning|0.04M|66.63%|0.2568|7.93%|0.2547|0|0%|0%
StarCoder2-3B|None|0|85.23%|0.1543|100%|0.4264|0.3152|9.89%|85.67%
|Full fine-tuning|3,030.37M|96.71%|0.2786|100%|0.4969|0.3494|99.40%|86.37%
|LoRA|4.55M|97.11%|0.2901|100%|0.4169|0.3675|99.19%|58.84%
|(IA)<sup>3</sup>|0.47M|87.43%|0.2513|100%|0.4250|0.2744|99.67%|83.81%
|Prompt tuning|0.06M|86.43%|0.1742|100%|0.4309|0.2470|99.6%|75.85%
CodeGen2-3.7B|None|0|0%|0|0%|0|0|0%|0%
|Full fine-tuning|3,641.17M|50.51%|0.1006|73.78%|0.2621|0|0%|0%
|LoRA|4.19M|52.24%|0.0997|40.24%|0.1384|0|0%|0%
|(IA)<sup>3</sup>|0.46M|0%|0|0%|0|0|0%|0%
|Prompt tuning|0.08M|23.50%|0.2562|0%|0|0|0%|0%
CodeLlama-7B|None|0|97.66%|0.3107|99.39%|0.4861|0.3293|98.33%|84.46%
|Full fine-tuning|6,607.41M|96.44%|0.3012|100%|0.4994|0.3373|98.95%|86.37%
|LoRA|8.39M|97.36%|0.3277|99.39%|0.4291|0.3129|99.61%|72.47%
|(IA)<sup>3</sup>|0.61M|97.05%|0.3011|100%|0.4802|0.3232|98.77%|84.72%
|Prompt tuning|0.08M|95.93%|0.2885|99.39%|0.4617|0.2761|98.38%|82.25%
CodeGen2-7B|None|0|96.95%|0.2848|100%|0.4736|0.2256|98.31%|81.45%
|Full fine-tuning|6,862.87M|97.56%|0.3107|100%|0.4398|0.1280|99.75%|70.00%
|LoRA|8.39M|97.87%|0.3164|100%|0.4636|0.2073|98.06%|75.35%
|(IA)<sup>3</sup>|0.92M|97.36%|0.2904|100%|0.4898|0.1829|98.55%|79.50%
|Prompt tuning|0.08M|96.64%|0.2775|100%|0.4407|0.2012|99.10%|69.40%
StarCoder2-7B|None|0|84.13%|0.1610|100%|0.4027|0.3758|99.07%|83.16%
|Full fine-tuning|7,173.92M|97.21%|0.3009|100%|0.4389|0.3675|99.15%|90.80%
|LoRA|7.34M|96.91%|0.3068|100%|0.5179|0.3394|99.35%|87.06%
|(IA)<sup>3</sup>|0.75M|94.83%|0.2903|100%|0.4213|0.3697|99.40%|88.39%
|Prompt tuning|0.09M|83.03%|0.3030|100%|0.5057|0.3476|99.38%|86.02%
StarCoderBase|None|0|84.63%|0.1563|98.78%|0.4338|0.2963|99.07%|81.48%
|Full fine-tuning|15,517.46M|96.81%|0.3123|100%|0.4830|0.3293|99.16%|75.20%
|LoRA|8.03M|95.71%|0.3152|98.78%|0.3905|0.2963|99.07%|73.89%
|(IA)<sup>3</sup>|1.24M|84.63%|0.1553|98.78%|0.4344|0.1562|98.72%|81.48%
|Prompt tuning|0.12M|85.73%|0.1518|78.05%|0.2315|0.3025|99.76%|67.62%
StarCoder2-15B|None|0|85.43%|0.1898|100%|0.3724|0.4085|98.93%|87.69%
|Full fine-tuning|15,655.90M|97.90%|0.3323|99.39%|0.4886|0.3758|99.52%|81.3%
|LoRA|12.12M|97.01%|0.3272|100%|0.4633|0.4146|98.95%|82.88%
|(IA)<sup>3</sup>|1.25M|85.43%|0.1901|100%|0.3725|0.4578|99.57%|87.89%
|Prompt tuning|0.12M|97.60%|0.3133|100%|0.5352|0.3939|99.32%|82.89%
CodeGen2-16B|None|0|97.87%|0.2784|100%|0.4779|0.2012|98.66%|80.56%
|Full fine-tuning|16,032.16M|97.56%|0.3383|98.17%|0.3774|0.1180|99.52%|78.07%
|LoRA|13.37M|98.68%|0.3186|100%|0.4714|0.2012|98.66%|82.06%
|(IA)<sup>3</sup>|1.46M|97.87%|0.2790|100%|0.4780|0.2134|97.46%|80.56%
|Prompt tuning|0.08M|97.97%|0.2954|100%|0.4679|0.2195|98.62%|71.07%{{< /table-caption >}}
> 🔼 Table IV presents a detailed comparison of the performance of various parameter-efficient fine-tuning (PEFT) methods and full fine-tuning for unit test generation.  It assesses performance across ten different large language models (LLMs) of varying sizes and architectures, utilizing two benchmark datasets: METHODS2Testsmall and HumanEval-Xjava. The table shows the syntactical validity of the generated unit tests (percentage of syntactically correct tests), the CodeBLEU scores (measuring similarity to reference tests), pass@1 (the percentage of tests that passed), instruction coverage, and branch coverage for each LLM and tuning method (LoRA, (IA)³, prompt tuning, and full fine-tuning). This provides a comprehensive analysis of the effectiveness and efficiency of each method for unit test generation.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Comparison of syntactical validity and CodeBLEU scores from experiments using different tuning methods across various models on testing split of Methods2Testsmall and HumanEval-Xjava datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.02462/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.02462/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}