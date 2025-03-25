---
title: "RDTF: Resource-efficient Dual-mask Training Framework for Multi-frame Animated Sticker Generation"
summary: "RDTF: Efficient animated sticker generation via dual-mask training, outperforming parameter-efficient tuning under constrained resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Pattern Recognition Center, WeChat AI, Tencent",]
showSummary: true
date: 2025-03-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17735 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhiqiang Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17735" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17735" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17735/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video generation models have made remarkable strides, but applying them to downstream tasks with limited resources remains challenging. Parameter-efficient tuning methods on pre-trained models can fall short due to poor fitting ability and deviation from the target domain. Training smaller models from scratch, despite requiring effective data use and strategic learning, can be an alternative. This approach reduces dependence on source domain knowledge, focusing on adapting to the specifics of downstream application.



To address these issues, this paper introduces a **resource-efficient dual-mask training framework (RDTF)** for multi-frame animated sticker generation (ASG). RDTF constructs a discrete frame generation network and uses a dual-mask data utilization strategy to improve data availability and diversity. A difficulty-adaptive curriculum learning method is proposed to smooth convergence. Experiments show RDTF quantitatively and qualitatively outperforms efficient-parameter tuning methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Training a smaller video generation model from scratch can outperform parameter-efficient tuning on larger models when resources are constrained. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The dual-mask training framework effectively improves data availability and diversity for training video generation models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The difficulty-adaptive curriculum learning method facilitates model convergence by managing sample entropy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents a novel and efficient method to overcome the resource limitations when training video generation models, making it highly relevant for researchers working on resource-constrained applications. It also highlights the importance of effective data utilization and curriculum learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/overview.jpg)

> 🔼 This figure illustrates the resource-efficient dual-mask training framework (RDTF) for animated sticker generation.  It highlights three key components: 1) A discrete frame generation network, designed to handle the unique characteristics of animated stickers (low frame rates and discrete frames).  2) Dual masks (condition and loss masks) which improve data utilization by selectively focusing on certain parts of the data during training, increasing the effective data size and diversity.  3) A difficulty-adaptive curriculum learning strategy, which gradually increases the difficulty of training data to enhance model convergence and performance. This framework allows for training smaller, more efficient video generation models, suitable for resource-constrained environments.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An overview of resource-efficient dual-mask training framework. We propose a discrete frame generation network to model the discreteness between animated sticker frames. Furthermore, the dual masks, i.e.formulae-sequence𝑖𝑒i.e.italic_i . italic_e ., condition mask and loss mask, are designed to improve the availability and expand the diversity of limited data. The difficulty-adaptive curriculum learning is applied to facilitate convergence.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T1.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T1.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T1.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.4.1.1.1">Indicator</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T1.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.4.1.2.1">Customize-A-Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T1.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.4.1.3.1">I2V-Adapter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx4.T1.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.4.1.4.1">SimDA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T1.3.3.4.1.5"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.4.1.5.1">Ours</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T1.1.1.1.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx4.T1.1.1.1.1.m1.1"><semantics id="Sx4.T1.1.1.1.1.m1.1a"><mo id="Sx4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx4.T1.1.1.1.1.m1.1b"><ci id="Sx4.T1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T1.1.1.1.2">451.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T1.1.1.1.3">456.24</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx4.T1.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T1.1.1.1.4.1">448.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx4.T1.1.1.1.5.1">442.18</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T1.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T1.2.2.2.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T1.2.2.2.1.m1.1"><semantics id="Sx4.T1.2.2.2.1.m1.1a"><mo id="Sx4.T1.2.2.2.1.m1.1.1" stretchy="false" xref="Sx4.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T1.2.2.2.1.m1.1b"><ci id="Sx4.T1.2.2.2.1.m1.1.1.cmml" xref="Sx4.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="Sx4.T1.2.2.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T1.2.2.2.2.1">0.479</span></td>
<td class="ltx_td ltx_align_center" id="Sx4.T1.2.2.2.3">0.476</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx4.T1.2.2.2.4">0.462</td>
<td class="ltx_td ltx_align_center" id="Sx4.T1.2.2.2.5"><span class="ltx_text ltx_font_bold" id="Sx4.T1.2.2.2.5.1">0.502</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T1.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T1.3.3.3.1">CLIP <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T1.3.3.3.1.m1.1"><semantics id="Sx4.T1.3.3.3.1.m1.1a"><mo id="Sx4.T1.3.3.3.1.m1.1.1" stretchy="false" xref="Sx4.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T1.3.3.3.1.m1.1b"><ci id="Sx4.T1.3.3.3.1.m1.1.1.cmml" xref="Sx4.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T1.3.3.3.2"><span class="ltx_text ltx_font_bold" id="Sx4.T1.3.3.3.2.1">0.377</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T1.3.3.3.3">0.367</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx4.T1.3.3.3.4">0.372</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T1.3.3.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T1.3.3.3.5.1">0.376</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of various video generation methods on the image and text to video (I&T→V) task, performed under constrained computational resources.  The metrics used for comparison include Fréchet Video Distance (FVD), Video Quality Assessment (VQA), and CLIP similarity. Lower FVD scores indicate better temporal consistency, higher VQA scores reflect improved video quality, and higher CLIP similarity scores signify stronger semantic alignment between the generated video and the input text and image.  The 'best' and 'second-best' results for each metric are highlighted in bold and underlined, respectively, allowing for easy identification of top-performing models within the resource constraints.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison of different methods on I&T→→\rightarrow→V task under constrained resources. Bold and underline indicate the best and the second-best, respectively.
> </details>





### In-depth insights


#### Data-Efficient ASG
Data-efficient animated sticker generation (ASG) tackles the challenge of creating diverse and high-quality stickers with limited training data. This is crucial because acquiring large, labeled datasets for ASG can be expensive and time-consuming. **Techniques like transfer learning from related domains (e.g., image or video generation) and few-shot learning methods** can be leveraged to adapt pre-trained models to the ASG task using only a small amount of sticker data. Furthermore, **data augmentation strategies specifically tailored for stickers**, such as applying style transfer or creating variations of existing stickers, can artificially increase the size and diversity of the training set. **Meta-learning approaches**, where the model learns to learn from limited data, are also promising for data-efficient ASG. Additionally, **generative models like GANs or VAEs** can be trained on a small sticker dataset and then used to generate synthetic stickers to augment the training data, further improving the diversity and quality of the generated stickers. **Effective use of unlabelled data or weak supervision** is also beneficial.

#### Dual-Mask Training
Dual-mask training appears to be a technique designed to **enhance data utilization and diversity** within a limited dataset, likely in the context of training a generative model. It probably uses two masks, potentially a **condition mask and a loss mask**, to selectively guide the training process. The condition mask might be used to switch between different training tasks like interpolation, prediction, and generation by masking out specific input components. The loss mask likely focuses the learning signal on specific regions or frames, perhaps to address long-tail distributions or improve information density. By carefully crafting these masks, the method aims to **improve the availability and variability of the data**, effectively augmenting the dataset and leading to better model generalization, especially in resource-constrained settings.

#### Adaptive Learning
Adaptive learning is a crucial aspect of modern AI, especially in dynamic environments. It involves creating systems that can adjust their behavior and parameters based on real-time feedback and data. **This adaptability** is essential for handling variability and uncertainty. In the context of machine learning, this could mean adjusting the learning rate, model complexity, or feature selection process based on the observed performance during training. **Curriculum learning**, where the model is gradually exposed to increasingly complex examples, is one strategy. Another approach is to use reinforcement learning, where the system learns by interacting with its environment and receiving rewards or penalties. Efficient adaptive learning necessitates robust mechanisms for monitoring performance and identifying areas for improvement. **Real-time adaptability** improves not just the model's accuracy but also its resilience and practical applicability.

#### Resource Limits
The research confronts resource limitations head-on, a crucial consideration for real-world deployment. **Balancing model size, training data, and computational power** is paramount. The paper showcases a method effective with million-level samples, a significant reduction compared to many resource-intensive approaches. This is vital for democratizing AI, allowing development on more accessible hardware. The study tackles memory constraints (32G V100) head-on. **Model efficiency** becomes a core objective. While parameter-efficient tuning offers a path, the work argues that strategic data utilization and curriculum learning can enable smaller models trained from scratch to surpass fine-tuned behemoths in certain scenarios. There's a trade-off though – increased training time compared to parameter-efficient tuning. Ultimately, **the research pioneers a resource-conscious paradigm**.

#### Future ASG Tasks
Future advancements in Animated Sticker Generation (ASG) hinge on tackling key challenges. **Scaling data and leveraging self/supervised learning for pre-trained models is crucial** for capturing common sticker features and accelerating downstream task iteration. Addressing the unique characteristics of cartoon stickers, particularly the contrast between simple lines/color blocks and complex natural scenes, necessitates exploring disassembly/reconstruction techniques in the frequency domain. Modeling the creation process by emulating sketching and coloring offers a promising avenue for reducing complexity and improving sample quality. Finally, achieving **detailed control over subject characterization and action modeling** remains a vital, yet challenging, aspect of intelligent sticker creation, essential for generating high-quality and personalized content.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/plt_bar_framesnum.jpg)

> 🔼 This figure shows the distribution of frame counts across the collected animated sticker dataset.  The distribution is skewed towards shorter videos; there are significantly more stickers with a small number of frames than stickers with a large number of frames. This long-tail distribution is a key characteristic of the dataset used and influences the methods for training and data utilization described in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 2: Frame distribution in collected sticker dataset, which follows the long-tail distribution, i.e.formulae-sequence𝑖𝑒i.e.italic_i . italic_e ., more short frames and fewer long frames.
> </details>



![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/cluster.jpg)

> 🔼 This figure illustrates a data augmentation technique used to improve the performance of the animated sticker generation model.  The method involves clustering the frames of animated stickers into k groups based on their visual features. This clustering step aims to increase the information density of the dataset by highlighting common patterns within each cluster. By randomly selecting clusters during the model training process, the model is exposed to a wider range of visual patterns, thus potentially enhancing its learning and generalization capabilities. The original caption only briefly describes the clustering step; this expanded description provides a more comprehensive understanding of its purpose and effect within the training process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Frame extraction algorithm based on feature clustering. During training, data are clustered into k𝑘kitalic_k clusters randomly to increase the information density.
> </details>



![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/CLproblem.jpg)

> 🔼 This figure illustrates the challenge in designing a curriculum learning strategy for animated sticker generation.  The training process involves two independent factors: the length of the masked frames and the type of task being performed (interpolation, prediction, or generation).  These factors are not directly correlated, making it difficult to create a curriculum that consistently increases the complexity of the training samples over time to facilitate stable model convergence. A suitable curriculum should smoothly increase the information entropy of the training data, gradually moving from simpler to more complex tasks.  However, the independence of frame length and task type makes it difficult to create a curriculum that consistently increases entropy.
> <details>
> <summary>read the caption</summary>
> Figure 4: The masked frame length and task type during training are independent of each other, which is difficult to determine a route so as to obtain entropy increase samples stably.
> </details>



![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/visual.jpg)

> 🔼 This figure displays a visual comparison of animated sticker generation results using four different methods: Customize-A-Video, I2V-Adapter, SimDA, and RDTF (the authors' proposed method). Each method is applied to the same input (image and text), and the resulting animated stickers are shown. The comparison highlights the smoother and clearer motion achieved by the RDTF method compared to the other three.  The caption encourages viewers to click to see dynamic results, suggesting the animation quality is a key aspect of the comparison.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Visual comparison for animated sticker generation on I&T→→\rightarrow→V task between Customize-A-Video, I2V-Adapter, SimDA and RDTF. Compared with other methods, the motion obtained by RDTF method is smoother and clearer than others. Click here to see dynamic results.
> </details>



![](https://arxiv.org/html/2503.17735/extracted/6301426/imgs/comp_other_task.jpg)

> 🔼 Figure 6 presents a visual comparison of the interpolation and prediction capabilities of two video generation models: SimDA and the proposed RDTF (Resource-efficient Dual-mask Training Framework).  The figure showcases example results for both tasks, highlighting the differences in generated video quality and detail. Grey boxes in the figure indicate where visual guidance was provided as input to the model. This comparison demonstrates RDTF's superior performance in generating smoother and more visually appealing results compared to SimDA.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Visual comparison for interpolation and prediction tasks between SimDA and RDTF. Gray boxes indicate visual guidance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T2.2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T2.2.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T2.2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.2.2.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.1.1.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx4.T2.1.1.1.1.1.1.m1.1"><semantics id="Sx4.T2.1.1.1.1.1.1.m1.1a"><mo id="Sx4.T2.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T2.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx4.T2.1.1.1.1.1.1.m1.1b"><ci id="Sx4.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T2.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T2.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T2.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T2.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.2.2.2.2.2.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T2.2.2.2.2.2.1.m1.1"><semantics id="Sx4.T2.2.2.2.2.2.1.m1.1a"><mo id="Sx4.T2.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="Sx4.T2.2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T2.2.2.2.2.2.1.m1.1b"><ci id="Sx4.T2.2.2.2.2.2.1.m1.1.1.cmml" xref="Sx4.T2.2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T2.2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T2.2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T2.2.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T2.2.2.2.3.1.1">I2V-Adapter</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.2.2.2.3.1.2">213.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.2.2.2.3.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T2.2.2.2.3.1.3.1">0.517</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.2.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T2.2.2.2.4.2.1">SimDA</th>
<td class="ltx_td ltx_align_center" id="Sx4.T2.2.2.2.4.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T2.2.2.2.4.2.2.1">198.49</span></td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.2.2.2.4.2.3">0.509</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.2.2.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T2.2.2.2.5.3.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T2.2.2.2.5.3.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.2.2.2.5.3.2.1">192.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T2.2.2.2.5.3.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.2.2.2.5.3.3.1">0.536</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different video generation methods for two specific tasks: interpolation and prediction. The comparison is performed under constrained computational resources.  The methods are evaluated using two metrics: FVD (Fréchet Video Distance), a measure of video quality, and VQA (Video Quality Assessment), which assesses the video's semantic coherence.  Lower FVD scores and higher VQA scores indicate better performance.  The table highlights the best-performing method for each task and metric by bolding and underlining the top two scores. This allows for a direct comparison of the efficiency and effectiveness of different approaches in generating high-quality videos within limited resource constraints.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison of different methods for (left) interpolation and (right) prediction task under constrained resources. Bold and underline indicate the best and the second-best, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T2.4.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T2.4.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T2.4.2.2.2.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.4.2.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T2.3.1.1.1.1.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx4.T2.3.1.1.1.1.1.m1.1"><semantics id="Sx4.T2.3.1.1.1.1.1.m1.1a"><mo id="Sx4.T2.3.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T2.3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx4.T2.3.1.1.1.1.1.m1.1b"><ci id="Sx4.T2.3.1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T2.3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T2.3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T2.3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T2.4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.4.2.2.2.2.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T2.4.2.2.2.2.1.m1.1"><semantics id="Sx4.T2.4.2.2.2.2.1.m1.1a"><mo id="Sx4.T2.4.2.2.2.2.1.m1.1.1" stretchy="false" xref="Sx4.T2.4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T2.4.2.2.2.2.1.m1.1b"><ci id="Sx4.T2.4.2.2.2.2.1.m1.1.1.cmml" xref="Sx4.T2.4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T2.4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T2.4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T2.4.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T2.4.2.2.3.1.1">I2V-Adapter</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.4.2.2.3.1.2">79.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.4.2.2.3.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T2.4.2.2.3.1.3.1">0.526</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.4.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T2.4.2.2.4.2.1">SimDA</th>
<td class="ltx_td ltx_align_center" id="Sx4.T2.4.2.2.4.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T2.4.2.2.4.2.2.1">74.68</span></td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.4.2.2.4.2.3">0.521</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.4.2.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T2.4.2.2.5.3.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T2.4.2.2.5.3.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.4.2.2.5.3.2.1">67.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T2.4.2.2.5.3.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.4.2.2.5.3.3.1">0.539</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of different modules on the performance of the proposed model, RDTF, for animated sticker generation.  The experiment systematically removes or changes components of the model architecture to analyze their individual contributions. The table compares the Fréchet Video Distance (FVD) and Video Quality Assessment (VQA) scores, two metrics for assessing video generation quality. Lower FVD indicates better similarity between generated and real videos and higher VQA indicates better perceived visual quality.  The baseline model, DFGN, utilizes a 3D convolution as the temporal layer.  Subsequent rows progressively add the dual-mask-based data utilization (DDU) strategy and the difficulty-adaptive curriculum learning (DCL) strategy. This demonstrates the individual and combined effects of these crucial components in achieving optimal performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Module ablation results. DFGN(3D-Conv) represents DFGN using 3D convolution as the temporal layer. DDU stands for dual-mask based data utilization strategy and DCL stands for difficulty-adaptive curriculum learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T3.1.1.1.1.1">Method (I&amp;T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="Sx4.T3.1.1.1.1.1.m1.1"><semantics id="Sx4.T3.1.1.1.1.1.m1.1a"><mo id="Sx4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T3.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="Sx4.T3.1.1.1.1.1.m1.1b"><ci id="Sx4.T3.1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T3.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T3.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T3.1.1.1.1.1.m1.1d">→</annotation></semantics></math>V)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T3.2.2.2.2"><span class="ltx_text ltx_font_bold" id="Sx4.T3.2.2.2.2.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx4.T3.2.2.2.2.1.m1.1"><semantics id="Sx4.T3.2.2.2.2.1.m1.1a"><mo id="Sx4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="Sx4.T3.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx4.T3.2.2.2.2.1.m1.1b"><ci id="Sx4.T3.2.2.2.2.1.m1.1.1.cmml" xref="Sx4.T3.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T3.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T3.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="Sx4.T3.3.3.3.3.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T3.3.3.3.3.1.m1.1"><semantics id="Sx4.T3.3.3.3.3.1.m1.1a"><mo id="Sx4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="Sx4.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T3.3.3.3.3.1.m1.1b"><ci id="Sx4.T3.3.3.3.3.1.m1.1.1.cmml" xref="Sx4.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T3.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T3.3.3.4.1.1">DFGN(3D-Conv)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T3.3.3.4.1.2">492.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T3.3.3.4.1.3">0.397</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T3.3.3.5.2.1">DFGN</th>
<td class="ltx_td ltx_align_center" id="Sx4.T3.3.3.5.2.2">478.47</td>
<td class="ltx_td ltx_align_center" id="Sx4.T3.3.3.5.2.3">0.435</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T3.3.3.6.3.1">DFGN (w/ DDU)</th>
<td class="ltx_td ltx_align_center" id="Sx4.T3.3.3.6.3.2">459.21</td>
<td class="ltx_td ltx_align_center" id="Sx4.T3.3.3.6.3.3">0.476</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T3.3.3.7.4.1">DFGN (w/ DDU &amp; w/ DCL)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T3.3.3.7.4.2"><span class="ltx_text ltx_font_bold" id="Sx4.T3.3.3.7.4.2.1">442.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T3.3.3.7.4.3"><span class="ltx_text ltx_font_bold" id="Sx4.T3.3.3.7.4.3.1">0.502</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of three different curriculum learning strategies used in training a model for animated sticker generation: no curriculum learning (W/o CL), monotonous curriculum learning (LCL), and difficulty-adaptive curriculum learning (DCL).  The left side shows a quantitative comparison of these methods based on FVD (Fréchet Video Distance) and VQA (Video Quality Assessment) scores, demonstrating the impact of each learning strategy on the model's performance. The right side visually demonstrates how task weights change over time during linear curriculum learning, illustrating the progression of training difficulty.
> <details>
> <summary>read the caption</summary>
> Table 4: (Left) Quantitative comparison when using different curriculum learning strategies. W/o CL, LCL, and DCL denote without curriculum learning, monotonous curriculum learning, and difficulty-adaptive curriculum learning, respectively. (Right) Demonstration of task weight changes in linear curriculum learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T4.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T4.3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T4.1.1.1.1.1.1">Method (I&amp;T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="Sx4.T4.1.1.1.1.1.1.m1.1"><semantics id="Sx4.T4.1.1.1.1.1.1.m1.1a"><mo id="Sx4.T4.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T4.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="Sx4.T4.1.1.1.1.1.1.m1.1b"><ci id="Sx4.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T4.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T4.1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T4.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math>V)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T4.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="Sx4.T4.2.2.2.2.2.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx4.T4.2.2.2.2.2.1.m1.1"><semantics id="Sx4.T4.2.2.2.2.2.1.m1.1a"><mo id="Sx4.T4.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="Sx4.T4.2.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx4.T4.2.2.2.2.2.1.m1.1b"><ci id="Sx4.T4.2.2.2.2.2.1.m1.1.1.cmml" xref="Sx4.T4.2.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T4.2.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T4.2.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T4.3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="Sx4.T4.3.3.3.3.3.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx4.T4.3.3.3.3.3.1.m1.1"><semantics id="Sx4.T4.3.3.3.3.3.1.m1.1a"><mo id="Sx4.T4.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="Sx4.T4.3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx4.T4.3.3.3.3.3.1.m1.1b"><ci id="Sx4.T4.3.3.3.3.3.1.m1.1.1.cmml" xref="Sx4.T4.3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T4.3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T4.3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T4.3.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T4.3.3.3.4.1.1">RDTF (w/o CL)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T4.3.3.3.4.1.2">459.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T4.3.3.3.4.1.3">0.476</td>
</tr>
<tr class="ltx_tr" id="Sx4.T4.3.3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T4.3.3.3.5.2.1">RDTF (w/ LCL)</th>
<td class="ltx_td ltx_align_center" id="Sx4.T4.3.3.3.5.2.2">451.65</td>
<td class="ltx_td ltx_align_center" id="Sx4.T4.3.3.3.5.2.3">0.484</td>
</tr>
<tr class="ltx_tr" id="Sx4.T4.3.3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T4.3.3.3.6.3.1">RDTF (w/ DCL)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T4.3.3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="Sx4.T4.3.3.3.6.3.2.1">442.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T4.3.3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="Sx4.T4.3.3.3.6.3.3.1">0.502</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing different methods for animated sticker generation.  Users ranked the stickers generated by each method based on three criteria: text alignment, interest, and motion smoothness.  Higher scores indicate better performance. The best and second-best performing methods for each criteria are highlighted in bold and underlined, respectively. This allows for a qualitative comparison of the different models beyond the quantitative metrics presented earlier in the paper.
> <details>
> <summary>read the caption</summary>
> Table 5: User study results. A higher score indicates superior performance. Bold and underline indicate the best and the second-best, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx4.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.1.1.1">Method (I&amp;T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="Sx4.T5.1.1.1.1.1.m1.1"><semantics id="Sx4.T5.1.1.1.1.1.m1.1a"><mo id="Sx4.T5.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx4.T5.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="Sx4.T5.1.1.1.1.1.m1.1b"><ci id="Sx4.T5.1.1.1.1.1.m1.1.1.cmml" xref="Sx4.T5.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx4.T5.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="Sx4.T5.1.1.1.1.1.m1.1d">→</annotation></semantics></math>V)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.1.2.1">Text.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.1.3.1">Interest.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.1.4.1">Motion.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T5.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T5.1.1.2.1.1">Customize-A-Video</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T5.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.2.1.2.1">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T5.1.1.2.1.3">1.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T5.1.1.2.1.4">1.94</td>
</tr>
<tr class="ltx_tr" id="Sx4.T5.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T5.1.1.3.2.1">I2V-Adapter</th>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.3.2.2">1.90</td>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.3.2.3">1.73</td>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.3.2.4">1.71</td>
</tr>
<tr class="ltx_tr" id="Sx4.T5.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="Sx4.T5.1.1.4.3.1">SimDA</th>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.4.3.2">1.97</td>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.4.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T5.1.1.4.3.3.1">2.06</span></td>
<td class="ltx_td ltx_align_center" id="Sx4.T5.1.1.4.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T5.1.1.4.3.4.1">2.03</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T5.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx4.T5.1.1.5.4.1">RDTF</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T5.1.1.5.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx4.T5.1.1.5.4.2.1">2.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T5.1.1.5.4.3"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.5.4.3.1">2.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx4.T5.1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="Sx4.T5.1.1.5.4.4.1">2.31</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 provides a comprehensive overview of the hyperparameters used in the Resource-efficient Dual-mask Training Framework (RDTF) for animated sticker generation.  It details settings for various components of the model architecture, including spatial layers, STI (Spatial Temporal Interaction) layers, the diffusion process, and the dual-mask-based data utilization strategy and difficulty-adaptive curriculum learning.  This table is crucial for understanding and replicating the experiments conducted in the paper.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameters for our RDTF.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx8.T6.11.11">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx8.T6.11.11.12.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx8.T6.11.11.12.1.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.12.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx8.T6.11.11.12.1.2"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.12.1.2.1">RDTF</span></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.13.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.13.2.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.13.2.1.1">Spatial Layers</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.13.2.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.14.3">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.14.3.1"><span class="ltx_text ltx_font_italic" id="Sx8.T6.11.11.14.3.1.1">Architecture</span></td>
<td class="ltx_td" id="Sx8.T6.11.11.14.3.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.15.4">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.15.4.1">LDM</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.15.4.2">✓</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.1.1.1">
<td class="ltx_td ltx_align_left" id="Sx8.T6.1.1.1.1"><math alttext="f" class="ltx_Math" display="inline" id="Sx8.T6.1.1.1.1.m1.1"><semantics id="Sx8.T6.1.1.1.1.m1.1a"><mi id="Sx8.T6.1.1.1.1.m1.1.1" xref="Sx8.T6.1.1.1.1.m1.1.1.cmml">f</mi><annotation-xml encoding="MathML-Content" id="Sx8.T6.1.1.1.1.m1.1b"><ci id="Sx8.T6.1.1.1.1.m1.1.1.cmml" xref="Sx8.T6.1.1.1.1.m1.1.1">𝑓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.1.1.1.1.m1.1c">f</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.1.1.1.1.m1.1d">italic_f</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.1.1.1.2">8</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.3.3.3">
<td class="ltx_td ltx_align_left" id="Sx8.T6.3.3.3.3">Latent shape</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.3.3.3.2">32 <math alttext="\times" class="ltx_Math" display="inline" id="Sx8.T6.2.2.2.1.m1.1"><semantics id="Sx8.T6.2.2.2.1.m1.1a"><mo id="Sx8.T6.2.2.2.1.m1.1.1" xref="Sx8.T6.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="Sx8.T6.2.2.2.1.m1.1b"><times id="Sx8.T6.2.2.2.1.m1.1.1.cmml" xref="Sx8.T6.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.2.2.2.1.m1.1d">×</annotation></semantics></math> 32 <math alttext="\times" class="ltx_Math" display="inline" id="Sx8.T6.3.3.3.2.m2.1"><semantics id="Sx8.T6.3.3.3.2.m2.1a"><mo id="Sx8.T6.3.3.3.2.m2.1.1" xref="Sx8.T6.3.3.3.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="Sx8.T6.3.3.3.2.m2.1b"><times id="Sx8.T6.3.3.3.2.m2.1.1.cmml" xref="Sx8.T6.3.3.3.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.3.3.3.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.3.3.3.2.m2.1d">×</annotation></semantics></math> 4</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.16.5">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.16.5.1">Input channels</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.16.5.2">8</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.17.6">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.17.6.1">Output channels</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.17.6.2">4</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.18.7">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.18.7.1">Layers per block</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.18.7.2">2</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.19.8">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.19.8.1">Head channels</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.19.8.2">64</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.20.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx8.T6.11.11.20.9.1"><span class="ltx_text ltx_font_italic" id="Sx8.T6.11.11.20.9.1.1">Condition</span></td>
<td class="ltx_td ltx_border_t" id="Sx8.T6.11.11.20.9.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.21.10">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.21.10.1">Embedding dimension</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.21.10.2">1024</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.22.11">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.22.11.1">Text sequence length</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.22.11.2">77</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.23.12">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.23.12.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.23.12.1.1">STI Layers</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.23.12.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.24.13">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.24.13.1"><span class="ltx_text ltx_font_italic" id="Sx8.T6.11.11.24.13.1.1">Architecture</span></td>
<td class="ltx_td" id="Sx8.T6.11.11.24.13.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.25.14">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.25.14.1">Convolution kernel size</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.25.14.2">3,1,1</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.26.15">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.26.15.1">Convolution layers</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.26.15.2">2</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.27.16">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.27.16.1">Num attention layers</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.27.16.2">1</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.28.17">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.28.17.1">Num attention heads</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.28.17.2">8</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.29.18">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.29.18.1">Attention head dim</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.29.18.2">32</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.30.19">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.30.19.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.30.19.1.1">Dual-mask based Data Utilization Strategy</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.30.19.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.4.4.4">
<td class="ltx_td ltx_align_left" id="Sx8.T6.4.4.4.1">range of <math alttext="k" class="ltx_Math" display="inline" id="Sx8.T6.4.4.4.1.m1.1"><semantics id="Sx8.T6.4.4.4.1.m1.1a"><mi id="Sx8.T6.4.4.4.1.m1.1.1" xref="Sx8.T6.4.4.4.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="Sx8.T6.4.4.4.1.m1.1b"><ci id="Sx8.T6.4.4.4.1.m1.1.1.cmml" xref="Sx8.T6.4.4.4.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.4.4.4.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.4.4.4.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.4.4.4.2">3-8</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.31.20">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.31.20.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.31.20.1.1">Difficulty-adaptive Curriculum Learning</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.31.20.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.5.5.5">
<td class="ltx_td ltx_align_left" id="Sx8.T6.5.5.5.1"><math alttext="\mathcal{K}_{p}" class="ltx_Math" display="inline" id="Sx8.T6.5.5.5.1.m1.1"><semantics id="Sx8.T6.5.5.5.1.m1.1a"><msub id="Sx8.T6.5.5.5.1.m1.1.1" xref="Sx8.T6.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="Sx8.T6.5.5.5.1.m1.1.1.2" xref="Sx8.T6.5.5.5.1.m1.1.1.2.cmml">𝒦</mi><mi id="Sx8.T6.5.5.5.1.m1.1.1.3" xref="Sx8.T6.5.5.5.1.m1.1.1.3.cmml">p</mi></msub><annotation-xml encoding="MathML-Content" id="Sx8.T6.5.5.5.1.m1.1b"><apply id="Sx8.T6.5.5.5.1.m1.1.1.cmml" xref="Sx8.T6.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="Sx8.T6.5.5.5.1.m1.1.1.1.cmml" xref="Sx8.T6.5.5.5.1.m1.1.1">subscript</csymbol><ci id="Sx8.T6.5.5.5.1.m1.1.1.2.cmml" xref="Sx8.T6.5.5.5.1.m1.1.1.2">𝒦</ci><ci id="Sx8.T6.5.5.5.1.m1.1.1.3.cmml" xref="Sx8.T6.5.5.5.1.m1.1.1.3">𝑝</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.5.5.5.1.m1.1c">\mathcal{K}_{p}</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.5.5.5.1.m1.1d">caligraphic_K start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.5.5.5.2">5.0</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.6.6.6">
<td class="ltx_td ltx_align_left" id="Sx8.T6.6.6.6.1"><math alttext="\mathcal{K}_{i}" class="ltx_Math" display="inline" id="Sx8.T6.6.6.6.1.m1.1"><semantics id="Sx8.T6.6.6.6.1.m1.1a"><msub id="Sx8.T6.6.6.6.1.m1.1.1" xref="Sx8.T6.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="Sx8.T6.6.6.6.1.m1.1.1.2" xref="Sx8.T6.6.6.6.1.m1.1.1.2.cmml">𝒦</mi><mi id="Sx8.T6.6.6.6.1.m1.1.1.3" xref="Sx8.T6.6.6.6.1.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="Sx8.T6.6.6.6.1.m1.1b"><apply id="Sx8.T6.6.6.6.1.m1.1.1.cmml" xref="Sx8.T6.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="Sx8.T6.6.6.6.1.m1.1.1.1.cmml" xref="Sx8.T6.6.6.6.1.m1.1.1">subscript</csymbol><ci id="Sx8.T6.6.6.6.1.m1.1.1.2.cmml" xref="Sx8.T6.6.6.6.1.m1.1.1.2">𝒦</ci><ci id="Sx8.T6.6.6.6.1.m1.1.1.3.cmml" xref="Sx8.T6.6.6.6.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.6.6.6.1.m1.1c">\mathcal{K}_{i}</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.6.6.6.1.m1.1d">caligraphic_K start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.6.6.6.2">3.0</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.7.7.7">
<td class="ltx_td ltx_align_left" id="Sx8.T6.7.7.7.1"><math alttext="\mathcal{K}_{d}" class="ltx_Math" display="inline" id="Sx8.T6.7.7.7.1.m1.1"><semantics id="Sx8.T6.7.7.7.1.m1.1a"><msub id="Sx8.T6.7.7.7.1.m1.1.1" xref="Sx8.T6.7.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="Sx8.T6.7.7.7.1.m1.1.1.2" xref="Sx8.T6.7.7.7.1.m1.1.1.2.cmml">𝒦</mi><mi id="Sx8.T6.7.7.7.1.m1.1.1.3" xref="Sx8.T6.7.7.7.1.m1.1.1.3.cmml">d</mi></msub><annotation-xml encoding="MathML-Content" id="Sx8.T6.7.7.7.1.m1.1b"><apply id="Sx8.T6.7.7.7.1.m1.1.1.cmml" xref="Sx8.T6.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="Sx8.T6.7.7.7.1.m1.1.1.1.cmml" xref="Sx8.T6.7.7.7.1.m1.1.1">subscript</csymbol><ci id="Sx8.T6.7.7.7.1.m1.1.1.2.cmml" xref="Sx8.T6.7.7.7.1.m1.1.1.2">𝒦</ci><ci id="Sx8.T6.7.7.7.1.m1.1.1.3.cmml" xref="Sx8.T6.7.7.7.1.m1.1.1.3">𝑑</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.7.7.7.1.m1.1c">\mathcal{K}_{d}</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.7.7.7.1.m1.1d">caligraphic_K start_POSTSUBSCRIPT italic_d end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.7.7.7.2">1.3</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.32.21">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.32.21.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.32.21.1.1">Training</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.32.21.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.8.8.8">
<td class="ltx_td ltx_align_left" id="Sx8.T6.8.8.8.2">Parameterization</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.8.8.8.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="Sx8.T6.8.8.8.1.m1.1"><semantics id="Sx8.T6.8.8.8.1.m1.1a"><mi id="Sx8.T6.8.8.8.1.m1.1.1" xref="Sx8.T6.8.8.8.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="Sx8.T6.8.8.8.1.m1.1b"><ci id="Sx8.T6.8.8.8.1.m1.1.1.cmml" xref="Sx8.T6.8.8.8.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.8.8.8.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.8.8.8.1.m1.1d">italic_ϵ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.33.22">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.33.22.1">Learnable para.</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.33.22.2">Full</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.34.23">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.34.23.1"># train steps</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.34.23.2">50K</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.35.24">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.35.24.1">Learning rate</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.35.24.2">1e-5</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.36.25">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.36.25.1">Batch size per GPU</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.36.25.2">1</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.37.26">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.37.26.1"># GPUs</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.37.26.2">16</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.38.27">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.38.27.1">GPU-type</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.38.27.2">A100-40GB</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.39.28">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.39.28.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.39.28.1.1">Diffusion Setup</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.39.28.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.40.29">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.40.29.1">Diffusion steps</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.40.29.2">1000</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.41.30">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.41.30.1">Noise schedule</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.41.30.2">Linear</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.9.9.9">
<td class="ltx_td ltx_align_left" id="Sx8.T6.9.9.9.1"><math alttext="\beta_{0}" class="ltx_Math" display="inline" id="Sx8.T6.9.9.9.1.m1.1"><semantics id="Sx8.T6.9.9.9.1.m1.1a"><msub id="Sx8.T6.9.9.9.1.m1.1.1" xref="Sx8.T6.9.9.9.1.m1.1.1.cmml"><mi id="Sx8.T6.9.9.9.1.m1.1.1.2" xref="Sx8.T6.9.9.9.1.m1.1.1.2.cmml">β</mi><mn id="Sx8.T6.9.9.9.1.m1.1.1.3" xref="Sx8.T6.9.9.9.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="Sx8.T6.9.9.9.1.m1.1b"><apply id="Sx8.T6.9.9.9.1.m1.1.1.cmml" xref="Sx8.T6.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="Sx8.T6.9.9.9.1.m1.1.1.1.cmml" xref="Sx8.T6.9.9.9.1.m1.1.1">subscript</csymbol><ci id="Sx8.T6.9.9.9.1.m1.1.1.2.cmml" xref="Sx8.T6.9.9.9.1.m1.1.1.2">𝛽</ci><cn id="Sx8.T6.9.9.9.1.m1.1.1.3.cmml" type="integer" xref="Sx8.T6.9.9.9.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.9.9.9.1.m1.1c">\beta_{0}</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.9.9.9.1.m1.1d">italic_β start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.9.9.9.2">0.00085</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.10.10.10">
<td class="ltx_td ltx_align_left" id="Sx8.T6.10.10.10.1"><math alttext="\beta_{T}" class="ltx_Math" display="inline" id="Sx8.T6.10.10.10.1.m1.1"><semantics id="Sx8.T6.10.10.10.1.m1.1a"><msub id="Sx8.T6.10.10.10.1.m1.1.1" xref="Sx8.T6.10.10.10.1.m1.1.1.cmml"><mi id="Sx8.T6.10.10.10.1.m1.1.1.2" xref="Sx8.T6.10.10.10.1.m1.1.1.2.cmml">β</mi><mi id="Sx8.T6.10.10.10.1.m1.1.1.3" xref="Sx8.T6.10.10.10.1.m1.1.1.3.cmml">T</mi></msub><annotation-xml encoding="MathML-Content" id="Sx8.T6.10.10.10.1.m1.1b"><apply id="Sx8.T6.10.10.10.1.m1.1.1.cmml" xref="Sx8.T6.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="Sx8.T6.10.10.10.1.m1.1.1.1.cmml" xref="Sx8.T6.10.10.10.1.m1.1.1">subscript</csymbol><ci id="Sx8.T6.10.10.10.1.m1.1.1.2.cmml" xref="Sx8.T6.10.10.10.1.m1.1.1.2">𝛽</ci><ci id="Sx8.T6.10.10.10.1.m1.1.1.3.cmml" xref="Sx8.T6.10.10.10.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.10.10.10.1.m1.1c">\beta_{T}</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.10.10.10.1.m1.1d">italic_β start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.10.10.10.2">0.0120</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.42.31">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx8.T6.11.11.42.31.1"><span class="ltx_text ltx_font_bold" id="Sx8.T6.11.11.42.31.1.1">Sampling Parameters</span></td>
<td class="ltx_td ltx_border_tt" id="Sx8.T6.11.11.42.31.2"></td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.43.32">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.43.32.1">Sampler</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.43.32.2">DDIM</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.44.33">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.44.33.1">Steps</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.44.33.2">50</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.11">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.11.1"><math alttext="\eta" class="ltx_Math" display="inline" id="Sx8.T6.11.11.11.1.m1.1"><semantics id="Sx8.T6.11.11.11.1.m1.1a"><mi id="Sx8.T6.11.11.11.1.m1.1.1" xref="Sx8.T6.11.11.11.1.m1.1.1.cmml">η</mi><annotation-xml encoding="MathML-Content" id="Sx8.T6.11.11.11.1.m1.1b"><ci id="Sx8.T6.11.11.11.1.m1.1.1.cmml" xref="Sx8.T6.11.11.11.1.m1.1.1">𝜂</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx8.T6.11.11.11.1.m1.1c">\eta</annotation><annotation encoding="application/x-llamapun" id="Sx8.T6.11.11.11.1.m1.1d">italic_η</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.11.2">1.0</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.45.34">
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.45.34.1">Text guidance scale</td>
<td class="ltx_td ltx_align_left" id="Sx8.T6.11.11.45.34.2">7.5</td>
</tr>
<tr class="ltx_tr" id="Sx8.T6.11.11.46.35">
<td class="ltx_td ltx_align_left ltx_border_b" id="Sx8.T6.11.11.46.35.1">Img guidance scale</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="Sx8.T6.11.11.46.35.2">7.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the different conditional masks used in the dual-mask training framework. Each row represents a different task (Interpolation, Prediction, Generation), and the columns show whether text guidance and/or visual (image) guidance are used for each task. The binary values in the 'Visual Condition Mask' column represent which frames are used as visual guidance in the corresponding task.
> <details>
> <summary>read the caption</summary>
> Table 7: Different conditional mask definitions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx9.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx9.T7.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx9.T7.1.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="Sx9.T7.1.1.1.2.1">Text Guidance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx9.T7.1.1.1.3.1">Visual Condition mask</span></td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.2.2.1" rowspan="4"><span class="ltx_text" id="Sx9.T7.1.2.2.1.1">Interpolation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.2.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.2.2.3">[0 1 0 1 0 1 0 1]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.3.3">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.3.3.1">✓</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.3.3.2">[1 0 1 0 1 0 1 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.4.4">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.4.4.1">✓</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.4.4.2">[1 0 0 1 0 0 1 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.5.5">
<td class="ltx_td ltx_align_center" colspan="2" id="Sx9.T7.1.5.5.1">…</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.6.6.1" rowspan="3"><span class="ltx_text" id="Sx9.T7.1.6.6.1.1">Prediction</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.6.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.6.6.3">[1 1 1 1 1 0 0 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.7.7">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.7.7.1">✓</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.7.7.2">[0 0 1 1 1 1 1 1]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.8.8">
<td class="ltx_td ltx_align_center" colspan="2" id="Sx9.T7.1.8.8.1">…</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="Sx9.T7.1.9.9.1" rowspan="5"><span class="ltx_text" id="Sx9.T7.1.9.9.1.1">Generation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.9.9.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T7.1.9.9.3">[1 0 0 0 0 0 0 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.10.10">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.10.10.1">✓</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.10.10.2">[0 0 1 0 0 0 0 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.11.11">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.11.11.1">✗</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.11.11.2">[0 0 1 0 0 0 0 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.12.12">
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.12.12.1">✗</td>
<td class="ltx_td ltx_align_center" id="Sx9.T7.1.12.12.2">[1 0 0 0 0 0 0 0]</td>
</tr>
<tr class="ltx_tr" id="Sx9.T7.1.13.13">
<td class="ltx_td ltx_align_center ltx_border_b" colspan="2" id="Sx9.T7.1.13.13.1">…</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the computational resource requirements and inference speeds of different video generation methods.  It shows the number of parameters (in billions) and the average inference time (in seconds) for each method.  The evaluation was performed using a single V100 GPU on input video clips with dimensions 1x8x256x256 (1 video, 8 frames, 256x256 pixels).
> <details>
> <summary>read the caption</summary>
> Table 8: Parameters and inference costs comparison of different methods, which is evaluated on inputs of shape 1×8×256×256182562561\times 8\times 256\times 2561 × 8 × 256 × 256 with a single V100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx9.T8.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx9.T8.3.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx9.T8.3.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx9.T8.3.1.1.1.2">Customize-A-Video</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx9.T8.3.1.1.1.3">I2V-Adapter</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx9.T8.3.1.1.1.4">SimDA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx9.T8.3.1.1.1.5" rowspan="2"><span class="ltx_text" id="Sx9.T8.3.1.1.1.5.1">Ours</span></th>
</tr>
<tr class="ltx_tr" id="Sx9.T8.3.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="Sx9.T8.3.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx9.T8.3.1.2.2.2"><cite class="ltx_cite ltx_citemacro_citep">(Ren et al. <a class="ltx_ref" href="https://arxiv.org/html/2503.17735v1#bib.bib28" title="">2024</a>)</cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx9.T8.3.1.2.2.3"><cite class="ltx_cite ltx_citemacro_citep">(Guo et al. <a class="ltx_ref" href="https://arxiv.org/html/2503.17735v1#bib.bib11" title="">2024a</a>)</cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx9.T8.3.1.2.2.4"><cite class="ltx_cite ltx_citemacro_citep">(Xing et al. <a class="ltx_ref" href="https://arxiv.org/html/2503.17735v1#bib.bib53" title="">2024</a>)</cite></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx9.T8.3.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx9.T8.3.1.3.1.1">Param. (B)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T8.3.1.3.1.2">1.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T8.3.1.3.1.3">1.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T8.3.1.3.1.4">1.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx9.T8.3.1.3.1.5"><span class="ltx_text ltx_font_bold" id="Sx9.T8.3.1.3.1.5.1">0.96</span></td>
</tr>
<tr class="ltx_tr" id="Sx9.T8.3.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx9.T8.3.1.4.2.1">Infer Time (s)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx9.T8.3.1.4.2.2">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx9.T8.3.1.4.2.3">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx9.T8.3.1.4.2.4">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx9.T8.3.1.4.2.5"><span class="ltx_text ltx_font_bold" id="Sx9.T8.3.1.4.2.5.1">0.39</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different video generation models' performance on the OphNet2024 dataset, specifically focusing on the medical video generation task.  The models are evaluated using two metrics: FVD (Fréchet Video Distance), which measures the discrepancy between generated videos and real videos, and VQA (Video Quality Assessment), which assesses the overall quality of the generated videos. Lower FVD scores and higher VQA scores indicate better performance.  The table helps demonstrate the relative strengths of different models in generating high-quality medical videos, considering aspects such as visual fidelity and overall quality.
> <details>
> <summary>read the caption</summary>
> Table 9:  Comparison of different model test results on OphNet2024 dataset (Hu et al. 2024) in medical video generation task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx10.T9.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx10.T9.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx10.T9.2.2.3.1.1">Indicator</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx10.T9.2.2.3.1.2">Customize-A-Video</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx10.T9.2.2.3.1.3">I2V-Adapter</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx10.T9.2.2.3.1.4">SimDA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx10.T9.2.2.3.1.5">Ours</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx10.T9.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx10.T9.1.1.1.1">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx10.T9.1.1.1.1.m1.1"><semantics id="Sx10.T9.1.1.1.1.m1.1a"><mo id="Sx10.T9.1.1.1.1.m1.1.1" stretchy="false" xref="Sx10.T9.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx10.T9.1.1.1.1.m1.1b"><ci id="Sx10.T9.1.1.1.1.m1.1.1.cmml" xref="Sx10.T9.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx10.T9.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx10.T9.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx10.T9.1.1.1.2">296.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx10.T9.1.1.1.3">304.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx10.T9.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx10.T9.1.1.1.4.1">291.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx10.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx10.T9.1.1.1.5.1">273.1</span></td>
</tr>
<tr class="ltx_tr" id="Sx10.T9.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx10.T9.2.2.2.1">VQA <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx10.T9.2.2.2.1.m1.1"><semantics id="Sx10.T9.2.2.2.1.m1.1a"><mo id="Sx10.T9.2.2.2.1.m1.1.1" stretchy="false" xref="Sx10.T9.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx10.T9.2.2.2.1.m1.1b"><ci id="Sx10.T9.2.2.2.1.m1.1.1.cmml" xref="Sx10.T9.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx10.T9.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx10.T9.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx10.T9.2.2.2.2">0.584</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx10.T9.2.2.2.3">0.571</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx10.T9.2.2.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="Sx10.T9.2.2.2.4.1">0.596</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx10.T9.2.2.2.5"><span class="ltx_text ltx_font_bold" id="Sx10.T9.2.2.2.5.1">0.612</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a quantitative comparison of different video generation models' performance on the unScene dataset (Wen et al., 2024), focusing on the autonomous driving video generation task.  The table shows the Frechet Video Distance (FVD) and Video Quality Assessment (VQA) scores achieved by Customize-A-Video, I2V-Adapter, SimDA, and the authors' proposed RDTF method. Lower FVD scores indicate better video quality, while higher VQA scores represent better overall perceptual quality. This comparison helps to evaluate the effectiveness of different models in generating realistic and high-quality videos for autonomous driving applications, considering factors such as visual fidelity and perceptual alignment with the intended content.
> <details>
> <summary>read the caption</summary>
> Table 10:  Comparison of different model test results on unScene dataset (Wen et al. 2024) in autonomous driving video generation task.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17735/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17735/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}