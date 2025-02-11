---
title: "Steel-LLM:From Scratch to Open Source -- A Personal Journey in Building a Chinese-Centric LLM"
summary: "Steel-LLM: A fully open-source, resource-efficient Chinese LLM trained with transparency, achieving competitive performance despite limited resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06635 {{< /keyword >}}
{{< keyword icon="writer" >}} Qingshui Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06635" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06635" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06635/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many large language models (LLMs) lack transparency, accessibility, and resource efficiency.  Existing open-source LLMs often fall short in providing detailed model-building processes, hindering reproducibility and limiting contribution to the field. This research addresses these issues by focusing on the Chinese language, with a smaller proportion of English data, to offer a more complete and practical account of the model-building journey. 



This paper introduces Steel-LLM, a fully open-source Chinese-centric LLM developed with limited resources.  **Steel-LLM's resource-efficient model development**, achieved using only 8 GPUs, showcases how high-quality LLMs can be built without large-scale infrastructure.  The project prioritizes **complete transparency** by releasing the training pipeline, dataset, model architecture, and intermediate checkpoints, promoting reproducibility and facilitating further research.  **Practical guidance provided for small-scale research** enables others to build upon this work, while its competitive performance on Chinese benchmarks validates its effectiveness. The model's open-source nature fosters collaboration and contributes to a more accessible LLM development field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A high-quality, Chinese-centric language model (Steel-LLM) was created with limited resources. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The entire development process of Steel-LLM, including data, code, and training procedures, was made open-source. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Steel-LLM demonstrates competitive performance on various benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it demonstrates that high-quality language models can be developed with **limited resources and transparency**, opening up possibilities for researchers and practitioners with fewer resources.  It offers **practical guidance and reproducible results**, addressing challenges in open-source LLM development. Its focus on a **Chinese-centric model** fills a gap in the field. This work promotes collaboration by openly sharing data, code, and training processes.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06635/x1.png)

> 🔼 This figure illustrates the architecture of a Transformer block within the Steel-LLM model.  It shows the flow of information through the self-attention mechanism and the enhanced feed-forward network (FFN). The self-attention module processes input tokens, and the FFN, enhanced with Soft Mixture of Experts (Soft MOE), further transforms the results.  The diagram details the components within the FFN, including MLP layers and the Swish activation function, and highlights the use of Soft MOE for efficient processing of large numbers of tokens.
> <details>
> <summary>read the caption</summary>
> Figure 1: The architecture of Steel-LLM Transformer block
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1">Parameters</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.2">Value</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.1">Layers</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.2.2">18</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.3.1">Heads</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.3.2">32</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.4.1">KV heads</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.4.2">32</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.5.1">Num_experts</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.5.2">6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.1.6.1">Slots_per_expert</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.6.2">1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.7.1">Hidden size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.7.2">1,792</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.8.1">Intermediate size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.8.2">1,792</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.9.1">Vocab size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.1.9.2">151,936</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the key hyperparameters used in the architecture of the Steel-LLM model.  It includes details such as the number of layers, attention heads, hidden size, the number of experts and slots used in the Soft Mixture of Experts (Soft MOE) layer, and the vocabulary size. These parameters are crucial for understanding the model's size, computational requirements, and capacity.
> <details>
> <summary>read the caption</summary>
> Table 1: Key model parameters.
> </details>





### In-depth insights


#### Open LLM Creation
Open LLM creation presents a compelling vision: democratizing access to powerful language models.  **Transparency** is paramount, requiring open-sourcing not only model weights but also training data, code, and methodologies. This fosters reproducibility and accelerates progress, allowing researchers with limited resources to contribute meaningfully.  However, the **resource intensity** of training LLMs poses a significant barrier.  Open initiatives must address this by developing efficient training techniques, smaller models, or collaborative training approaches, potentially leveraging decentralized infrastructure.  **Community involvement** is vital: open projects can flourish through shared expertise and collective effort. Balancing the need for robust model performance with practical accessibility will define the success of open LLM initiatives.  **Ethical considerations** must be at the forefront, addressing biases in training data and ensuring responsible use.  Ultimately, successful open LLM creation should lead to a more inclusive and innovative landscape for NLP research and applications.

#### Resource-Frugal LLM
The concept of a 'Resource-Frugal LLM' is crucial for democratizing access to large language models.  **Reducing computational costs** associated with training and inference is key. This involves exploring model architectures that are efficient with parameters, like smaller models with innovative designs, or those using techniques like **quantization and pruning**. Furthermore, efficient training methods are essential, such as utilizing optimized hardware and software.  **Data efficiency** is another important factor; using smaller, higher-quality datasets tailored for a specific task rather than massive general datasets reduces resource needs. Open-sourcing these resource-frugal models and their training procedures is vital.  **Transparency and reproducibility** enable the broader research community to build upon this work and further advance the field, rather than relying on resource-intensive models developed by large corporations.  Such advancements are critical in making LLMs accessible to researchers and developers with limited resources, promoting wider adoption and innovation in NLP.

#### Chinese-centric Focus
The research paper's "Chinese-centric Focus" is a noteworthy aspect, highlighting a crucial gap in the current LLM landscape.  The dominance of English-centric models creates limitations for understanding and serving the nuances of other languages.  **This focus is commendable because it addresses the underrepresentation of Chinese in the field of large language models.**  By prioritizing Chinese data in training, the researchers directly tackle the issue of linguistic bias.  The inclusion of a smaller proportion of English data is a strategic move, aiming to improve the model's multilingual capabilities without sacrificing performance in its primary language.  This approach fosters the development of more inclusive and representative AI technology.  **The results demonstrate the viability of creating high-quality LLMs with a focus on a non-English language**, even with limited computational resources. This success is especially important for promoting linguistic diversity and accessibility in AI, potentially impacting numerous applications within the Chinese-speaking world and contributing to global advancements in multilingual natural language processing.  **The model's open-source nature further amplifies the significance of the Chinese-centric approach.** It allows researchers and developers worldwide to build upon the work, leading to further refinements and innovations that address specific Chinese linguistic challenges and potentially benefit other language communities facing similar issues. This proactive strategy shows the potential to empower language-specific AI development.

#### Soft MOE & FFN
The section on "Soft MOE & FFN" would delve into the model's architecture, specifically focusing on how the authors improved the Feed-Forward Network (FFN) layer within the Transformer blocks.  A key innovation is the use of **Soft Mixture of Experts (Soft MOE)**, a technique that enhances model performance and efficiency. Unlike traditional FFNs, Soft MOE uses a gating network to route input tokens to specialized expert networks, offering a significant advantage in terms of parameter efficiency. The description would likely discuss the design choices behind implementing Soft MOE, including the number of experts and slots used, and how these choices impact computational cost. The paragraph will also likely discuss any modifications made to the two MLP layers within the FFN, possibly highlighting the use of **SwiGLU activation functions** to improve non-linearity.  Further, there would be a detailed explanation of the **mathematical formulation** of the Soft MOE, illustrating how the input tokens are routed and combined to generate the final output.  Finally, the authors would likely discuss the **trade-offs** between the use of Soft MOE, computational constraints (given their limited resources), and the overall effect on model performance. The improved efficiency due to Soft MOE would be a significant highlight, as it allowed them to train a high-quality, billion-parameter model without requiring excessive computational power.

#### Future Directions
Future directions for Steel-LLM research should prioritize expanding its multilingual capabilities beyond the current Chinese-centric focus.  **Improving the model's robustness to noisy or low-quality data** is crucial for wider accessibility.  **Investigating more efficient training methods** could reduce computational costs, making it more accessible to resource-constrained researchers.  Exploration of different model architectures, perhaps exploring the potential benefits of incorporating other innovative techniques like different attention mechanisms or hybrid approaches, could lead to performance improvements.   Finally, rigorous evaluations on a broader set of benchmarks, including those specifically designed for measuring biases or ethical implications, are necessary to ensure the model's responsible deployment.  **Addressing ethical considerations throughout the development lifecycle** is paramount to mitigate risks associated with large language models. The focus should be on creating transparent, reliable, and beneficial tools for the global research community.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06635/x2.png)

> 🔼 This figure shows the distribution of the pretraining data across different sources and languages. The data primarily consists of Chinese text (67%), drawn from various sources such as SkyPile (33%), WanJuan (32.3%), and Wikipedia-cn. A smaller portion (21.8%) is English data from sources like WanJuan and Code. A small fraction (1.6%) is Chat Data, and another 11.3% consists of code data from Starcode.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pretraining Data Distribution
> </details>



![](https://arxiv.org/html/2502.06635/x3.png)

> 🔼 This figure shows the loss curve during the pre-training phase of the Steel-LLM model. The x-axis represents the number of tokens processed, and the y-axis represents the training loss.  The curve displays a steep initial drop in loss, followed by a gradual decrease as training progresses.  The figure highlights that the first 200,000 training steps used NVIDIA A100-80G GPUs, while the remaining steps used NVIDIA H800-80G GPUs, potentially explaining any noticeable changes in the curve's slope. This visualization provides insight into the training process's stability and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 3: Pre-training loss curve for Steel-LLM
> </details>



![](https://arxiv.org/html/2502.06635/x4.png)

> 🔼 This figure shows the training loss curve during the supervised fine-tuning stage of the Steel-LLM model. The x-axis represents the training steps, while the y-axis represents the loss value. The curve illustrates how the model's performance improved as the training progressed. The consistent downward trend of the loss curve demonstrates the model's learning and optimization during the fine-tuning phase.  It helps visualize the model's convergence and efficiency of the fine-tuning process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Supervised Fine-tuning loss curve for Steel-LLM
> </details>



![](https://arxiv.org/html/2502.06635/x5.png)

> 🔼 This figure shows the loss curve during the Direct Preference Optimization (DPO) process for the Steel-LLM model. The x-axis represents the training steps, and the y-axis shows the loss value. The curve illustrates how the loss decreased over the training process, indicating that the model's performance improved as it learned to align with human preferences.  A lower loss indicates a better alignment of the model's output with preferred responses.
> <details>
> <summary>read the caption</summary>
> Figure 5: Direct Preference Optimization loss curve for Steel-LLM
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.80">
<tr class="ltx_tr" id="S4.T2.80.81">
<td class="ltx_td ltx_border_tt" id="S4.T2.80.81.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.2">Exp 1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.3">Exp 2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.4">Exp 3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.5">Exp 4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.6">Exp 5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.7">Exp 6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.80.81.8">Exp 7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.80.81.9">Exp 8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.9">FlashAttention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T2.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mi id="S4.T2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T2.2.2.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" xref="S4.T2.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><times id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mi id="S4.T2.4.4.4.m1.1.1" mathvariant="normal" xref="S4.T2.4.4.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mi id="S4.T2.5.5.5.m1.1.1" mathvariant="normal" xref="S4.T2.5.5.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mi id="S4.T2.6.6.6.m1.1.1" mathvariant="normal" xref="S4.T2.6.6.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><mi id="S4.T2.7.7.7.m1.1.1" mathvariant="normal" xref="S4.T2.7.7.7.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.8.8"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.m1.1.1" xref="S4.T2.8.8.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m1.1b"><times id="S4.T2.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16">
<td class="ltx_td ltx_align_left" id="S4.T2.16.16.9">SelfAttention(PyTorch)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.9.9.1.m1.1"><semantics id="S4.T2.9.9.1.m1.1a"><mo id="S4.T2.9.9.1.m1.1.1" xref="S4.T2.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.m1.1b"><times id="S4.T2.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.10.10.2.m1.1"><semantics id="S4.T2.10.10.2.m1.1a"><mo id="S4.T2.10.10.2.m1.1.1" xref="S4.T2.10.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.2.m1.1b"><times id="S4.T2.10.10.2.m1.1.1.cmml" xref="S4.T2.10.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.11.11.3.m1.1"><semantics id="S4.T2.11.11.3.m1.1a"><mi id="S4.T2.11.11.3.m1.1.1" mathvariant="normal" xref="S4.T2.11.11.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.3.m1.1b"><ci id="S4.T2.11.11.3.m1.1.1.cmml" xref="S4.T2.11.11.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.4"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.12.12.4.m1.1"><semantics id="S4.T2.12.12.4.m1.1a"><mo id="S4.T2.12.12.4.m1.1.1" xref="S4.T2.12.12.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.4.m1.1b"><times id="S4.T2.12.12.4.m1.1.1.cmml" xref="S4.T2.12.12.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.5"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.13.13.5.m1.1"><semantics id="S4.T2.13.13.5.m1.1a"><mo id="S4.T2.13.13.5.m1.1.1" xref="S4.T2.13.13.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.5.m1.1b"><times id="S4.T2.13.13.5.m1.1.1.cmml" xref="S4.T2.13.13.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.6"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.14.14.6.m1.1"><semantics id="S4.T2.14.14.6.m1.1a"><mo id="S4.T2.14.14.6.m1.1.1" xref="S4.T2.14.14.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.6.m1.1b"><times id="S4.T2.14.14.6.m1.1.1.cmml" xref="S4.T2.14.14.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.7"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.15.15.7.m1.1"><semantics id="S4.T2.15.15.7.m1.1a"><mo id="S4.T2.15.15.7.m1.1.1" xref="S4.T2.15.15.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.7.m1.1b"><times id="S4.T2.15.15.7.m1.1.1.cmml" xref="S4.T2.15.15.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.16.16.8"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.16.16.8.m1.1"><semantics id="S4.T2.16.16.8.m1.1a"><mi id="S4.T2.16.16.8.m1.1.1" mathvariant="normal" xref="S4.T2.16.16.8.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.8.m1.1b"><ci id="S4.T2.16.16.8.m1.1.1.cmml" xref="S4.T2.16.16.8.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.8.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.8.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24">
<td class="ltx_td ltx_align_left" id="S4.T2.24.24.9">RoPE(CUDA)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.17.17.1.m1.1"><semantics id="S4.T2.17.17.1.m1.1a"><mi id="S4.T2.17.17.1.m1.1.1" mathvariant="normal" xref="S4.T2.17.17.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.1.m1.1b"><ci id="S4.T2.17.17.1.m1.1.1.cmml" xref="S4.T2.17.17.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.18.18.2.m1.1"><semantics id="S4.T2.18.18.2.m1.1a"><mo id="S4.T2.18.18.2.m1.1.1" xref="S4.T2.18.18.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.2.m1.1b"><times id="S4.T2.18.18.2.m1.1.1.cmml" xref="S4.T2.18.18.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.19.19.3.m1.1"><semantics id="S4.T2.19.19.3.m1.1a"><mi id="S4.T2.19.19.3.m1.1.1" mathvariant="normal" xref="S4.T2.19.19.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.3.m1.1b"><ci id="S4.T2.19.19.3.m1.1.1.cmml" xref="S4.T2.19.19.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.20.20.4.m1.1"><semantics id="S4.T2.20.20.4.m1.1a"><mi id="S4.T2.20.20.4.m1.1.1" mathvariant="normal" xref="S4.T2.20.20.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.4.m1.1b"><ci id="S4.T2.20.20.4.m1.1.1.cmml" xref="S4.T2.20.20.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.21.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.21.21.5.m1.1"><semantics id="S4.T2.21.21.5.m1.1a"><mi id="S4.T2.21.21.5.m1.1.1" mathvariant="normal" xref="S4.T2.21.21.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.5.m1.1b"><ci id="S4.T2.21.21.5.m1.1.1.cmml" xref="S4.T2.21.21.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.22.22.6.m1.1"><semantics id="S4.T2.22.22.6.m1.1a"><mi id="S4.T2.22.22.6.m1.1.1" mathvariant="normal" xref="S4.T2.22.22.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.6.m1.1b"><ci id="S4.T2.22.22.6.m1.1.1.cmml" xref="S4.T2.22.22.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.6.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.7"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.23.23.7.m1.1"><semantics id="S4.T2.23.23.7.m1.1a"><mi id="S4.T2.23.23.7.m1.1.1" mathvariant="normal" xref="S4.T2.23.23.7.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.7.m1.1b"><ci id="S4.T2.23.23.7.m1.1.1.cmml" xref="S4.T2.23.23.7.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.7.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.7.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.24.24.8"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.24.24.8.m1.1"><semantics id="S4.T2.24.24.8.m1.1a"><mo id="S4.T2.24.24.8.m1.1.1" xref="S4.T2.24.24.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.8.m1.1b"><times id="S4.T2.24.24.8.m1.1.1.cmml" xref="S4.T2.24.24.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.8.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.32.32">
<td class="ltx_td ltx_align_left" id="S4.T2.32.32.9">RoPE(PyTorch)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.25.25.1.m1.1"><semantics id="S4.T2.25.25.1.m1.1a"><mo id="S4.T2.25.25.1.m1.1.1" xref="S4.T2.25.25.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.1.m1.1b"><times id="S4.T2.25.25.1.m1.1.1.cmml" xref="S4.T2.25.25.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.26.26.2.m1.1"><semantics id="S4.T2.26.26.2.m1.1a"><mi id="S4.T2.26.26.2.m1.1.1" mathvariant="normal" xref="S4.T2.26.26.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.2.m1.1b"><ci id="S4.T2.26.26.2.m1.1.1.cmml" xref="S4.T2.26.26.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.3"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.27.27.3.m1.1"><semantics id="S4.T2.27.27.3.m1.1a"><mo id="S4.T2.27.27.3.m1.1.1" xref="S4.T2.27.27.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.3.m1.1b"><times id="S4.T2.27.27.3.m1.1.1.cmml" xref="S4.T2.27.27.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.4"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.28.28.4.m1.1"><semantics id="S4.T2.28.28.4.m1.1a"><mo id="S4.T2.28.28.4.m1.1.1" xref="S4.T2.28.28.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.4.m1.1b"><times id="S4.T2.28.28.4.m1.1.1.cmml" xref="S4.T2.28.28.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.5"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.29.29.5.m1.1"><semantics id="S4.T2.29.29.5.m1.1a"><mo id="S4.T2.29.29.5.m1.1.1" xref="S4.T2.29.29.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.5.m1.1b"><times id="S4.T2.29.29.5.m1.1.1.cmml" xref="S4.T2.29.29.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.6"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.30.30.6.m1.1"><semantics id="S4.T2.30.30.6.m1.1a"><mo id="S4.T2.30.30.6.m1.1.1" xref="S4.T2.30.30.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.6.m1.1b"><times id="S4.T2.30.30.6.m1.1.1.cmml" xref="S4.T2.30.30.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.7"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.31.31.7.m1.1"><semantics id="S4.T2.31.31.7.m1.1a"><mo id="S4.T2.31.31.7.m1.1.1" xref="S4.T2.31.31.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.31.31.7.m1.1b"><times id="S4.T2.31.31.7.m1.1.1.cmml" xref="S4.T2.31.31.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.31.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.31.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.32.32.8"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.32.32.8.m1.1"><semantics id="S4.T2.32.32.8.m1.1a"><mi id="S4.T2.32.32.8.m1.1.1" mathvariant="normal" xref="S4.T2.32.32.8.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.32.32.8.m1.1b"><ci id="S4.T2.32.32.8.m1.1.1.cmml" xref="S4.T2.32.32.8.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.32.8.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.32.8.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.40.40">
<td class="ltx_td ltx_align_left" id="S4.T2.40.40.9">RMSNorm(CUDA)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.33.33.1.m1.1"><semantics id="S4.T2.33.33.1.m1.1a"><mo id="S4.T2.33.33.1.m1.1.1" xref="S4.T2.33.33.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.33.33.1.m1.1b"><times id="S4.T2.33.33.1.m1.1.1.cmml" xref="S4.T2.33.33.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.33.33.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.33.33.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.34.34.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.34.34.2.m1.1"><semantics id="S4.T2.34.34.2.m1.1a"><mo id="S4.T2.34.34.2.m1.1.1" xref="S4.T2.34.34.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.34.34.2.m1.1b"><times id="S4.T2.34.34.2.m1.1.1.cmml" xref="S4.T2.34.34.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.34.34.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.34.34.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.35.35.3"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.35.35.3.m1.1"><semantics id="S4.T2.35.35.3.m1.1a"><mo id="S4.T2.35.35.3.m1.1.1" xref="S4.T2.35.35.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.35.35.3.m1.1b"><times id="S4.T2.35.35.3.m1.1.1.cmml" xref="S4.T2.35.35.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.35.35.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.35.35.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.36.36.4"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.36.36.4.m1.1"><semantics id="S4.T2.36.36.4.m1.1a"><mo id="S4.T2.36.36.4.m1.1.1" xref="S4.T2.36.36.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.36.36.4.m1.1b"><times id="S4.T2.36.36.4.m1.1.1.cmml" xref="S4.T2.36.36.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.36.36.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.36.36.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.37.37.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.37.37.5.m1.1"><semantics id="S4.T2.37.37.5.m1.1a"><mi id="S4.T2.37.37.5.m1.1.1" mathvariant="normal" xref="S4.T2.37.37.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.37.37.5.m1.1b"><ci id="S4.T2.37.37.5.m1.1.1.cmml" xref="S4.T2.37.37.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.37.37.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.37.37.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.38.38.6"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.38.38.6.m1.1"><semantics id="S4.T2.38.38.6.m1.1a"><mo id="S4.T2.38.38.6.m1.1.1" xref="S4.T2.38.38.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.38.38.6.m1.1b"><times id="S4.T2.38.38.6.m1.1.1.cmml" xref="S4.T2.38.38.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.38.38.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.38.38.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.39.39.7"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.39.39.7.m1.1"><semantics id="S4.T2.39.39.7.m1.1a"><mi id="S4.T2.39.39.7.m1.1.1" mathvariant="normal" xref="S4.T2.39.39.7.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.39.39.7.m1.1b"><ci id="S4.T2.39.39.7.m1.1.1.cmml" xref="S4.T2.39.39.7.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.39.39.7.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.39.39.7.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.40.40.8"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.40.40.8.m1.1"><semantics id="S4.T2.40.40.8.m1.1a"><mo id="S4.T2.40.40.8.m1.1.1" xref="S4.T2.40.40.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.40.40.8.m1.1b"><times id="S4.T2.40.40.8.m1.1.1.cmml" xref="S4.T2.40.40.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.40.40.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.40.40.8.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.48.48">
<td class="ltx_td ltx_align_left" id="S4.T2.48.48.9">RMSNorm(PyTorch)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.41.41.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.41.41.1.m1.1"><semantics id="S4.T2.41.41.1.m1.1a"><mi id="S4.T2.41.41.1.m1.1.1" mathvariant="normal" xref="S4.T2.41.41.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.41.41.1.m1.1b"><ci id="S4.T2.41.41.1.m1.1.1.cmml" xref="S4.T2.41.41.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.41.41.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.41.41.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.42.42.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.42.42.2.m1.1"><semantics id="S4.T2.42.42.2.m1.1a"><mi id="S4.T2.42.42.2.m1.1.1" mathvariant="normal" xref="S4.T2.42.42.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.42.42.2.m1.1b"><ci id="S4.T2.42.42.2.m1.1.1.cmml" xref="S4.T2.42.42.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.42.42.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.42.42.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.43.43.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.43.43.3.m1.1"><semantics id="S4.T2.43.43.3.m1.1a"><mi id="S4.T2.43.43.3.m1.1.1" mathvariant="normal" xref="S4.T2.43.43.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.43.43.3.m1.1b"><ci id="S4.T2.43.43.3.m1.1.1.cmml" xref="S4.T2.43.43.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.43.43.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.43.43.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.44.44.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.44.44.4.m1.1"><semantics id="S4.T2.44.44.4.m1.1a"><mi id="S4.T2.44.44.4.m1.1.1" mathvariant="normal" xref="S4.T2.44.44.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.44.44.4.m1.1b"><ci id="S4.T2.44.44.4.m1.1.1.cmml" xref="S4.T2.44.44.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.44.44.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.44.44.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.45.45.5"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.45.45.5.m1.1"><semantics id="S4.T2.45.45.5.m1.1a"><mo id="S4.T2.45.45.5.m1.1.1" xref="S4.T2.45.45.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.45.45.5.m1.1b"><times id="S4.T2.45.45.5.m1.1.1.cmml" xref="S4.T2.45.45.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.45.45.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.45.45.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.46.46.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.46.46.6.m1.1"><semantics id="S4.T2.46.46.6.m1.1a"><mi id="S4.T2.46.46.6.m1.1.1" mathvariant="normal" xref="S4.T2.46.46.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.46.46.6.m1.1b"><ci id="S4.T2.46.46.6.m1.1.1.cmml" xref="S4.T2.46.46.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.46.46.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.46.46.6.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.47.47.7"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.47.47.7.m1.1"><semantics id="S4.T2.47.47.7.m1.1a"><mo id="S4.T2.47.47.7.m1.1.1" xref="S4.T2.47.47.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.47.47.7.m1.1b"><times id="S4.T2.47.47.7.m1.1.1.cmml" xref="S4.T2.47.47.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.47.47.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.47.47.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.48.48.8"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.48.48.8.m1.1"><semantics id="S4.T2.48.48.8.m1.1a"><mi id="S4.T2.48.48.8.m1.1.1" mathvariant="normal" xref="S4.T2.48.48.8.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.48.48.8.m1.1b"><ci id="S4.T2.48.48.8.m1.1.1.cmml" xref="S4.T2.48.48.8.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.48.48.8.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.48.48.8.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.56.56">
<td class="ltx_td ltx_align_left" id="S4.T2.56.56.9">Loss Function(Triton)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.49.49.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.49.49.1.m1.1"><semantics id="S4.T2.49.49.1.m1.1a"><mi id="S4.T2.49.49.1.m1.1.1" mathvariant="normal" xref="S4.T2.49.49.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.49.49.1.m1.1b"><ci id="S4.T2.49.49.1.m1.1.1.cmml" xref="S4.T2.49.49.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.49.49.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.49.49.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.50.50.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.50.50.2.m1.1"><semantics id="S4.T2.50.50.2.m1.1a"><mi id="S4.T2.50.50.2.m1.1.1" mathvariant="normal" xref="S4.T2.50.50.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.50.50.2.m1.1b"><ci id="S4.T2.50.50.2.m1.1.1.cmml" xref="S4.T2.50.50.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.50.50.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.50.50.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.51.51.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.51.51.3.m1.1"><semantics id="S4.T2.51.51.3.m1.1a"><mi id="S4.T2.51.51.3.m1.1.1" mathvariant="normal" xref="S4.T2.51.51.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.51.51.3.m1.1b"><ci id="S4.T2.51.51.3.m1.1.1.cmml" xref="S4.T2.51.51.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.51.51.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.51.51.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.52.52.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.52.52.4.m1.1"><semantics id="S4.T2.52.52.4.m1.1a"><mi id="S4.T2.52.52.4.m1.1.1" mathvariant="normal" xref="S4.T2.52.52.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.52.52.4.m1.1b"><ci id="S4.T2.52.52.4.m1.1.1.cmml" xref="S4.T2.52.52.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.52.52.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.52.52.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.53.53.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.53.53.5.m1.1"><semantics id="S4.T2.53.53.5.m1.1a"><mi id="S4.T2.53.53.5.m1.1.1" mathvariant="normal" xref="S4.T2.53.53.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.53.53.5.m1.1b"><ci id="S4.T2.53.53.5.m1.1.1.cmml" xref="S4.T2.53.53.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.53.53.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.53.53.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.54.54.6"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.54.54.6.m1.1"><semantics id="S4.T2.54.54.6.m1.1a"><mo id="S4.T2.54.54.6.m1.1.1" xref="S4.T2.54.54.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.54.54.6.m1.1b"><times id="S4.T2.54.54.6.m1.1.1.cmml" xref="S4.T2.54.54.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.54.54.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.54.54.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.55.55.7"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.55.55.7.m1.1"><semantics id="S4.T2.55.55.7.m1.1a"><mi id="S4.T2.55.55.7.m1.1.1" mathvariant="normal" xref="S4.T2.55.55.7.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.55.55.7.m1.1b"><ci id="S4.T2.55.55.7.m1.1.1.cmml" xref="S4.T2.55.55.7.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.55.55.7.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.55.55.7.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.56.56.8"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.56.56.8.m1.1"><semantics id="S4.T2.56.56.8.m1.1a"><mo id="S4.T2.56.56.8.m1.1.1" xref="S4.T2.56.56.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.56.56.8.m1.1b"><times id="S4.T2.56.56.8.m1.1.1.cmml" xref="S4.T2.56.56.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.56.56.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.56.56.8.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.64.64">
<td class="ltx_td ltx_align_left" id="S4.T2.64.64.9">Loss Function(PyTorch)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.57.57.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.57.57.1.m1.1"><semantics id="S4.T2.57.57.1.m1.1a"><mo id="S4.T2.57.57.1.m1.1.1" xref="S4.T2.57.57.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.57.57.1.m1.1b"><times id="S4.T2.57.57.1.m1.1.1.cmml" xref="S4.T2.57.57.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.57.57.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.57.57.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.58.58.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.58.58.2.m1.1"><semantics id="S4.T2.58.58.2.m1.1a"><mo id="S4.T2.58.58.2.m1.1.1" xref="S4.T2.58.58.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.58.58.2.m1.1b"><times id="S4.T2.58.58.2.m1.1.1.cmml" xref="S4.T2.58.58.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.58.58.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.58.58.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.3"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.59.59.3.m1.1"><semantics id="S4.T2.59.59.3.m1.1a"><mo id="S4.T2.59.59.3.m1.1.1" xref="S4.T2.59.59.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.59.59.3.m1.1b"><times id="S4.T2.59.59.3.m1.1.1.cmml" xref="S4.T2.59.59.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.59.59.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.59.59.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.60.60.4"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.60.60.4.m1.1"><semantics id="S4.T2.60.60.4.m1.1a"><mo id="S4.T2.60.60.4.m1.1.1" xref="S4.T2.60.60.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.60.60.4.m1.1b"><times id="S4.T2.60.60.4.m1.1.1.cmml" xref="S4.T2.60.60.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.60.60.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.60.60.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.61.61.5"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.61.61.5.m1.1"><semantics id="S4.T2.61.61.5.m1.1a"><mo id="S4.T2.61.61.5.m1.1.1" xref="S4.T2.61.61.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.61.61.5.m1.1b"><times id="S4.T2.61.61.5.m1.1.1.cmml" xref="S4.T2.61.61.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.61.61.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.61.61.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.62.62.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.62.62.6.m1.1"><semantics id="S4.T2.62.62.6.m1.1a"><mi id="S4.T2.62.62.6.m1.1.1" mathvariant="normal" xref="S4.T2.62.62.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.62.62.6.m1.1b"><ci id="S4.T2.62.62.6.m1.1.1.cmml" xref="S4.T2.62.62.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.62.62.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.62.62.6.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.63.63.7"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.63.63.7.m1.1"><semantics id="S4.T2.63.63.7.m1.1a"><mo id="S4.T2.63.63.7.m1.1.1" xref="S4.T2.63.63.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.63.63.7.m1.1b"><times id="S4.T2.63.63.7.m1.1.1.cmml" xref="S4.T2.63.63.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.63.63.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.63.63.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.64.64.8"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.64.64.8.m1.1"><semantics id="S4.T2.64.64.8.m1.1a"><mi id="S4.T2.64.64.8.m1.1.1" mathvariant="normal" xref="S4.T2.64.64.8.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.64.64.8.m1.1b"><ci id="S4.T2.64.64.8.m1.1.1.cmml" xref="S4.T2.64.64.8.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.64.64.8.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.64.64.8.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.72.72">
<td class="ltx_td ltx_align_left" id="S4.T2.72.72.9">FSDP</td>
<td class="ltx_td ltx_align_center" id="S4.T2.65.65.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.65.65.1.m1.1"><semantics id="S4.T2.65.65.1.m1.1a"><mi id="S4.T2.65.65.1.m1.1.1" mathvariant="normal" xref="S4.T2.65.65.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.65.65.1.m1.1b"><ci id="S4.T2.65.65.1.m1.1.1.cmml" xref="S4.T2.65.65.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.65.65.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.65.65.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.66.66.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.66.66.2.m1.1"><semantics id="S4.T2.66.66.2.m1.1a"><mi id="S4.T2.66.66.2.m1.1.1" mathvariant="normal" xref="S4.T2.66.66.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.66.66.2.m1.1b"><ci id="S4.T2.66.66.2.m1.1.1.cmml" xref="S4.T2.66.66.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.66.66.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.66.66.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.67.67.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.67.67.3.m1.1"><semantics id="S4.T2.67.67.3.m1.1a"><mi id="S4.T2.67.67.3.m1.1.1" mathvariant="normal" xref="S4.T2.67.67.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.67.67.3.m1.1b"><ci id="S4.T2.67.67.3.m1.1.1.cmml" xref="S4.T2.67.67.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.67.67.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.67.67.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.4"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.68.68.4.m1.1"><semantics id="S4.T2.68.68.4.m1.1a"><mo id="S4.T2.68.68.4.m1.1.1" xref="S4.T2.68.68.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.68.68.4.m1.1b"><times id="S4.T2.68.68.4.m1.1.1.cmml" xref="S4.T2.68.68.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.68.68.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.68.68.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.69.69.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.69.69.5.m1.1"><semantics id="S4.T2.69.69.5.m1.1a"><mi id="S4.T2.69.69.5.m1.1.1" mathvariant="normal" xref="S4.T2.69.69.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.69.69.5.m1.1b"><ci id="S4.T2.69.69.5.m1.1.1.cmml" xref="S4.T2.69.69.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.69.69.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.69.69.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.70.70.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.70.70.6.m1.1"><semantics id="S4.T2.70.70.6.m1.1a"><mi id="S4.T2.70.70.6.m1.1.1" mathvariant="normal" xref="S4.T2.70.70.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.70.70.6.m1.1b"><ci id="S4.T2.70.70.6.m1.1.1.cmml" xref="S4.T2.70.70.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.70.70.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.70.70.6.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.71.71.7"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.71.71.7.m1.1"><semantics id="S4.T2.71.71.7.m1.1a"><mo id="S4.T2.71.71.7.m1.1.1" xref="S4.T2.71.71.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.71.71.7.m1.1b"><times id="S4.T2.71.71.7.m1.1.1.cmml" xref="S4.T2.71.71.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.71.71.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.71.71.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.72.72.8"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.72.72.8.m1.1"><semantics id="S4.T2.72.72.8.m1.1a"><mi id="S4.T2.72.72.8.m1.1.1" mathvariant="normal" xref="S4.T2.72.72.8.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.72.72.8.m1.1b"><ci id="S4.T2.72.72.8.m1.1.1.cmml" xref="S4.T2.72.72.8.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.72.72.8.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.72.72.8.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.80.80">
<td class="ltx_td ltx_align_left" id="S4.T2.80.80.9">FSDP(no share param)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.73.73.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.73.73.1.m1.1"><semantics id="S4.T2.73.73.1.m1.1a"><mo id="S4.T2.73.73.1.m1.1.1" xref="S4.T2.73.73.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.73.73.1.m1.1b"><times id="S4.T2.73.73.1.m1.1.1.cmml" xref="S4.T2.73.73.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.73.73.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.73.73.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.74.74.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.74.74.2.m1.1"><semantics id="S4.T2.74.74.2.m1.1a"><mo id="S4.T2.74.74.2.m1.1.1" xref="S4.T2.74.74.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.74.74.2.m1.1b"><times id="S4.T2.74.74.2.m1.1.1.cmml" xref="S4.T2.74.74.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.74.74.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.74.74.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.75.3"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.75.75.3.m1.1"><semantics id="S4.T2.75.75.3.m1.1a"><mo id="S4.T2.75.75.3.m1.1.1" xref="S4.T2.75.75.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.75.75.3.m1.1b"><times id="S4.T2.75.75.3.m1.1.1.cmml" xref="S4.T2.75.75.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.75.75.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.75.75.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.76.76.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.76.76.4.m1.1"><semantics id="S4.T2.76.76.4.m1.1a"><mi id="S4.T2.76.76.4.m1.1.1" mathvariant="normal" xref="S4.T2.76.76.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.76.76.4.m1.1b"><ci id="S4.T2.76.76.4.m1.1.1.cmml" xref="S4.T2.76.76.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.76.76.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.76.76.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.77.77.5"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.77.77.5.m1.1"><semantics id="S4.T2.77.77.5.m1.1a"><mo id="S4.T2.77.77.5.m1.1.1" xref="S4.T2.77.77.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.77.77.5.m1.1b"><times id="S4.T2.77.77.5.m1.1.1.cmml" xref="S4.T2.77.77.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.77.77.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.77.77.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.78.78.6"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.78.78.6.m1.1"><semantics id="S4.T2.78.78.6.m1.1a"><mo id="S4.T2.78.78.6.m1.1.1" xref="S4.T2.78.78.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.78.78.6.m1.1b"><times id="S4.T2.78.78.6.m1.1.1.cmml" xref="S4.T2.78.78.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.78.78.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.78.78.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.79.79.7"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T2.79.79.7.m1.1"><semantics id="S4.T2.79.79.7.m1.1a"><mi id="S4.T2.79.79.7.m1.1.1" mathvariant="normal" xref="S4.T2.79.79.7.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T2.79.79.7.m1.1b"><ci id="S4.T2.79.79.7.m1.1.1.cmml" xref="S4.T2.79.79.7.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.79.79.7.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T2.79.79.7.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.80.80.8"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.80.80.8.m1.1"><semantics id="S4.T2.80.80.8.m1.1a"><mo id="S4.T2.80.80.8.m1.1.1" xref="S4.T2.80.80.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.80.80.8.m1.1b"><times id="S4.T2.80.80.8.m1.1.1.cmml" xref="S4.T2.80.80.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.80.80.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.80.80.8.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.80.82">
<td class="ltx_td ltx_align_left" id="S4.T2.80.82.1">Speed(tokens/s/gpu)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.2">13400</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.3">12500</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.4">10600</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.5">13800</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.6">14600</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.7">13000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.82.8">15000</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.80.82.9">10500</td>
</tr>
<tr class="ltx_tr" id="S4.T2.80.83">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.80.83.1">GPU Memory(GB)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.2">65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.3">65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.4">69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.5">69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.6">61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.7">75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.80.83.8">66</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.80.83.9">75</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares different training configurations for the Steel-LLM model, showing the impact of various techniques on training speed and GPU memory usage.  The configurations involve using different implementations of FlashAttention, ROPE (Rotary Position Embedding), RMSNorm, and the loss function, as well as comparing training with and without FSDP (Fully Sharded Data Parallel). The results are presented in terms of training speed (tokens per second per GPU) and GPU memory consumption (in gigabytes).
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different training configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T3.1.1">
<tr class="ltx_tr" id="S6.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.1">Experiment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.2.1">CEVAL Acc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.3.1">CMMLU Acc.</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.4.1">MMLU Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.1.1.2.1">Full Infinity-Instruct + Wanjuan MCQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.2.2">32.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.2.3">26.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.1.1.2.4">25.50</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="S6.T3.1.1.3.1">700K Chinese Infinity-Instruct + Wanjuan MCQ</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.3.2">38.57</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.3.3">33.48</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.3.4">23.26</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S6.T3.1.1.4.1">Chinese + 100% English Data</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.4.2">39.21</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.4.3">33.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.4.4">26.73</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S6.T3.1.1.5.1">Chinese + 20% English Data (Balanced)</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.5.2">40.43</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.1.5.3">35.86</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.5.4">26.75</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T3.1.1.6.1">Chinese + 20% English + English MCQ</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.1.6.2">41.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.1.6.3">36.08</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T3.1.1.6.4">30.82</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of several experiments evaluating different fine-tuning strategies on the Steel-LLM model.  It compares the model's performance across three benchmark datasets (CEVAL, CMMLU, and MMLU) using various combinations and proportions of Chinese and English data in the fine-tuning process.  The variations allow for analysis of the impact of data composition and language balance on the overall effectiveness of the fine-tuning procedure.  Each row represents a distinct experiment, showing the accuracy achieved on each benchmark dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of different fine-tuning strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.1">
<tr class="ltx_tr" id="S6.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.2.1">CEVAL</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.3.1">CMMLU</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.2.1">Tiny-Llama-1.1B <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib56" title="">2024c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2">25.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.3">24.03</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3">
<td class="ltx_td ltx_align_left" id="S6.T4.1.3.1">MiniCPM-1.2B <cite class="ltx_cite ltx_citemacro_citep">(min, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.2">49.14</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3">46.81</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4">
<td class="ltx_td ltx_align_left" id="S6.T4.1.4.1">Qwen1.5-1.8B-Chat <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib6" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2">56.84</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.3">54.11</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5">
<td class="ltx_td ltx_align_left" id="S6.T4.1.5.1">Phi2(2B)<cite class="ltx_cite ltx_citemacro_citep">(Abdin et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib2" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.2">23.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.3">24.18</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6">
<td class="ltx_td ltx_align_left" id="S6.T4.1.6.1">Gemma-2b-it <cite class="ltx_cite ltx_citemacro_citep">(Gemma Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.2">32.30</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.3">33.07</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.7">
<td class="ltx_td ltx_align_left" id="S6.T4.1.7.1">CT-LLM-SFT-2B <cite class="ltx_cite ltx_citemacro_citep">(Du et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib14" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.2">41.54</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.3">41.48</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.8">
<td class="ltx_td ltx_align_left" id="S6.T4.1.8.1">ChatGLM-6B <cite class="ltx_cite ltx_citemacro_citep">(GLM et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib17" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.2">38.90</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.3">37.48</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.9">
<td class="ltx_td ltx_align_left" id="S6.T4.1.9.1">Llama2-7B <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib47" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.2">32.42</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.3">31.11</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.10">
<td class="ltx_td ltx_align_left" id="S6.T4.1.10.1">OLMo-7B <cite class="ltx_cite ltx_citemacro_citep">(Groeneveld et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib19" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.2">35.18</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.3">35.55</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.11">
<td class="ltx_td ltx_align_left" id="S6.T4.1.11.1">Gemma-7B <cite class="ltx_cite ltx_citemacro_citep">(Gemma Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.2">42.57</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.3">44.20</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.12">
<td class="ltx_td ltx_align_left" id="S6.T4.1.12.1">MAP-Neo-7B <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib54" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.2">56.97</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.3">55.01</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.13">
<td class="ltx_td ltx_align_left" id="S6.T4.1.13.1">Llama2-13B <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib47" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.2">37.32</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.3">37.06</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.14.1">
<span class="ltx_text ltx_font_italic" id="S6.T4.1.14.1.1">Steel-LLM</span>-1B-Chat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.2">41.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.3">36.08</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.1.15.1">
<span class="ltx_text ltx_font_italic" id="S6.T4.1.15.1.1">Steel-LLM</span>-1B-Chat-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.15.2">42.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.15.3">36.04</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several large language models (LLMs) on two widely used Chinese language evaluation benchmarks: CEVAL and CMMLU.  It lists the models, their sizes (where available), and their accuracy scores on both benchmarks, allowing for a direct comparison of model performance and highlighting Steel-LLM's competitive standing.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of models on CEVAL and CMMLU benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.10">
<tr class="ltx_tr" id="A1.T5.10.11">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="A1.T5.10.11.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.10.11.1.1">
<span class="ltx_p" id="A1.T5.10.11.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.10.11.1.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="A1.T5.10.11.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.10.11.2.1">
<span class="ltx_p" id="A1.T5.10.11.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.10.11.2.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.1.1.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.1.1.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.1.1.1.1.p1">
<span class="ltx_p" id="A1.T5.1.1.1.1.p1.1"><span class="ltx_text" id="A1.T5.1.1.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.1.1.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.1.1.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.1.1.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.1.1.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/Skywork/SkyPile-150B/tree/main/data" title="">SkyPile-150B</a></span></span>
<span class="ltx_tr" id="A1.T5.1.1.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.1.1.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Wei et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib48" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.1.1.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.1.1.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.2.1">
<span class="ltx_p" id="A1.T5.1.1.2.1.1">Consisting of approximately 150 billion tokens and 620 gigabytes of cleaned text data from 233 million web pages, with rigorous filtering and deduplication to ensure quality and mitigate sensitive and biased information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.2.2.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.2.2.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.2.2.1.1.p1">
<span class="ltx_p" id="A1.T5.2.2.1.1.p1.1"><span class="ltx_text" id="A1.T5.2.2.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.2.2.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.2.2.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.2.2.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.2.2.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://opendatalab.org.cn/OpenDataLab/WanJuan1_dot_0?source=Q1NETg" title="">Wanjuan1.0</a></span></span>
<span class="ltx_tr" id="A1.T5.2.2.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.2.2.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib20" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.2.2.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.2.2.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.2.1">
<span class="ltx_p" id="A1.T5.2.2.2.1.1">Composed of processed data from various sources, including web pages, encyclopedias, books, patents, textbooks, and exam questions, with a total volume of data exceeding 500 million documents, amounting to over 1TB (roughly split equally between Chinese and English data) and has undergone meticulous cleaning, deduplication, and value alignment.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.3.3.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.3.3.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.3.3.1.1.p1">
<span class="ltx_p" id="A1.T5.3.3.1.1.p1.1"><span class="ltx_text" id="A1.T5.3.3.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.3.3.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.3.3.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.3.3.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.3.3.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/pleisto/wikipedia-cn-20230720-filtered" title="">Wikipedia-cn</a></span></span>
</span></span><span class="ltx_text" id="A1.T5.3.3.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.3.3.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.3.2.1">
<span class="ltx_p" id="A1.T5.3.3.2.1.1">Based on the July 20th, 2023 Chinese Wikipedia dump, retains 254,574 high-quality entries after filtering out special types, low-quality, sensitive, and controversial content, and includes conversions between simplified and traditional Chinese.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.4.4.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.4.4.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.4.4.1.1.p1">
<span class="ltx_p" id="A1.T5.4.4.1.1.p1.1"><span class="ltx_text" id="A1.T5.4.4.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.4.4.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.4.4.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.4.4.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.4.4.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/xuqinyang/BaiduBaike-5.63M" title="">Baidu Baike</a></span></span>
</span></span><span class="ltx_text" id="A1.T5.4.4.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.4.4.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.4.2.1">
<span class="ltx_p" id="A1.T5.4.4.2.1.1">Consisting of 5,630,000 uncleaned entries from Baidu Baike, with a total size of approximately 17GB.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.5.5.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.5.5.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.5.5.1.1.p1">
<span class="ltx_p" id="A1.T5.5.5.1.1.p1.1"><span class="ltx_text" id="A1.T5.5.5.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.5.5.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.5.5.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.5.5.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.5.5.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://aistudio.baidu.com/datasetdetail/107726" title="">Baidu QA</a></span></span>
</span></span><span class="ltx_text" id="A1.T5.5.5.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.5.5.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.5.5.2.1">
<span class="ltx_p" id="A1.T5.5.5.2.1.1">Including 1.5 million high-quality encyclopedia questions and answers, spanning 492 categories, with 434 categories occurring at least 10 times, suitable for training intelligent Q&amp;A systems</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.6.6.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.6.6.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.6.6.1.1.p1">
<span class="ltx_p" id="A1.T5.6.6.1.1.p1.1"><span class="ltx_text" id="A1.T5.6.6.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.6.6.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.6.6.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.6.6.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.6.6.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/wangrui6/Zhihu-KOL" title="">Zhihu QA</a></span></span>
</span></span><span class="ltx_text" id="A1.T5.6.6.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.6.6.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.6.6.2.1">
<span class="ltx_p" id="A1.T5.6.6.2.1.1">Including 1 million entries, with 1.5GB in size.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.7.7.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.7.7.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.7.7.1.1.p1">
<span class="ltx_p" id="A1.T5.7.7.1.1.p1.1"><span class="ltx_text" id="A1.T5.7.7.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.7.7.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.7.7.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.7.7.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.7.7.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/LianjiaTech/BELLE/tree/main/data/10M" title="">BELLE</a></span></span>
<span class="ltx_tr" id="A1.T5.7.7.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.7.7.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(BELLEGroup, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib7" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.7.7.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.7.7.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.7.7.2.1">
<span class="ltx_p" id="A1.T5.7.7.2.1.1">Train_2M_CN and train_3.5M_CN, generated by ChatGPT, contain 2 million and 3.5 million dialogue entries respectively, and were both used in this project. Note that these datasets are unverified and may contain errors.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.8.8.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.8.8.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.8.8.1.1.p1">
<span class="ltx_p" id="A1.T5.8.8.1.1.p1.1"><span class="ltx_text" id="A1.T5.8.8.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.8.8.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.8.8.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.8.8.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.8.8.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://hf-mirror.com/datasets/YeungNLP/moss-003-sft-data" title="">Moss</a></span></span>
<span class="ltx_tr" id="A1.T5.8.8.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.8.8.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib38" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.8.8.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.8.8.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.8.8.2.1">
<span class="ltx_p" id="A1.T5.8.8.2.1.1">Containing 1.1 million Chinese and English multi-turn dialogue entries.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.9.9">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.9.9.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.9.9.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.9.9.1.1.p1">
<span class="ltx_p" id="A1.T5.9.9.1.1.p1.1"><span class="ltx_text" id="A1.T5.9.9.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.9.9.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.9.9.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.9.9.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.9.9.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://hf-mirror.com/datasets/YeungNLP/firefly-train-1.1M" title="">Firefly</a></span></span>
<span class="ltx_tr" id="A1.T5.9.9.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.9.9.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Yang, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib51" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.9.9.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T5.9.9.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.9.9.2.1">
<span class="ltx_p" id="A1.T5.9.9.2.1.1">Comprising 1.15 million entries covering 23 common Chinese NLP tasks and includes culturally relevant data such as couplets, poetry, classical Chinese translations, prose, and Jin Yong novels, resulting in a total of 1.15 million entries.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A1.T5.10.10.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A1.T5.10.10.1.1">
<span class="ltx_para ltx_noindent" id="A1.T5.10.10.1.1.p1">
<span class="ltx_p" id="A1.T5.10.10.1.1.p1.1"><span class="ltx_text" id="A1.T5.10.10.1.1.p1.1.1"></span> <span class="ltx_text" id="A1.T5.10.10.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T5.10.10.1.1.p1.1.2.1">
<span class="ltx_tr" id="A1.T5.10.10.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.10.10.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://hf-mirror.com/datasets/bigcode/starcoderdata" title="">Starcode</a></span></span>
<span class="ltx_tr" id="A1.T5.10.10.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T5.10.10.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib27" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A1.T5.10.10.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A1.T5.10.10.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.10.10.2.1">
<span class="ltx_p" id="A1.T5.10.10.2.1.1">Including 783GB of code across 86 programming languages, with 54GB of GitHub Issues, 13GB of Jupyter notebooks, and 32GB of GitHub commits. Our project used only the C++, Python, and Java data.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used for pretraining the Steel-LLM model.  It lists each dataset's name, source, and a description of its contents, including size and the type of data included (e.g., web text, code, encyclopedias). The table provides a comprehensive overview of the diverse data sources contributing to the model's knowledge base.
> <details>
> <summary>read the caption</summary>
> Table 5: Pretraining Data Detailed Description
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.7">
<tr class="ltx_tr" id="A2.T6.7.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T6.7.8.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.7.8.1.1">
<span class="ltx_p" id="A2.T6.7.8.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.7.8.1.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="A2.T6.7.8.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.7.8.2.1">
<span class="ltx_p" id="A2.T6.7.8.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.7.8.2.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.1.1.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.1.1.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.1.1.1.1.p1">
<span class="ltx_p" id="A2.T6.1.1.1.1.p1.1"><span class="ltx_text" id="A2.T6.1.1.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.1.1.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.1.1.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.1.1.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.1.1.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/BAAI/Infinity-Instruct" title="">Infinity-Instruct-7M</a></span></span>
<span class="ltx_tr" id="A2.T6.1.1.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.1.1.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(BAAI, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib4" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.1.1.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.1.1.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.2.1.1">A large-scale, high-quality instruction dataset with only 0.7M of Chinese data used in this project.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.2.2.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.2.2.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.2.2.1.1.p1">
<span class="ltx_p" id="A2.T6.2.2.1.1.p1.1"><span class="ltx_text" id="A2.T6.2.2.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.2.2.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.2.2.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.2.2.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://zhida.zhihu.com/search/3645185472052319285?zhida_source=entity" title="">Wanjuan1.0</a></span></span>
<span class="ltx_tr" id="A2.T6.2.2.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib20" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.2.2.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.2.2.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.2.1">
<span class="ltx_p" id="A2.T6.2.2.2.1.1">Consistent with the one used during the pre-training stage, but with the Chinese choice question data repurposed for fine-tuning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.3.3.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.3.3.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.3.3.1.1.p1">
<span class="ltx_p" id="A2.T6.3.3.1.1.p1.1"><span class="ltx_text" id="A2.T6.3.3.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.3.3.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.3.3.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.3.3.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/FunnySaltyFish/Better-Ruozhiba" title="">Ruozhiba</a></span></span>
<span class="ltx_tr" id="A2.T6.3.3.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Ruozhiba, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib35" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.3.3.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.3.3.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.3.3.2.1">
<span class="ltx_p" id="A2.T6.3.3.2.1.1">Questions from Baidu Tieba “Ruozhiba” were answered by GPT-4, then manually reviewed and edited for formatting errors and improved responses.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.4.4.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.4.4.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.4.4.1.1.p1">
<span class="ltx_p" id="A2.T6.4.4.1.1.p1.1"><span class="ltx_text" id="A2.T6.4.4.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.4.4.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.4.4.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.4.4.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/SmartFlowAI/EmoLLM/tree/main" title="">Self-awareness Dataset</a></span></span>
<span class="ltx_tr" id="A2.T6.4.4.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Team, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib40" title="">2024a</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.4.4.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.4.4.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.4.2.1">
<span class="ltx_p" id="A2.T6.4.4.2.1.1">Consisting of various “Who are you?” questions from the EmoLLM project templates.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.5.5.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.5.5.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.5.5.1.1.p1">
<span class="ltx_p" id="A2.T6.5.5.1.1.p1.1"><span class="ltx_text" id="A2.T6.5.5.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.5.5.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.5.5.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.5.5.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.5.5.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/m-a-p/Code-Feedback" title="">Code-Feedback</a></span></span>
<span class="ltx_tr" id="A2.T6.5.5.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.5.5.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib58" title="">2025</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.5.5.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.5.5.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.5.5.2.1">
<span class="ltx_p" id="A2.T6.5.5.2.1.1">A code SFT dataset consists of 66,000 entries from various open-source code datasets and LeetCode, after undergoing a series of filtering and selection processes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.6.6.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.6.6.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.6.6.1.1.p1">
<span class="ltx_p" id="A2.T6.6.6.1.1.p1.1"><span class="ltx_text" id="A2.T6.6.6.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.6.6.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.6.6.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.6.6.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.6.6.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/TIGER-Lab/WebInstructSub" title="">WebInstructSub</a></span></span>
<span class="ltx_tr" id="A2.T6.6.6.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.6.6.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Yue et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib52" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.6.6.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T6.6.6.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.6.6.2.1">
<span class="ltx_p" id="A2.T6.6.6.2.1.1">Containing 2.33 million SFT entries across fields such as mathematics, physics, biology, chemistry, and computer science.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.7.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T6.7.7.1" style="width:85.4pt;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A2.T6.7.7.1.1">
<span class="ltx_para ltx_noindent" id="A2.T6.7.7.1.1.p1">
<span class="ltx_p" id="A2.T6.7.7.1.1.p1.1"><span class="ltx_text" id="A2.T6.7.7.1.1.p1.1.1"></span> <span class="ltx_text" id="A2.T6.7.7.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.7.7.1.1.p1.1.2.1">
<span class="ltx_tr" id="A2.T6.7.7.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.7.7.1.1.p1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/teknium/OpenHermes-2.5" title="">OpenHermes-2.5</a></span></span>
<span class="ltx_tr" id="A2.T6.7.7.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.7.7.1.1.p1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><cite class="ltx_cite ltx_citemacro_citep">(Teknium, <a class="ltx_ref" href="https://arxiv.org/html/2502.06635v1#bib.bib44" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="A2.T6.7.7.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T6.7.7.2" style="width:313.0pt;padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.7.7.2.1">
<span class="ltx_p" id="A2.T6.7.7.2.1.1">Consisting of samples synthesized by large models and chat samples, filtered from open-source data like Airoboros, ChatBot Arena, and Evol Instruct, totaling 1 million entries.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used in the supervised fine-tuning stage of the Steel-LLM model's training.  It lists each dataset's name, a brief description of its contents and source, and the quantity of data used for fine-tuning the model.  This information helps readers understand the composition and size of the data used to refine the Steel-LLM model after its initial pre-training phase.
> <details>
> <summary>read the caption</summary>
> Table 6: Supervised Finetuning Data Detailed Description
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.1">
<tr class="ltx_tr" id="A3.T7.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.1" style="width:136.6pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1.1">Operator</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.2.1.1" style="width:213.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.2.1.1.1">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.1">
<span class="ltx_p" id="A3.T7.1.1.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.1.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.1.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.1.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.1.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.1.3.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.3.1.1.2.1.1.1.1">Note</span></span></span>
</span></span><span class="ltx_text" id="A3.T7.1.1.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.1.1">
<span class="ltx_p" id="A3.T7.1.2.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.2.1.1.1.1">chinese_convert_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.2.1">
<span class="ltx_p" id="A3.T7.1.2.2.1.1" style="width:213.4pt;">Converts Chinese between Traditional Chinese, Simplified Chinese and Japanese Kanji</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.3.1">
<span class="ltx_p" id="A3.T7.1.2.3.1.1" style="width:85.4pt;">Mode: t2s (tradition to simple)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.1.1">
<span class="ltx_p" id="A3.T7.1.3.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.3.1.1.1.1">clean_email_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.2.1">
<span class="ltx_p" id="A3.T7.1.3.2.1.1" style="width:213.4pt;">Removes email information</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.3.1">
<span class="ltx_p" id="A3.T7.1.3.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.3.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.3.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.3.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.3.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.3.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.3.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.1.1">
<span class="ltx_p" id="A3.T7.1.4.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.4.1.1.1.1">clean_html_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.2.1">
<span class="ltx_p" id="A3.T7.1.4.2.1.1" style="width:213.4pt;">Removes HTML tags and returns plain text of all the nodes</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.3.1">
<span class="ltx_p" id="A3.T7.1.4.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.4.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.4.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.4.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.4.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.4.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.4.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.1.1">
<span class="ltx_p" id="A3.T7.1.5.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.5.1.1.1.1">clean_ip_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.2.1">
<span class="ltx_p" id="A3.T7.1.5.2.1.1" style="width:213.4pt;">Removes IP addresses</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.3.1">
<span class="ltx_p" id="A3.T7.1.5.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.5.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.5.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.5.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.5.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.5.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.5.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.1.1">
<span class="ltx_p" id="A3.T7.1.6.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.6.1.1.1.1">clean_links_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.2.1">
<span class="ltx_p" id="A3.T7.1.6.2.1.1" style="width:213.4pt;">Removes links, such as those starting with http or ftp</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.3.1">
<span class="ltx_p" id="A3.T7.1.6.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.6.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.6.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.6.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.6.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.6.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.6.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.1.1">
<span class="ltx_p" id="A3.T7.1.7.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.7.1.1.1.1">clean_copyright_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.2.1">
<span class="ltx_p" id="A3.T7.1.7.2.1.1" style="width:213.4pt;">Removes copyright notice at the beginning of code files (must contain the word copyright)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.3.1">
<span class="ltx_p" id="A3.T7.1.7.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.7.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.7.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.7.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.7.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.7.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.7.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.1.1">
<span class="ltx_p" id="A3.T7.1.8.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.8.1.1.1.1">expand_macro_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.2.1">
<span class="ltx_p" id="A3.T7.1.8.2.1.1" style="width:213.4pt;">Expands macros usually defined at the top of TeX documents</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.3.1">
<span class="ltx_p" id="A3.T7.1.8.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.8.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.8.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.8.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.8.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.8.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.8.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.1.1">
<span class="ltx_p" id="A3.T7.1.9.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.9.1.1.1.1">fix_unicode_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.2.1">
<span class="ltx_p" id="A3.T7.1.9.2.1.1" style="width:213.4pt;">Fixes broken Unicodes</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.3.1">
<span class="ltx_p" id="A3.T7.1.9.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.9.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.9.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.9.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.9.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.9.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.9.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.10.1.1">
<span class="ltx_p" id="A3.T7.1.10.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.10.1.1.1.1">punctuation_normalization_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.10.2.1">
<span class="ltx_p" id="A3.T7.1.10.2.1.1" style="width:213.4pt;">Normalizes various Unicode punctuations to their ASCII equivalents</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.10.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.10.3.1">
<span class="ltx_p" id="A3.T7.1.10.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.10.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.10.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.10.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.10.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.10.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.10.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.11.1.1">
<span class="ltx_p" id="A3.T7.1.11.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.11.1.1.1.1">remove_repeat_sentences_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.11.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.11.2.1">
<span class="ltx_p" id="A3.T7.1.11.2.1.1" style="width:213.4pt;">Remove repeat sentences in text samples</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.11.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.11.3.1">
<span class="ltx_p" id="A3.T7.1.11.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.11.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.11.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.11.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.11.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.11.3.1.1.2.1.1.1">Ignore special char-</span></span>
<span class="ltx_tr" id="A3.T7.1.11.3.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.11.3.1.1.2.1.2.1">acter and sentences</span></span>
<span class="ltx_tr" id="A3.T7.1.11.3.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.11.3.1.1.2.1.3.1">shorter than 2 will</span></span>
<span class="ltx_tr" id="A3.T7.1.11.3.1.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.11.3.1.1.2.1.4.1">not be deduplicated</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.11.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.12.1.1">
<span class="ltx_p" id="A3.T7.1.12.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.12.1.1.1.1">remove_specific_chars_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.12.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.12.2.1">
<span class="ltx_p" id="A3.T7.1.12.2.1.1" style="width:213.4pt;">Removes any user-specified characters or substrings</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.12.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.12.3.1">
<span class="ltx_p" id="A3.T7.1.12.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.12.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.12.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.12.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.12.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.12.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.12.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.13.1.1">
<span class="ltx_p" id="A3.T7.1.13.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.13.1.1.1.1">whitespace_normalization_mapper</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.13.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.13.2.1">
<span class="ltx_p" id="A3.T7.1.13.2.1.1" style="width:213.4pt;">Normalizes various Unicode whitespaces to the normal ASCII space (U+0020)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.13.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.13.3.1">
<span class="ltx_p" id="A3.T7.1.13.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.13.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.13.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.13.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.13.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.13.3.1.1.2.1.1.1">-</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.13.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.14.1.1">
<span class="ltx_p" id="A3.T7.1.14.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.14.1.1.1.1">alphanumeric_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.14.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.14.2.1">
<span class="ltx_p" id="A3.T7.1.14.2.1.1" style="width:213.4pt;">Keeps samples with alphanumeric ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.14.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.14.3.1">
<span class="ltx_p" id="A3.T7.1.14.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.14.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.14.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.14.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.14.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.14.3.1.1.2.1.1.1">[0.0, 0.9]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.14.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.15.1.1">
<span class="ltx_p" id="A3.T7.1.15.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.15.1.1.1.1">average_line_length_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.15.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.15.2.1">
<span class="ltx_p" id="A3.T7.1.15.2.1.1" style="width:213.4pt;">Keeps samples with average line length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.15.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.15.3.1">
<span class="ltx_p" id="A3.T7.1.15.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.15.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.15.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.15.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.15.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.15.3.1.1.2.1.1.1">[10, 150]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.15.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.16.1.1">
<span class="ltx_p" id="A3.T7.1.16.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.16.1.1.1.1">character_repetition_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.16.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.16.2.1">
<span class="ltx_p" id="A3.T7.1.16.2.1.1" style="width:213.4pt;">Keeps samples with char-level n-gram repetition ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.16.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.16.3.1">
<span class="ltx_p" id="A3.T7.1.16.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.16.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.16.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.16.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.16.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.16.3.1.1.2.1.1.1">[0.0, 0.4]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.16.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.17.1.1">
<span class="ltx_p" id="A3.T7.1.17.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.17.1.1.1.1">maximum_line_length_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.17.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.17.2.1">
<span class="ltx_p" id="A3.T7.1.17.2.1.1" style="width:213.4pt;">Keeps samples with maximum line length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.17.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.17.3.1">
<span class="ltx_p" id="A3.T7.1.17.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.17.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.17.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.17.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.17.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.17.3.1.1.2.1.1.1">1000</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.17.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.18.1.1">
<span class="ltx_p" id="A3.T7.1.18.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.18.1.1.1.1">perplexity_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.18.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.18.2.1">
<span class="ltx_p" id="A3.T7.1.18.2.1.1" style="width:213.4pt;">Keeps samples with perplexity score below the specified threshold</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.18.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.18.3.1">
<span class="ltx_p" id="A3.T7.1.18.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.18.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.18.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.18.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.18.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.18.3.1.1.2.1.1.1">1500</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.18.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.19.1.1">
<span class="ltx_p" id="A3.T7.1.19.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.19.1.1.1.1">special_characters_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.19.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.19.2.1">
<span class="ltx_p" id="A3.T7.1.19.2.1.1" style="width:213.4pt;">Keeps samples with special-char ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.19.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.19.3.1">
<span class="ltx_p" id="A3.T7.1.19.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.19.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.19.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.19.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.19.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.19.3.1.1.2.1.1.1">[0.0, 0.25]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.19.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.20.1.1">
<span class="ltx_p" id="A3.T7.1.20.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.20.1.1.1.1">text_length_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.20.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.20.2.1">
<span class="ltx_p" id="A3.T7.1.20.2.1.1" style="width:213.4pt;">Keeps samples with total text length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.20.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.20.3.1">
<span class="ltx_p" id="A3.T7.1.20.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.20.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.20.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.20.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.20.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.20.3.1.1.2.1.1.1">[10, 100000]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.20.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.21.1.1">
<span class="ltx_p" id="A3.T7.1.21.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.21.1.1.1.1">word_repetition_filter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.21.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.21.2.1">
<span class="ltx_p" id="A3.T7.1.21.2.1.1" style="width:213.4pt;">Keeps samples with word-level n-gram repetition ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.21.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.21.3.1">
<span class="ltx_p" id="A3.T7.1.21.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.21.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.21.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.21.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.21.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.21.3.1.1.2.1.1.1">[0.0, 0.5]</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.21.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.22.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.22.1.1">
<span class="ltx_p" id="A3.T7.1.22.1.1.1" style="width:136.6pt;"><span class="ltx_text" id="A3.T7.1.22.1.1.1.1">document_simhash_deduplicator</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.22.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.22.2.1">
<span class="ltx_p" id="A3.T7.1.22.2.1.1" style="width:213.4pt;">Deduplicates samples at document-level using SimHash</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.22.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.22.3.1">
<span class="ltx_p" id="A3.T7.1.22.3.1.1" style="width:85.4pt;"><span class="ltx_text" id="A3.T7.1.22.3.1.1.1"></span> <span class="ltx_text" id="A3.T7.1.22.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.22.3.1.1.2.1">
<span class="ltx_tr" id="A3.T7.1.22.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.22.3.1.1.2.1.1.1">Tokenization:space;</span></span>
<span class="ltx_tr" id="A3.T7.1.22.3.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.22.3.1.1.2.1.2.1">window_size:6;</span></span>
<span class="ltx_tr" id="A3.T7.1.22.3.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.22.3.1.1.2.1.3.1">num_blocks:6;</span></span>
<span class="ltx_tr" id="A3.T7.1.22.3.1.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.22.3.1.1.2.1.4.1">hamming_distance:4;</span></span>
<span class="ltx_tr" id="A3.T7.1.22.3.1.1.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.22.3.1.1.2.1.5.1">lowercase:true</span></span>
</span></span><span class="ltx_text" id="A3.T7.1.22.3.1.1.3"></span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the text processing operators used in the Steel-LLM project, which are part of the Data Juicer framework.  For each operator, it provides a description of its function and any specific parameters or notes.  This detailed information helps in understanding the data preprocessing pipeline used to prepare the massive dataset for training the Steel-LLM model. The table is crucial for reproducibility and allows researchers to understand the specific steps involved in data cleaning and normalization.
> <details>
> <summary>read the caption</summary>
> Table 7: Data Juicer Operators Used for Text Processing
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T8.1">
<tr class="ltx_tr" id="A4.T8.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T8.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.1.1">
<span class="ltx_p" id="A4.T8.1.1.1.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1.1">Operator</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T8.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.2.1">
<span class="ltx_p" id="A4.T8.1.1.2.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.2.1.1.1">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T8.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.3.1">
<span class="ltx_p" id="A4.T8.1.1.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.1.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.1.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.1.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.1.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.1.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.3.1.1.2.1.1.1.1">Note</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.1.1.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.1.1">
<span class="ltx_p" id="A4.T8.1.2.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.2.1.1.1.1"><span class="ltx_text" id="A4.T8.1.2.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.2.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.2.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.2.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.2.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">clean_copyright_mapper</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.2.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.2.1">
<span class="ltx_p" id="A4.T8.1.2.2.1.1" style="width:199.2pt;">Removes copyright notice at the beginning of code files (must contain the word copyright)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.3.1">
<span class="ltx_p" id="A4.T8.1.2.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.2.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.2.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.2.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.2.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.2.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">-</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.2.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.1.1">
<span class="ltx_p" id="A4.T8.1.3.1.1.1" style="width:142.3pt;">clean_email_mapper</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.2.1">
<span class="ltx_p" id="A4.T8.1.3.2.1.1" style="width:199.2pt;">Removes email information</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.3.1">
<span class="ltx_p" id="A4.T8.1.3.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.3.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.3.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.3.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.3.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.3.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">-</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.3.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.1.1">
<span class="ltx_p" id="A4.T8.1.4.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.4.1.1.1.1"><span class="ltx_text" id="A4.T8.1.4.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.4.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.4.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.4.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.4.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">clean_links_mapper</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.4.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.2.1">
<span class="ltx_p" id="A4.T8.1.4.2.1.1" style="width:199.2pt;">Removes links, such as those starting with http or ftp</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.3.1">
<span class="ltx_p" id="A4.T8.1.4.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.4.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.4.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.4.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.4.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.4.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">-</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.4.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.1.1">
<span class="ltx_p" id="A4.T8.1.5.1.1.1" style="width:142.3pt;">fix_unicode_mapper</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.2.1">
<span class="ltx_p" id="A4.T8.1.5.2.1.1" style="width:199.2pt;">Fixes broken Unicodes</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.3.1">
<span class="ltx_p" id="A4.T8.1.5.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.5.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.5.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.5.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.5.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.5.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">-</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.5.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.6.1.1">
<span class="ltx_p" id="A4.T8.1.6.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.6.1.1.1.1"><span class="ltx_text" id="A4.T8.1.6.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.6.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.6.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.6.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.6.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">punctuation_normalization_mapper</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.6.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.6.2.1">
<span class="ltx_p" id="A4.T8.1.6.2.1.1" style="width:199.2pt;">Normalizes various Unicode punctuations to their ASCII equivalents</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.6.3.1">
<span class="ltx_p" id="A4.T8.1.6.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.6.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.6.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.6.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.6.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.6.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">-</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.6.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.7.1.1">
<span class="ltx_p" id="A4.T8.1.7.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.7.1.1.1.1"><span class="ltx_text" id="A4.T8.1.7.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.7.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.7.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.7.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.7.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">alphanumeric_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.7.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.7.2.1">
<span class="ltx_p" id="A4.T8.1.7.2.1.1" style="width:199.2pt;">Keeps samples with alphanumeric ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.7.3.1">
<span class="ltx_p" id="A4.T8.1.7.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.7.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.7.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.7.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.7.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.7.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">[0.546, 3.65]</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.7.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.8.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.8.1.1">
<span class="ltx_p" id="A4.T8.1.8.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.8.1.1.1.1"><span class="ltx_text" id="A4.T8.1.8.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.8.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.8.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.8.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.8.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">average_line_length_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.8.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.8.2.1">
<span class="ltx_p" id="A4.T8.1.8.2.1.1" style="width:199.2pt;">Keeps samples with average line length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.8.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.8.3.1">
<span class="ltx_p" id="A4.T8.1.8.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.8.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.8.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.8.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.8.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.8.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">[10, 150]</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.8.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.9.1.1">
<span class="ltx_p" id="A4.T8.1.9.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.9.1.1.1.1"><span class="ltx_text" id="A4.T8.1.9.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.9.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.9.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.9.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.9.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">character_repetition_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.9.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.9.2.1">
<span class="ltx_p" id="A4.T8.1.9.2.1.1" style="width:199.2pt;">Keeps samples with char-level n-gram repetition ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.9.3.1">
<span class="ltx_p" id="A4.T8.1.9.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.9.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.9.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.9.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.9.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.9.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.36</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.9.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.10.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.10.1.1">
<span class="ltx_p" id="A4.T8.1.10.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.10.1.1.1.1"><span class="ltx_text" id="A4.T8.1.10.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.10.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.10.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.10.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.10.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">maximum_line_length_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.10.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.10.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.10.2.1">
<span class="ltx_p" id="A4.T8.1.10.2.1.1" style="width:199.2pt;">Keeps samples with maximum line length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.10.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.10.3.1">
<span class="ltx_p" id="A4.T8.1.10.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.10.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.10.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.10.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.10.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.10.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">1000</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.10.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.11.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.11.1.1">
<span class="ltx_p" id="A4.T8.1.11.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.11.1.1.1.1"><span class="ltx_text" id="A4.T8.1.11.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.11.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.11.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.11.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.11.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">text_length_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.11.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.11.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.11.2.1">
<span class="ltx_p" id="A4.T8.1.11.2.1.1" style="width:199.2pt;">Keeps samples with total text length within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.11.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.11.3.1">
<span class="ltx_p" id="A4.T8.1.11.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.11.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.11.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.11.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.11.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.11.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">96714</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.11.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.12.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.12.1.1">
<span class="ltx_p" id="A4.T8.1.12.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.12.1.1.1.1"><span class="ltx_text" id="A4.T8.1.12.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.12.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.12.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.12.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.12.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">words_num_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.12.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.12.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.12.2.1">
<span class="ltx_p" id="A4.T8.1.12.2.1.1" style="width:199.2pt;">Keeps samples with word count within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.12.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.12.3.1">
<span class="ltx_p" id="A4.T8.1.12.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.12.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.12.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.12.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.12.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.12.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">[20,6640]</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.12.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.13.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.13.1.1">
<span class="ltx_p" id="A4.T8.1.13.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.13.1.1.1.1"><span class="ltx_text" id="A4.T8.1.13.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.13.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.13.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.13.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.13.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">word_repetition_filter</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.13.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.13.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.13.2.1">
<span class="ltx_p" id="A4.T8.1.13.2.1.1" style="width:199.2pt;">Keeps samples with word-level n-gram repetition ratio within the specified range</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.13.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.13.3.1">
<span class="ltx_p" id="A4.T8.1.13.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.13.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.13.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.13.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.13.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.13.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">[10, 0.357]</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.13.3.1.1.3"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A4.T8.1.14.1" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.14.1.1">
<span class="ltx_p" id="A4.T8.1.14.1.1.1" style="width:142.3pt;"><span class="ltx_text" id="A4.T8.1.14.1.1.1.1"><span class="ltx_text" id="A4.T8.1.14.1.1.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.14.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.14.1.1.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.14.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.1.1.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">document_simhash_deduplicator</span></span>
</span></span> <span class="ltx_text" id="A4.T8.1.14.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A4.T8.1.14.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.14.2.1">
<span class="ltx_p" id="A4.T8.1.14.2.1.1" style="width:199.2pt;">Deduplicates samples at document-level using SimHash</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A4.T8.1.14.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.14.3.1">
<span class="ltx_p" id="A4.T8.1.14.3.1.1" style="width:93.9pt;"><span class="ltx_text" id="A4.T8.1.14.3.1.1.1"></span> <span class="ltx_text" id="A4.T8.1.14.3.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.14.3.1.1.2.1">
<span class="ltx_tr" id="A4.T8.1.14.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.3.1.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Tokenization:space;</span></span>
<span class="ltx_tr" id="A4.T8.1.14.3.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.3.1.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">window_size:6;</span></span>
<span class="ltx_tr" id="A4.T8.1.14.3.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.3.1.1.2.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">num_blocks:6;</span></span>
<span class="ltx_tr" id="A4.T8.1.14.3.1.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.3.1.1.2.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">hamming_distance:4;</span></span>
<span class="ltx_tr" id="A4.T8.1.14.3.1.1.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.14.3.1.1.2.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">lowercase:true</span></span>
</span></span><span class="ltx_text" id="A4.T8.1.14.3.1.1.3"></span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the data processing operators used in the Data Juicer framework for cleaning and preparing code data for the Steel-LLM project.  For each operator, it specifies the function or transformation applied to the code data (e.g., removing copyright notices, removing email addresses, normalizing punctuation).  Some operators include parameters, such as specifying a range for alphanumeric ratios or line lengths. The table also indicates any special notes, such as whether an operator uses SimHash for deduplication.
> <details>
> <summary>read the caption</summary>
> Table 8: Data Juicer Operators Used for Code Processing
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06635/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06635/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}