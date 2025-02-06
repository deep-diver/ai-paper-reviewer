---
title: "Streaming DiLoCo with overlapping communication: Towards a Distributed Free Lunch"
summary: "Streaming DiLoCo achieves two orders of magnitude bandwidth reduction in billion-scale parameter LLM training by synchronizing parameter subsets sequentially, overlapping communication with computatio..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Federated Learning", "🏢 Google DeepMind",]
showSummary: true
date: 2025-01-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18512 {{< /keyword >}}
{{< keyword icon="writer" >}} Arthur Douillard et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18512" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18512" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18512/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training large language models (LLMs) is computationally expensive, requiring high-bandwidth communication across many accelerators. Existing distributed training methods like DiLoCo alleviate co-location constraints but still suffer from high peak bandwidth needs. This creates a significant hurdle to scaling LLM training further.

This paper introduces Streaming DiLoCo, which significantly reduces peak bandwidth needs by synchronizing only subsets of parameters in sequence, rather than all at once.  It also overlaps worker computation with communication, which minimizes downtime and speeds up the process. Lastly, the data exchanged between workers is quantized to further reduce the bandwidth needed.  Through these three contributions, Streaming DiLoCo enables efficient training of billion-scale parameter LLMs with substantially reduced bandwidth requirements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Achieved two orders of magnitude bandwidth reduction in billion-scale parameter LLM training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Improved DiLoCo by synchronizing parameter subsets sequentially, overlapping communication, and using 4-bit quantized gradients. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Showed experimentally that the proposed Streaming DiLoCo outperforms the original DiLoCo and achieves similar performance to data-parallel training at negligible bandwidth. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in distributed machine learning, particularly those working with large language models.  It offers **practical solutions** to overcome major bandwidth limitations, which is a **critical bottleneck** in training massive models. The techniques presented, such as overlapping communication and parameter subset synchronization, are **widely applicable** and pave the way for more efficient and scalable training paradigms. The findings are significant because they demonstrate **substantial bandwidth reduction** while maintaining model performance. This **opens doors** for training even larger and more complex models in the future, advancing the capabilities of AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.18512/x1.png)

> 🔼 The figure illustrates the Streaming DiLoCo algorithm.  It depicts four replicas (M=4), each independently processing their data for a specified number of inner optimization steps. After these steps, instead of synchronizing the entire model parameters, they only synchronize a single fragment (p={1,2,3}) of the parameters. This process repeats iteratively. Each fragment is a subset of layers in the transformer model. Importantly, the diagram only visualizes the streaming partial updates (section 2.2), excluding the quantized communication and overlapping techniques (sections 2.3 and 2.4).
> <details>
> <summary>read the caption</summary>
> Figure 1: Streaming DiLoCo: each replica trains independently for dozen of inner optimization steps, and then synchronize a single fragment during outer optimization. In this figure, there are M=4𝑀4M=4italic_M = 4 replicas with p={1,2,3}𝑝123p=\{1,2,3\}italic_p = { 1 , 2 , 3 } fragments. Each fragment can be made of several transformer layers. Note that this figure only showcases the streaming partial updates (subsection 2.2) and not the quantized communication overlapping (subsection 2.3 and 2.4).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.5.5.5.6">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.7">Token Budget</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1">Hours spent w/ <math alttext="+\infty" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mo id="S3.T1.1.1.1.1.m1.1.1a" xref="S3.T1.1.1.1.1.m1.1.1.cmml">+</mo><mi id="S3.T1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">∞</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><plus id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"></plus><infinity id="S3.T1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.2"></infinity></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">+\infty</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">+ ∞</annotation></semantics></math> Gbits/s</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.8">Hours spent w/ 1 Gbits/s</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.5.5.5.9">Terabytes exchanged</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2.2">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3.3">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4.4">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.5">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.5.5.6.1.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.5.6.1.1.1">Data-Parallel</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.3">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.4">109</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.6.1.5">441</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.6">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.7.1">42.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.8">67.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.9"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.9.1">40.42</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.7.2">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.1">100B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.2">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.3">438</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.7.2.4">1,767</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.5">2.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.6">49.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.7">69.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.7.2.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.7.2.8.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.8.3">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.1">250B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.2">6.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.3">1097</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.8.3.4">4,418</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.8.3.5.1">2.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.6">53.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.7">70.45</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.8.3.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.8.3.8.1">44.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.9.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.5.5.9.4.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.5.9.4.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.5.5.9.4.1.1.1" style="width:99.6pt;">
<span class="ltx_p" id="S3.T1.5.5.9.4.1.1.1.1">Streaming DiLoCo</span>
<span class="ltx_p ltx_align_center" id="S3.T1.5.5.9.4.1.1.1.2">with overlapped FP4 communication</span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.3">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.4">0.88</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.9.4.5">1.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.9.4.6.1">2.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.7">42.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.9.4.8.1">67.46</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.9">38.42</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.10.5">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.1">100B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.2">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.3">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.10.5.4">4.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.5.1">2.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.6.1">49.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.7.1">69.96</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.10.5.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.8.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.11.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.1">250B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.2">6.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.3">8.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.5.11.6.4">11.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.5.1">2.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.6.1">54.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.7.1">71.38</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.5.11.6.8">41.92</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of Data-Parallel and Streaming DiLoCo on the Dolma dataset when training a 1 billion parameter model.  It highlights Streaming DiLoCo's superior performance despite using significantly less communication bandwidth (400 times fewer bits and 8 times lower peak bandwidth).  A key advantage of Streaming DiLoCo is its relaxed communication latency constraint; it allows for communication delays equal to a full compute step.
> <details>
> <summary>read the caption</summary>
> Table 1: Overtraining Data-Parallel and our method on Dolma with a 1 billion parameters model. The latter performs slightly better despite exchanging in total 400×400\times400 × fewer bits, reducing the peak bandwidth by 8×8\times8 ×, and with a significantly relaxed training communication latency constraint: allow communication to be as long as a full compute step.
> </details>





### In-depth insights


#### DiLoCo's Streaming
DiLoCo's Streaming introduces a novel approach to distributed training of large language models (LLMs) by synchronizing only subsets of parameters sequentially, rather than all at once.  This significantly reduces peak bandwidth requirements, a major bottleneck in large-scale LLM training.  **Overlapping communication with computation** further enhances efficiency by allowing concurrent training and synchronization, minimizing idle time.  The method also employs **low-precision quantization** of exchanged gradients to further reduce bandwidth demands.  These combined optimizations enable training of billion-scale parameter models with significantly reduced bandwidth—two orders of magnitude lower—while maintaining comparable learning quality.  **The technique is shown to be robust**, performing well across various model scales and hyperparameter settings, and even with heterogeneous worker environments.  The results suggest that this approach, which efficiently manages communication overhead, represents a significant step towards a distributed free lunch scenario—achieving high performance at minimal communication costs.

#### Overlapping Comm.
The concept of "Overlapping Comm." in a distributed deep learning context likely refers to techniques that **overlap communication and computation** to improve training efficiency.  Traditional approaches often stall computation while waiting for data transfers between nodes, leading to idle time. Overlapping communication cleverly schedules communication tasks concurrently with computation, effectively minimizing idle time and reducing overall training time. **Careful scheduling and efficient communication protocols** are crucial for successful implementation; otherwise, overlapping might lead to performance degradation due to contention or resource conflicts.  This approach is particularly beneficial for large-scale models where communication overheads become significant, offering a **path towards a "distributed free lunch"** by achieving similar results with substantially lower communication costs. The success of overlapping relies on minimizing communication latency and maximizing computational throughput, and might involve techniques like pipelining, asynchronous operations, or specialized hardware.

#### Quantization Effects
The heading 'Quantization Effects' in a research paper likely explores how reducing the precision of numerical representations (e.g., from 32-bit floating-point to 4-bit) impacts the overall model performance and training process.  **A key focus would be the trade-off between reduced computational cost (memory and bandwidth) and potential loss in accuracy.**  The analysis might involve experiments comparing models trained with different quantization levels, examining metrics like model accuracy, training speed, and convergence behavior. The results section would likely discuss whether the benefits of reduced resource usage outweigh the costs of decreased accuracy.  **A detailed breakdown of the impact on various model components (e.g., weights, activations, gradients) is crucial.** The paper may also investigate different quantization techniques and their relative effectiveness, as well as methods for mitigating the negative impacts of quantization.  **The findings could offer valuable insights for optimizing large-scale models where memory and computational constraints are significant.** Ultimately, the goal is to determine the optimal quantization level that balances accuracy and efficiency for a specific application.

#### LLM Scaling Tests
LLM scaling tests in research papers typically involve evaluating model performance across various sizes, focusing on how key metrics change with increased scale.  This includes analyzing computational cost, memory usage, and training time as model parameters grow.  **A crucial aspect is assessing whether improvements in performance scale linearly or sublinearly with increased resources.**  The tests should carefully consider the impact of different hardware architectures and training strategies, reporting results on benchmark datasets for various tasks. **Careful consideration of data parallelism strategies is vital in analyzing scaling behavior**, as well as the exploration of techniques to mitigate the communication bottleneck frequently encountered in large-scale training.  Ultimately, LLM scaling tests aim to determine the optimal balance between model size and performance, providing valuable insights into the efficiency and cost-effectiveness of different training approaches and informing future LLM development.

#### Future Work
The authors propose several avenues for future research.  **Scaling the number of DiLoCo replicas** efficiently is crucial, especially considering the impact on token budget and overall training efficiency.  They also highlight the potential of **co-designing architectures and training paradigms**, leveraging the reduced communication overhead to explore new parallelisms. This could include techniques like **modular constellations of smaller models** that leverage compute arbitrage across heterogeneous devices globally. The study of how to effectively **tune and scale new distributed methods** for large language models, especially under realistic constraints like variable device speeds and heterogeneous infrastructure, is also highlighted as a key area to further investigate. Finally, the impact of these techniques in **training different types of models** (other than LLMs) warrants exploration.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.18512/x2.png)

> 🔼 This figure illustrates two different methods for partitioning model parameters into fragments during training.  The left panel depicts a sequential pattern where consecutive layers of the model are grouped into a single fragment. The right panel shows a strided pattern where layers are interleaved across different fragments. In both cases, only one fragment is synchronized at a time, improving communication efficiency by reducing the amount of data transferred during each synchronization step. The color-coding visually distinguishes different fragments within the model architecture. Each fragment is synchronized independently at a time, and different fragments get synchronized at each step.
> <details>
> <summary>read the caption</summary>
> Figure 2: Streaming pattern: sequential (left) and strided (right). Colors denotes the fragment. A different fragment is synchronized each time.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_1b.png)

> 🔼 This figure displays a schedule where forward and backward passes are interleaved, along with outer gradient reduction. This interleaving is done for computation and communication overlap, a key technique in the paper. Forward passes are shown in blue, backward passes w.r.t. activations are in light green, backward passes w.r.t. parameters are in dark green, and gradient reduction is in purple. Each color represents a different stage in the process, and the interleaving helps to improve compute utilization by overlapping communication with computation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Simulation of a schedule interleaving forward passes (in blue), backward passes w.r.t. activations and parameters (resp. in light and dark green), and (outer) gradient reduction (in purple).
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_10b.png)

> 🔼 This figure shows the compute utilization simulated across a range of bandwidth for a model with 1 billion parameters.  Compute utilization is a measure of the percentage of time spent on computation versus communication. A higher compute utilization indicates more efficient use of resources. The figure illustrates how the compute utilization varies as WAN (Wide Area Network) bandwidth increases. It also compares different methods (Data-Parallel, vanilla DiLoCo, Streaming DiLoCo, and Streaming DiLoCo with overlapping communication). This allows for an assessment of the communication efficiency of each method in relation to the available bandwidth.  The graph shows that Streaming DiLoCo (with overlapping communication) has significantly higher compute utilization across the bandwidth range compared to the other methods, indicating that it uses resources more efficiently.
> <details>
> <summary>read the caption</summary>
> (a) 1B parameters model.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b.png)

> 🔼 This figure shows the compute utilization for a 10 billion parameter model across various bandwidths. Compute utilization is a measure of how much time is spent on actual computation versus communication.  A higher compute utilization indicates better efficiency, with more time spent on productive computation and less time waiting for data transfer. The graph displays how the compute utilization improves as the available bandwidth increases, reaching nearly 95% utilization in the optimal bandwidth range.
> <details>
> <summary>read the caption</summary>
> (b) 10B parameters model
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/scaling_loss.png)

> 🔼 This figure displays the compute utilization for a 100 billion parameter model across a range of bandwidth.  Compute utilization is a measure of the percentage of time spent in computation versus communication.  A higher compute utilization indicates that the model is spending more time performing computations and less time waiting for communication to complete. The graph shows how different methods (Data-Parallel, Vanilla DiLoCo, and variations of Streaming DiLoCo) achieve different compute utilization rates as the bandwidth changes.
> <details>
> <summary>read the caption</summary>
> (c) 100B parameters model
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/scaling_hellaswag.png)

> 🔼 This figure displays the compute utilization results for various deep learning model training methods across a range of bandwidths. Compute utilization represents the proportion of time dedicated to computation versus communication.  A higher compute utilization indicates greater efficiency.  The results show that the proposed 'Streaming DiLoCo' method achieves significantly higher compute utilization (approximately 95%) compared to the data-parallel baseline, especially at larger model sizes (1B, 10B, and 100B parameters).  Importantly, Streaming DiLoCo achieves this high utilization with a considerably lower bandwidth (between 1 and 5 Gbit/s), whereas Data-Parallel requires much higher bandwidths (100, 200, and 300 Gbit/s). This demonstrates the effectiveness of Streaming DiLoCo in reducing communication overhead while maintaining computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Compute Utilization simulated across a range of bandwidth. A compute utilization of 0.8 means 80% of the time is spent in computation, and 20% in communication. Our best method reaches a compute utilization of 95% for models 1B, 10B, and 100B with a bandwidth roughly constant between 1 and 5 Gbit/s. Data-Parallel on the other hand requires 100, 200, and 300Gbit/s.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/fragment_size_loss.png)

> 🔼 This figure shows the evaluation loss on the C4 dataset for different models and training methods. The x-axis represents the total number of training flops, and the y-axis shows the evaluation loss.  It compares the performance of Data-Parallel, DiLoCo with 30 inner steps, Streaming DiLoCo with 30 inner steps, and Streaming DiLoCo with 100 inner steps across various model sizes. The plot visualizes how the loss decreases as the amount of computation (flops) increases for each method and illustrates the relative performance of each approach in large-scale language model training.
> <details>
> <summary>read the caption</summary>
> (a) Evaluation loss on C4
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/fragment_size_bandwidth.png)

> 🔼 This figure shows the HellaSwag accuracy for different compression methods applied to the outer gradients.  It compares the performance using different levels of compression, including various forms of value dropping (FedDropout, Dare, and Top-k) and lower-precision floating-point numbers (fp4, fp8, and bf16). The x-axis represents the level of compression, and the y-axis shows the HellaSwag accuracy. The graph allows for the comparison of accuracy loss across different compression techniques and helps to determine the optimal trade-off between bandwidth reduction and model performance.
> <details>
> <summary>read the caption</summary>
> (b) HellaSwag accuracy
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b_stride.png)

> 🔼 This figure shows the results of scaling experiments on the C4 dataset, training language models with sizes ranging from 35 million parameters to 4 billion parameters.  The x-axis represents the total number of training FLOPs (floating point operations), which is a measure of computational work. The y-axis of the left-hand plot shows the evaluation loss on the C4 dataset, while the y-axis of the right-hand plot shows the HellaSwag accuracy. Lower evaluation loss and higher HellaSwag accuracy indicate better model performance. The plot demonstrates how different methods (Data-Parallel, DiLoCo, and Streaming DiLoCo) perform as model size increases.  It illustrates the scaling behavior and the relative performance of the methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Scaling models from 35M (1.49e17 flops) to 4B parameters (2e21 flops) on C4.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/num_overlap.png)

> 🔼 This figure shows the effect of varying the number of layers per fragment on the evaluation loss for the C4 dataset.  The x-axis represents the number of layers per fragment, and the y-axis represents the evaluation loss.  Two different fragment patterns (sequential and strided) are compared, showing the trade-off between performance and peak bandwidth reduction.  The figure helps to determine the optimal fragment size for balancing these factors.
> <details>
> <summary>read the caption</summary>
> (a) C4 eval loss
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b_async.png)

> 🔼 This figure shows the peak bandwidth reduction achieved by varying the fragment size in the Streaming DiLoCo model.  Smaller fragment sizes lead to lower peak bandwidth requirements because synchronization happens more frequently, but on smaller subsets of parameters.  The trade-off is explored, showing the impact of fragment size on bandwidth reduction.
> <details>
> <summary>read the caption</summary>
> (b) Peak bandwidth reduction
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/num_overlap_async_between_workers.png)

> 🔼 This figure shows the effect of different fragment sizes on both peak bandwidth and model performance.  The fragment size refers to the number of transformer blocks included in a single fragment during synchronization.  Smaller fragment sizes reduce peak bandwidth but can impact learning dynamics.  After experimentation across various model sizes, the authors determined that a fragment size of 3 layers provided an optimal balance between bandwidth efficiency and model performance. This size was consistently used across all model scales in subsequent experiments.
> <details>
> <summary>read the caption</summary>
> Figure 6: The fragment’s size will determine the peak bandwidth but also the learning dynamics. We choose in practice 3 layers per fragment across all model scales.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/compression_loss.png)

> 🔼 This figure compares the compute utilization of two different fragment patterns (sequential and strided) in the Streaming DiLoCo algorithm for a 100 billion parameter model. Compute utilization represents the percentage of time spent on computation versus communication. The x-axis represents the bandwidth, and the y-axis represents the compute utilization. The plot shows how compute utilization changes with varying bandwidth for both sequential and strided patterns. The strided pattern generally demonstrates better compute utilization, especially at higher bandwidths. This signifies that the strided fragment pattern leads to more efficient use of computing resources during training compared to the sequential pattern, particularly in bandwidth-rich environments.
> <details>
> <summary>read the caption</summary>
> Figure 7: Compute utilization profile of sequential vs strided pattern for a 100 billion parameters model.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/compression_hellaswag.png)

> 🔼 This figure shows the impact of varying the number of inner steps that overlap with communication (τ) on the model's evaluation loss. Two scenarios are tested: α = 0 (no merging of local and global parameters) and α = 0.5 (averaging local and global parameters).  The results show that increasing τ leads to a significant reduction in the required bandwidth for communication, as also shown in Figure 9.
> <details>
> <summary>read the caption</summary>
> Figure 8: Varying the number of overlapped inner steps τ𝜏\tauitalic_τ for α={0,0.5}𝛼00.5\alpha=\{0,0.5\}italic_α = { 0 , 0.5 }. A larger τ𝜏\tauitalic_τ requires a significantly lower bandwidth, see also Figure 9.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/num_replicas.png)

> 🔼 This figure shows how compute utilization changes for a 100-billion parameter model as the number of inner optimization steps (τ) overlapped with communication increases.  The x-axis represents the WAN bandwidth, and the y-axis represents the compute utilization.  Different lines represent different numbers of overlapped steps (τ). The figure aims to demonstrate the impact of overlapping communication and computation on the efficiency of the training process by showing how much time is spent on computation vs. communication.
> <details>
> <summary>read the caption</summary>
> Figure 9: Estimated compute utilization for a 100B model when increasing τ𝜏\tauitalic_τ, the number of inner steps which overlap with communication.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/num_replicas_bsz.png)

> 🔼 This figure shows the impact of overlapping communication with computation on model training.  Specifically, it investigates how varying the number of inner steps (τ2) for the second worker, while keeping the number of inner steps for the first worker (τ1) constant at 1, affects the model's loss.  The alpha parameter (α) is set to 0.5, which represents a mean between using only locally computed updates and globally shared updates for parameter synchronization. The results demonstrate that the model's performance (loss) is robust to increasing τ2, showing minimal degradation when τ2 is less than 5.
> <details>
> <summary>read the caption</summary>
> Figure 10: Varying the number of overlapped inner steps τ2subscript𝜏2\tau_{2}italic_τ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT for the second worker while keeping τ1=1subscript𝜏11\tau_{1}=1italic_τ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = 1. For all data points, α=0.5𝛼0.5\alpha=0.5italic_α = 0.5. Training is very robust for values of τ2subscript𝜏2\tau_{2}italic_τ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT less than 5.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/num_inner_steps.png)

> 🔼 The figure shows the evaluation loss on the C4 dataset for various model sizes, ranging from 35 million to 4 billion parameters.  Different training methods are compared: Data-Parallel, DiLoCo, and Streaming DiLoCo with different numbers of inner optimization steps (H) and inner communication overlap (τ).  The x-axis represents the total number of training FLOPs, illustrating the scaling behavior of each method. The y-axis shows the evaluation loss, indicating the model's performance in terms of prediction error.
> <details>
> <summary>read the caption</summary>
> (a) C4 evaluation loss
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b_1s.png)

> 🔼 This figure shows the HellaSwag accuracy results for different compression methods applied to the outer gradients during communication.  It compares the performance of using lower-precision floating-point numbers (fp4, fp8) and value-dropping methods (FedDropout, Dare, Top-k) to the baseline of using full-precision (fp32). The x-axis represents the compression rate, and the y-axis represents the HellaSwag accuracy.  The results indicate the impact of different compression techniques on the model's performance in a downstream task, demonstrating that reducing the precision of communication does not significantly affect accuracy at the billion-scale parameter model size.
> <details>
> <summary>read the caption</summary>
> (b) HellaSwag accuracy
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b_5s.png)

> 🔼 This figure displays the results of ablating the effect of compressing outer gradients by either dropping values (using FedDropout and Dare methods) or using lower-precision floating point numbers (FP4, FP8, BF16).  The left panel shows the evaluation loss on the C4 dataset, while the right panel displays the HellaSwag accuracy.  The different compression techniques are compared against the baseline of using full-precision (FP32) numbers to highlight the impact of compression on both loss and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 11: Compressing the outer gradients with either value dropping (FedDropout, Dare) or using lower-precision floating point numbers.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_100b_10s.png)

> 🔼 This figure shows the impact of varying the number of replicas on the evaluation loss, while keeping the global batch size constant.  As the number of replicas increases, the local per-replica batch size decreases.  This experiment helps to understand the effect of the local batch size on model performance in a distributed training setting. The x-axis shows the number of replicas, and the y-axis represents the evaluation loss on the C4 dataset. Two lines are shown, one for Streaming DiLoCo and one for DiLoCo, illustrating the performance difference between the two methods.
> <details>
> <summary>read the caption</summary>
> (a) Keeping the global batch size constant, and thus decreasing the local per-replica batch size.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_llama405b.png)

> 🔼 This figure shows the effect of scaling the number of replicas while keeping the local batch size constant.  Increasing the number of replicas leads to a larger global batch size. The experiment demonstrates how the evaluation loss on C4 changes with the increase in the number of replicas, while maintaining a consistent local batch size.  This visualization helps analyze the impact of distributed training on model performance under different scaling scenarios.
> <details>
> <summary>read the caption</summary>
> (b) Keeping the local per-replica batch size constant, and thus increasing the global batch size.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/bandwidth_deepseekV3.png)

> 🔼 This figure shows the impact of increasing the number of DiLoCo replicas while keeping the total token budget constant. It consists of two subfigures. Subfigure (a) keeps the global batch size constant and reduces the local per-replica batch size as the number of replicas increases, while subfigure (b) keeps the local per-replica batch size constant and increases the global batch size. Both subfigures compare the performance of DiLoCo and Streaming DiLoCo under these different scaling scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 12: Scaling the number of DiLoCo replicas M𝑀Mitalic_M from M=2𝑀2M=2italic_M = 2 to M=4𝑀4M=4italic_M = 4. For all experiments, the token budget is kept constant.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/cos_fragments.png)

> 🔼 This figure shows the effect of changing the number of inner steps (H) in DiLoCo and Streaming DiLoCo on the evaluation loss. The total number of training steps is kept constant, so reducing H increases the number of communication rounds.  The results demonstrate the trade-off between communication cost and model performance. A lower H implies more frequent communication but may also result in noisy gradient updates, while a higher H reduces the communication frequency but increases the risk of replicas drifting apart.
> <details>
> <summary>read the caption</summary>
> Figure 13: Varying the number of inner steps H𝐻Hitalic_H for DiLoCo and Streaming DiLoCo while keeping the total number of steps constants. A lower H𝐻Hitalic_H means more communication rounds to be done.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/cos_emb.png)

> 🔼 This figure visualizes the scheduling of computations and communication in Streaming DiLoCo, comparing sequential and strided fragment patterns. The blue bars represent forward passes, light and dark green bars represent backward passes (w.r.t. activations and weights, respectively), and purple bars represent outer gradient reduction.  The illustration shows how computations and communication are interleaved, allowing for overlapping and improved efficiency.  The difference in scheduling between sequential and strided fragments highlights the impact of the chosen strategy on resource utilization.
> <details>
> <summary>read the caption</summary>
> Figure 14: Simulation of a schedule interleaving forward passes (in blue), backward passes w.r.t. activations and weights (resp. in light and dark green), and (outer) gradient reduction (in purple) for Streaming DiLoCo, respectively with a sequential and strided pattern.
> </details>



![](https://arxiv.org/html/2501.18512/extracted/6166994/figures/cosine_across_scales.png)

> 🔼 This figure shows the compute utilization for a 100 billion parameters model when the computation time for one step is set to 1 second. Compute utilization represents the percentage of time spent on computation versus communication.  The graph displays compute utilization across a range of bandwidth, highlighting the impact of different optimization methods.  Data-parallel, vanilla DiLoCo, and various streaming DiLoCo methods are compared to show the efficiency gains achieved by overlapping communication with computation and using lower-precision gradients.
> <details>
> <summary>read the caption</summary>
> (a) 1s step time
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T2.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T2.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx2.T2.7.7.8.1.1">Model scale</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T2.7.7.8.1.2">Hidden dim</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T2.7.7.8.1.3">Num layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T2.7.7.8.1.4">Num heads</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T2.7.7.8.1.5">Token budget</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T2.1.1.1.2">35M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T2.1.1.1.1"><math alttext="2{,}048" class="ltx_Math" display="inline" id="Sx2.T2.1.1.1.1.m1.2"><semantics id="Sx2.T2.1.1.1.1.m1.2a"><mrow id="Sx2.T2.1.1.1.1.m1.2.3.2" xref="Sx2.T2.1.1.1.1.m1.2.3.1.cmml"><mn id="Sx2.T2.1.1.1.1.m1.1.1" xref="Sx2.T2.1.1.1.1.m1.1.1.cmml">2</mn><mo id="Sx2.T2.1.1.1.1.m1.2.3.2.1" xref="Sx2.T2.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.1.1.1.1.m1.2.2" xref="Sx2.T2.1.1.1.1.m1.2.2.cmml">048</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.1.1.1.1.m1.2b"><list id="Sx2.T2.1.1.1.1.m1.2.3.1.cmml" xref="Sx2.T2.1.1.1.1.m1.2.3.2"><cn id="Sx2.T2.1.1.1.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.1.1.1.1.m1.1.1">2</cn><cn id="Sx2.T2.1.1.1.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.1.1.1.1.m1.2.2">048</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.1.1.1.1.m1.2c">2{,}048</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.1.1.1.1.m1.2d">2 , 048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T2.1.1.1.3">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T2.1.1.1.4">8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T2.1.1.1.5">700M</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T2.2.2.2.2">100M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T2.2.2.2.1"><math alttext="3{,}072" class="ltx_Math" display="inline" id="Sx2.T2.2.2.2.1.m1.2"><semantics id="Sx2.T2.2.2.2.1.m1.2a"><mrow id="Sx2.T2.2.2.2.1.m1.2.3.2" xref="Sx2.T2.2.2.2.1.m1.2.3.1.cmml"><mn id="Sx2.T2.2.2.2.1.m1.1.1" xref="Sx2.T2.2.2.2.1.m1.1.1.cmml">3</mn><mo id="Sx2.T2.2.2.2.1.m1.2.3.2.1" xref="Sx2.T2.2.2.2.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.2.2.2.1.m1.2.2" xref="Sx2.T2.2.2.2.1.m1.2.2.cmml">072</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.2.2.2.1.m1.2b"><list id="Sx2.T2.2.2.2.1.m1.2.3.1.cmml" xref="Sx2.T2.2.2.2.1.m1.2.3.2"><cn id="Sx2.T2.2.2.2.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.2.2.2.1.m1.1.1">3</cn><cn id="Sx2.T2.2.2.2.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.2.2.2.1.m1.2.2">072</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.2.2.2.1.m1.2c">3{,}072</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.2.2.2.1.m1.2d">3 , 072</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.2.2.2.3">9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.2.2.2.4">12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T2.2.2.2.5">1.5B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T2.3.3.3.2">200M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T2.3.3.3.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="Sx2.T2.3.3.3.1.m1.2"><semantics id="Sx2.T2.3.3.3.1.m1.2a"><mrow id="Sx2.T2.3.3.3.1.m1.2.3.2" xref="Sx2.T2.3.3.3.1.m1.2.3.1.cmml"><mn id="Sx2.T2.3.3.3.1.m1.1.1" xref="Sx2.T2.3.3.3.1.m1.1.1.cmml">4</mn><mo id="Sx2.T2.3.3.3.1.m1.2.3.2.1" xref="Sx2.T2.3.3.3.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.3.3.3.1.m1.2.2" xref="Sx2.T2.3.3.3.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.3.3.3.1.m1.2b"><list id="Sx2.T2.3.3.3.1.m1.2.3.1.cmml" xref="Sx2.T2.3.3.3.1.m1.2.3.2"><cn id="Sx2.T2.3.3.3.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.3.3.3.1.m1.1.1">4</cn><cn id="Sx2.T2.3.3.3.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.3.3.3.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.3.3.3.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.3.3.3.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.3.3.3.3">12</td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.3.3.3.4">16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T2.3.3.3.5">3.5B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T2.4.4.4.2">300M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T2.4.4.4.1"><math alttext="5{,}120" class="ltx_Math" display="inline" id="Sx2.T2.4.4.4.1.m1.2"><semantics id="Sx2.T2.4.4.4.1.m1.2a"><mrow id="Sx2.T2.4.4.4.1.m1.2.3.2" xref="Sx2.T2.4.4.4.1.m1.2.3.1.cmml"><mn id="Sx2.T2.4.4.4.1.m1.1.1" xref="Sx2.T2.4.4.4.1.m1.1.1.cmml">5</mn><mo id="Sx2.T2.4.4.4.1.m1.2.3.2.1" xref="Sx2.T2.4.4.4.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.4.4.4.1.m1.2.2" xref="Sx2.T2.4.4.4.1.m1.2.2.cmml">120</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.4.4.4.1.m1.2b"><list id="Sx2.T2.4.4.4.1.m1.2.3.1.cmml" xref="Sx2.T2.4.4.4.1.m1.2.3.2"><cn id="Sx2.T2.4.4.4.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.4.4.4.1.m1.1.1">5</cn><cn id="Sx2.T2.4.4.4.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.4.4.4.1.m1.2.2">120</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.4.4.4.1.m1.2c">5{,}120</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.4.4.4.1.m1.2d">5 , 120</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.4.4.4.3">15</td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.4.4.4.4">20</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T2.4.4.4.5">6B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T2.5.5.5.2">500M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T2.5.5.5.1"><math alttext="6{,}144" class="ltx_Math" display="inline" id="Sx2.T2.5.5.5.1.m1.2"><semantics id="Sx2.T2.5.5.5.1.m1.2a"><mrow id="Sx2.T2.5.5.5.1.m1.2.3.2" xref="Sx2.T2.5.5.5.1.m1.2.3.1.cmml"><mn id="Sx2.T2.5.5.5.1.m1.1.1" xref="Sx2.T2.5.5.5.1.m1.1.1.cmml">6</mn><mo id="Sx2.T2.5.5.5.1.m1.2.3.2.1" xref="Sx2.T2.5.5.5.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.5.5.5.1.m1.2.2" xref="Sx2.T2.5.5.5.1.m1.2.2.cmml">144</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.5.5.5.1.m1.2b"><list id="Sx2.T2.5.5.5.1.m1.2.3.1.cmml" xref="Sx2.T2.5.5.5.1.m1.2.3.2"><cn id="Sx2.T2.5.5.5.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.5.5.5.1.m1.1.1">6</cn><cn id="Sx2.T2.5.5.5.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.5.5.5.1.m1.2.2">144</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.5.5.5.1.m1.2c">6{,}144</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.5.5.5.1.m1.2d">6 , 144</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.5.5.5.3">18</td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.5.5.5.4">24</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T2.5.5.5.5">11B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T2.6.6.6.2">1B</th>
<td class="ltx_td ltx_align_center" id="Sx2.T2.6.6.6.1"><math alttext="8{,}192" class="ltx_Math" display="inline" id="Sx2.T2.6.6.6.1.m1.2"><semantics id="Sx2.T2.6.6.6.1.m1.2a"><mrow id="Sx2.T2.6.6.6.1.m1.2.3.2" xref="Sx2.T2.6.6.6.1.m1.2.3.1.cmml"><mn id="Sx2.T2.6.6.6.1.m1.1.1" xref="Sx2.T2.6.6.6.1.m1.1.1.cmml">8</mn><mo id="Sx2.T2.6.6.6.1.m1.2.3.2.1" xref="Sx2.T2.6.6.6.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.6.6.6.1.m1.2.2" xref="Sx2.T2.6.6.6.1.m1.2.2.cmml">192</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.6.6.6.1.m1.2b"><list id="Sx2.T2.6.6.6.1.m1.2.3.1.cmml" xref="Sx2.T2.6.6.6.1.m1.2.3.2"><cn id="Sx2.T2.6.6.6.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.6.6.6.1.m1.1.1">8</cn><cn id="Sx2.T2.6.6.6.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.6.6.6.1.m1.2.2">192</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.6.6.6.1.m1.2c">8{,}192</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.6.6.6.1.m1.2d">8 , 192</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.6.6.6.3">24</td>
<td class="ltx_td ltx_align_center" id="Sx2.T2.6.6.6.4">32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T2.6.6.6.5">25B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="Sx2.T2.7.7.7.2">4B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T2.7.7.7.1"><math alttext="12{,}288" class="ltx_Math" display="inline" id="Sx2.T2.7.7.7.1.m1.2"><semantics id="Sx2.T2.7.7.7.1.m1.2a"><mrow id="Sx2.T2.7.7.7.1.m1.2.3.2" xref="Sx2.T2.7.7.7.1.m1.2.3.1.cmml"><mn id="Sx2.T2.7.7.7.1.m1.1.1" xref="Sx2.T2.7.7.7.1.m1.1.1.cmml">12</mn><mo id="Sx2.T2.7.7.7.1.m1.2.3.2.1" xref="Sx2.T2.7.7.7.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T2.7.7.7.1.m1.2.2" xref="Sx2.T2.7.7.7.1.m1.2.2.cmml">288</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T2.7.7.7.1.m1.2b"><list id="Sx2.T2.7.7.7.1.m1.2.3.1.cmml" xref="Sx2.T2.7.7.7.1.m1.2.3.2"><cn id="Sx2.T2.7.7.7.1.m1.1.1.cmml" type="integer" xref="Sx2.T2.7.7.7.1.m1.1.1">12</cn><cn id="Sx2.T2.7.7.7.1.m1.2.2.cmml" type="integer" xref="Sx2.T2.7.7.7.1.m1.2.2">288</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T2.7.7.7.1.m1.2c">12{,}288</annotation><annotation encoding="application/x-llamapun" id="Sx2.T2.7.7.7.1.m1.2d">12 , 288</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T2.7.7.7.3">36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T2.7.7.7.4">48</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T2.7.7.7.5">83B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the architecture hyperparameters for language models of various sizes, ranging from 35 million to 4 billion parameters.  For each model size, it shows the hidden dimension, number of layers, number of attention heads, and the corresponding chinchilla-optimal token budget.  The vocabulary size is consistent across all models at 32,000.
> <details>
> <summary>read the caption</summary>
> Table 2: Architecture hyperparameters: we consider model from 35M to 4B with the following hyperameters and chinchilla-optimal token budget. For all model scale, the vocabulary size is 32,0003200032{,}00032 , 000.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx2.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T3.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx2.T3.2.1.1.1">Parameters evaluated</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T3.2.1.1.2">Eval Loss</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T3.2.1.1.3">HellaSwag</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T3.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T3.2.2.1.1">First replica</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T3.2.2.1.2">2.77</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T3.2.2.1.3">37.77</td>
</tr>
<tr class="ltx_tr" id="Sx2.T3.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T3.2.3.2.1">Replicas average</th>
<td class="ltx_td ltx_align_center" id="Sx2.T3.2.3.2.2">2.68</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T3.2.3.2.3">37.72</td>
</tr>
<tr class="ltx_tr" id="Sx2.T3.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="Sx2.T3.2.4.3.1">Outer parameters</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T3.2.4.3.2"><span class="ltx_text ltx_font_bold" id="Sx2.T3.2.4.3.2.1">2.67</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T3.2.4.3.3"><span class="ltx_text ltx_font_bold" id="Sx2.T3.2.4.3.3.1">37.78</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of using different sets of model parameters for training.  The three methods compared are using parameters from only the first replica, averaging parameters across all replicas, and using only the outer (globally shared) parameters. The outer parameters are updated less frequently than the inner parameters. The results show that using only the outer parameters leads to the best performance, suggesting that less-frequent synchronization on only a subset of parameters is beneficial.
> <details>
> <summary>read the caption</summary>
> Table 3: Which parameters to evaluate?: Evaluating the outer parameters, where each fragment has been synchronized at a different moment in time, yields better performance than any inner parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T4.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.1.1.1.2" rowspan="2"><span class="ltx_text" id="Sx2.T4.1.1.1.2.1">Model size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.1.1.1.3" rowspan="2"><span class="ltx_text" id="Sx2.T4.1.1.1.3.1"># layers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T4.1.1.1.4" rowspan="2"><span class="ltx_text" id="Sx2.T4.1.1.1.4.1">Step time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T4.1.1.1.5" rowspan="2"><span class="ltx_text" id="Sx2.T4.1.1.1.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="Sx2.T4.1.1.1.1">Gbit/s to reach a compute utilization <math alttext="\texttt{CU}=" class="ltx_Math" display="inline" id="Sx2.T4.1.1.1.1.m1.1"><semantics id="Sx2.T4.1.1.1.1.m1.1a"><mrow id="Sx2.T4.1.1.1.1.m1.1.1" xref="Sx2.T4.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_monospace" id="Sx2.T4.1.1.1.1.m1.1.1.2" xref="Sx2.T4.1.1.1.1.m1.1.1.2a.cmml">CU</mtext><mo id="Sx2.T4.1.1.1.1.m1.1.1.1" xref="Sx2.T4.1.1.1.1.m1.1.1.1.cmml">=</mo><mi id="Sx2.T4.1.1.1.1.m1.1.1.3" xref="Sx2.T4.1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.1.1.1.1.m1.1b"><apply id="Sx2.T4.1.1.1.1.m1.1.1.cmml" xref="Sx2.T4.1.1.1.1.m1.1.1"><eq id="Sx2.T4.1.1.1.1.m1.1.1.1.cmml" xref="Sx2.T4.1.1.1.1.m1.1.1.1"></eq><ci id="Sx2.T4.1.1.1.1.m1.1.1.2a.cmml" xref="Sx2.T4.1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_monospace" id="Sx2.T4.1.1.1.1.m1.1.1.2.cmml" xref="Sx2.T4.1.1.1.1.m1.1.1.2">CU</mtext></ci><csymbol cd="latexml" id="Sx2.T4.1.1.1.1.m1.1.1.3.cmml" xref="Sx2.T4.1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.1.1.1.1.m1.1c">\texttt{CU}=</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.1.1.1.1.m1.1d">CU =</annotation></semantics></math>?</th>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T4.2.2.2.1"><math alttext="50\%" class="ltx_Math" display="inline" id="Sx2.T4.2.2.2.1.m1.1"><semantics id="Sx2.T4.2.2.2.1.m1.1a"><mrow id="Sx2.T4.2.2.2.1.m1.1.1" xref="Sx2.T4.2.2.2.1.m1.1.1.cmml"><mn id="Sx2.T4.2.2.2.1.m1.1.1.2" xref="Sx2.T4.2.2.2.1.m1.1.1.2.cmml">50</mn><mo id="Sx2.T4.2.2.2.1.m1.1.1.1" xref="Sx2.T4.2.2.2.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.2.2.2.1.m1.1b"><apply id="Sx2.T4.2.2.2.1.m1.1.1.cmml" xref="Sx2.T4.2.2.2.1.m1.1.1"><csymbol cd="latexml" id="Sx2.T4.2.2.2.1.m1.1.1.1.cmml" xref="Sx2.T4.2.2.2.1.m1.1.1.1">percent</csymbol><cn id="Sx2.T4.2.2.2.1.m1.1.1.2.cmml" type="integer" xref="Sx2.T4.2.2.2.1.m1.1.1.2">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.2.2.2.1.m1.1c">50\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.2.2.2.1.m1.1d">50 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T4.3.3.3.2"><math alttext="80\%" class="ltx_Math" display="inline" id="Sx2.T4.3.3.3.2.m1.1"><semantics id="Sx2.T4.3.3.3.2.m1.1a"><mrow id="Sx2.T4.3.3.3.2.m1.1.1" xref="Sx2.T4.3.3.3.2.m1.1.1.cmml"><mn id="Sx2.T4.3.3.3.2.m1.1.1.2" xref="Sx2.T4.3.3.3.2.m1.1.1.2.cmml">80</mn><mo id="Sx2.T4.3.3.3.2.m1.1.1.1" xref="Sx2.T4.3.3.3.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.3.3.3.2.m1.1b"><apply id="Sx2.T4.3.3.3.2.m1.1.1.cmml" xref="Sx2.T4.3.3.3.2.m1.1.1"><csymbol cd="latexml" id="Sx2.T4.3.3.3.2.m1.1.1.1.cmml" xref="Sx2.T4.3.3.3.2.m1.1.1.1">percent</csymbol><cn id="Sx2.T4.3.3.3.2.m1.1.1.2.cmml" type="integer" xref="Sx2.T4.3.3.3.2.m1.1.1.2">80</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.3.3.3.2.m1.1c">80\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.3.3.3.2.m1.1d">80 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T4.4.4.4.3"><math alttext="90\%" class="ltx_Math" display="inline" id="Sx2.T4.4.4.4.3.m1.1"><semantics id="Sx2.T4.4.4.4.3.m1.1a"><mrow id="Sx2.T4.4.4.4.3.m1.1.1" xref="Sx2.T4.4.4.4.3.m1.1.1.cmml"><mn id="Sx2.T4.4.4.4.3.m1.1.1.2" xref="Sx2.T4.4.4.4.3.m1.1.1.2.cmml">90</mn><mo id="Sx2.T4.4.4.4.3.m1.1.1.1" xref="Sx2.T4.4.4.4.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.4.4.4.3.m1.1b"><apply id="Sx2.T4.4.4.4.3.m1.1.1.cmml" xref="Sx2.T4.4.4.4.3.m1.1.1"><csymbol cd="latexml" id="Sx2.T4.4.4.4.3.m1.1.1.1.cmml" xref="Sx2.T4.4.4.4.3.m1.1.1.1">percent</csymbol><cn id="Sx2.T4.4.4.4.3.m1.1.1.2.cmml" type="integer" xref="Sx2.T4.4.4.4.3.m1.1.1.2">90</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.4.4.4.3.m1.1c">90\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.4.4.4.3.m1.1d">90 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T4.5.5.5.4"><math alttext="95\%" class="ltx_Math" display="inline" id="Sx2.T4.5.5.5.4.m1.1"><semantics id="Sx2.T4.5.5.5.4.m1.1a"><mrow id="Sx2.T4.5.5.5.4.m1.1.1" xref="Sx2.T4.5.5.5.4.m1.1.1.cmml"><mn id="Sx2.T4.5.5.5.4.m1.1.1.2" xref="Sx2.T4.5.5.5.4.m1.1.1.2.cmml">95</mn><mo id="Sx2.T4.5.5.5.4.m1.1.1.1" xref="Sx2.T4.5.5.5.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.5.5.5.4.m1.1b"><apply id="Sx2.T4.5.5.5.4.m1.1.1.cmml" xref="Sx2.T4.5.5.5.4.m1.1.1"><csymbol cd="latexml" id="Sx2.T4.5.5.5.4.m1.1.1.1.cmml" xref="Sx2.T4.5.5.5.4.m1.1.1.1">percent</csymbol><cn id="Sx2.T4.5.5.5.4.m1.1.1.2.cmml" type="integer" xref="Sx2.T4.5.5.5.4.m1.1.1.2">95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.5.5.5.4.m1.1c">95\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.5.5.5.4.m1.1d">95 %</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="Sx2.T4.6.6.6.5"><math alttext="99\%" class="ltx_Math" display="inline" id="Sx2.T4.6.6.6.5.m1.1"><semantics id="Sx2.T4.6.6.6.5.m1.1a"><mrow id="Sx2.T4.6.6.6.5.m1.1.1" xref="Sx2.T4.6.6.6.5.m1.1.1.cmml"><mn id="Sx2.T4.6.6.6.5.m1.1.1.2" xref="Sx2.T4.6.6.6.5.m1.1.1.2.cmml">99</mn><mo id="Sx2.T4.6.6.6.5.m1.1.1.1" xref="Sx2.T4.6.6.6.5.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.6.6.6.5.m1.1b"><apply id="Sx2.T4.6.6.6.5.m1.1.1.cmml" xref="Sx2.T4.6.6.6.5.m1.1.1"><csymbol cd="latexml" id="Sx2.T4.6.6.6.5.m1.1.1.1.cmml" xref="Sx2.T4.6.6.6.5.m1.1.1.1">percent</csymbol><cn id="Sx2.T4.6.6.6.5.m1.1.1.2.cmml" type="integer" xref="Sx2.T4.6.6.6.5.m1.1.1.2">99</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.6.6.6.5.m1.1c">99\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.6.6.6.5.m1.1d">99 %</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T4.6.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.1" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.7.1.1.1">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.2" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.7.1.2.1">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T4.6.6.7.1.3" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.7.1.3.1">0.1s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T4.6.6.7.1.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.5">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.6">152.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.7">184.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.8">222.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T4.6.6.7.1.9">569.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.8.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.8.2.1">Vanilla DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.8.2.2">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.8.2.3">6.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.8.2.4">13.3</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.8.2.5">23.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.8.2.6">86.8</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.9.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.9.3.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.9.3.2">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.9.3.3">5.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.9.3.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.9.3.5">16.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.9.3.6">28.1</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.10.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.10.4.1">Streaming DiLoCo w/ overlapped com.</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.10.4.2">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.10.4.3">4.3</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.10.4.4">6.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.10.4.5">9.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.10.4.6">11.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.11.5.1">Streaming DiLoCo w/ overlapped FP4 com.</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.11.5.2">0.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.11.5.3">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.11.5.4">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.11.5.5">2.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.11.5.6">3.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.12.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.1" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.12.6.1.1">10B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.2" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.12.6.2.1">48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T4.6.6.12.6.3" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.12.6.3.1">0.8s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T4.6.6.12.6.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.5">104.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.6">222.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.7">222.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.8">268.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T4.6.6.12.6.9">471.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.13.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.13.7.1">Vanilla DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.13.7.2">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.13.7.3">7.5</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.13.7.4">16.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.13.7.5">33.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.13.7.6">104.8</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.14.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.14.8.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.14.8.2">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.14.8.3">5.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.14.8.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.14.8.5">13.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.14.8.6">19.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.15.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.15.9.1">Streaming DiLoCo w/ overlapped com.</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.15.9.2">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.15.9.3">3.6</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.15.9.4">5.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.15.9.5">6.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.15.9.6">7.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.16.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.16.10.1">Streaming DiLoCo w/ overlapped FP4 com.</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.16.10.2">0.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.16.10.3">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.16.10.4">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.16.10.5">1.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.16.10.6">1.7</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.17.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx2.T4.6.6.17.11.1" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.17.11.1.1">100B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx2.T4.6.6.17.11.2" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.17.11.2.1">108</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx2.T4.6.6.17.11.3" rowspan="5"><span class="ltx_text" id="Sx2.T4.6.6.17.11.3.1">4.9s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T4.6.6.17.11.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.17.11.5">184.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.17.11.6">323.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.17.11.7">390.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.6.6.17.11.8">390.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T4.6.6.17.11.9">471.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.18.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.18.12.1">Vanilla DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.18.12.2">3.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.18.12.3">11.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.18.12.4">23.3</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.18.12.5">49.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.18.12.6">184.2</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.19.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.19.13.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.19.13.2">2.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.19.13.3">6.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.19.13.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.19.13.5">11.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.19.13.6">19.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.20.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T4.6.6.20.14.1">Streaming DiLoCo w/ overlapped com.</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.20.14.2">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.20.14.3">3.6</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.20.14.4">4.3</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.6.6.20.14.5">5.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.6.6.20.14.6">5.2</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.21.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="Sx2.T4.6.6.21.15.1">Streaming DiLoCo w/ overlapped FP4 com.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.21.15.2">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.21.15.3">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.21.15.4">1.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.21.15.5">1.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.21.15.6">1.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a simulation of compute utilization for different model training methods across various bandwidths.  It estimates the time spent in computation versus communication for Data-Parallel, DiLoCo, and different variations of Streaming DiLoCo. The simulation considers 10B and 100B parameter models, using the FLOPS profile from Kaplan et al. (2020) and a machine utilization factor (MFU) of 60%.  The DiLoCo and Streaming DiLoCo methods use a synchronization frequency (H) of 100 and Streaming DiLoCo variations use a fragment size of 3 layers. The goal is to illustrate how the proposed modifications reduce the bandwidth requirements while maintaining compute efficiency.
> <details>
> <summary>read the caption</summary>
> Table 4: Simulation: we estimate the step time (pure compute) of 10B and 100B based on the required flops using Kaplan et al. (2020) rule and using a MFU of 60%. For all DiLoCo and Streaming DiLoCo-variants, we use H=100𝐻100H=100italic_H = 100. For all Streaming DiLoCo-variants, we use a fragment size of 3 layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T5.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T5.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="Sx2.T5.4.4.4.5">Model size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx2.T5.4.4.4.6">Flops</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.4.4.4.7">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.1.1.1.1">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T5.1.1.1.1.m1.1"><semantics id="Sx2.T5.1.1.1.1.m1.1a"><mo id="Sx2.T5.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T5.1.1.1.1.m1.1b"><ci id="Sx2.T5.1.1.1.1.m1.1.1.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.2.2.2.2">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T5.2.2.2.2.m1.1"><semantics id="Sx2.T5.2.2.2.2.m1.1a"><mo id="Sx2.T5.2.2.2.2.m1.1.1" stretchy="false" xref="Sx2.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T5.2.2.2.2.m1.1b"><ci id="Sx2.T5.2.2.2.2.m1.1.1.cmml" xref="Sx2.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.3.3.3.3">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T5.3.3.3.3.m1.1"><semantics id="Sx2.T5.3.3.3.3.m1.1a"><mo id="Sx2.T5.3.3.3.3.m1.1.1" stretchy="false" xref="Sx2.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T5.3.3.3.3.m1.1b"><ci id="Sx2.T5.3.3.3.3.m1.1.1.cmml" xref="Sx2.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.4.4.4.4">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T5.4.4.4.4.m1.1"><semantics id="Sx2.T5.4.4.4.4.m1.1a"><mo id="Sx2.T5.4.4.4.4.m1.1.1" stretchy="false" xref="Sx2.T5.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T5.4.4.4.4.m1.1b"><ci id="Sx2.T5.4.4.4.4.m1.1.1.cmml" xref="Sx2.T5.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T5.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.5.1.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.5.1.1.1">35M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.5.1.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.5.1.2.1">1.5e17</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.5.1.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.5.1.4">3.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.5.1.5">24.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.5.1.6">57.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.5.1.7">29.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.6.2">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.6.2.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.6.2.2">3.54</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.6.2.3">24.53</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.6.2.4">58.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.6.2.5">29.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.7.3">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.7.3.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.7.3.2">3.53</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.7.3.3">24.46</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.7.3.4">57.67</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.7.3.5">30.53</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.8.4">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.8.4.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.8.4.2">3.56</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.8.4.3">24.80</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.8.4.4">57.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.8.4.5">29.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.9.5.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.9.5.1.1">100M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.9.5.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.9.5.2.1">9.4e17</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.9.5.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.9.5.4">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.9.5.5">26.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.9.5.6">60.12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.9.5.7">30.35</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.10.6">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.10.6.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.10.6.2">3.21</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.10.6.3">26.59</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.10.6.4">60.50</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.10.6.5">29.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.11.7">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.11.7.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.11.7.2">3.21</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.11.7.3">26.97</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.11.7.4">59.58</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.11.7.5">31.40</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.12.8">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.12.8.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.12.8.2">3.22</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.12.8.3">26.68</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.12.8.4">60.39</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.12.8.5">31.93</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.13.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.13.9.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.13.9.1.1">200M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.13.9.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.13.9.2.1">4e18</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.13.9.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.13.9.4">2.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.13.9.5">29.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.13.9.6">63.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.13.9.7">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.14.10">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.14.10.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.14.10.2">2.98</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.14.10.3">29.71</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.14.10.4">62.30</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.14.10.5">33.68</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.15.11">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.15.11.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.15.11.2">2.98</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.15.11.3">29.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.15.11.4">61.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.15.11.5">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.16.12">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.16.12.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.16.12.2">3.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.16.12.3">29.27</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.16.12.4">62.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.16.12.5">34.21</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.17.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.17.13.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.17.13.1.1">300M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.17.13.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.17.13.2.1">1.4e19</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.17.13.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.17.13.4">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.17.13.5">33.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.17.13.6">64.69</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.17.13.7">34.91</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.18.14">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.18.14.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.18.14.2">2.81</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.18.14.3">33.87</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.18.14.4">64.74</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.18.14.5">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.19.15">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.19.15.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.19.15.2">2.81</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.19.15.3">33.66</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.19.15.4">63.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.19.15.5">35.09</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.20.16">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.20.16.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.20.16.2">2.83</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.20.16.3">33.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.20.16.4">63.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.20.16.5">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.21.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.21.17.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.21.17.1.1">500M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.21.17.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.21.17.2.1">4.7e19</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.21.17.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.21.17.4">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.21.17.5">38.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.21.17.6">66.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.21.17.7">37.19</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.22.18">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.22.18.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.22.18.2">2.68</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.22.18.3">38.37</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.22.18.4">65.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.22.18.5">36.32</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.23.19">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.23.19.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.23.19.2">2.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.23.19.3">38.10</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.23.19.4">66.21</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.23.19.5">34.91</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.24.20">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.24.20.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.24.20.2">2.69</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.24.20.3">37.40</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.24.20.4">65.51</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.24.20.5">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.25.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="Sx2.T5.4.4.25.21.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.25.21.1.1">1B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T5.4.4.25.21.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.25.21.2.1">1.9e20</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.25.21.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.25.21.4">2.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.25.21.5">46.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.25.21.6">68.93</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.25.21.7">39.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.26.22">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.26.22.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.26.22.2">2.49</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.26.22.3">46.56</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.26.22.4">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.26.22.5">36.84</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.27.23">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.27.23.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.27.23.2">2.48</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.27.23.3">46.60</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.27.23.4">69.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.27.23.5">39.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.28.24">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.28.24.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.28.24.2">2.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.28.24.3">46.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.28.24.4">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.28.24.5">38.42</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.29.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="Sx2.T5.4.4.29.25.1" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.29.25.1.1">4B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="Sx2.T5.4.4.29.25.2" rowspan="4"><span class="ltx_text" id="Sx2.T5.4.4.29.25.2.1">2e21</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.29.25.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.29.25.4">2.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.29.25.5">59.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.4.4.29.25.6">72.42</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.4.4.29.25.7">43.51</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.30.26">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.30.26.1">DiLoCo H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.30.26.2">-</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.30.26.3">-</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.30.26.4">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.30.26.5">-</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.31.27">
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.31.27.1">Streaming DiLoCo with overlapped FP4 com., H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.31.27.2">-</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.31.27.3">-</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.4.4.31.27.4">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.4.4.31.27.5">-</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.4.4.32.28">
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.4.4.32.28.1">Streaming DiLoCo with overlapped FP4 com., H=100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.4.4.32.28.2">2.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.4.4.32.28.3">59.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.4.4.32.28.4">72.52</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T5.4.4.32.28.5">43.16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of scaling experiments on language models with varying numbers of parameters (from 35 million to 4 billion). The models were trained using a chinchilla-optimal number of floating point operations, and the evaluation loss on the validation set of the C4 dataset is reported for each model size.
> <details>
> <summary>read the caption</summary>
> Table 5: Scaling from 35 million parameters to 4 billion parameters using a chinchilla-optimal number of flops/tokens. We train on the C4 dataset, and report the evaluation loss on its validation set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx2.T6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.6.6.7">Model size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T6.6.6.8">Flops</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.1.1.1"><math alttext="M" class="ltx_Math" display="inline" id="Sx2.T6.1.1.1.m1.1"><semantics id="Sx2.T6.1.1.1.m1.1a"><mi id="Sx2.T6.1.1.1.m1.1.1" xref="Sx2.T6.1.1.1.m1.1.1.cmml">M</mi><annotation-xml encoding="MathML-Content" id="Sx2.T6.1.1.1.m1.1b"><ci id="Sx2.T6.1.1.1.m1.1.1.cmml" xref="Sx2.T6.1.1.1.m1.1.1">𝑀</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.1.1.1.m1.1c">M</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.1.1.1.m1.1d">italic_M</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.2.2.2"><math alttext="H" class="ltx_Math" display="inline" id="Sx2.T6.2.2.2.m1.1"><semantics id="Sx2.T6.2.2.2.m1.1a"><mi id="Sx2.T6.2.2.2.m1.1.1" xref="Sx2.T6.2.2.2.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="Sx2.T6.2.2.2.m1.1b"><ci id="Sx2.T6.2.2.2.m1.1.1.cmml" xref="Sx2.T6.2.2.2.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.2.2.2.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.2.2.2.m1.1d">italic_H</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.3.3.3">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T6.3.3.3.m1.1"><semantics id="Sx2.T6.3.3.3.m1.1a"><mo id="Sx2.T6.3.3.3.m1.1.1" stretchy="false" xref="Sx2.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.3.3.3.m1.1b"><ci id="Sx2.T6.3.3.3.m1.1.1.cmml" xref="Sx2.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.4.4.4">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.4.4.4.m1.1"><semantics id="Sx2.T6.4.4.4.m1.1a"><mo id="Sx2.T6.4.4.4.m1.1.1" stretchy="false" xref="Sx2.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.4.4.4.m1.1b"><ci id="Sx2.T6.4.4.4.m1.1.1.cmml" xref="Sx2.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.5.5.5">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.5.5.5.m1.1"><semantics id="Sx2.T6.5.5.5.m1.1a"><mo id="Sx2.T6.5.5.5.m1.1.1" stretchy="false" xref="Sx2.T6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.5.5.5.m1.1b"><ci id="Sx2.T6.5.5.5.m1.1.1.cmml" xref="Sx2.T6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.6.6.6">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.6.6.6.m1.1"><semantics id="Sx2.T6.6.6.6.m1.1a"><mo id="Sx2.T6.6.6.6.m1.1.1" stretchy="false" xref="Sx2.T6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.6.6.6.m1.1b"><ci id="Sx2.T6.6.6.6.m1.1.1.cmml" xref="Sx2.T6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T6.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.7.1.1.1">35M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.6.7.1.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.7.1.2.1">1.5e17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.5">3.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.6">24.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.7">57.67</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.7.1.8">30.53</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.8.2">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.8.2.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.8.2.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.8.2.3">3.60</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.8.2.4">24.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.8.2.5">56.09</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.8.2.6">28.60</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.9.3">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.9.3.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.9.3.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.9.3.3">3.56</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.9.3.4">24.80</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.9.3.5">57.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.9.3.6">29.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.10.4">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.10.4.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.10.4.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.10.4.3">3.64</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.10.4.4">24.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.10.4.5">56.75</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.10.4.6">26.84</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.11.5.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.6.11.5.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.11.5.2.1">9.4e17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.5">3.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.6">26.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.7">59.58</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.11.5.8">31.40</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.12.6">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.12.6.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.12.6.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.12.6.3">3.25</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.12.6.4">26.24</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.12.6.5">59.74</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.12.6.6">32.63</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.13.7">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.13.7.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.13.7.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.13.7.3">3.22</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.13.7.4">26.68</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.13.7.5">60.39</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.13.7.6">31.93</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.14.8">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.14.8.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.14.8.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.14.8.3">3.29</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.14.8.4">26.54</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.14.8.5">60.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.14.8.6">29.82</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.15.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.15.9.1.1">200M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.6.15.9.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.15.9.2.1">4e18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.5">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.6">29.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.7">61.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.15.9.8">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.16.10">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.16.10.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.16.10.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.16.10.3">3.02</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.16.10.4">29.09</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.16.10.5">62.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.16.10.6">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.17.11">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.17.11.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.17.11.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.17.11.3">3.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.17.11.4">29.27</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.17.11.5">62.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.17.11.6">34.21</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.18.12">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.18.12.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.18.12.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.18.12.3">3.05</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.18.12.4">28.53</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.18.12.5">61.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.18.12.6">33.51</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.19.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.19.13.1.1">300M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.6.19.13.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.19.13.2.1">1.4e19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.5">2.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.6">33.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.7">63.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.19.13.8">35.09</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.20.14">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.20.14.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.20.14.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.20.14.3">2.84</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.20.14.4">32.54</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.20.14.5">64.42</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.20.14.6">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.21.15">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.21.15.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.21.15.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.21.15.3">2.83</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.21.15.4">33.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.21.15.5">63.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.21.15.6">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.22.16">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.22.16.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.22.16.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.22.16.3">2.87</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.22.16.4">32.02</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.22.16.5">64.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.22.16.6">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.23.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.23.17.1.1">500M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.6.23.17.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.23.17.2.1">4.7e19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.5">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.6">38.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.7">66.21</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.23.17.8">34.91</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.24.18">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.24.18.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.24.18.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.24.18.3">2.70</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.24.18.4">36.95</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.24.18.5">65.72</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.24.18.6">35.26</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.25.19">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.25.19.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.25.19.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.25.19.3">2.69</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.25.19.4">37.40</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.25.19.5">65.51</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.25.19.6">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.26.20">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.26.20.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.26.20.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.26.20.3">2.73</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.26.20.4">36.02</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.26.20.5">66.27</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.26.20.6">35.09</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.27.21">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx2.T6.6.27.21.1" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.27.21.1.1">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx2.T6.6.27.21.2" rowspan="4"><span class="ltx_text" id="Sx2.T6.6.27.21.2.1">1.9e20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.4">30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.5">2.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.6">46.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.7">69.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.6.27.21.8">39.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.28.22">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.28.22.1">4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.28.22.2">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.28.22.3">2.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.28.22.4">45.25</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.28.22.5">67.95</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.28.22.6">39.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.29.23">
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.29.23.1">2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.29.23.2">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.29.23.3">2.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.29.23.4">46.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.6.29.23.5">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.6.29.23.6">38.42</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.6.30.24">
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.1">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.3">2.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.4">44.74</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.5">68.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T6.6.30.24.6">38.25</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of scaling experiments using Streaming DiLoCo, a distributed training method for large language models.  The experiments vary the model size from 35 million to 1 billion parameters, while also altering two key hyperparameters: the synchronization frequency (H), which determines how often parameters are synchronized across workers, and the number of DiLoCo replicas (M), which represents the degree of parallelism.  The table shows how the model's performance (evaluation loss, HellaSwag accuracy, Piqa accuracy, and Arc Easy accuracy) changes across these different configurations.  The use of overlapped FP4 (four-bit floating point) communication is consistent across all experiments.
> <details>
> <summary>read the caption</summary>
> Table 6: Scaling from 35 million parameters to 1 billion parameters Streaming DiLoCo with overlapped FP4 communication and with two different synchronization frequencies H={30,100}𝐻30100H=\{30,100\}italic_H = { 30 , 100 } and number of DiLoCo replicas M={2,4}.𝑀24M=\{2,4\}.italic_M = { 2 , 4 } .
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T7.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T7.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx2.T7.5.5.5.6">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T7.5.5.5.7">Token Budget</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T7.1.1.1.1">Terabytes exchanged <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T7.1.1.1.1.m1.1"><semantics id="Sx2.T7.1.1.1.1.m1.1a"><mo id="Sx2.T7.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T7.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T7.1.1.1.1.m1.1b"><ci id="Sx2.T7.1.1.1.1.m1.1.1.cmml" xref="Sx2.T7.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T7.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T7.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T7.2.2.2.2">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T7.2.2.2.2.m1.1"><semantics id="Sx2.T7.2.2.2.2.m1.1a"><mo id="Sx2.T7.2.2.2.2.m1.1.1" stretchy="false" xref="Sx2.T7.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T7.2.2.2.2.m1.1b"><ci id="Sx2.T7.2.2.2.2.m1.1.1.cmml" xref="Sx2.T7.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T7.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T7.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T7.3.3.3.3">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T7.3.3.3.3.m1.1"><semantics id="Sx2.T7.3.3.3.3.m1.1a"><mo id="Sx2.T7.3.3.3.3.m1.1.1" stretchy="false" xref="Sx2.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T7.3.3.3.3.m1.1b"><ci id="Sx2.T7.3.3.3.3.m1.1.1.cmml" xref="Sx2.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T7.4.4.4.4">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T7.4.4.4.4.m1.1"><semantics id="Sx2.T7.4.4.4.4.m1.1a"><mo id="Sx2.T7.4.4.4.4.m1.1.1" stretchy="false" xref="Sx2.T7.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T7.4.4.4.4.m1.1b"><ci id="Sx2.T7.4.4.4.4.m1.1.1.cmml" xref="Sx2.T7.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T7.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T7.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T7.5.5.5.5">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T7.5.5.5.5.m1.1"><semantics id="Sx2.T7.5.5.5.5.m1.1a"><mo id="Sx2.T7.5.5.5.5.m1.1.1" stretchy="false" xref="Sx2.T7.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T7.5.5.5.5.m1.1b"><ci id="Sx2.T7.5.5.5.5.m1.1.1.cmml" xref="Sx2.T7.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T7.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T7.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T7.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T7.5.5.6.1.1" rowspan="3"><span class="ltx_text" id="Sx2.T7.5.5.6.1.1.1">Data-Parallel</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.6.1.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T7.5.5.6.1.3">441</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.6.1.4">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.6.1.5"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.6.1.5.1">42.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.6.1.6">67.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T7.5.5.6.1.7"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.6.1.7.1">40.42</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.7.2">
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.7.2.1">100B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T7.5.5.7.2.2">1,767</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.7.2.3">2.52</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.7.2.4">49.78</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.7.2.5">69.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T7.5.5.7.2.6"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.7.2.6.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.8.3">
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.8.3.1">250B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T7.5.5.8.3.2">4,418</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.8.3.3"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.8.3.3.1">2.45</span></td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.8.3.4">53.86</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.8.3.5">70.45</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T7.5.5.8.3.6"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.8.3.6.1">44.21</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T7.5.5.9.4.1" rowspan="3"><span class="ltx_text" id="Sx2.T7.5.5.9.4.1.1">Our method, M=2</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.9.4.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T7.5.5.9.4.3">1.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.9.4.4"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.9.4.4.1">2.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.9.4.5">42.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.9.4.6"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.9.4.6.1">67.46</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T7.5.5.9.4.7">38.42</td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.10.5">
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.10.5.1">100B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T7.5.5.10.5.2">4.42</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.10.5.3"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.10.5.3.1">2.51</span></td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.10.5.4"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.10.5.4.1">49.98</span></td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.10.5.5.1">69.96</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T7.5.5.10.5.6"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.10.5.6.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.11.6">
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.11.6.1">250B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T7.5.5.11.6.2">11.05</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.11.6.3"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.11.6.3.1">2.45</span></td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.11.6.4"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.11.6.4.1">54.24</span></td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.11.6.5"><span class="ltx_text ltx_font_bold" id="Sx2.T7.5.5.11.6.5.1">71.38</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T7.5.5.11.6.6">41.92</td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="Sx2.T7.5.5.12.7.1" rowspan="3"><span class="ltx_text" id="Sx2.T7.5.5.12.7.1.1">Our method, M=4</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.12.7.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T7.5.5.12.7.3">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.12.7.4">2.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.12.7.5">38.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T7.5.5.12.7.6">66.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T7.5.5.12.7.7">39.64</td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.13.8">
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.13.8.1">100B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T7.5.5.13.8.2">2.21</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.13.8.3">2.54</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.13.8.4">48.35</td>
<td class="ltx_td ltx_align_center" id="Sx2.T7.5.5.13.8.5">69.42</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T7.5.5.13.8.6">40.52</td>
</tr>
<tr class="ltx_tr" id="Sx2.T7.5.5.14.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T7.5.5.14.9.1">250B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="Sx2.T7.5.5.14.9.2">5.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T7.5.5.14.9.3">2.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T7.5.5.14.9.4">52.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T7.5.5.14.9.5">70.29</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T7.5.5.14.9.6">42.45</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of overtraining experiments conducted on the Dolma dataset using a 1-billion parameter model.  The experiments varied the token budget (25B, 100B, and 250B tokens) and the number of DiLoCo replicas (M=2 and M=4). Doubling the number of replicas doubles the global batch size while halving the number of training steps. This leads to approximately twice the training speed, although at a slight cost to performance.  The table shows that Streaming DiLoCo with overlapped FP4 communication, the method proposed in this paper, achieves competitive performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Overtraining on the Dolma dataset with a 1 billion parameters model, and with an increasing token budgets (25B, 100B, and 250B). We report here for our model both with M=2𝑀2M=2italic_M = 2 and M=4𝑀4M=4italic_M = 4 DiLoCo replicas. With twice more replicas, the global batch size is doubled, and twice less steps are done. It is also thus roughly twice faster, but come with slightly worse performance. Our method is the final model: Streaming DiLoCo with overlapped FP4 communication.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18512/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18512/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}