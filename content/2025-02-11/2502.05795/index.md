---
title: "The Curse of Depth in Large Language Models"
summary: "Deep layers in LLMs underperform due to Pre-Layer Normalization; LayerNorm Scaling resolves this by controlling output variance, significantly improving training efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Medical Artificial Intelligence Laboratory, Westlake University",]
showSummary: true
date: 2025-02-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05795 {{< /keyword >}}
{{< keyword icon="writer" >}} Wenfang Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05795" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05795" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05795/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are becoming increasingly complex, and training them requires significant computational resources. Recent studies have observed that many of the layers in these models are less effective than expected, leading to wasted resources. This phenomenon is often referred to as the 'Curse of Depth'. This research paper delves into this problem, investigating the reason behind the ineffectiveness of deep layers.  The researchers find that this is largely due to a common technique called Pre-Layer Normalization (Pre-LN), which causes the output variance of the deeper layers to grow exponentially during training, ultimately hindering their contribution. 

To address this issue, the authors propose a novel technique called LayerNorm Scaling. This simple method scales the output variance of each layer inversely proportional to the square root of its depth. By doing so, it effectively prevents the exponential variance growth and improves the performance of deeper layers.  The researchers conducted extensive experiments, demonstrating that LayerNorm Scaling not only improves the training efficiency of LLMs but also enhances their performance on various downstream tasks.  This shows that the method is not just a theoretical improvement but a practical solution for improving large language model training.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pre-Layer Normalization (Pre-LN) causes the output variance of deep Transformer layers to grow exponentially, hindering their effectiveness in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed LayerNorm Scaling method effectively mitigates this issue by scaling down the output variance of deeper layers, thereby improving the contribution of deeper layers to training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LayerNorm Scaling demonstrates significant performance gains in both pre-training and fine-tuning across various LLM sizes, showcasing its generalizability and effectiveness in enhancing LLM performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses a critical inefficiency in large language models (LLMs)**.  By identifying the root cause of the underperformance of deep layers and proposing a simple yet effective solution (LayerNorm Scaling), this research **directly impacts the cost-effectiveness and efficiency of LLM training**. It also opens **new avenues for research** into LLM architecture and optimization techniques, paving the way for more powerful and resource-efficient LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05795/x1.png)

> 🔼 This figure shows the output variance of different layers in a 130M parameter LLaMA model under three different normalization methods: Pre-Layer Normalization (Pre-LN), Pre-LN with Scaled Initialization, and LayerNorm Scaling.  The x-axis represents the update steps during training (up to 10,000 steps), and the y-axis represents the average output variance across layers.  The plot visually demonstrates that Pre-LN leads to a significant increase in output variance as the layer depth increases, while LayerNorm Scaling effectively mitigates this issue, maintaining relatively stable variance across all layers.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Layerwise output variance. This figure compares the output variance across various layers for different setups: (1) Pre-LN; (2) Pre-LN with Scaled Initialization; and (3) LayerNorm Scaling. The experiments are conducted on the LLaM-130M model trained for 10,000 steps. The proposed LayerNorm Scaling effectively controls the variance across layers.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.2.1">LLaMA-130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.3.1">LLaMA-250M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.4.1">LLaMA-350M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.5.1">LLaMA-1B</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S5.T1.1.1.2.2.1">Training Tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T1.1.1.2.2.2">2.2B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T1.1.1.2.2.3">3.9B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T1.1.1.2.2.4">6.0B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T1.1.1.2.2.5">8.9B</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.3.1.1">Post-LN <cite class="ltx_cite ltx_citemacro_citep">(Ba, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib2" title="">2016</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.1.2">26.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.1.3">1409.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.1.4">1368.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.1.5">1390.75</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.4.2.1">DeepNorm <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib39" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.2.2">27.17</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.2.3">22.77</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.2.4">1362.59</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.2.5">1409.08</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.5.3.1">Mix-LN <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib21" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.3.2">26.07</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.3.3">21.39</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.3.4">1363.21</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.3.5">1414.78</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.6.4.1">Pre-LN <cite class="ltx_cite ltx_citemacro_citep">(Baevski and Auli, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib3" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.4.2">26.73</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.4.3">21.92</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.4.4">19.58</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.4.5">17.02</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.1.1.7.5.1">Pre-LN + LayerNorm Scaling</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.7.5.2.1">25.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.7.5.3.1">20.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.7.5.4.1">18.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.7.5.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.7.5.5.1">15.71</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of perplexity scores achieved by different layer normalization methods across various sizes of LLaMA language models.  Perplexity is a metric indicating how well a model predicts a sample, with lower scores signifying better performance. The table allows for a quantitative assessment of the effectiveness of different normalization techniques (Post-LN, DeepNorm, Mix-LN, Pre-LN, and Pre-LN with LayerNorm Scaling) in training LLMs of varying scale (130M, 250M, 350M, and 1B parameters). The results highlight the impact of the chosen normalization method on the overall model performance and training efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Perplexity (↓) comparison of various layer normalization methods across various LLaMA sizes.
> </details>





### In-depth insights


#### Depth's Curse Unveiled
The heading "Depth's Curse Unveiled" aptly captures a critical finding regarding the underperformance of deeper layers in large language models (LLMs).  **The core issue is the unexpected ineffectiveness of many layers despite the substantial computational cost of training them.** This phenomenon, often overlooked, represents a significant inefficiency. The research likely explores the reasons behind this, potentially linking it to specific architectural choices or training dynamics.  **Unveiling this "curse" likely involves identifying the root cause, whether it is a limitation in the model architecture or a consequence of the optimization process itself.**  Addressing this would involve proposing and evaluating solutions that mitigate the problem, potentially leading to more efficient and effective LLMs with similar performance but using fewer layers and less computational resources.  **Practical implications include optimizing training processes and designing novel architectures to fully harness the potential of all model layers, making the training process more resource-efficient.**  The research's contribution would thus be to highlight this overlooked problem, explain its origin, and offer solutions that improve LLM efficiency and performance, potentially changing the way LLMs are developed in the future.

#### Pre-LN's Variance
The analysis of Pre-LN's variance is crucial to understanding the paper's core argument.  The authors demonstrate that the use of Pre-Layer Normalization (Pre-LN) in large language models (LLMs) leads to an exponential growth in output variance as depth increases. This is a key component of what the authors call the "Curse of Depth."  **This variance explosion causes the derivatives of deeper layers to approach an identity matrix**, rendering them ineffective for learning and contributing minimally to model performance.  **The theoretical analysis is supported by empirical evidence**, showing that deeper layers are more robust to pruning and less influential on overall performance, indicating that they are not actively learning. The identification of this variance problem is **essential for understanding why many deep layers in LLMs become ineffective**.  It directly motivates the need for the proposed LayerNorm Scaling solution, which directly addresses this variance growth and improves LLM efficiency.

#### LayerNorm Scaling
The proposed LayerNorm Scaling method directly addresses the "Curse of Depth" in large language models (LLMs) by mitigating the issue of exponentially growing output variance in deeper layers when using pre-Layer Normalization (Pre-LN).  **Pre-LN, while stabilizing training, leads to derivatives approaching an identity matrix in deeper layers, hindering their contribution to learning.** LayerNorm Scaling cleverly scales the output variance inversely proportional to the square root of the layer's depth, thus preventing the variance explosion and enabling deeper layers to participate more effectively in the training process.  **This simple yet elegant solution doesn't introduce additional parameters or require hyperparameter tuning, making it easily implementable in existing LLM architectures.** Empirical results demonstrate significant improvements in pre-training and fine-tuning performance across various model sizes, showcasing the effectiveness of LayerNorm Scaling in enhancing LLM training efficiency and overall performance.  **The theoretical analysis provides a solid foundation for understanding why the method works and its limitations.** By effectively utilizing deeper layers, LayerNorm Scaling promises more efficient resource usage during LLM training.

#### Empirical Evidence
The section 'Empirical Evidence' would present concrete data demonstrating the phenomenon of the Curse of Depth.  This would likely involve experiments showing that **deeper layers in various LLMs are surprisingly robust to pruning or other perturbations**, suggesting they aren't contributing significantly to model learning.  The data might include performance metrics on tasks like MMLU or SQUAD after systematically removing layers, revealing minimal performance degradation when removing deeper layers but significant drops when shallower ones are removed. This would strongly support the claim that deeper layers are less effective, providing **compelling visual evidence** (like graphs showing performance drop per layer) to back up the theoretical arguments of the paper. The evidence should also exhibit consistency across different LLM families (Llama, Mistral, etc.) to establish the generality of the phenomenon and rule out architecture-specific quirks.

#### Future of LLMs
The future of LLMs hinges on addressing current limitations like the **Curse of Depth**, where deeper layers underperform.  Solutions like **LayerNorm Scaling** offer promising avenues for improvement by mitigating variance explosion and enhancing the contribution of all layers.  Further research into alternative normalization techniques and a deeper understanding of the interactions between layers are crucial.  **Efficient training methods** are paramount given the resource intensity of LLM training, suggesting a move towards more efficient architectures and training paradigms.  Additionally, the future of LLMs will involve exploring **novel model architectures** beyond the current Transformer-based dominance, potentially leveraging advancements in other fields such as graph neural networks or hybrid approaches.  Successfully navigating these challenges will unlock the true potential of LLMs, enabling more powerful and resource-efficient models that serve a wider range of applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05795/x2.png)

> 🔼 This figure displays the performance drop when layers are pruned from various large language models (LLMs).  It compares six different LLMs: BERT-Large, which uses Post-Layer Normalization (Post-LN), and five others (Mistral-7B, Qwen-7B, DeepSeek-7B, LLaMA2-7B, and LLaMA2-13B) that use Pre-Layer Normalization (Pre-LN). The x-axis represents the layer index, and the y-axis shows the performance drop (ΔP(l)) in the MMLU or SQUAD benchmark when a layer is removed. The results illustrate that in Pre-LN models, removing deeper layers has minimal impact on overall performance, highlighting their inefficiency; whereas Post-LN models show a greater performance drop when deeper layers are removed.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Performance drop of layer pruning across different LLMs. (a) BERT-Large (Post-LN), (b) Mistral-7B (Pre-LN), (c) Qwen-7B (Pre-LN), (d) DeepSeek-7B (Pre-LN), (e) LLaMA2-7B (Pre-LN), and (f) LLaMA2-13B (Pre-LN). The results show that Pre-LN models exhibit significant inefficiency in deeper layers, while Post-LN models maintain strong deep-layer contributions.
> </details>



![](https://arxiv.org/html/2502.05795/x3.png)

> 🔼 This figure illustrates the core difference between the Pre-Layer Normalization (Pre-LN) and the proposed LayerNorm Scaling methods.  Panel (a) shows the architecture of a standard Transformer block using Pre-LN, where layer normalization is applied before the attention and feed-forward network operations.  This can lead to an exponential increase in the output variance as the depth (layer index,  'l') increases. Panel (b) depicts the LayerNorm Scaling method, which addresses this issue by introducing a scaling factor inversely proportional to the square root of the layer index (1/√l). This scaling effectively controls the variance, ensuring that deeper layers contribute more effectively to training and preventing the variance explosion problem associated with Pre-LN.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison between Pre-LN (a) and LayerNorm Scaling (b). LayerNorm Scaling applies a scaling factor inversely proportional to the square root of the layer index l𝑙litalic_l, preventing excessive variance growth and stabilizing training dynamics across layers.
> </details>



![](https://arxiv.org/html/2502.05795/x4.png)

> 🔼 This figure shows the performance drop when pruning layers in the LLaMA-130M model, comparing the standard Pre-Layer Normalization (Pre-LN) with the proposed LayerNorm Scaling method.  The Pre-LN model shows minimal performance degradation when deeper layers are pruned, indicating their limited contribution. In contrast, the LayerNorm Scaling model exhibits significant performance decrease upon pruning of deeper layers, suggesting their crucial role in learning and improved model performance. This demonstrates LayerNorm Scaling successfully mitigates the Curse of Depth and enables deeper layers to participate in the overall performance of the model.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Performance drop of layer pruning on LLaMA-130M. LayerNorm Scaling enables deep layers to make a meaningful contribution to the model.
> </details>



![](https://arxiv.org/html/2502.05795/x5.png)

> 🔼 This figure displays the training loss curves for a 1B parameter LLaMA model using two different layer normalization techniques: Pre-Layer Normalization (Pre-LN) and the proposed LayerNorm Scaling.  It visually compares the convergence speed and overall loss achieved by each method during the model's training process.  The graph allows for a direct comparison of the effectiveness of the two normalization strategies.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training loss of LLaMA-1B with Pre-LN and LayerNorm Scaling.
> </details>



![](https://arxiv.org/html/2502.05795/x6.png)

> 🔼 This figure visualizes the variance of layer outputs in a LLaMA-130M model trained with Pre-Layer Normalization (Pre-LN). Three subplots display the variance at different training epochs (1000, 3000, and 6000).  The key observation is that variance remains low in the initial layers but increases exponentially as the layer depth increases, regardless of the training stage. This exponential growth suggests that deeper layers suffer from uncontrolled variance amplification during training, even with Pre-LN, highlighting the need for variance control mechanisms like LayerNorm Scaling.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Variance growth across layers in LLaMA-130M with Pre-LN. Each subplot shows the variance at different training stages (1000, 3000, and 6000 epochs). In all cases, the variance follows an exponential growth pattern as depth increases, indicating that deeper layers experience uncontrolled variance amplification regardless of training progress.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.1.1" style="font-size:80%;">Pre-LN</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.2.1" style="font-size:80%;">Admin</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.3.1" style="font-size:80%;">Group-LN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.4.1" style="font-size:80%;">Sandwich-LN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.5.1" style="font-size:80%;">Mix-LN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.1.1.6.1" style="font-size:80%;">LayerNorm Scaling</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.1"><span class="ltx_text" id="S5.T2.3.1.2.2.1.1" style="font-size:80%;">26.73</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.2"><span class="ltx_text" id="S5.T2.3.1.2.2.2.1" style="font-size:80%;">27.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.3"><span class="ltx_text" id="S5.T2.3.1.2.2.3.1" style="font-size:80%;">28.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.4"><span class="ltx_text" id="S5.T2.3.1.2.2.4.1" style="font-size:80%;">26.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.5"><span class="ltx_text" id="S5.T2.3.1.2.2.5.1" style="font-size:80%;">26.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.2.2.6.1" style="font-size:80%;">25.76</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the perplexity scores achieved by different layer normalization methods when training the LLaMA-130M language model.  Lower perplexity indicates better performance. The methods compared include Pre-LN (Pre-Layer Normalization), Admin, Group-LN (Group Layer Normalization), Sandwich-LN, Mix-LN, and LayerNorm Scaling.  This allows for a direct assessment of how these different normalization techniques impact the model's ability to learn and generate text, offering insights into their relative effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison against other normalization methods on LLaMA-130M. Perplexity (↓) is reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.2.1">MMLU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.3.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.4.1">ARC-e</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.5.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.6.1">Hellaswag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.7.1">OBQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.8.1">Winogrande</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.9.1">Average</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T3.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.2.2.1.1">LLaMA-250M</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.3.1.1">Post-LN <cite class="ltx_cite ltx_citemacro_citep">(Ba, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib2" title="">2016</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.2">22.95</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.3">37.83</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.4">26.94</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.5">52.72</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.6">26.17</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.7">11.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.8">49.56</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.3.1.9">32.54</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.4.2.1">DeepNorm <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib39" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.2">23.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.3">37.86</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.4">36.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.5">61.10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.6">25.69</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.7">15.00</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.8">49.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.4.2.9">35.63</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.5.3.1">Mix-LN <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib21" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.2">26.53</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.3">56.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.4">41.68</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.5">66.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.6">30.16</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.7">18.00</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.8">50.56</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.5.3.9">41.34</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.6.4.1">Pre-LN <cite class="ltx_cite ltx_citemacro_citep">(Baevski and Auli, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib3" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.2">24.93</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.3">38.35</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.4">40.15</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.5">63.55</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.6">26.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.7">16.20</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.8">49.01</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.6.4.9">36.93</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.1.7.5.1">Pre-LN + LayerNorm Scaling</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.2.1">27.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.3.1">58.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.4.1">45.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.5.1">67.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.6"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.6.1">32.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.7"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.7.1">18.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.8"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.8.1">52.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.7.5.9"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.5.9.1">43.14</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T3.3.1.8.6.1"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.8.6.1.1">LLaMA-1B</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.9.7.1">Post-LN <cite class="ltx_cite ltx_citemacro_citep">(Ba, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib2" title="">2016</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.2">22.95</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.3">37.82</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.4">25.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.5">49.51</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.6">25.04</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.7">13.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.8">49.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.9.7.9">31.96</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.10.8.1">DeepNorm <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib39" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.2">23.35</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.3">37.83</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.4">27.06</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.5">52.94</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.6">26.19</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.7">11.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.8">49.49</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.10.8.9">32.67</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.11.9.1">Mix-LN <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib21" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.2">23.19</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.3">37.83</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.4">25.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.5">49.51</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.6">25.04</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.7">11.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.8">49.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.11.9.9">31.72</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.1.12.10.1">Pre-LN <cite class="ltx_cite ltx_citemacro_citep">(Baevski and Auli, <a class="ltx_ref" href="https://arxiv.org/html/2502.05795v1#bib.bib3" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.2">26.54</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.12.10.3.1">62.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.4">45.70</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.5">67.79</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.6">30.96</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.7">17.40</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.8">50.51</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.12.10.9">43.01</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.1">Pre-LN + LayerNorm Scaling</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.2.1">28.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.3">61.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.4"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.4.1">48.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.5"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.5.1">67.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.6"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.6.1">33.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.7"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.7.1">18.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.8"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.8.1">54.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.13.11.9"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.13.11.9.1">44.87</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning various LLaMA models (LLaMA-250M and LLaMA-1B) on eight downstream tasks using different layer normalization techniques.  The table shows the performance improvement (measured as a percentage increase) achieved by using LayerNorm Scaling compared to standard Pre-LN (Pre-Layer Normalization), Post-LN (Post-Layer Normalization), DeepNorm, and Mix-LN.  The results demonstrate the effectiveness of LayerNorm Scaling in enhancing fine-tuning performance across different model sizes and tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Fine-tuning performance (↑↑\uparrow↑) of LLaMA with various normalizations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.1">Perplexity (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.2.1">LLaMA-130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.3.1">LLaMA-250M</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S5.T4.1.1.1.2.1.1">Training Tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.1.2.1.2">2.2B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.1.2.1.3">3.9B</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1.3.1.1">Pre-LN</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.3.1.2">26.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.3.1.3">21.92</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.1.4.2.1">+ LayerScale</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1.4.2.2">27.93</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1.4.2.3">23.45</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.1.5.3.1">+ Scaled Initialization</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1.5.3.2">26.04</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1.5.3.3">20.98</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.1.6.4.1">+ LayerNorm Scaling</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.6.4.2.1">25.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.6.4.3.1">20.35</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of LayerNorm Scaling against other scaling methods (LayerScale and Scaled Initialization) in terms of perplexity on the LLaMA-130M and LLaMA-250M models.  It highlights the impact of different scaling techniques on model performance during pre-training, showing how LayerNorm Scaling achieves lower perplexity compared to the baselines.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison against other scaling methods.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05795/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05795/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}