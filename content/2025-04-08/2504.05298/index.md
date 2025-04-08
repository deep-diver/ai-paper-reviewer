---
title: "One-Minute Video Generation with Test-Time Training"
summary: "TTT layers enable minute-long video generation with coherent stories from text, overcoming long-context limitations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 NVIDIA",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05298 {{< /keyword >}}
{{< keyword icon="writer" >}} Karan Dalal et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05298" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05298" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05298/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating long videos with coherent stories is challenging because of the inefficiency of self-attention layers in Transformers for long contexts. Alternatives like Mamba layers have limitations in expressing complex multi-scene stories, hindering their ability to create long, coherent videos with dynamic motion. Overcoming these limitations is essential for advancing video generation technology and making it more useful.



This paper introduces **Test-Time Training (TTT) layers**, enhancing a pre-trained Diffusion Transformer's ability to generate minute-long videos from text storyboards. By integrating TTT layers, which have more expressive hidden states, the model can produce coherent scenes with dynamic motion. The approach uses a curated dataset based on Tom and Jerry cartoons to demonstrate its effectiveness, outperforming baselines in human evaluations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Test-Time Training (TTT) layers improve video coherence in long-context generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study uses a dataset based on Tom and Jerry cartoons to demonstrate the method's effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} TTT layers combined with Diffusion Transformers significantly outperform other methods in video quality and consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Test-Time Training (TTT) layers to enhance long-context video generation, providing a promising approach for creating coherent, complex video stories and opening new avenues for efficient video Transformers.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05298/x2.png)

> 🔼 This figure showcases the capability of adding Test-Time Training (TTT) layers to a pre-trained Diffusion Transformer model for generating one-minute long videos from textual storyboards.  Using Tom and Jerry cartoons as an example, the model produces videos that narrate complex, multi-scene stories. The generated videos feature coherent scenes with dynamic movement, and importantly, are created in a single, continuous shot without any manual editing, stitching, or post-processing steps. Each generated video tells a completely novel story.
> <details>
> <summary>read the caption</summary>
> Figure 1: TTT layers enable a pre-trained Diffusion Transformer to generate one-minute videos from text storyboards. We use Tom and Jerry cartoons as a proof of concept. The videos tell complex stories with coherent scenes composed of dynamic motion. Every video is produced directly by the model in a single shot, without editing, stitching, or post-processing. Every story is newly created.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.SS2.p2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.SS2.p2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.SS2.p2.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.p2.1.1.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">Text following</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.p2.1.1.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">Motion naturalness</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.p2.1.1.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">Aesthetics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.SS2.p2.1.1.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Temporal consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.p2.1.1.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS2.p2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.SS2.p2.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Mamba 2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.p2.1.2.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">985</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.p2.1.2.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">976</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.p2.1.2.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">963</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.SS2.p2.1.2.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">988</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.p2.1.2.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">978</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.p2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.SS2.p2.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Gated DeltaNet</th>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.3.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">983</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.3.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">984</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.3.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">993</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS2.p2.1.3.2.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">1004</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.3.2.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">991</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.p2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.SS2.p2.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Sliding window</th>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.4.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.p2.1.4.3.2.1">1016</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.4.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">1000</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.4.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">1006</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS2.p2.1.4.3.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">975</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.p2.1.4.3.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">999</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.p2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.SS2.p2.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT-MLP</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.p2.1.5.4.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">1014</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.p2.1.5.4.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.p2.1.5.4.3.1">1039</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.p2.1.5.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.p2.1.5.4.4.1">1037</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.SS2.p2.1.5.4.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.p2.1.5.4.5.1">1042</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.p2.1.5.4.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.p2.1.5.4.6.1">1033</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of a human evaluation comparing the performance of different video generation models on one-minute-long videos.  The models were evaluated across four axes: Text Following, Motion Naturalness, Aesthetics, and Temporal Consistency.  Each axis was scored using the Elo rating system, which compares pairs of videos to determine which is superior on a given axis.  The table shows that the TTT-MLP model significantly outperforms the other models, achieving a 34 Elo point advantage over the second-best model on average.  The largest improvements were seen in Scene Consistency (+38 Elo points) and Motion Smoothness (+39 Elo points).  The Elo point improvements are contextualized by comparing them to the Elo point differences observed between various GPT models in the Chatbot Arena benchmark, highlighting the substantial improvement achieved by TTT-MLP.
> <details>
> <summary>read the caption</summary>
> Table 1: Human evaluation results for one-minute videos. TTT-MLP improves over the second best method by 34 Elo points on average. Axes with the most improvements are scene consistency (+38) and motion smoothness (+39). For context, GPT-4 scores 46 Elo points over GPT-3.5 Turbo, and GPT-4o scores 29 over GPT-4 Turbo in Chatbot Arena [6].
> </details>





### In-depth insights


#### TTT for Long Vid
Based on the paper, TTT layers could be applied for generating long videos. The model struggles with **long context** and the **cost of self-attention**. Instead, the models uses RNN layers as an efficient alternative to self-attention. The TTT layers are inserted into a pre-trained diffusion transformer and fine-tuned to generate long videos. There are several limitations when TTT layers are used such as **Short context**, **Wall-clock time**, and **Video artifacts**. 

#### RNN: More Memory
**Recurrent Neural Networks (RNNs) face memory limitations.** Standard RNNs struggle to retain information over long sequences due to vanishing gradients. Addressing this, **LSTM and GRU variants introduced gating mechanisms**, selectively updating and forgetting information in the cell state. Attention mechanisms further augment memory by allowing the model to focus on relevant parts of the input sequence. Recent advancements explore **transformer-based RNNs and memory-augmented networks**, aiming to capture longer-range dependencies and improve overall performance. The exploration of alternative architectures and training techniques will continue to enhance the memory capacity and capability of RNNs.

#### Gating TTT Layers
**Gating mechanisms** are crucial for stable integration of new layers in pre-trained networks. This approach prevents drastic initial changes by scaling the output of TTT layers. A learnable vector α allows the model to control the influence of TTT layers through a **tanh** function, initially minimizing their impact. This ensures the pre-trained model's knowledge is preserved during initial fine-tuning. The gating mechanism offers a balance, enabling the TTT layers to gradually contribute and refine the output without abruptly disrupting the existing knowledge. This stabilization significantly improves performance by ensuring a smoother adaptation process during training.

#### On-Chip Parallel
**On-chip parallelism** is a crucial aspect of modern hardware design, especially for compute-intensive tasks like deep learning. The trend leverages multiple processing units within a single chip to achieve higher throughput and energy efficiency.  **Data parallelism**, where the same operation is applied to different data subsets concurrently, is a common strategy.  **Model parallelism**, distributing the model's parameters and computations across multiple units, addresses the limitations of memory capacity.  The success hinges on efficient inter-unit communication and synchronization.  **Effective memory management** and minimizing data transfer overhead are critical to maximizing performance. As model sizes grow, on-chip parallelism becomes essential for training and inference, potentially using specialized architectures such as systolic arrays or custom accelerators for further efficiency gains. It also requires dedicated programming models that are aware of and exploit the specific on-chip architecture, in order to boost up performance.

#### Artifacts Remain
Even with advancements, generating long videos with complete consistency remains a challenge. **Temporal inconsistencies** between segments can arise, leading to jarring transitions. The model might struggle with **motion naturalness**, producing unnatural movements or defying physics. **Aesthetic issues**, such as inconsistent lighting or artistic style, can also surface. These artifacts suggest limitations in the model's understanding of long-range dependencies and its ability to maintain a coherent visual narrative over extended durations. Addressing these limitations is a crucial step towards achieving truly seamless and believable long-form video generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05298/x3.png)

> 🔼 This figure illustrates the core concept of Test-Time Training (TTT) layers.  RNN layers maintain a hidden state that changes based on an update rule.  The TTT approach modifies this by making the hidden state itself a trainable model (f) with its own weights (W). The update rule then becomes a gradient descent step to minimize a self-supervised loss (ℓ). Consequently, updating the hidden state during testing is akin to training the model f on that test data. This test-time training process is integrated into the TTT layers.
> <details>
> <summary>read the caption</summary>
> Figure 2: All RNN layers can be expressed as a hidden state that transitions according to an update rule. The key idea in [43] is to make the hidden state itself a model f𝑓fitalic_f with weights W𝑊Witalic_W, and the update rule a gradient step on the self-supervised loss ℓℓ\ellroman_ℓ. Therefore, updating the hidden state on a test sequence is equivalent to training the model f𝑓fitalic_f at test time. This process, known as Test-Time Training (TTT), is programmed into TTT layers. Figure and caption taken from [43].
> </details>



![](https://arxiv.org/html/2504.05298/x4.png)

> 🔼 Figure 3 illustrates the architecture and pipeline of the proposed approach for generating long videos. The left panel shows the modified architecture where a test-time training (TTT) layer with a learnable gate is added after each self-attention layer. This gating mechanism helps to control the influence of the TTT layer on the output, avoiding potential disruptions during the training process. The right panel details the overall pipeline that processes input sequences composed of 3-second segments.  This segmented approach allows for local self-attention within each segment and global TTT across the entire sequence, balancing computational efficiency with the ability to handle long-range dependencies in the video.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of our approach. Left: Our modified architecture adds a TTT layer with a learnable gate after each attention layer. See Subsection 3.1. Right: Our overall pipeline creates input sequences composed of 3-second segments. This structure enables us to apply self-attention layers locally over segments and TTT layers globally over the entire sequence. See Subsection 3.2.
> </details>



![](https://arxiv.org/html/2504.05298/x5.png)

> 🔼 Figure 4 illustrates the on-chip tensor parallelism strategy used to optimize the TTT-MLP model's efficiency on NVIDIA Hopper GPUs.  The left panel shows how the large hidden state (W<sup>(1)</sup> and W<sup>(2)</sup>) is split across multiple Streaming Multiprocessors (SMs) to reduce memory demands on each SM. Data transfer between high-bandwidth memory (HBM) and the smaller, faster SMEM occurs only at the start and end of processing, improving efficiency. The right panel depicts the on-chip computation: the hidden states are updated entirely within the SMs, and the DSMEM feature facilitates efficient AllReduce operations for aggregating intermediate activations across the different SMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: On-chip Tensor Parallel, discussed in Subsection 3.5. Left: To reduce the memory required on each SM for TTT-MLP, we shard the hidden state W(1)superscript𝑊1W^{(1)}italic_W start_POSTSUPERSCRIPT ( 1 ) end_POSTSUPERSCRIPT and W(2)superscript𝑊2W^{(2)}italic_W start_POSTSUPERSCRIPT ( 2 ) end_POSTSUPERSCRIPT across SMs, transferring them between HBM and SMEM only during initial loading and final output. Right: We update the hidden state entirely on-chip and use the DSMEM feature on the NVIDIA Hopper GPU architecture to AllReduce intermediate activations among SMs.
> </details>



![](https://arxiv.org/html/2504.05298/x7.png)

> 🔼 Figure 5 showcases a comparison of video frames generated by three different video generation models: TTT-MLP, Gated DeltaNet, and Sliding-window attention.  These models were compared in a human evaluation, with TTT-MLP emerging as a top performer.  The figure highlights the superior performance of TTT-MLP in preserving consistent scenes and achieving more natural motion.  Each row represents a different model, and the frames depict a scene where a cat is eating a pie while a mouse attempts to steal it. The visuals clearly illustrate TTT-MLP's strength in maintaining scene consistency across transitions (such as the cat's movement) and its ability to produce smooth, realistic actions, in contrast to the artifacts present in the other models' output.
> <details>
> <summary>read the caption</summary>
> Figure 5: Video frames comparing TTT-MLP against Gated DeltaNet and sliding-window attention, the leading baselines in our human evaluation. TTT-MLP demonstrates better scene consistency by preserving details across transitions and better motion naturalness by accurately depicting complex actions.
> </details>



![](https://arxiv.org/html/2504.05298/x8.png)

> 🔼 This figure shows a comparison of inference and training times for different video generation models on 63-second videos.  The model using full attention (considering the entire video sequence at once) is shown to be drastically slower (11 times slower for inference and 12 times slower for training) compared to the model using local attention (only focusing on short segments).  The proposed TTT-MLP model shows a significant improvement over full attention (2.5 times faster for inference and 3.8 times faster for training) but is still slower than Gated DeltaNet. This comparison highlights the efficiency gains of using the TTT-MLP method for generating long videos.
> <details>
> <summary>read the caption</summary>
> Figure 6:  For 63-second videos, inference with full attention (over 300k tokens) would have taken 11×11\times11 × longer than local attention, and training 12×12\times12 × longer, as discussed in Section 1. TTT-MLP takes 2.5×2.5\times2.5 × and 3.8×3.8\times3.8 × respectively – significantly more efficient than full attention, but still less efficient than, for example, Gated DeltaNet, which takes 1.8×1.8\times1.8 × longer than local attention in both inference and training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="p3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="p3.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="p3.6.7.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Video len.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p3.6.7.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">Ctx. len</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p3.6.7.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">Trainable parameters</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p3.6.7.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">Learning rate</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p3.6.7.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Schedule</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p3.6.7.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">Steps</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="p3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="p3.2.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">3 sec</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="p3.2.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">18048</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p3.2.2.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT / Pre-trained Params</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p3.2.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="p3.1.1.1.m1.1"><semantics id="p3.1.1.1.m1.1a"><mrow id="p3.1.1.1.m1.1.1" xref="p3.1.1.1.m1.1.1.cmml"><mn id="p3.1.1.1.m1.1.1.2" xref="p3.1.1.1.m1.1.1.2.cmml">1</mn><mo id="p3.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="p3.1.1.1.m1.1.1.3" xref="p3.1.1.1.m1.1.1.3.cmml"><mn id="p3.1.1.1.m1.1.1.3.2" xref="p3.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="p3.1.1.1.m1.1.1.3.3" xref="p3.1.1.1.m1.1.1.3.3.cmml"><mo id="p3.1.1.1.m1.1.1.3.3a" xref="p3.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="p3.1.1.1.m1.1.1.3.3.2" xref="p3.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.1.1.1.m1.1b"><apply id="p3.1.1.1.m1.1.1.cmml" xref="p3.1.1.1.m1.1.1"><times id="p3.1.1.1.m1.1.1.1.cmml" xref="p3.1.1.1.m1.1.1.1"></times><cn id="p3.1.1.1.m1.1.1.2.cmml" type="integer" xref="p3.1.1.1.m1.1.1.2">1</cn><apply id="p3.1.1.1.m1.1.1.3.cmml" xref="p3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="p3.1.1.1.m1.1.1.3.1.cmml" xref="p3.1.1.1.m1.1.1.3">superscript</csymbol><cn id="p3.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="p3.1.1.1.m1.1.1.3.2">10</cn><apply id="p3.1.1.1.m1.1.1.3.3.cmml" xref="p3.1.1.1.m1.1.1.3.3"><minus id="p3.1.1.1.m1.1.1.3.3.1.cmml" xref="p3.1.1.1.m1.1.1.3.3"></minus><cn id="p3.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="p3.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.1.1.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="p3.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math> / <math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="p3.2.2.2.m2.1"><semantics id="p3.2.2.2.m2.1a"><mrow id="p3.2.2.2.m2.1.1" xref="p3.2.2.2.m2.1.1.cmml"><mn id="p3.2.2.2.m2.1.1.2" xref="p3.2.2.2.m2.1.1.2.cmml">1</mn><mo id="p3.2.2.2.m2.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.2.2.2.m2.1.1.1.cmml">×</mo><msup id="p3.2.2.2.m2.1.1.3" xref="p3.2.2.2.m2.1.1.3.cmml"><mn id="p3.2.2.2.m2.1.1.3.2" xref="p3.2.2.2.m2.1.1.3.2.cmml">10</mn><mrow id="p3.2.2.2.m2.1.1.3.3" xref="p3.2.2.2.m2.1.1.3.3.cmml"><mo id="p3.2.2.2.m2.1.1.3.3a" xref="p3.2.2.2.m2.1.1.3.3.cmml">−</mo><mn id="p3.2.2.2.m2.1.1.3.3.2" xref="p3.2.2.2.m2.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.2.2.2.m2.1b"><apply id="p3.2.2.2.m2.1.1.cmml" xref="p3.2.2.2.m2.1.1"><times id="p3.2.2.2.m2.1.1.1.cmml" xref="p3.2.2.2.m2.1.1.1"></times><cn id="p3.2.2.2.m2.1.1.2.cmml" type="integer" xref="p3.2.2.2.m2.1.1.2">1</cn><apply id="p3.2.2.2.m2.1.1.3.cmml" xref="p3.2.2.2.m2.1.1.3"><csymbol cd="ambiguous" id="p3.2.2.2.m2.1.1.3.1.cmml" xref="p3.2.2.2.m2.1.1.3">superscript</csymbol><cn id="p3.2.2.2.m2.1.1.3.2.cmml" type="integer" xref="p3.2.2.2.m2.1.1.3.2">10</cn><apply id="p3.2.2.2.m2.1.1.3.3.cmml" xref="p3.2.2.2.m2.1.1.3.3"><minus id="p3.2.2.2.m2.1.1.3.3.1.cmml" xref="p3.2.2.2.m2.1.1.3.3"></minus><cn id="p3.2.2.2.m2.1.1.3.3.2.cmml" type="integer" xref="p3.2.2.2.m2.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.2.2.2.m2.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="p3.2.2.2.m2.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p3.2.2.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">Cosine / Constant</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p3.2.2.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">5000</td>
</tr>
<tr class="ltx_tr" id="p3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p3.3.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">9 sec</th>
<td class="ltx_td ltx_align_center" id="p3.3.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">51456</td>
<td class="ltx_td ltx_align_center" id="p3.3.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT + Local Attn (QKVO)</td>
<td class="ltx_td ltx_align_center" id="p3.3.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="p3.3.3.1.m1.1"><semantics id="p3.3.3.1.m1.1a"><mrow id="p3.3.3.1.m1.1.1" xref="p3.3.3.1.m1.1.1.cmml"><mn id="p3.3.3.1.m1.1.1.2" xref="p3.3.3.1.m1.1.1.2.cmml">1</mn><mo id="p3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.3.3.1.m1.1.1.1.cmml">×</mo><msup id="p3.3.3.1.m1.1.1.3" xref="p3.3.3.1.m1.1.1.3.cmml"><mn id="p3.3.3.1.m1.1.1.3.2" xref="p3.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="p3.3.3.1.m1.1.1.3.3" xref="p3.3.3.1.m1.1.1.3.3.cmml"><mo id="p3.3.3.1.m1.1.1.3.3a" xref="p3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="p3.3.3.1.m1.1.1.3.3.2" xref="p3.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.3.3.1.m1.1b"><apply id="p3.3.3.1.m1.1.1.cmml" xref="p3.3.3.1.m1.1.1"><times id="p3.3.3.1.m1.1.1.1.cmml" xref="p3.3.3.1.m1.1.1.1"></times><cn id="p3.3.3.1.m1.1.1.2.cmml" type="integer" xref="p3.3.3.1.m1.1.1.2">1</cn><apply id="p3.3.3.1.m1.1.1.3.cmml" xref="p3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="p3.3.3.1.m1.1.1.3.1.cmml" xref="p3.3.3.1.m1.1.1.3">superscript</csymbol><cn id="p3.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="p3.3.3.1.m1.1.1.3.2">10</cn><apply id="p3.3.3.1.m1.1.1.3.3.cmml" xref="p3.3.3.1.m1.1.1.3.3"><minus id="p3.3.3.1.m1.1.1.3.3.1.cmml" xref="p3.3.3.1.m1.1.1.3.3"></minus><cn id="p3.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="p3.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.3.3.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="p3.3.3.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="p3.3.3.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Constant</td>
<td class="ltx_td ltx_align_center" id="p3.3.3.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">5000</td>
</tr>
<tr class="ltx_tr" id="p3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p3.4.4.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">18 sec</th>
<td class="ltx_td ltx_align_center" id="p3.4.4.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">99894</td>
<td class="ltx_td ltx_align_center" id="p3.4.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT + Local Attn (QKVO)</td>
<td class="ltx_td ltx_align_center" id="p3.4.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="p3.4.4.1.m1.1"><semantics id="p3.4.4.1.m1.1a"><mrow id="p3.4.4.1.m1.1.1" xref="p3.4.4.1.m1.1.1.cmml"><mn id="p3.4.4.1.m1.1.1.2" xref="p3.4.4.1.m1.1.1.2.cmml">1</mn><mo id="p3.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.4.4.1.m1.1.1.1.cmml">×</mo><msup id="p3.4.4.1.m1.1.1.3" xref="p3.4.4.1.m1.1.1.3.cmml"><mn id="p3.4.4.1.m1.1.1.3.2" xref="p3.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="p3.4.4.1.m1.1.1.3.3" xref="p3.4.4.1.m1.1.1.3.3.cmml"><mo id="p3.4.4.1.m1.1.1.3.3a" xref="p3.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="p3.4.4.1.m1.1.1.3.3.2" xref="p3.4.4.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.4.4.1.m1.1b"><apply id="p3.4.4.1.m1.1.1.cmml" xref="p3.4.4.1.m1.1.1"><times id="p3.4.4.1.m1.1.1.1.cmml" xref="p3.4.4.1.m1.1.1.1"></times><cn id="p3.4.4.1.m1.1.1.2.cmml" type="integer" xref="p3.4.4.1.m1.1.1.2">1</cn><apply id="p3.4.4.1.m1.1.1.3.cmml" xref="p3.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="p3.4.4.1.m1.1.1.3.1.cmml" xref="p3.4.4.1.m1.1.1.3">superscript</csymbol><cn id="p3.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="p3.4.4.1.m1.1.1.3.2">10</cn><apply id="p3.4.4.1.m1.1.1.3.3.cmml" xref="p3.4.4.1.m1.1.1.3.3"><minus id="p3.4.4.1.m1.1.1.3.3.1.cmml" xref="p3.4.4.1.m1.1.1.3.3"></minus><cn id="p3.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="p3.4.4.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.4.4.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="p3.4.4.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="p3.4.4.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Constant</td>
<td class="ltx_td ltx_align_center" id="p3.4.4.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">1000</td>
</tr>
<tr class="ltx_tr" id="p3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p3.5.5.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">30 sec</th>
<td class="ltx_td ltx_align_center" id="p3.5.5.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">168320</td>
<td class="ltx_td ltx_align_center" id="p3.5.5.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT + Local Attn (QKVO)</td>
<td class="ltx_td ltx_align_center" id="p3.5.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="p3.5.5.1.m1.1"><semantics id="p3.5.5.1.m1.1a"><mrow id="p3.5.5.1.m1.1.1" xref="p3.5.5.1.m1.1.1.cmml"><mn id="p3.5.5.1.m1.1.1.2" xref="p3.5.5.1.m1.1.1.2.cmml">1</mn><mo id="p3.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.5.5.1.m1.1.1.1.cmml">×</mo><msup id="p3.5.5.1.m1.1.1.3" xref="p3.5.5.1.m1.1.1.3.cmml"><mn id="p3.5.5.1.m1.1.1.3.2" xref="p3.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="p3.5.5.1.m1.1.1.3.3" xref="p3.5.5.1.m1.1.1.3.3.cmml"><mo id="p3.5.5.1.m1.1.1.3.3a" xref="p3.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="p3.5.5.1.m1.1.1.3.3.2" xref="p3.5.5.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.5.5.1.m1.1b"><apply id="p3.5.5.1.m1.1.1.cmml" xref="p3.5.5.1.m1.1.1"><times id="p3.5.5.1.m1.1.1.1.cmml" xref="p3.5.5.1.m1.1.1.1"></times><cn id="p3.5.5.1.m1.1.1.2.cmml" type="integer" xref="p3.5.5.1.m1.1.1.2">1</cn><apply id="p3.5.5.1.m1.1.1.3.cmml" xref="p3.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="p3.5.5.1.m1.1.1.3.1.cmml" xref="p3.5.5.1.m1.1.1.3">superscript</csymbol><cn id="p3.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="p3.5.5.1.m1.1.1.3.2">10</cn><apply id="p3.5.5.1.m1.1.1.3.3.cmml" xref="p3.5.5.1.m1.1.1.3.3"><minus id="p3.5.5.1.m1.1.1.3.3.1.cmml" xref="p3.5.5.1.m1.1.1.3.3"></minus><cn id="p3.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="p3.5.5.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.5.5.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="p3.5.5.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="p3.5.5.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Constant</td>
<td class="ltx_td ltx_align_center" id="p3.5.5.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">500</td>
</tr>
<tr class="ltx_tr" id="p3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="p3.6.6.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">63 sec</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p3.6.6.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">341550</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p3.6.6.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT + Local Attn (QKVO)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p3.6.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="p3.6.6.1.m1.1"><semantics id="p3.6.6.1.m1.1a"><mrow id="p3.6.6.1.m1.1.1" xref="p3.6.6.1.m1.1.1.cmml"><mn id="p3.6.6.1.m1.1.1.2" xref="p3.6.6.1.m1.1.1.2.cmml">1</mn><mo id="p3.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="p3.6.6.1.m1.1.1.1.cmml">×</mo><msup id="p3.6.6.1.m1.1.1.3" xref="p3.6.6.1.m1.1.1.3.cmml"><mn id="p3.6.6.1.m1.1.1.3.2" xref="p3.6.6.1.m1.1.1.3.2.cmml">10</mn><mrow id="p3.6.6.1.m1.1.1.3.3" xref="p3.6.6.1.m1.1.1.3.3.cmml"><mo id="p3.6.6.1.m1.1.1.3.3a" xref="p3.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="p3.6.6.1.m1.1.1.3.3.2" xref="p3.6.6.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="p3.6.6.1.m1.1b"><apply id="p3.6.6.1.m1.1.1.cmml" xref="p3.6.6.1.m1.1.1"><times id="p3.6.6.1.m1.1.1.1.cmml" xref="p3.6.6.1.m1.1.1.1"></times><cn id="p3.6.6.1.m1.1.1.2.cmml" type="integer" xref="p3.6.6.1.m1.1.1.2">1</cn><apply id="p3.6.6.1.m1.1.1.3.cmml" xref="p3.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="p3.6.6.1.m1.1.1.3.1.cmml" xref="p3.6.6.1.m1.1.1.3">superscript</csymbol><cn id="p3.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="p3.6.6.1.m1.1.1.3.2">10</cn><apply id="p3.6.6.1.m1.1.1.3.3.cmml" xref="p3.6.6.1.m1.1.1.3.3"><minus id="p3.6.6.1.m1.1.1.3.3.1.cmml" xref="p3.6.6.1.m1.1.1.3.3"></minus><cn id="p3.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="p3.6.6.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="p3.6.6.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="p3.6.6.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p3.6.6.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Constant</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p3.6.6.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">250</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the multi-stage fine-tuning process of a pre-trained model on Tom and Jerry video segments.  The first stage involves fine-tuning the entire pre-trained model on short (3-second) segments, using higher learning rates for newly added TTT (Test-Time Training) layers and gates to facilitate adaptation. Subsequent stages focus on fine-tuning only the TTT layers, gates, and self-attention parameters with progressively reduced learning rates, aiming to refine the model's performance on longer video segments while retaining the knowledge acquired in the initial stages.  The table shows the video length, context length, trainable parameters, learning rate, scheduling method, and number of training steps for each stage.
> <details>
> <summary>read the caption</summary>
> Table 2: Hyper-parameters for multi-stage fine-tuning. First, the entire pre-trained model is fine-tuned on 3-second segments of Tom and Jerry, with higher learning rates assigned to the newly introduced TTT layers and gates. Then, only TTT layers, gates, and self-attention parameters are fine-tuned at reduced learning rates.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="p4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="p4.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="p4.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p4.1.1.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">Text following</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p4.1.1.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">Motion naturalness</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p4.1.1.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">Aesthetics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="p4.1.1.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">Temporal consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="p4.1.1.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="p4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="p4.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Local Attention</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="p4.1.2.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">965</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p4.1.2.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">972</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p4.1.2.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">969</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p4.1.2.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">944</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p4.1.2.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">962</td>
</tr>
<tr class="ltx_tr" id="p4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p4.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT-Linear</th>
<td class="ltx_td ltx_align_center" id="p4.1.3.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">1003</td>
<td class="ltx_td ltx_align_center" id="p4.1.3.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">995</td>
<td class="ltx_td ltx_align_center" id="p4.1.3.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">1007</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p4.1.3.2.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">1001</td>
<td class="ltx_td ltx_align_center" id="p4.1.3.2.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">1001</td>
</tr>
<tr class="ltx_tr" id="p4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p4.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Mamba 2</th>
<td class="ltx_td ltx_align_center" id="p4.1.4.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="p4.1.4.3.2.1">1023</span></td>
<td class="ltx_td ltx_align_center" id="p4.1.4.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">987</td>
<td class="ltx_td ltx_align_center" id="p4.1.4.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">1008</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p4.1.4.3.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">1004</td>
<td class="ltx_td ltx_align_center" id="p4.1.4.3.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">1005</td>
</tr>
<tr class="ltx_tr" id="p4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p4.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">Gated DeltaNet</th>
<td class="ltx_td ltx_align_center" id="p4.1.5.4.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">1020</td>
<td class="ltx_td ltx_align_center" id="p4.1.5.4.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="p4.1.5.4.3.1">1039</span></td>
<td class="ltx_td ltx_align_center" id="p4.1.5.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="p4.1.5.4.4.1">1044</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p4.1.5.4.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">1026</td>
<td class="ltx_td ltx_align_center" id="p4.1.5.4.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="p4.1.5.4.6.1">1032</span></td>
</tr>
<tr class="ltx_tr" id="p4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="p4.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">SWA</th>
<td class="ltx_td ltx_align_center" id="p4.1.6.5.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">995</td>
<td class="ltx_td ltx_align_center" id="p4.1.6.5.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">1004</td>
<td class="ltx_td ltx_align_center" id="p4.1.6.5.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">993</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p4.1.6.5.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">980</td>
<td class="ltx_td ltx_align_center" id="p4.1.6.5.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">993</td>
</tr>
<tr class="ltx_tr" id="p4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="p4.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">TTT-MLP</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p4.1.7.6.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">994</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p4.1.7.6.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">1002</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p4.1.7.6.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">1002</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="p4.1.7.6.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">1019</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p4.1.7.6.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">1004</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a human evaluation comparing different video generation models on 18-second-long videos.  The models evaluated include various RNN-based approaches (Mamba 2, Gated DeltaNet, TTT-Linear) and a baseline model using local attention. The evaluation was conducted across four axes: Text Following, Motion Naturalness, Aesthetics, and Temporal Consistency. Each axis was scored using the Elo system, and the average Elo scores for each model are presented in the table. The comparison helps assess the effectiveness of these approaches in generating coherent and high-quality videos for longer durations.
> <details>
> <summary>read the caption</summary>
> Table 3: Human evaluation results for 18-second videos, discussed in Subsection 4.3 and 4.4.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05298/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05298/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}