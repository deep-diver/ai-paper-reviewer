---
title: "You Do Not Fully Utilize Transformer's Representation Capacity"
summary: "Boosting Transformer performance, Layer-Integrated Memory (LIMe) enhances representation capacity by enabling access to earlier layers' hidden states, significantly improving performance across variou..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 T-Tech HSE University Moscow Institute of Physics and Technology",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09245 {{< /keyword >}}
{{< keyword icon="writer" >}} Gleb Gerasimov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09245" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09245" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09245/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Standard Transformer models suffer from **representation collapse**, where lengthy sequences lead to loss of subtle information due to compression within each layer's single residual stream. This limits their ability to capture complex patterns and achieve optimal performance.  The issue is particularly pronounced when dealing with long sequences or tasks requiring fine-grained distinctions between similar inputs.



To tackle this problem, researchers propose **Layer-Integrated Memory (LIMe)**, a method that expands the model's representational capacity while maintaining its overall memory footprint. LIMe allows access to hidden states from previous layers through a learned routing mechanism. Extensive experiments across diverse architectures and lookup mechanisms demonstrate LIMe's consistent performance improvements. Analyses reveal how LIMe efficiently integrates information across layers, suggesting promising research directions for building deeper and more robust Transformer models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LIMe consistently outperforms standard Transformers and other state-of-the-art modifications across various tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LIMe effectively counters representation collapse by preserving higher entropy in deeper layers and increasing overall representational diversity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LIMe's depthwise circuits reveal how crucial information from earlier layers are seamlessly reintroduced in later layers, yielding richer and more interpretable internal representations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical issue of representation collapse in Transformer models**, a significant limitation hindering progress in various AI applications.  By introducing a novel solution, LIMe, it offers **significant performance improvements** and unveils **new avenues for building deeper and more robust Transformer models.** This is directly relevant to the current push for more efficient and effective large language models, making it highly significant for researchers in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09245/x1.png)

> 🔼 The figure shows the training loss as a function of FLOPs (floating point operations) for three different language models: Llama, Static LIMe, and Dynamic LIMe.  FLOPs are a measure of computational cost. The plot demonstrates that both Static LIMe and Dynamic LIMe achieve significantly lower training loss compared to Llama, while maintaining a similar level of computational cost (FLOPs). This indicates that LIMe, a modification to the standard transformer architecture, improves training efficiency by better utilizing the model's representational capacity.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training loss per FLOPs for Llama, Static LIMe, and Dynamic LIMe. LIMe has a substantially lower loss with a similar amount of FLOPs. See Section 5.1 for more details.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.8.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.2.1" style="font-size:90%;">ARC-E</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.3.1" style="font-size:90%;">ARC-C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.4.1" style="font-size:90%;">Winogrande</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.5.1" style="font-size:90%;">COPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.6.1" style="font-size:90%;">MultiRC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.7.1" style="font-size:90%;">RTE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.8.1" style="font-size:90%;">HellaSwag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_rr ltx_border_tt" id="S3.T1.8.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.9.1" style="font-size:90%;">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T1.8.1.1.10.1" style="font-size:90%;">Avg</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.8.2.1">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.8.2.1.1"><span class="ltx_text" id="S3.T1.8.2.1.1.1" style="font-size:90%;">LLaMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.2"><span class="ltx_text" id="S3.T1.8.2.1.2.1" style="font-size:90%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.3"><span class="ltx_text" id="S3.T1.8.2.1.3.1" style="font-size:90%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.4"><span class="ltx_text" id="S3.T1.8.2.1.4.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.5"><span class="ltx_text" id="S3.T1.8.2.1.5.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.6"><span class="ltx_text" id="S3.T1.8.2.1.6.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.7"><span class="ltx_text" id="S3.T1.8.2.1.7.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.8"><span class="ltx_text" id="S3.T1.8.2.1.8.1" style="font-size:90%;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S3.T1.8.2.1.9"><span class="ltx_text" id="S3.T1.8.2.1.9.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.10"><span class="ltx_text" id="S3.T1.8.2.1.10.1" style="font-size:90%;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.3.2">
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.8.3.2.1"><span class="ltx_text" id="S3.T1.8.3.2.1.1" style="font-size:90%;">HC</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.2"><span class="ltx_text" id="S3.T1.8.3.2.2.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.3"><span class="ltx_text" id="S3.T1.8.3.2.3.1" style="font-size:90%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.4"><span class="ltx_text" id="S3.T1.8.3.2.4.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.5"><span class="ltx_text" id="S3.T1.8.3.2.5.1" style="font-size:90%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.6"><span class="ltx_text" id="S3.T1.8.3.2.6.1" style="font-size:90%;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.7"><span class="ltx_text" id="S3.T1.8.3.2.7.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.8"><span class="ltx_text" id="S3.T1.8.3.2.8.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.3.2.9"><span class="ltx_text ltx_font_bold" id="S3.T1.8.3.2.9.1" style="font-size:90%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.10"><span class="ltx_text" id="S3.T1.8.3.2.10.1" style="font-size:90%;">57.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.3">
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.8.4.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.1.1" style="font-size:90%;">LIMe Dynamic</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.2.1" style="font-size:90%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.3.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.4"><span class="ltx_text" id="S3.T1.8.4.3.4.1" style="font-size:90%;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.5.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.6"><span class="ltx_text" id="S3.T1.8.4.3.6.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.7"><span class="ltx_text" id="S3.T1.8.4.3.7.1" style="font-size:90%;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.8.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.4.3.9"><span class="ltx_text" id="S3.T1.8.4.3.9.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.10"><span class="ltx_text ltx_font_bold" id="S3.T1.8.4.3.10.1" style="font-size:90%;">58.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.5.4">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S3.T1.8.5.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.8.5.4.1.1" style="font-size:90%;">LIMe Static</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.2"><span class="ltx_text" id="S3.T1.8.5.4.2.1" style="font-size:90%;">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.3"><span class="ltx_text" id="S3.T1.8.5.4.3.1" style="font-size:90%;">39.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.8.5.4.4.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.5"><span class="ltx_text" id="S3.T1.8.5.4.5.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.8.5.4.6.1" style="font-size:90%;">43.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.7"><span class="ltx_text ltx_font_bold" id="S3.T1.8.5.4.7.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.8"><span class="ltx_text" id="S3.T1.8.5.4.8.1" style="font-size:90%;">53.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S3.T1.8.5.4.9"><span class="ltx_text" id="S3.T1.8.5.4.9.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.5.4.10"><span class="ltx_text" id="S3.T1.8.5.4.10.1" style="font-size:90%;">58.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of several language models on the LM Evaluation Harness benchmark.  The models compared are LLaMA, HyperConnections, LIMe Static, and LIMe Dynamic, all with approximately 1.2 billion parameters.  The benchmark evaluates performance across various tasks using only one example per task (num-fewshots=1).  The table shows the accuracy (in percentage) for each model on each task. The final column presents the average accuracy across all tasks, demonstrating that the proposed LIMe methods (LIMe Static and LIMe Dynamic) outperform the baselines (LLaMA and HyperConnections).
> <details>
> <summary>read the caption</summary>
> Table 1: LM Evaluation Harness benchmarks (accuracies in %) on 1.2B models with num-fewshots 1. The rightmost column shows average accuracy across the tasks. Proposed methods outperform both LLaMA and HyperConnections (Zhu et al., 2024) baselines. See Section 5.1 for more details.
> </details>





### In-depth insights


#### Transformer Limits
**Transformer limitations** primarily stem from their inherent architecture.  While highly effective at capturing long-range dependencies, the reliance on self-attention mechanisms leads to computational costs that scale quadratically with sequence length.  **Memory limitations** restrict the length of sequences that can be effectively processed.  Furthermore, **representational collapse**, where distinct input tokens become indistinguishable in deeper layers, can significantly hinder performance.  **Training instability** is another concern, particularly in very deep models.  Finally, the inherent **difficulty in interpreting** the internal representations learned by Transformers poses a challenge for understanding their decision-making processes and improving model interpretability.

#### LIMe: Multi-Layer
The proposed LIMe (Layer-Integrated Memory) model introduces a novel multi-layer approach to Transformer architecture.  **Instead of relying solely on the previous layer's representations, LIMe incorporates information from all preceding layers**, enriching the contextual understanding and mitigating representation collapse.  This is achieved through a learnable router mechanism that efficiently combines multi-layer features for both keys and values in the self-attention mechanism.  The method's effectiveness stems from its ability to prevent information squishing and preserve crucial details across layers.  **LIMe's dynamic router offers even greater flexibility by allowing per-token adaptation of the information blend,** leading to improved performance and richer, more interpretable internal representations.  **By decoupling context storage from the single residual stream, LIMe unlocks the potential for building deeper and more robust Transformers**, opening new avenues for architectural innovations that exploit the full representational capacity of the model.

#### Representation Gain
The concept of "Representation Gain" in the context of the provided research paper likely refers to the **performance improvements** achieved by enhancing the model's ability to represent information.  The paper likely demonstrates that standard transformers underutilize their representational capacity by focusing solely on the immediately preceding layer's hidden states. The proposed LIMe method directly addresses this limitation by introducing a mechanism that allows the model to access and integrate information from earlier layers, effectively expanding its representational capacity.  This leads to improved performance across various tasks, as shown in the experimental results.  The key to the representation gain lies in the **mitigation of representation collapse**, a phenomenon where distinct features become indistinguishable in deeper layers due to information compression.  By leveraging multi-layer memory, LIMe preserves higher entropy and enhances overall representation diversity, resulting in significantly improved model performance.

#### Depthwise Circuits
The concept of "Depthwise Circuits" in the context of a Transformer-based language model suggests an examination of how information flows and is processed across different layers.  It implies a focus on the **specific pathways** of information, rather than just the overall transformation. Analyzing depthwise circuits could reveal crucial insights into how the model learns and integrates information from earlier layers, leading to improved performance. **Identifying recurring patterns** within these circuits could unveil the model's underlying decision-making processes, providing interpretability.  The analysis might reveal **specialized circuits** for handling specific linguistic features such as morphology or syntax.  For example, a circuit might be dedicated to processing morphological information from early layers or syntactic relationships across multiple layers. This approach helps uncover how a Transformer model leverages its multi-layered structure for effective information integration.

#### Future: Deeper LMs
The prospect of "Future: Deeper LMs" is exciting yet challenging.  The success of current large language models (LLMs) hinges on their scale, but simply increasing depth isn't a guaranteed path to improvement.  **Representation collapse**, where subtle distinctions between tokens are lost in deeper layers, is a significant hurdle.  Addressing this requires innovative architectural solutions beyond simply stacking more layers.  **Methods like LIMe**, which explicitly integrate information from earlier layers, offer a promising direction.  However, even with such methods, **memory and computational costs increase exponentially with depth**. Strategies to mitigate this are crucial, including exploring more efficient attention mechanisms, advanced pruning techniques, and potentially, novel training paradigms.  Ultimately, the future of deeper LMs depends on finding a balance between enhanced representation capacity, manageable resource requirements, and interpretability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09245/x2.png)

> 🔼 This figure displays the average weights assigned by each head in later layers (r) to representations from previous layers (m) in both the static and dynamic versions of the LIMe model.  In the later layers of both models, there's a greater tendency to retrieve information from earlier layers than from the immediately preceding layer.  This is more pronounced in the dynamic LIMe model, where there's a noticeable peak in the weight given to the very first layer.
> <details>
> <summary>read the caption</summary>
> Figure 2: Mean retrieval weight for each representation (m𝑚mitalic_m) among later layers (r𝑟ritalic_r). In both cases, in the last layers, models tend to retrieve information from previous layers rather than from the current one. In the case of Dynamic LIMe, there is a clear bump in retrieving from the first layer. See Section 5.2 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x3.png)

> 🔼 Figure 3 visualizes the self-retrieval weights for each attention head in both Static and Dynamic LIMe models across different layers.  The heatmaps show the relative importance each head assigns to its own layer's representation (self-retrieval) versus representations from earlier layers.  In the middle layers, both models generally prioritize the immediately preceding layer's output. However, as we move towards deeper layers, self-retrieval weight decreases for most heads, indicating that they increasingly incorporate information from earlier layers.  This suggests a refinement process where earlier representations (low-level features) are re-introduced to refine the model's output.  Importantly, the figure highlights that Dynamic LIMe's initial layers show a stronger reliance on earlier layer representations, likely due to sequence conditioning influencing how it prioritizes information.
> <details>
> <summary>read the caption</summary>
> Figure 3: Self Retrieval weights for each head of Static and Dynamic LIMe. Both models assign higher weights to the latest representation in the middle layers, but tend to retrieve lower-level features later. The depicted weights decrease significantly in almost all heads, although some of them still use self-retrieval paths, suggesting the outputs’ refinement stage. Moreover, we can see that Dynamic LIMe’s first layers heavily rely on low-level features due to their sequence conditioning. See Section 5.2 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x4.png)

> 🔼 This figure visualizes the average weights assigned by each LIMe layer (r) to representations from previous layers (m).  The x-axis represents the LIMe layer (r), and the y-axis shows the expected retrieved representation (m).  It demonstrates that, regardless of whether a static or dynamic LIMe router is used,  later LIMe layers tend to draw information more heavily from earlier layers than from the immediately preceding layer (m = r-1). This behavior suggests LIMe effectively integrates information from multiple layers, thereby mitigating representation collapse, a phenomenon where distinct features or tokens become indistinguishable in deeper layers.
> <details>
> <summary>read the caption</summary>
> Figure 4: Expected retrieved representation for each LIMe layer (r𝑟ritalic_r). Both static and dynamic variants tend to retrieve information from early layers. See Section 5.2 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x5.png)

> 🔼 This figure displays the matrix entropy of the values (output of the value projection matrix in the multi-head self-attention mechanism) across different layers of three language models: LLaMa, LIMe Static, and LIMe Dynamic.  Matrix entropy is a measure of the diversity of the values; higher entropy suggests a richer and more diverse representation.  The plot shows how entropy changes across layers (x-axis) for each model.  Both LIMe variants exhibit considerably higher entropy across all layers compared to LLaMa, indicating that LIMe models store and maintain significantly more information in their value representations than LLaMa.
> <details>
> <summary>read the caption</summary>
> Figure 5: Values’ matrix entropy on FineWeb Edu subset by layers. Both Dynamic and Static LIMe have more diverse values than LLaMa, which indicates more information stored in LIMe.
> </details>



![](https://arxiv.org/html/2502.09245/x6.png)

> 🔼 This figure visualizes the separation of similar tokens' value representations across different layers in both LIMe and LLaMA models using t-SNE.  In the LIMe model, the representations of similar tokens remain distinct even in deeper layers, indicating preservation of information.  Conversely, in the LLaMA model, the representations of these similar tokens become increasingly mixed and less distinguishable in deeper layers, suggesting a loss of information as the model processes the sequence. This visualization supports the paper's claim that LIMe is more effective at preventing representation collapse than LLaMA.
> <details>
> <summary>read the caption</summary>
> Figure 6: t-SNE of similar tokens’ values among layers. Values obtained from LIMe are separable in later layers, while values in LLaMA become mixed and lose information about tokens. See Section 5.3 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x7.png)

> 🔼 This figure displays the accuracy of a linear classifier trained to distinguish between four closely related words (is, are, was, were) using their value representations from different layers of two language models: LIMe and LLaMA.  The x-axis represents the layer number, and the y-axis shows the classification accuracy.  LIMe consistently achieves near-perfect accuracy (approximately 1.0) in the deeper layers, indicating that its value representations effectively maintain the distinction between these words. In contrast, LLaMA's accuracy is significantly lower, demonstrating that its representation of these words collapses in the deeper layers. This observation confirms that LIMe effectively prevents representation collapse, preserving the fine-grained differences between semantically similar tokens in deeper layers.
> <details>
> <summary>read the caption</summary>
> Figure 7: Values classification accuracy measured with standard deviation over 5 cross-validation folds. Values in later layers obtained from LIMe can be linearly separated with nearly 1.0 accuracy, while accuracy for values from LLaMA is much lower. See Section 5.3 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x8.png)

> 🔼 This figure displays the training loss curves for models with varying depths (32, 64, and 128 layers).  It compares the performance of the LIMe architecture against a baseline model. The results clearly show that LIMe achieves significantly lower training loss than the baseline, particularly for the deeper 128-layer model. This demonstrates LIMe's ability to effectively handle the challenges of training very deep transformer networks.
> <details>
> <summary>read the caption</summary>
> Figure 8: Training losses for deep architectures. The LIMe architecture significantly outperforms the baseline, especially in the case of 128128128128 layers. See Section 5.4 for more details.
> </details>



![](https://arxiv.org/html/2502.09245/x9.png)

> 🔼 Figure 9 analyzes the retrieval weights in a 128-layer LIMe model trained using top-p pruning.  The green curve shows the average weight given to previous layers' representations by each layer, revealing distinct peaks that suggest the model develops multiple, independent information streams in a self-supervised manner.  The orange curve plots the average weight each layer assigns to its own immediately preceding layer's representation (self-attention), which decreases as the network deepens. This decrease, coupled with the peaks in the green curve, indicates three distinct phases of information processing across the layers.
> <details>
> <summary>read the caption</summary>
> Figure 9: Retrieval weights statistics for a 128-layer LIMe model trained with top-p𝑝pitalic_p pruning. The mean retrieval weight from subsequent layers (green curve) displays several distinct peaks, indicating that the model acquires multiple information streams in a self-supervised fashion. The mean self-retrieval weight (orange curve), where 1.0 denotes self-attention, decreases across later layers, forming three consecutive layer groups with different information-processing patterns. See Section 5.4 for further details.
> </details>



![](https://arxiv.org/html/2502.09245/x10.png)

> 🔼 This figure visualizes the average weights assigned by each LIMe layer to its own previous representation (self-retrieval) across all attention heads.  It shows how much each layer relies on its immediate predecessor versus earlier layers.  This helps illustrate how the LIMe mechanism balances the use of recent and past information in different layers of the transformer architecture, contrasting the behavior with standard self-attention.
> <details>
> <summary>read the caption</summary>
> Figure 10: Self Retrieval weights averaged across heads for each LIMe layer.
> </details>



![](https://arxiv.org/html/2502.09245/x11.png)

> 🔼 This figure displays the matrix entropy of hidden states across different layers of three language models: LLaMA, LIMe Static, and LIMe Dynamic, all trained on the FineWeb Edu dataset.  Matrix entropy is a measure of the diversity of representations within a layer; higher entropy suggests more diverse and less collapsed representations.  The plot shows that while LIMe models exhibit slightly lower entropy in some layers compared to LLaMA, this difference is not substantial, and LIMe still demonstrates significant performance gains. The relatively low entropy in later layers of all models may be due to the model compressing information into a smaller number of distinguishable representations, which is not directly correlated with model performance. For details, consult section 5.3 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 11: Hiddens’ matrix entropy on FineWeb Edu subset by layers. We can see that hidden states in LIMe can be not very diverse for the model to provide better performance on language tasks. For details, see Section 5.3.
> </details>



![](https://arxiv.org/html/2502.09245/x12.png)

> 🔼 This figure displays the results of a linear classification experiment performed on hidden states of different language models.  The models being compared are LLaMA, LIMe Static, and LIMe Dynamic.  The x-axis represents the layer depth of the model, and the y-axis represents the accuracy of a classifier trained to distinguish between four closely related tokens ('is', 'are', 'was', 'were').  LLaMa shows higher accuracy in later layers due to stronger linear separability of its hidden states. However, LIMe, particularly the dynamic version, shows a decrease in accuracy in deeper layers. This is attributed to LIMe’s ability to effectively use the full dimensionality of its hidden states for next-token prediction, which makes the states slightly harder to classify linearly.
> <details>
> <summary>read the caption</summary>
> Figure 12: Hidden states classification accuracy measured with standard deviation over 5 cross-validation folds. Although LLaMa’s deeper layers maintain stronger linear separability, LIMe’s hidden states become slightly harder to cluster in later layers due to its ability to smoothly move on to predicting the next token using the full hidden states’ dimensionality.
> </details>



![](https://arxiv.org/html/2502.09245/x13.png)

> 🔼 This figure visualizes the learned weights of both static and dynamic LIMe routers.  The heatmaps show the probability with which each attention head in a given layer attends to the representations from previous layers.  The x-axis represents the previous layer (0 being the embedding layer), and the y-axis represents the layer currently being processed. Each cell's color intensity indicates the attention weight for a specific head and source layer combination. The left shows the static weights (one set of weights per head across all examples), while the right shows dynamic weights (weights computed per token). The visualization allows analysis of how the models integrate information from multiple layers during the processing of a sequence, specifically highlighting differences between static and dynamic routing schemes.
> <details>
> <summary>read the caption</summary>
> Figure 13: Learned static weights and dynamic prior distribution calculated on a subset of Fineweb Edu. Each cell represents retrieval probability for each layer in the specific head.
> </details>



![](https://arxiv.org/html/2502.09245/x14.png)

> 🔼 This figure visualizes the learned weights of the static LIMe router across all 128 layers of a deep transformer model.  Each cell's color intensity represents the weight assigned to a specific previous layer's representation when computing the keys and values for the current layer's self-attention mechanism. The pattern reveals a hierarchical information flow, with repeated, distinct routing patterns suggesting a multi-stage refinement process where information is iteratively processed and combined from various previous layers, rather than solely relying on the immediately preceding layer.
> <details>
> <summary>read the caption</summary>
> Figure 14: All weights for deep static LIMe with 128 layers. We can see explicitly the repeated routing patterns resembling a refinement process.
> </details>



![](https://arxiv.org/html/2502.09245/x15.png)

> 🔼 This figure uses t-SNE to visualize the hidden states of similar tokens (is, are, was, were) across different layers of LLAMA and LIMe.  While both models show some mixing of these tokens in deeper layers, LIMe demonstrates better separation of these tokens in later layers than LLAMA. This is because, unlike LLAMA, LIMe updates hidden states by also attending to previous representations, mitigating the information loss and collapse that occurs in standard transformers. This improvement in separability is consistent with the reduced representation collapse shown by LIMe in section 5.3.
> <details>
> <summary>read the caption</summary>
> Figure 15: t-SNE of similar tokens’ hidden states among layers. Although hidden states are not separable in later layers for both models, unlike LLaMA, LIMe can make updates attending to the previous representations, which leads to high values’ separability. See Section 5.3 for more details.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.4.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.4.1.1.1.1" style="font-size:90%;">L</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.4.1.1.2.1" style="font-size:90%;">R</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.4.1.1.3.1" style="font-size:90%;">H</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.4.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.4.1">
<span class="ltx_p" id="S5.T2.4.1.1.4.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.1.1.4.1.1.1" style="font-size:90%;">Semantic circuit description</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.4.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.5.1">
<span class="ltx_p" id="S5.T2.4.1.1.5.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.1.1.5.1.1.1" style="font-size:90%;">Tokens examples</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.2.1">
<td class="ltx_td ltx_align_right ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.2.1.1"><span class="ltx_text" id="S5.T2.4.2.1.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.2.1.2"><span class="ltx_text" id="S5.T2.4.2.1.2.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.2.1.3"><span class="ltx_text" id="S5.T2.4.2.1.3.1" style="font-size:90%;">23</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.1.4.1">
<span class="ltx_p" id="S5.T2.4.2.1.4.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.2.1.4.1.1.1" style="font-size:90%;">Primarily partial word segments that illustrate English morphological composition.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.1.5.1">
<span class="ltx_p" id="S5.T2.4.2.1.5.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.2.1.5.1.1.1" style="font-size:90%;">lex, ache, isters, ique, ley, elling, ets, ry.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.3.2">
<td class="ltx_td ltx_align_right ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.3.2.1"><span class="ltx_text" id="S5.T2.4.3.2.1.1" style="font-size:90%;">9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.3.2.2"><span class="ltx_text" id="S5.T2.4.3.2.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.3.2.3"><span class="ltx_text" id="S5.T2.4.3.2.3.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.2.4.1">
<span class="ltx_p" id="S5.T2.4.3.2.4.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.3.2.4.1.1.1" style="font-size:90%;">A range of English suffixes or near-suffix fragments that highlight morphological building blocks and transformations.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.2.5.1">
<span class="ltx_p" id="S5.T2.4.3.2.5.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.3.2.5.1.1.1" style="font-size:90%;">ist, ised, ishing, osed, ized, ense, istic, ish, ened, inch.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.3">
<td class="ltx_td ltx_align_right ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.4.3.1"><span class="ltx_text" id="S5.T2.4.4.3.1.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.4.3.2"><span class="ltx_text" id="S5.T2.4.4.3.2.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.4.3.3"><span class="ltx_text" id="S5.T2.4.4.3.3.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.3.4.1">
<span class="ltx_p" id="S5.T2.4.4.3.4.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.4.3.4.1.1.1" style="font-size:90%;">Primarily affixes and stems that indicate morphological processes in English.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.3.5.1">
<span class="ltx_p" id="S5.T2.4.4.3.5.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.4.3.5.1.1.1" style="font-size:90%;">izing, ically, ified, ission, ational, ist, ering.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.5.4">
<td class="ltx_td ltx_align_right ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.5.4.1"><span class="ltx_text" id="S5.T2.4.5.4.1.1" style="font-size:90%;">15</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.5.4.2"><span class="ltx_text" id="S5.T2.4.5.4.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T2.4.5.4.3"><span class="ltx_text" id="S5.T2.4.5.4.3.1" style="font-size:90%;">23</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.5.4.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.4.4.1">
<span class="ltx_p" id="S5.T2.4.5.4.4.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.5.4.4.1.1.1" style="font-size:90%;">A collection of intensifiers, qualifiers, and comparative modifiers that adjust tone and degree in writing.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T2.4.5.4.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.4.5.1">
<span class="ltx_p" id="S5.T2.4.5.4.5.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.5.4.5.1.1.1" style="font-size:90%;">very, various, respective, relatively, highly, latter, largely, particularly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.6.5">
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.4.6.5.1"><span class="ltx_text" id="S5.T2.4.6.5.1.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_r ltx_border_t" id="S5.T2.4.6.5.2"><span class="ltx_text" id="S5.T2.4.6.5.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_r ltx_border_t" id="S5.T2.4.6.5.3"><span class="ltx_text" id="S5.T2.4.6.5.3.1" style="font-size:90%;">18</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S5.T2.4.6.5.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.5.4.1">
<span class="ltx_p" id="S5.T2.4.6.5.4.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.6.5.4.1.1.1" style="font-size:90%;">Primarily subordinating conjunctions and discourse markers for conditions or reasons, illustrating causation, contingency, and contrast.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S5.T2.4.6.5.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.5.5.1">
<span class="ltx_p" id="S5.T2.4.6.5.5.1.1" style="width:199.2pt;"><span class="ltx_text" id="S5.T2.4.6.5.5.1.1.1" style="font-size:90%;">Because, If, Although, While, There, According, Unlike, However, It, Even.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents examples illustrating how Dynamic LIMe learns depthwise circuits. Each row shows a token, the layer (L) generating the query, the level of representation (R) from which the information is drawn, the head (H) used, and a description of the identified semantic circuit. The examples demonstrate that the model selectively accesses earlier layer representations to process specific linguistic features (like suffixes or subordinating conjunctions) without modifying the information before passing it to subsequent layers.
> <details>
> <summary>read the caption</summary>
> Table 2: Table with examples of tokens where semantic circuits activate in Dynamic LIMe. L – layer which makes the query, R – level of queried representation, H – head number. This result indicates that the model learns depthwise circuits to bypass information without change to a further layer. See Section 5.2 for more details.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T3.5.6.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.5.6.1.1.1">Hyperparameter</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.5.6.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.5.6.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T3.5.7.2.1">Optimizer</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.7.2.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.8.3.1">Learning Rate</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.8.3.2">0.001</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.9.4.1">LIMe Router Learning Rate</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.9.4.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.10.5.1">Weight Decay</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.10.5.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.1"><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T3.1.1.1.m1.1"><semantics id="A1.T3.1.1.1.m1.1a"><msub id="A1.T3.1.1.1.m1.1.1" xref="A1.T3.1.1.1.m1.1.1.cmml"><mi id="A1.T3.1.1.1.m1.1.1.2" xref="A1.T3.1.1.1.m1.1.1.2.cmml">β</mi><mn id="A1.T3.1.1.1.m1.1.1.3" xref="A1.T3.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.m1.1b"><apply id="A1.T3.1.1.1.m1.1.1.cmml" xref="A1.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.1.1.1.m1.1.1.1.cmml" xref="A1.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T3.1.1.1.m1.1.1.2.cmml" xref="A1.T3.1.1.1.m1.1.1.2">𝛽</ci><cn id="A1.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="A1.T3.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.2">0.9</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.2.2.1"><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T3.2.2.1.m1.1"><semantics id="A1.T3.2.2.1.m1.1a"><msub id="A1.T3.2.2.1.m1.1.1" xref="A1.T3.2.2.1.m1.1.1.cmml"><mi id="A1.T3.2.2.1.m1.1.1.2" xref="A1.T3.2.2.1.m1.1.1.2.cmml">β</mi><mn id="A1.T3.2.2.1.m1.1.1.3" xref="A1.T3.2.2.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.1.m1.1b"><apply id="A1.T3.2.2.1.m1.1.1.cmml" xref="A1.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.2.2.1.m1.1.1.1.cmml" xref="A1.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T3.2.2.1.m1.1.1.2.cmml" xref="A1.T3.2.2.1.m1.1.1.2">𝛽</ci><cn id="A1.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="A1.T3.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A1.T3.2.2.2">0.95</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.3.3.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="A1.T3.3.3.1.m1.1"><semantics id="A1.T3.3.3.1.m1.1a"><mi id="A1.T3.3.3.1.m1.1.1" xref="A1.T3.3.3.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.1.m1.1b"><ci id="A1.T3.3.3.1.m1.1.1.cmml" xref="A1.T3.3.3.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.1.m1.1d">italic_ϵ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A1.T3.4.4.2"><math alttext="1\times 10^{-8}" class="ltx_Math" display="inline" id="A1.T3.4.4.2.m1.1"><semantics id="A1.T3.4.4.2.m1.1a"><mrow id="A1.T3.4.4.2.m1.1.1" xref="A1.T3.4.4.2.m1.1.1.cmml"><mn id="A1.T3.4.4.2.m1.1.1.2" xref="A1.T3.4.4.2.m1.1.1.2.cmml">1</mn><mo id="A1.T3.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T3.4.4.2.m1.1.1.1.cmml">×</mo><msup id="A1.T3.4.4.2.m1.1.1.3" xref="A1.T3.4.4.2.m1.1.1.3.cmml"><mn id="A1.T3.4.4.2.m1.1.1.3.2" xref="A1.T3.4.4.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T3.4.4.2.m1.1.1.3.3" xref="A1.T3.4.4.2.m1.1.1.3.3.cmml"><mo id="A1.T3.4.4.2.m1.1.1.3.3a" xref="A1.T3.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T3.4.4.2.m1.1.1.3.3.2" xref="A1.T3.4.4.2.m1.1.1.3.3.2.cmml">8</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.4.4.2.m1.1b"><apply id="A1.T3.4.4.2.m1.1.1.cmml" xref="A1.T3.4.4.2.m1.1.1"><times id="A1.T3.4.4.2.m1.1.1.1.cmml" xref="A1.T3.4.4.2.m1.1.1.1"></times><cn id="A1.T3.4.4.2.m1.1.1.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.2">1</cn><apply id="A1.T3.4.4.2.m1.1.1.3.cmml" xref="A1.T3.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.4.4.2.m1.1.1.3.1.cmml" xref="A1.T3.4.4.2.m1.1.1.3">superscript</csymbol><cn id="A1.T3.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.3.2">10</cn><apply id="A1.T3.4.4.2.m1.1.1.3.3.cmml" xref="A1.T3.4.4.2.m1.1.1.3.3"><minus id="A1.T3.4.4.2.m1.1.1.3.3.1.cmml" xref="A1.T3.4.4.2.m1.1.1.3.3"></minus><cn id="A1.T3.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.3.3.2">8</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.4.4.2.m1.1c">1\times 10^{-8}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.4.4.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 8 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.11.6.1">Scheduler</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.11.6.2">cosine</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.12.7.1">Warmup Steps</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.12.7.2">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.5.2">Min LR</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.5.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T3.5.5.1.m1.1"><semantics id="A1.T3.5.5.1.m1.1a"><mrow id="A1.T3.5.5.1.m1.1.1" xref="A1.T3.5.5.1.m1.1.1.cmml"><mn id="A1.T3.5.5.1.m1.1.1.2" xref="A1.T3.5.5.1.m1.1.1.2.cmml">1</mn><mo id="A1.T3.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T3.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A1.T3.5.5.1.m1.1.1.3" xref="A1.T3.5.5.1.m1.1.1.3.cmml"><mn id="A1.T3.5.5.1.m1.1.1.3.2" xref="A1.T3.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T3.5.5.1.m1.1.1.3.3" xref="A1.T3.5.5.1.m1.1.1.3.3.cmml"><mo id="A1.T3.5.5.1.m1.1.1.3.3a" xref="A1.T3.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T3.5.5.1.m1.1.1.3.3.2" xref="A1.T3.5.5.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.5.5.1.m1.1b"><apply id="A1.T3.5.5.1.m1.1.1.cmml" xref="A1.T3.5.5.1.m1.1.1"><times id="A1.T3.5.5.1.m1.1.1.1.cmml" xref="A1.T3.5.5.1.m1.1.1.1"></times><cn id="A1.T3.5.5.1.m1.1.1.2.cmml" type="integer" xref="A1.T3.5.5.1.m1.1.1.2">1</cn><apply id="A1.T3.5.5.1.m1.1.1.3.cmml" xref="A1.T3.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.5.5.1.m1.1.1.3.1.cmml" xref="A1.T3.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A1.T3.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T3.5.5.1.m1.1.1.3.2">10</cn><apply id="A1.T3.5.5.1.m1.1.1.3.3.cmml" xref="A1.T3.5.5.1.m1.1.1.3.3"><minus id="A1.T3.5.5.1.m1.1.1.3.3.1.cmml" xref="A1.T3.5.5.1.m1.1.1.3.3"></minus><cn id="A1.T3.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T3.5.5.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.5.5.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.5.5.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.13.8.1">Mixed Precision</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.13.8.2">bf16</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.14.9.1">Gradient Clipping</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.14.9.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T3.5.15.10.1">Sequence Length</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.15.10.2">2048</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.5.16.11.1">Batch Size</th>
<td class="ltx_td ltx_align_left" id="A1.T3.5.16.11.2">1024</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T3.5.17.12.1">Training Steps</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.5.17.12.2">20,000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the key hyperparameters used during the training process of all the models presented in the paper.  It includes details such as the optimizer used (AdamW), the learning rate for the main model and the specialized LIMe router, weight decay, beta parameters for AdamW, the learning rate scheduler used (cosine), the number of warmup steps, the minimum learning rate, the mixed precision setting used (bf16), the gradient clipping value, the sequence length used during training, the batch size, and the total number of training steps.
> <details>
> <summary>read the caption</summary>
> Table 3: Key training hyperparameters used in all experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1">Parameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.2.2.1">Vocab Size</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.2.2.2">50,257</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.3.3.1">Hidden Size</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.3.3.2">2048</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.4.1">Intermediate Size</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.4.2">8192</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.5.1">Number of Hidden Layers</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.5.2">16</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.6.1">Number of Attention Heads</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.6.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.7.7.1">Tie Word Embeddings</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.7.7.2">True</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the language models used in the experiments: LLaMa, Hyper Connections, and LIMe.  It provides a comparison of key architectural parameters for all three models, all scaled to 1.2 billion parameters. This allows for a direct comparison of their performance in the context of the paper's experiments.
> <details>
> <summary>read the caption</summary>
> Table 4: Model architecture for all variants (LLaMa, Hyper Connections, and LIMe) at the 1.2B scale.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T5.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T5.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.3.1.1.1.1.1">Model Depth</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T5.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T5.3.1.1.1.2.1">Total Router Weights</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T5.3.1.1.1.3.1">Pruned Weights (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T5.3.1.2.1.1">32-layer</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.3.1.2.1.2">7,936</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.3.1.2.1.3">1,845 (23%)</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.3.1.3.2.1">64-layer</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.3.1.3.2.2">32,256</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.1.3.2.3">6,795 (21%)</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T5.3.1.4.3.1">128-layer</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T5.3.1.4.3.2">130,048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.3.1.4.3.3">24,632 (19%)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the number of pruned LIMe Router weights for different model depths when using a top-p pruning strategy of 0.9.  The top-p pruning method sets weights below a certain threshold to zero, effectively reducing computational cost.  Importantly, even with this aggressive pruning, the results in section 5.4 demonstrate that LIMe still outperforms LLaMA in terms of performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Number of pruned LIMe Router’s weights at top-p=0.9𝑝0.9p=0.9italic_p = 0.9 for various model depths. As we can see in deep models’ training results (5.4), retrieval paths pruning does not stop LIMe from being superior compared to LLaMA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T6.16">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.16.15.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T6.16.15.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.16.15.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T6.16.15.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.16.15.1.2.1" style="font-size:90%;"># Parameters (B)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T6.16.15.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.16.15.1.3.1" style="font-size:90%;">FLOPs (T)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A3.T6.16.15.1.4"><span class="ltx_text ltx_font_bold" id="A3.T6.16.15.1.4.1" style="font-size:90%;">Peak Memory Overhead over LLaMA excluding parameters</span></th>
</tr>
<tr class="ltx_tr" id="A3.T6.16.16.2">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="A3.T6.16.16.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="A3.T6.16.16.2.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="A3.T6.16.16.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.16.16.2.4"><span class="ltx_text ltx_font_bold" id="A3.T6.16.16.2.4.1" style="font-size:90%;">Train</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.16.16.2.5"><span class="ltx_text ltx_font_bold" id="A3.T6.16.16.2.5.1" style="font-size:90%;">Inference</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.4.2">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A3.T6.4.2.3"><span class="ltx_text ltx_font_bold" id="A3.T6.4.2.3.1" style="font-size:90%;">LLaMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.3.1.1"><math alttext="1.1767" class="ltx_Math" display="inline" id="A3.T6.3.1.1.m1.1"><semantics id="A3.T6.3.1.1.m1.1a"><mn id="A3.T6.3.1.1.m1.1.1" mathsize="90%" xref="A3.T6.3.1.1.m1.1.1.cmml">1.1767</mn><annotation-xml encoding="MathML-Content" id="A3.T6.3.1.1.m1.1b"><cn id="A3.T6.3.1.1.m1.1.1.cmml" type="float" xref="A3.T6.3.1.1.m1.1.1">1.1767</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.1.1.m1.1c">1.1767</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.1.1.m1.1d">1.1767</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.4.2.2"><math alttext="2.97" class="ltx_Math" display="inline" id="A3.T6.4.2.2.m1.1"><semantics id="A3.T6.4.2.2.m1.1a"><mn id="A3.T6.4.2.2.m1.1.1" mathsize="90%" xref="A3.T6.4.2.2.m1.1.1.cmml">2.97</mn><annotation-xml encoding="MathML-Content" id="A3.T6.4.2.2.m1.1b"><cn id="A3.T6.4.2.2.m1.1.1.cmml" type="float" xref="A3.T6.4.2.2.m1.1.1">2.97</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.2.2.m1.1c">2.97</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.2.2.m1.1d">2.97</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.4.2.4"><span class="ltx_text" id="A3.T6.4.2.4.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.4.2.5"><span class="ltx_text" id="A3.T6.4.2.5.1" style="font-size:90%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.8.6">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T6.8.6.5"><span class="ltx_text ltx_font_bold" id="A3.T6.8.6.5.1" style="font-size:90%;">LIMe Static</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.5.3.1">
<math alttext="1.1768" class="ltx_Math" display="inline" id="A3.T6.5.3.1.m1.1"><semantics id="A3.T6.5.3.1.m1.1a"><mn id="A3.T6.5.3.1.m1.1.1" mathsize="90%" xref="A3.T6.5.3.1.m1.1.1.cmml">1.1768</mn><annotation-xml encoding="MathML-Content" id="A3.T6.5.3.1.m1.1b"><cn id="A3.T6.5.3.1.m1.1.1.cmml" type="float" xref="A3.T6.5.3.1.m1.1.1">1.1768</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.3.1.m1.1c">1.1768</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.3.1.m1.1d">1.1768</annotation></semantics></math><span class="ltx_text" id="A3.T6.5.3.1.1" style="font-size:90%;"> (+0.008%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.6.4.2">
<math alttext="2.98" class="ltx_Math" display="inline" id="A3.T6.6.4.2.m1.1"><semantics id="A3.T6.6.4.2.m1.1a"><mn id="A3.T6.6.4.2.m1.1.1" mathsize="90%" xref="A3.T6.6.4.2.m1.1.1.cmml">2.98</mn><annotation-xml encoding="MathML-Content" id="A3.T6.6.4.2.m1.1b"><cn id="A3.T6.6.4.2.m1.1.1.cmml" type="float" xref="A3.T6.6.4.2.m1.1.1">2.98</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.4.2.m1.1c">2.98</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.4.2.m1.1d">2.98</annotation></semantics></math><span class="ltx_text" id="A3.T6.6.4.2.1" style="font-size:90%;"> (+0.3%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.7.5.3"><math alttext="(L-1)BTHD" class="ltx_Math" display="inline" id="A3.T6.7.5.3.m1.1"><semantics id="A3.T6.7.5.3.m1.1a"><mrow id="A3.T6.7.5.3.m1.1.1" xref="A3.T6.7.5.3.m1.1.1.cmml"><mrow id="A3.T6.7.5.3.m1.1.1.1.1" xref="A3.T6.7.5.3.m1.1.1.1.1.1.cmml"><mo id="A3.T6.7.5.3.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="A3.T6.7.5.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="A3.T6.7.5.3.m1.1.1.1.1.1" xref="A3.T6.7.5.3.m1.1.1.1.1.1.cmml"><mi id="A3.T6.7.5.3.m1.1.1.1.1.1.2" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.1.1.1.2.cmml">L</mi><mo id="A3.T6.7.5.3.m1.1.1.1.1.1.1" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.1.1.1.1.cmml">−</mo><mn id="A3.T6.7.5.3.m1.1.1.1.1.1.3" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.1.1.1.3.cmml">1</mn></mrow><mo id="A3.T6.7.5.3.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="A3.T6.7.5.3.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="A3.T6.7.5.3.m1.1.1.2" xref="A3.T6.7.5.3.m1.1.1.2.cmml">⁢</mo><mi id="A3.T6.7.5.3.m1.1.1.3" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.3.cmml">B</mi><mo id="A3.T6.7.5.3.m1.1.1.2a" xref="A3.T6.7.5.3.m1.1.1.2.cmml">⁢</mo><mi id="A3.T6.7.5.3.m1.1.1.4" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.4.cmml">T</mi><mo id="A3.T6.7.5.3.m1.1.1.2b" xref="A3.T6.7.5.3.m1.1.1.2.cmml">⁢</mo><mi id="A3.T6.7.5.3.m1.1.1.5" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.5.cmml">H</mi><mo id="A3.T6.7.5.3.m1.1.1.2c" xref="A3.T6.7.5.3.m1.1.1.2.cmml">⁢</mo><mi id="A3.T6.7.5.3.m1.1.1.6" mathsize="90%" xref="A3.T6.7.5.3.m1.1.1.6.cmml">D</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.7.5.3.m1.1b"><apply id="A3.T6.7.5.3.m1.1.1.cmml" xref="A3.T6.7.5.3.m1.1.1"><times id="A3.T6.7.5.3.m1.1.1.2.cmml" xref="A3.T6.7.5.3.m1.1.1.2"></times><apply id="A3.T6.7.5.3.m1.1.1.1.1.1.cmml" xref="A3.T6.7.5.3.m1.1.1.1.1"><minus id="A3.T6.7.5.3.m1.1.1.1.1.1.1.cmml" xref="A3.T6.7.5.3.m1.1.1.1.1.1.1"></minus><ci id="A3.T6.7.5.3.m1.1.1.1.1.1.2.cmml" xref="A3.T6.7.5.3.m1.1.1.1.1.1.2">𝐿</ci><cn id="A3.T6.7.5.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="A3.T6.7.5.3.m1.1.1.1.1.1.3">1</cn></apply><ci id="A3.T6.7.5.3.m1.1.1.3.cmml" xref="A3.T6.7.5.3.m1.1.1.3">𝐵</ci><ci id="A3.T6.7.5.3.m1.1.1.4.cmml" xref="A3.T6.7.5.3.m1.1.1.4">𝑇</ci><ci id="A3.T6.7.5.3.m1.1.1.5.cmml" xref="A3.T6.7.5.3.m1.1.1.5">𝐻</ci><ci id="A3.T6.7.5.3.m1.1.1.6.cmml" xref="A3.T6.7.5.3.m1.1.1.6">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.5.3.m1.1c">(L-1)BTHD</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.5.3.m1.1d">( italic_L - 1 ) italic_B italic_T italic_H italic_D</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.6.4"><math alttext="BTHD\;^{(*)}" class="ltx_Math" display="inline" id="A3.T6.8.6.4.m1.1"><semantics id="A3.T6.8.6.4.m1.1a"><mrow id="A3.T6.8.6.4.m1.1.2" xref="A3.T6.8.6.4.m1.1.2.cmml"><mi id="A3.T6.8.6.4.m1.1.2.2" mathsize="90%" xref="A3.T6.8.6.4.m1.1.2.2.cmml">B</mi><mo id="A3.T6.8.6.4.m1.1.2.1" xref="A3.T6.8.6.4.m1.1.2.1.cmml">⁢</mo><mi id="A3.T6.8.6.4.m1.1.2.3" mathsize="90%" xref="A3.T6.8.6.4.m1.1.2.3.cmml">T</mi><mo id="A3.T6.8.6.4.m1.1.2.1a" xref="A3.T6.8.6.4.m1.1.2.1.cmml">⁢</mo><mi id="A3.T6.8.6.4.m1.1.2.4" mathsize="90%" xref="A3.T6.8.6.4.m1.1.2.4.cmml">H</mi><mo id="A3.T6.8.6.4.m1.1.2.1b" xref="A3.T6.8.6.4.m1.1.2.1.cmml">⁢</mo><msup id="A3.T6.8.6.4.m1.1.2.5" xref="A3.T6.8.6.4.m1.1.2.5.cmml"><mi id="A3.T6.8.6.4.m1.1.2.5.2" mathsize="90%" xref="A3.T6.8.6.4.m1.1.2.5.2.cmml">D</mi><mrow id="A3.T6.8.6.4.m1.1.1.1.3" xref="A3.T6.8.6.4.m1.1.2.5.cmml"><mo id="A3.T6.8.6.4.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="A3.T6.8.6.4.m1.1.2.5.cmml">(</mo><mo id="A3.T6.8.6.4.m1.1.1.1.1" lspace="0em" mathsize="90%" rspace="0em" xref="A3.T6.8.6.4.m1.1.1.1.1.cmml">∗</mo><mo id="A3.T6.8.6.4.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="A3.T6.8.6.4.m1.1.2.5.cmml">)</mo></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.8.6.4.m1.1b"><apply id="A3.T6.8.6.4.m1.1.2.cmml" xref="A3.T6.8.6.4.m1.1.2"><times id="A3.T6.8.6.4.m1.1.2.1.cmml" xref="A3.T6.8.6.4.m1.1.2.1"></times><ci id="A3.T6.8.6.4.m1.1.2.2.cmml" xref="A3.T6.8.6.4.m1.1.2.2">𝐵</ci><ci id="A3.T6.8.6.4.m1.1.2.3.cmml" xref="A3.T6.8.6.4.m1.1.2.3">𝑇</ci><ci id="A3.T6.8.6.4.m1.1.2.4.cmml" xref="A3.T6.8.6.4.m1.1.2.4">𝐻</ci><apply id="A3.T6.8.6.4.m1.1.2.5.cmml" xref="A3.T6.8.6.4.m1.1.2.5"><csymbol cd="ambiguous" id="A3.T6.8.6.4.m1.1.2.5.1.cmml" xref="A3.T6.8.6.4.m1.1.2.5">superscript</csymbol><ci id="A3.T6.8.6.4.m1.1.2.5.2.cmml" xref="A3.T6.8.6.4.m1.1.2.5.2">𝐷</ci><times id="A3.T6.8.6.4.m1.1.1.1.1.cmml" xref="A3.T6.8.6.4.m1.1.1.1.1"></times></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.8.6.4.m1.1c">BTHD\;^{(*)}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.8.6.4.m1.1d">italic_B italic_T italic_H italic_D start_POSTSUPERSCRIPT ( ∗ ) end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.12.10">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T6.12.10.5"><span class="ltx_text ltx_font_bold" id="A3.T6.12.10.5.1" style="font-size:90%;">LIMe Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.9.7.1">
<math alttext="1.1856" class="ltx_Math" display="inline" id="A3.T6.9.7.1.m1.1"><semantics id="A3.T6.9.7.1.m1.1a"><mn id="A3.T6.9.7.1.m1.1.1" mathsize="90%" xref="A3.T6.9.7.1.m1.1.1.cmml">1.1856</mn><annotation-xml encoding="MathML-Content" id="A3.T6.9.7.1.m1.1b"><cn id="A3.T6.9.7.1.m1.1.1.cmml" type="float" xref="A3.T6.9.7.1.m1.1.1">1.1856</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.9.7.1.m1.1c">1.1856</annotation><annotation encoding="application/x-llamapun" id="A3.T6.9.7.1.m1.1d">1.1856</annotation></semantics></math><span class="ltx_text" id="A3.T6.9.7.1.1" style="font-size:90%;"> (+0.075%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.10.8.2">
<math alttext="3.01" class="ltx_Math" display="inline" id="A3.T6.10.8.2.m1.1"><semantics id="A3.T6.10.8.2.m1.1a"><mn id="A3.T6.10.8.2.m1.1.1" mathsize="90%" xref="A3.T6.10.8.2.m1.1.1.cmml">3.01</mn><annotation-xml encoding="MathML-Content" id="A3.T6.10.8.2.m1.1b"><cn id="A3.T6.10.8.2.m1.1.1.cmml" type="float" xref="A3.T6.10.8.2.m1.1.1">3.01</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.10.8.2.m1.1c">3.01</annotation><annotation encoding="application/x-llamapun" id="A3.T6.10.8.2.m1.1d">3.01</annotation></semantics></math><span class="ltx_text" id="A3.T6.10.8.2.1" style="font-size:90%;"> (+1.3%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.11.9.3"><math alttext="BTH\left(\frac{L(L+1)}{2}-1\right)+(L-1)BTHD" class="ltx_Math" display="inline" id="A3.T6.11.9.3.m1.3"><semantics id="A3.T6.11.9.3.m1.3a"><mrow id="A3.T6.11.9.3.m1.3.3" xref="A3.T6.11.9.3.m1.3.3.cmml"><mrow id="A3.T6.11.9.3.m1.2.2.1" xref="A3.T6.11.9.3.m1.2.2.1.cmml"><mi id="A3.T6.11.9.3.m1.2.2.1.3" mathsize="90%" xref="A3.T6.11.9.3.m1.2.2.1.3.cmml">B</mi><mo id="A3.T6.11.9.3.m1.2.2.1.2" xref="A3.T6.11.9.3.m1.2.2.1.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.2.2.1.4" mathsize="90%" xref="A3.T6.11.9.3.m1.2.2.1.4.cmml">T</mi><mo id="A3.T6.11.9.3.m1.2.2.1.2a" xref="A3.T6.11.9.3.m1.2.2.1.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.2.2.1.5" mathsize="90%" xref="A3.T6.11.9.3.m1.2.2.1.5.cmml">H</mi><mo id="A3.T6.11.9.3.m1.2.2.1.2b" xref="A3.T6.11.9.3.m1.2.2.1.2.cmml">⁢</mo><mrow id="A3.T6.11.9.3.m1.2.2.1.1.1" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.cmml"><mo id="A3.T6.11.9.3.m1.2.2.1.1.1.2" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.cmml">(</mo><mrow id="A3.T6.11.9.3.m1.2.2.1.1.1.1" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.cmml"><mfrac id="A3.T6.11.9.3.m1.1.1" xref="A3.T6.11.9.3.m1.1.1.cmml"><mrow id="A3.T6.11.9.3.m1.1.1.1" xref="A3.T6.11.9.3.m1.1.1.1.cmml"><mi id="A3.T6.11.9.3.m1.1.1.1.3" mathsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.3.cmml">L</mi><mo id="A3.T6.11.9.3.m1.1.1.1.2" xref="A3.T6.11.9.3.m1.1.1.1.2.cmml">⁢</mo><mrow id="A3.T6.11.9.3.m1.1.1.1.1.1" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.cmml"><mo id="A3.T6.11.9.3.m1.1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="A3.T6.11.9.3.m1.1.1.1.1.1.1" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.cmml"><mi id="A3.T6.11.9.3.m1.1.1.1.1.1.1.2" mathsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.2.cmml">L</mi><mo id="A3.T6.11.9.3.m1.1.1.1.1.1.1.1" mathsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.1.cmml">+</mo><mn id="A3.T6.11.9.3.m1.1.1.1.1.1.1.3" mathsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.3.cmml">1</mn></mrow><mo id="A3.T6.11.9.3.m1.1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mn id="A3.T6.11.9.3.m1.1.1.3" mathsize="90%" xref="A3.T6.11.9.3.m1.1.1.3.cmml">2</mn></mfrac><mo id="A3.T6.11.9.3.m1.2.2.1.1.1.1.1" mathsize="90%" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.1.cmml">−</mo><mn id="A3.T6.11.9.3.m1.2.2.1.1.1.1.2" mathsize="90%" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.2.cmml">1</mn></mrow><mo id="A3.T6.11.9.3.m1.2.2.1.1.1.3" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="A3.T6.11.9.3.m1.3.3.3" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.3.cmml">+</mo><mrow id="A3.T6.11.9.3.m1.3.3.2" xref="A3.T6.11.9.3.m1.3.3.2.cmml"><mrow id="A3.T6.11.9.3.m1.3.3.2.1.1" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.cmml"><mo id="A3.T6.11.9.3.m1.3.3.2.1.1.2" maxsize="90%" minsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.cmml">(</mo><mrow id="A3.T6.11.9.3.m1.3.3.2.1.1.1" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.cmml"><mi id="A3.T6.11.9.3.m1.3.3.2.1.1.1.2" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.2.cmml">L</mi><mo id="A3.T6.11.9.3.m1.3.3.2.1.1.1.1" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.1.cmml">−</mo><mn id="A3.T6.11.9.3.m1.3.3.2.1.1.1.3" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.3.cmml">1</mn></mrow><mo id="A3.T6.11.9.3.m1.3.3.2.1.1.3" maxsize="90%" minsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.cmml">)</mo></mrow><mo id="A3.T6.11.9.3.m1.3.3.2.2" xref="A3.T6.11.9.3.m1.3.3.2.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.3.3.2.3" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.3.cmml">B</mi><mo id="A3.T6.11.9.3.m1.3.3.2.2a" xref="A3.T6.11.9.3.m1.3.3.2.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.3.3.2.4" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.4.cmml">T</mi><mo id="A3.T6.11.9.3.m1.3.3.2.2b" xref="A3.T6.11.9.3.m1.3.3.2.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.3.3.2.5" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.5.cmml">H</mi><mo id="A3.T6.11.9.3.m1.3.3.2.2c" xref="A3.T6.11.9.3.m1.3.3.2.2.cmml">⁢</mo><mi id="A3.T6.11.9.3.m1.3.3.2.6" mathsize="90%" xref="A3.T6.11.9.3.m1.3.3.2.6.cmml">D</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.11.9.3.m1.3b"><apply id="A3.T6.11.9.3.m1.3.3.cmml" xref="A3.T6.11.9.3.m1.3.3"><plus id="A3.T6.11.9.3.m1.3.3.3.cmml" xref="A3.T6.11.9.3.m1.3.3.3"></plus><apply id="A3.T6.11.9.3.m1.2.2.1.cmml" xref="A3.T6.11.9.3.m1.2.2.1"><times id="A3.T6.11.9.3.m1.2.2.1.2.cmml" xref="A3.T6.11.9.3.m1.2.2.1.2"></times><ci id="A3.T6.11.9.3.m1.2.2.1.3.cmml" xref="A3.T6.11.9.3.m1.2.2.1.3">𝐵</ci><ci id="A3.T6.11.9.3.m1.2.2.1.4.cmml" xref="A3.T6.11.9.3.m1.2.2.1.4">𝑇</ci><ci id="A3.T6.11.9.3.m1.2.2.1.5.cmml" xref="A3.T6.11.9.3.m1.2.2.1.5">𝐻</ci><apply id="A3.T6.11.9.3.m1.2.2.1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.2.2.1.1.1"><minus id="A3.T6.11.9.3.m1.2.2.1.1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.1"></minus><apply id="A3.T6.11.9.3.m1.1.1.cmml" xref="A3.T6.11.9.3.m1.1.1"><divide id="A3.T6.11.9.3.m1.1.1.2.cmml" xref="A3.T6.11.9.3.m1.1.1"></divide><apply id="A3.T6.11.9.3.m1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.1.1.1"><times id="A3.T6.11.9.3.m1.1.1.1.2.cmml" xref="A3.T6.11.9.3.m1.1.1.1.2"></times><ci id="A3.T6.11.9.3.m1.1.1.1.3.cmml" xref="A3.T6.11.9.3.m1.1.1.1.3">𝐿</ci><apply id="A3.T6.11.9.3.m1.1.1.1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.1.1.1.1.1"><plus id="A3.T6.11.9.3.m1.1.1.1.1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.1"></plus><ci id="A3.T6.11.9.3.m1.1.1.1.1.1.1.2.cmml" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.2">𝐿</ci><cn id="A3.T6.11.9.3.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="A3.T6.11.9.3.m1.1.1.1.1.1.1.3">1</cn></apply></apply><cn id="A3.T6.11.9.3.m1.1.1.3.cmml" type="integer" xref="A3.T6.11.9.3.m1.1.1.3">2</cn></apply><cn id="A3.T6.11.9.3.m1.2.2.1.1.1.1.2.cmml" type="integer" xref="A3.T6.11.9.3.m1.2.2.1.1.1.1.2">1</cn></apply></apply><apply id="A3.T6.11.9.3.m1.3.3.2.cmml" xref="A3.T6.11.9.3.m1.3.3.2"><times id="A3.T6.11.9.3.m1.3.3.2.2.cmml" xref="A3.T6.11.9.3.m1.3.3.2.2"></times><apply id="A3.T6.11.9.3.m1.3.3.2.1.1.1.cmml" xref="A3.T6.11.9.3.m1.3.3.2.1.1"><minus id="A3.T6.11.9.3.m1.3.3.2.1.1.1.1.cmml" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.1"></minus><ci id="A3.T6.11.9.3.m1.3.3.2.1.1.1.2.cmml" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.2">𝐿</ci><cn id="A3.T6.11.9.3.m1.3.3.2.1.1.1.3.cmml" type="integer" xref="A3.T6.11.9.3.m1.3.3.2.1.1.1.3">1</cn></apply><ci id="A3.T6.11.9.3.m1.3.3.2.3.cmml" xref="A3.T6.11.9.3.m1.3.3.2.3">𝐵</ci><ci id="A3.T6.11.9.3.m1.3.3.2.4.cmml" xref="A3.T6.11.9.3.m1.3.3.2.4">𝑇</ci><ci id="A3.T6.11.9.3.m1.3.3.2.5.cmml" xref="A3.T6.11.9.3.m1.3.3.2.5">𝐻</ci><ci id="A3.T6.11.9.3.m1.3.3.2.6.cmml" xref="A3.T6.11.9.3.m1.3.3.2.6">𝐷</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.11.9.3.m1.3c">BTH\left(\frac{L(L+1)}{2}-1\right)+(L-1)BTHD</annotation><annotation encoding="application/x-llamapun" id="A3.T6.11.9.3.m1.3d">italic_B italic_T italic_H ( divide start_ARG italic_L ( italic_L + 1 ) end_ARG start_ARG 2 end_ARG - 1 ) + ( italic_L - 1 ) italic_B italic_T italic_H italic_D</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.12.10.4"><math alttext="LBTH+BTHD\;^{(*)}" class="ltx_Math" display="inline" id="A3.T6.12.10.4.m1.1"><semantics id="A3.T6.12.10.4.m1.1a"><mrow id="A3.T6.12.10.4.m1.1.2" xref="A3.T6.12.10.4.m1.1.2.cmml"><mrow id="A3.T6.12.10.4.m1.1.2.2" xref="A3.T6.12.10.4.m1.1.2.2.cmml"><mi id="A3.T6.12.10.4.m1.1.2.2.2" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.2.2.cmml">L</mi><mo id="A3.T6.12.10.4.m1.1.2.2.1" xref="A3.T6.12.10.4.m1.1.2.2.1.cmml">⁢</mo><mi id="A3.T6.12.10.4.m1.1.2.2.3" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.2.3.cmml">B</mi><mo id="A3.T6.12.10.4.m1.1.2.2.1a" xref="A3.T6.12.10.4.m1.1.2.2.1.cmml">⁢</mo><mi id="A3.T6.12.10.4.m1.1.2.2.4" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.2.4.cmml">T</mi><mo id="A3.T6.12.10.4.m1.1.2.2.1b" xref="A3.T6.12.10.4.m1.1.2.2.1.cmml">⁢</mo><mi id="A3.T6.12.10.4.m1.1.2.2.5" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.2.5.cmml">H</mi></mrow><mo id="A3.T6.12.10.4.m1.1.2.1" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.1.cmml">+</mo><mrow id="A3.T6.12.10.4.m1.1.2.3" xref="A3.T6.12.10.4.m1.1.2.3.cmml"><mi id="A3.T6.12.10.4.m1.1.2.3.2" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.2.cmml">B</mi><mo id="A3.T6.12.10.4.m1.1.2.3.1" xref="A3.T6.12.10.4.m1.1.2.3.1.cmml">⁢</mo><mi id="A3.T6.12.10.4.m1.1.2.3.3" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.3.cmml">T</mi><mo id="A3.T6.12.10.4.m1.1.2.3.1a" xref="A3.T6.12.10.4.m1.1.2.3.1.cmml">⁢</mo><mi id="A3.T6.12.10.4.m1.1.2.3.4" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.4.cmml">H</mi><mo id="A3.T6.12.10.4.m1.1.2.3.1b" xref="A3.T6.12.10.4.m1.1.2.3.1.cmml">⁢</mo><msup id="A3.T6.12.10.4.m1.1.2.3.5" xref="A3.T6.12.10.4.m1.1.2.3.5.cmml"><mi id="A3.T6.12.10.4.m1.1.2.3.5.2" mathsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.5.2.cmml">D</mi><mrow id="A3.T6.12.10.4.m1.1.1.1.3" xref="A3.T6.12.10.4.m1.1.2.3.5.cmml"><mo id="A3.T6.12.10.4.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.5.cmml">(</mo><mo id="A3.T6.12.10.4.m1.1.1.1.1" lspace="0em" mathsize="90%" rspace="0em" xref="A3.T6.12.10.4.m1.1.1.1.1.cmml">∗</mo><mo id="A3.T6.12.10.4.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="A3.T6.12.10.4.m1.1.2.3.5.cmml">)</mo></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.12.10.4.m1.1b"><apply id="A3.T6.12.10.4.m1.1.2.cmml" xref="A3.T6.12.10.4.m1.1.2"><plus id="A3.T6.12.10.4.m1.1.2.1.cmml" xref="A3.T6.12.10.4.m1.1.2.1"></plus><apply id="A3.T6.12.10.4.m1.1.2.2.cmml" xref="A3.T6.12.10.4.m1.1.2.2"><times id="A3.T6.12.10.4.m1.1.2.2.1.cmml" xref="A3.T6.12.10.4.m1.1.2.2.1"></times><ci id="A3.T6.12.10.4.m1.1.2.2.2.cmml" xref="A3.T6.12.10.4.m1.1.2.2.2">𝐿</ci><ci id="A3.T6.12.10.4.m1.1.2.2.3.cmml" xref="A3.T6.12.10.4.m1.1.2.2.3">𝐵</ci><ci id="A3.T6.12.10.4.m1.1.2.2.4.cmml" xref="A3.T6.12.10.4.m1.1.2.2.4">𝑇</ci><ci id="A3.T6.12.10.4.m1.1.2.2.5.cmml" xref="A3.T6.12.10.4.m1.1.2.2.5">𝐻</ci></apply><apply id="A3.T6.12.10.4.m1.1.2.3.cmml" xref="A3.T6.12.10.4.m1.1.2.3"><times id="A3.T6.12.10.4.m1.1.2.3.1.cmml" xref="A3.T6.12.10.4.m1.1.2.3.1"></times><ci id="A3.T6.12.10.4.m1.1.2.3.2.cmml" xref="A3.T6.12.10.4.m1.1.2.3.2">𝐵</ci><ci id="A3.T6.12.10.4.m1.1.2.3.3.cmml" xref="A3.T6.12.10.4.m1.1.2.3.3">𝑇</ci><ci id="A3.T6.12.10.4.m1.1.2.3.4.cmml" xref="A3.T6.12.10.4.m1.1.2.3.4">𝐻</ci><apply id="A3.T6.12.10.4.m1.1.2.3.5.cmml" xref="A3.T6.12.10.4.m1.1.2.3.5"><csymbol cd="ambiguous" id="A3.T6.12.10.4.m1.1.2.3.5.1.cmml" xref="A3.T6.12.10.4.m1.1.2.3.5">superscript</csymbol><ci id="A3.T6.12.10.4.m1.1.2.3.5.2.cmml" xref="A3.T6.12.10.4.m1.1.2.3.5.2">𝐷</ci><times id="A3.T6.12.10.4.m1.1.1.1.1.cmml" xref="A3.T6.12.10.4.m1.1.1.1.1"></times></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.12.10.4.m1.1c">LBTH+BTHD\;^{(*)}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.12.10.4.m1.1d">italic_L italic_B italic_T italic_H + italic_B italic_T italic_H italic_D start_POSTSUPERSCRIPT ( ∗ ) end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.16.14">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="A3.T6.16.14.5"><span class="ltx_text ltx_font_bold" id="A3.T6.16.14.5.1" style="font-size:90%;">HC Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.13.11.1">
<math alttext="1.1771" class="ltx_Math" display="inline" id="A3.T6.13.11.1.m1.1"><semantics id="A3.T6.13.11.1.m1.1a"><mn id="A3.T6.13.11.1.m1.1.1" mathsize="90%" xref="A3.T6.13.11.1.m1.1.1.cmml">1.1771</mn><annotation-xml encoding="MathML-Content" id="A3.T6.13.11.1.m1.1b"><cn id="A3.T6.13.11.1.m1.1.1.cmml" type="float" xref="A3.T6.13.11.1.m1.1.1">1.1771</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.13.11.1.m1.1c">1.1771</annotation><annotation encoding="application/x-llamapun" id="A3.T6.13.11.1.m1.1d">1.1771</annotation></semantics></math><span class="ltx_text" id="A3.T6.13.11.1.1" style="font-size:90%;"> (+0.030%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.14.12.2">
<math alttext="2.98" class="ltx_Math" display="inline" id="A3.T6.14.12.2.m1.1"><semantics id="A3.T6.14.12.2.m1.1a"><mn id="A3.T6.14.12.2.m1.1.1" mathsize="90%" xref="A3.T6.14.12.2.m1.1.1.cmml">2.98</mn><annotation-xml encoding="MathML-Content" id="A3.T6.14.12.2.m1.1b"><cn id="A3.T6.14.12.2.m1.1.1.cmml" type="float" xref="A3.T6.14.12.2.m1.1.1">2.98</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.14.12.2.m1.1c">2.98</annotation><annotation encoding="application/x-llamapun" id="A3.T6.14.12.2.m1.1d">2.98</annotation></semantics></math><span class="ltx_text" id="A3.T6.14.12.2.1" style="font-size:90%;"> (+0.3%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.15.13.3"><math alttext="2LBT[(R-1)D+R(R+2))]" class="ltx_math_unparsed" display="inline" id="A3.T6.15.13.3.m1.1"><semantics id="A3.T6.15.13.3.m1.1a"><mrow id="A3.T6.15.13.3.m1.1b"><mn id="A3.T6.15.13.3.m1.1.1" mathsize="90%">2</mn><mi id="A3.T6.15.13.3.m1.1.2" mathsize="90%">L</mi><mi id="A3.T6.15.13.3.m1.1.3" mathsize="90%">B</mi><mi id="A3.T6.15.13.3.m1.1.4" mathsize="90%">T</mi><mrow id="A3.T6.15.13.3.m1.1.5"><mo id="A3.T6.15.13.3.m1.1.5.1" maxsize="90%" minsize="90%">[</mo><mrow id="A3.T6.15.13.3.m1.1.5.2"><mo id="A3.T6.15.13.3.m1.1.5.2.1" maxsize="90%" minsize="90%">(</mo><mi id="A3.T6.15.13.3.m1.1.5.2.2" mathsize="90%">R</mi><mo id="A3.T6.15.13.3.m1.1.5.2.3" mathsize="90%">−</mo><mn id="A3.T6.15.13.3.m1.1.5.2.4" mathsize="90%">1</mn><mo id="A3.T6.15.13.3.m1.1.5.2.5" maxsize="90%" minsize="90%">)</mo></mrow><mi id="A3.T6.15.13.3.m1.1.5.3" mathsize="90%">D</mi><mo id="A3.T6.15.13.3.m1.1.5.4" mathsize="90%">+</mo><mi id="A3.T6.15.13.3.m1.1.5.5" mathsize="90%">R</mi><mrow id="A3.T6.15.13.3.m1.1.5.6"><mo id="A3.T6.15.13.3.m1.1.5.6.1" maxsize="90%" minsize="90%">(</mo><mi id="A3.T6.15.13.3.m1.1.5.6.2" mathsize="90%">R</mi><mo id="A3.T6.15.13.3.m1.1.5.6.3" mathsize="90%">+</mo><mn id="A3.T6.15.13.3.m1.1.5.6.4" mathsize="90%">2</mn><mo id="A3.T6.15.13.3.m1.1.5.6.5" maxsize="90%" minsize="90%">)</mo></mrow><mo id="A3.T6.15.13.3.m1.1.5.7" maxsize="90%" minsize="90%">)</mo></mrow><mo id="A3.T6.15.13.3.m1.1.6" maxsize="90%" minsize="90%">]</mo></mrow><annotation encoding="application/x-tex" id="A3.T6.15.13.3.m1.1c">2LBT[(R-1)D+R(R+2))]</annotation><annotation encoding="application/x-llamapun" id="A3.T6.15.13.3.m1.1d">2 italic_L italic_B italic_T [ ( italic_R - 1 ) italic_D + italic_R ( italic_R + 2 ) ) ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.16.14.4"><math alttext="BT[(R-1)D+R(R+2))]" class="ltx_math_unparsed" display="inline" id="A3.T6.16.14.4.m1.1"><semantics id="A3.T6.16.14.4.m1.1a"><mrow id="A3.T6.16.14.4.m1.1b"><mi id="A3.T6.16.14.4.m1.1.1" mathsize="90%">B</mi><mi id="A3.T6.16.14.4.m1.1.2" mathsize="90%">T</mi><mrow id="A3.T6.16.14.4.m1.1.3"><mo id="A3.T6.16.14.4.m1.1.3.1" maxsize="90%" minsize="90%">[</mo><mrow id="A3.T6.16.14.4.m1.1.3.2"><mo id="A3.T6.16.14.4.m1.1.3.2.1" maxsize="90%" minsize="90%">(</mo><mi id="A3.T6.16.14.4.m1.1.3.2.2" mathsize="90%">R</mi><mo id="A3.T6.16.14.4.m1.1.3.2.3" mathsize="90%">−</mo><mn id="A3.T6.16.14.4.m1.1.3.2.4" mathsize="90%">1</mn><mo id="A3.T6.16.14.4.m1.1.3.2.5" maxsize="90%" minsize="90%">)</mo></mrow><mi id="A3.T6.16.14.4.m1.1.3.3" mathsize="90%">D</mi><mo id="A3.T6.16.14.4.m1.1.3.4" mathsize="90%">+</mo><mi id="A3.T6.16.14.4.m1.1.3.5" mathsize="90%">R</mi><mrow id="A3.T6.16.14.4.m1.1.3.6"><mo id="A3.T6.16.14.4.m1.1.3.6.1" maxsize="90%" minsize="90%">(</mo><mi id="A3.T6.16.14.4.m1.1.3.6.2" mathsize="90%">R</mi><mo id="A3.T6.16.14.4.m1.1.3.6.3" mathsize="90%">+</mo><mn id="A3.T6.16.14.4.m1.1.3.6.4" mathsize="90%">2</mn><mo id="A3.T6.16.14.4.m1.1.3.6.5" maxsize="90%" minsize="90%">)</mo></mrow><mo id="A3.T6.16.14.4.m1.1.3.7" maxsize="90%" minsize="90%">)</mo></mrow><mo id="A3.T6.16.14.4.m1.1.4" maxsize="90%" minsize="90%">]</mo></mrow><annotation encoding="application/x-tex" id="A3.T6.16.14.4.m1.1c">BT[(R-1)D+R(R+2))]</annotation><annotation encoding="application/x-llamapun" id="A3.T6.16.14.4.m1.1d">italic_B italic_T [ ( italic_R - 1 ) italic_D + italic_R ( italic_R + 2 ) ) ]</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 compares the efficiency of various 1.2B parameter models: the baseline LLaMA model, the proposed LIMe models (both static and dynamic versions), and the Hyper-Connections (HC) model.  The comparison focuses on the number of parameters, FLOPs (floating-point operations), peak memory usage during training, and peak memory usage during inference.  The table highlights that LIMe models have negligible increases in parameters and FLOPs compared to LLaMA, while also showing significantly lower peak memory usage during both training and inference (especially when a key-value cache is used).  Acronyms used are defined: H (number of heads), L (number of layers), T (sequence length), D (hidden dimension), R (Hyper Connections expansion rate).
> <details>
> <summary>read the caption</summary>
> Table 6: Comparing efficiency for all 1.21.21.21.2B models: both Dynamic and Static LIMe enjoy negligible parameter and FLOPs increase, and smaller peak memory than HC during training. When the Key-Value cache is utilized, this memory advantage extends to inference as well (*). H – number of heads, L — number of layers, T — sequence length, D — hidden dimension, R — Hyper Connections (Zhu et al., 2024) expansion rate.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09245/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09245/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}