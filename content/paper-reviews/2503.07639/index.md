---
title: "Mixture of Experts Made Intrinsically Interpretable"
summary: "MoE-X: An intrinsically interpretable Mixture-of-Experts language model that uses sparse, wide networks to enhance transparency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Interpretability", "🏢 University of Oxford",]
showSummary: true
date: 2025-03-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07639 {{< /keyword >}}
{{< keyword icon="writer" >}} Xingyi Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07639" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07639" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07639/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models excel, but their inner workings remain a mystery, leading to unpredictable behavior. **Polysemanticity**, where neurons encode multiple concepts, hinders interpretability. Post-hoc methods like Sparse Auto-Encoders (SAEs) are used, but these are costly and often incomplete. Instead, architectural changes can directly design interpretability into the model, but this is often done on toy tasks or comes at a compromise.



To address this, the paper introduces **MoE-X**, a Mixture-of-Experts model designed for intrinsic interpretability. It leverages wider, sparser networks, made possible by MoE architectures, to capture interpretable factors. It is done by Rewriting the MoE layer as a sparse, large MLP while enforcing sparse activation within each expert, and routes based on activation sparsity. Evaluations shows MoE-X achieves both competitive performance and enhanced interpretability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Wider, sparser MLP layers encourage more disentangled internal representations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ReLU activation within experts and sparsity-aware routing are key designs for intrinsic interpretability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MoE-X achieves strong performance and superior interpretability compared to dense models and SAE-based approaches. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research presents **MoE-X**, to build intrinsically interpretable models, potentially leading to more **trustworthy and understandable AI systems**. The method is relevant to current trends in mechanistic interpretability and opens avenues for **investigating sparse architectures and routing mechanisms**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07639/x1.png)

> 🔼 This figure illustrates the MoE-X architecture, highlighting its design for interpretability.  MoE-X addresses the challenge of polysemantic neurons in large language models by creating a wider network with sparse activations. Unlike standard MLPs which have dense connections and activations, MoE-X employs multiple smaller MLPs ('experts') that are only activated for a subset of input tokens.  Crucially, MoE-X enforces sparsity within each expert and uses a sparsity-aware routing mechanism. This mechanism prioritizes sending tokens to experts producing the sparsest activations. This design encourages more disentangled feature representations within the network, which contributes to better interpretability. The figure contrasts MoE-X with traditional dense and wide MLPs, showcasing MoE-X's unique combination of width and controlled sparsity.
> <details>
> <summary>read the caption</summary>
> Figure 1: MoE-X introduces a sparse and wide network architecture designed for interpretability. Compared to dense MLPs, it incorporates both sparsity and a wider structure. Unlike traditional MoE models, it enforces sparsity within each expert and routes tokens to the sparsest experts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.3.3" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.3.4"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.4.1" style="font-size:80%;background-color:#FFF2E6;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1" style="font-size:80%;background-color:#FFF2E6;">Val Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.1" style="font-size:80%;background-color:#FFF2E6;">Coverage<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T1.2.2.2.1.m1.1a"><mo id="S5.T1.2.2.2.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.m1.1b"><ci id="S5.T1.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.3.1" style="font-size:80%;background-color:#FFF2E6;">Reconstruction<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T1.3.3.3.1.m1.1a"><mo id="S5.T1.3.3.3.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.1.m1.1b"><ci id="S5.T1.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.4.1.1"><span class="ltx_text" id="S5.T1.3.4.1.1.1" style="font-size:80%;">GELU (GPT-2)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.4.1.2"><span class="ltx_text" id="S5.T1.3.4.1.2.1" style="font-size:80%;">0.213</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.4.1.3"><span class="ltx_text" id="S5.T1.3.4.1.3.1" style="font-size:80%;">0.356</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.4.1.4"><span class="ltx_text" id="S5.T1.3.4.1.4.1" style="font-size:80%;">0.608</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.5.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T1.3.5.2.1"><span class="ltx_text" id="S5.T1.3.5.2.1.1" style="font-size:80%;color:#808080;background-color:#F2F2F2;">Activation Function</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.6.3.1"><span class="ltx_text" id="S5.T1.3.6.3.1.1" style="font-size:80%;">ReLU</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.6.3.2"><span class="ltx_text" id="S5.T1.3.6.3.2.1" style="font-size:80%;">0.215</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.6.3.3"><span class="ltx_text" id="S5.T1.3.6.3.3.1" style="font-size:80%;">0.312</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.6.3.4"><span class="ltx_text" id="S5.T1.3.6.3.4.1" style="font-size:80%;">0.581</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.7.4.1"><span class="ltx_text" id="S5.T1.3.7.4.1.1" style="font-size:80%;">GEGLU</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.7.4.2"><span class="ltx_text" id="S5.T1.3.7.4.2.1" style="font-size:80%;">0.209</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.7.4.3"><span class="ltx_text" id="S5.T1.3.7.4.3.1" style="font-size:80%;">0.255</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.7.4.4"><span class="ltx_text" id="S5.T1.3.7.4.4.1" style="font-size:80%;">0.394</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.8.5.1"><span class="ltx_text" id="S5.T1.3.8.5.1.1" style="font-size:80%;">SoLU</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.8.5.2"><span class="ltx_text" id="S5.T1.3.8.5.2.1" style="font-size:80%;">0.216</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.8.5.3"><span class="ltx_text" id="S5.T1.3.8.5.3.1" style="font-size:80%;">0.306</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.8.5.4"><span class="ltx_text" id="S5.T1.3.8.5.4.1" style="font-size:80%;">0.343</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.9.6" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T1.3.9.6.1"><span class="ltx_text" id="S5.T1.3.9.6.1.1" style="font-size:80%;color:#808080;background-color:#F2F2F2;">Mixture-of-Experts</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.10.7.1"><span class="ltx_text" id="S5.T1.3.10.7.1.1" style="font-size:80%;">Monet-HD</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.10.7.2"><span class="ltx_text ltx_font_bold" id="S5.T1.3.10.7.2.1" style="font-size:80%;">0.210</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.10.7.3"><span class="ltx_text" id="S5.T1.3.10.7.3.1" style="font-size:80%;">0.312</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.10.7.4"><span class="ltx_text" id="S5.T1.3.10.7.4.1" style="font-size:80%;">0.528</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.11.8.1"><span class="ltx_text" id="S5.T1.3.11.8.1.1" style="font-size:80%;">Monet-VD</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.11.8.2"><span class="ltx_text" id="S5.T1.3.11.8.2.1" style="font-size:80%;">0.212</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.11.8.3"><span class="ltx_text" id="S5.T1.3.11.8.3.1" style="font-size:80%;">0.283</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.11.8.4"><span class="ltx_text" id="S5.T1.3.11.8.4.1" style="font-size:80%;">0.482</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.12.9.1"><span class="ltx_text" id="S5.T1.3.12.9.1.1" style="font-size:80%;">PEER</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.12.9.2"><span class="ltx_text" id="S5.T1.3.12.9.2.1" style="font-size:80%;">0.214</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.12.9.3"><span class="ltx_text" id="S5.T1.3.12.9.3.1" style="font-size:80%;">0.323</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.12.9.4"><span class="ltx_text" id="S5.T1.3.12.9.4.1" style="font-size:80%;">0.426</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.13.10.1"><span class="ltx_text" id="S5.T1.3.13.10.1.1" style="font-size:80%;">Switch</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.13.10.2"><span class="ltx_text" id="S5.T1.3.13.10.2.1" style="font-size:80%;">0.212</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.3.13.10.3"><span class="ltx_text" id="S5.T1.3.13.10.3.1" style="font-size:80%;">0.424</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.13.10.4"><span class="ltx_text" id="S5.T1.3.13.10.4.1" style="font-size:80%;">0.734</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T1.3.14.11.1"><span class="ltx_text" id="S5.T1.3.14.11.1.1" style="font-size:80%;">MoE-X</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.3.14.11.2"><span class="ltx_text" id="S5.T1.3.14.11.2.1" style="font-size:80%;">0.211</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T1.3.14.11.3"><span class="ltx_text ltx_font_bold" id="S5.T1.3.14.11.3.1" style="font-size:80%;">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.14.11.4"><span class="ltx_text ltx_font_bold" id="S5.T1.3.14.11.4.1" style="font-size:80%;">0.840</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance and interpretability of different model architectures on a chess dataset.  The key characteristic is that all models have the same number of activated parameters.  This allows for a direct comparison of the impact of architectural choices (e.g., activation function, mixture-of-experts design) on both performance (measured by validation loss) and interpretability (measured by BSP Coverage and Reconstruction scores).  The baseline is a standard GPT-2 model, and it is compared against models using various activation functions and mixture-of-experts architectures.  Higher scores in the Coverage and Reconstruction columns indicate better interpretability.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with baseline method by keeping model activated parameters the same.
> </details>





### In-depth insights


#### MoE: Intrinsically
The concept of making Mixture of Experts (MoE) intrinsically interpretable is fascinating. Current MLPs neurons are **polysemantic**. The MoE route-based mechanism can be designed to prioritize only salient features, thus creating **sparse wide network**. This approach ensures that the most relevant features are processed by the experts. Sparsity is achieved by ReLU activation and sparsity-aware routing. Post-hoc interpretability methods like sparse autoencoders (SAEs) are **computationally expensive**. Therefore, intrinsicality is achieved by **designing interpretability directly into the model** architecture to discourage polysemanticity during training.

#### Sparsity & Width
**Sparsity and width** are crucial architectural elements in neural networks, influencing both performance and interpretability. **Width**, referring to the number of neurons in a layer, provides capacity for the network to learn complex patterns. Increasing width allows the model to represent more diverse features and potentially reduces feature superposition. **Sparsity**, achieved through mechanisms like ReLU activation or k-sparse layers, encourages only a subset of neurons to be active for any given input. This reduces interference between features, making the model's internal representations more disentangled and interpretable. The interplay between sparsity and width is critical; a wide network with controlled sparsity can effectively allocate distinct neurons to specific features while minimizing redundancy and promoting clearer, more semantically meaningful representations.

#### ReLU Experts Rule
The name 'ReLU Experts Rule' implies the significant impact of using ReLU activation functions within a Mixture of Experts architecture. **ReLU's sparsity-inducing property** likely leads to more disentangled representations, addressing polysemanticity. This sparsity, inherent to ReLU, allows each expert to specialize on a narrower set of features. The 'rule' suggests that **ReLU's effect on interpretability** outweighs any potential drawbacks. **Efficient scaling and enhanced feature disentanglement** contribute significantly to model transparency, highlighting the practical advantages of this design choice.

#### Chess LLM: Truth
While “Chess LLM: Truth” isn't present, the paper extensively utilizes chess as a testing ground. **Chess provides a controlled environment to evaluate interpretability**. Since chess has definitive rules, a chess LLM's internal representations are objectively verifiable against the ground truth of board states and optimal moves. The work here demonstrates a clear path for creating LLMs that are aligned with the internal representations to outside world. It avoids LLM from **hallucinating factors** because the objective truth is available in the outside world. This concept should be applied to other area, which has clear rule-based setting, to make LLM more interpretable.

#### Routing Matters
Routing is critical, and this paper appears to highlight the need for routing mechanisms that go beyond simple load balancing. Effective routing is tightly coupled with the model's overall goal; **the routing must consider interpretability** rather than just performance. A carefully designed routing system, which considers sparsity, can **facilitate the emergence of disentangled representations**. A routing mechanism that simply distributes tokens to experts without considering their relevance to the input or the desired output could actually hinder interpretability. The paper's emphasis on sparsity-aware routing suggests that a routing function must **prioritize experts whose activations best reflect the salient features** of the input, leading to a more understandable and meaningful representation. This requires innovations in how routing decisions are made, potentially involving approximations or heuristics to maintain computational efficiency while still promoting interpretability. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07639/x2.png)

> 🔼 This figure illustrates the methodology used to evaluate the interpretability of a large language model (LLM) in the context of chess games.  The LLM processes a Portable Game Notation (PGN) string, a textual representation of a chess game. The model's internal activations (from the Multi-Layer Perceptron, or MLP) are then analyzed to determine how well they align with semantically meaningful properties of the chess board state (BSP).  The figure visually connects the input PGN string, the internal MLP hidden layer activations, and their relation to the BSP to show how the LLM processes and represents chess-relevant information.  This process helps assess whether the LLM's internal representations are aligned with the actual meaningful concepts of chess, allowing for an evaluation of the model's interpretability.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of using chess game to evaluate the LLM’s interpretability.
> </details>



![](https://arxiv.org/html/2503.07639/x3.png)

> 🔼 This figure displays the relationship between model size (in MB) and BSP (Board State Properties) Coverage score.  Multiple lines represent different model configurations, varying the hidden size multiplier (α) and the input dimension (d) of the MLP (Multi-Layer Perceptron).  The x-axis shows model size, and the y-axis shows the BSP Coverage score, a metric indicating the model's ability to capture meaningful chessboard information.  The graph allows for a visual comparison of how increasing model size, through adjustments in α and d, affects the model's interpretability as measured by the coverage score.  A baseline using Sparse Autoencoder (SAE) is also included for reference.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparision BSP Coverage score v.s. the Model size.
> </details>



![](https://arxiv.org/html/2503.07639/x4.png)

> 🔼 This figure displays the results of an experiment evaluating the relationship between the sparsity of hidden layer activations and the interpretability of a language model trained on chess game data.  The x-axis represents the L0 norm of hidden layer activations, which is a measure of sparsity (lower values indicate higher sparsity). The y-axis represents the BSP Coverage score, a metric for assessing interpretability in this specific context, where higher scores mean better interpretability.  The plot shows multiple lines representing different model sizes, demonstrating how changes in model size affect the relationship between sparsity and interpretability.  The goal of the experiment was to determine the optimal level of sparsity for achieving high interpretability.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparing BSP Coverage score v.s. L𝐿Litalic_L-0 norm of the hidden.
> </details>



![](https://arxiv.org/html/2503.07639/x7.png)

> 🔼 This figure compares the performance of different models in terms of BSP Coverage and Reconstruction scores across varying model sizes.  BSP Coverage represents how well the model's internal activations align with semantically meaningful chess board state properties.  Reconstruction score reflects how well the model can recover the complete state of a chessboard from its internal representations.  The figure visually demonstrates the impact of model size and architectural choices (e.g., different activation functions and Mixture of Experts approaches) on the model's ability to both capture interpretable chess features and reconstruct board states from those features.
> <details>
> <summary>read the caption</summary>
> Figure 5: BSP Coverage and Reconstruction score of different model sizes.
> </details>



![](https://arxiv.org/html/2503.07639/x8.png)

> 🔼 This figure visualizes the encoder weights of different Mixture-of-Experts (MoE) models trained on a chess dataset using t-distributed Stochastic Neighbor Embedding (t-SNE).  Each point represents an encoder weight vector. The different panels show the results for three model variants:  a standard MoE, an MoE with ReLU activation functions in the expert networks, and a MoE incorporating all design choices of the proposed MoE-X architecture. The clustering of points reveals how the different architectural choices influence the structure of the latent space learned by the model.  Specifically, it helps to show if features are disentangled across experts, aiding the interpretability of the model.
> <details>
> <summary>read the caption</summary>
> Figure 6: t-SNE projections of encoder weights for original MoE layer, MoE with ReLU experts, and without full MoE-X layers, trained on Chess dataset.
> </details>



![](https://arxiv.org/html/2503.07639/x9.png)

> 🔼 This figure visualizes the results of an auto-interpretation experiment on the MoE-X small model, trained on the RedPajama-v2 validation dataset. It showcases several examples of activated tokens for different experts, along with their corresponding interpretations generated by the auto-interpretation process. The interpretations provide insights into the semantic meaning each expert is associated with.
> <details>
> <summary>read the caption</summary>
> Figure 7: Activated tokens for experts in MoE-X small on RedPajama-v2 validation dataset. Their interpretations were identified using the auto-interpretation.
> </details>



![](https://arxiv.org/html/2503.07639/x13.png)

> 🔼 This figure displays the results of an automated interpretability detection experiment on the 8th layer of a hidden activation in a language model.  The experiment used 1000 randomly selected features and calculated 95% confidence intervals for their accuracy. Each feature's accuracy was measured using 100 activating and 100 non-activating text examples. The examples were chosen using stratified sampling to ensure a balanced representation across the activation distribution's deciles. The 'Not' label indicates non-activating text.
> <details>
> <summary>read the caption</summary>
> Figure 8: Automated Interpretability Detection Results in 8th Layer Hidden Activation Quantiles 1000 Random Features with 95% Confidence Intervals. Not indicates non-activating text.
> </details>



![](https://arxiv.org/html/2503.07639/x14.png)

> 🔼 Figure 9 compares the performance of two gating mechanisms: the standard TopK gating and the proposed sparsity-aware routing method. Both methods aim to select experts for processing input tokens within a Mixture-of-Experts (MoE) architecture.  The x-axis represents the L0 norm of the experts' activation vectors (a measure of sparsity, where lower values indicate higher sparsity).  The y-axis shows the value of the gating scores assigned to each expert by each method. The plot reveals that the TopK gating mechanism does not reliably select sparse experts. In contrast, the proposed sparsity-aware gating scores exhibit a strong negative correlation with the actual expert sparsity. The plot visually demonstrates that the new method significantly improves the selection of sparse experts.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison between TopK gating and our Sparsity routing. Our score identifies a more sparse set of experts.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.4" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.5.1" style="font-size:80%;background-color:#FFF2E6;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1" style="font-size:80%;background-color:#FFF2E6;">OpenWeb (PPL)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.1" style="font-size:80%;background-color:#FFF2E6;">LAMBADA (PPL)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T2.2.2.2.1.m1.1a"><mo id="S5.T2.2.2.2.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><ci id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.1" style="font-size:80%;background-color:#FFF2E6;">WikiText103 (PPL)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T2.3.3.3.1.m1.1a"><mo id="S5.T2.3.3.3.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.1.m1.1b"><ci id="S5.T2.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.1" style="font-size:80%;background-color:#FFF2E6;">WikiText2 (PPL)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1" style="background-color:#FFF2E6;"><semantics id="S5.T2.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.1.m1.1.1" mathbackground="#FFF2E6" stretchy="false" xref="S5.T2.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.8.9.1.1"><span class="ltx_text" id="S5.T2.8.9.1.1.1" style="font-size:80%;">GPT-2 Small</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.9.1.2"><span class="ltx_text" id="S5.T2.8.9.1.2.1" style="font-size:80%;">22.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.9.1.3"><span class="ltx_text" id="S5.T2.8.9.1.3.1" style="font-size:80%;">32.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.9.1.4"><span class="ltx_text" id="S5.T2.8.9.1.4.1" style="font-size:80%;">49.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.9.1.5"><span class="ltx_text" id="S5.T2.8.9.1.5.1" style="font-size:80%;">44.36</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.10.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.8.10.2.1"><span class="ltx_text" id="S5.T2.8.10.2.1.1" style="font-size:80%;background-color:#F2F2F2;">GPT-2 Small w SAE</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.10.2.2"><span class="ltx_text" id="S5.T2.8.10.2.2.1" style="font-size:80%;background-color:#F2F2F2;">31.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.10.2.3"><span class="ltx_text" id="S5.T2.8.10.2.3.1" style="font-size:80%;background-color:#F2F2F2;">38.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.10.2.4"><span class="ltx_text" id="S5.T2.8.10.2.4.1" style="font-size:80%;background-color:#F2F2F2;">55.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.10.2.5"><span class="ltx_text" id="S5.T2.8.10.2.5.1" style="font-size:80%;background-color:#F2F2F2;">49.16</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.5.5.1">
<span class="ltx_text" id="S5.T2.5.5.1.1" style="font-size:80%;">Switch-S (8</span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.5.5.1.m1.1"><semantics id="S5.T2.5.5.1.m1.1a"><mo id="S5.T2.5.5.1.m1.1.1" mathsize="80%" xref="S5.T2.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.1.m1.1b"><times id="S5.T2.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T2.5.5.1.2" style="font-size:80%;">124M)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.5.2"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.2.1" style="font-size:80%;">18.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.5.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.3.1" style="font-size:80%;">27.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.5.4"><span class="ltx_text" id="S5.T2.5.5.4.1" style="font-size:80%;">45.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.5.1" style="font-size:80%;">38.90</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.6.6.1">
<span class="ltx_text" id="S5.T2.6.6.1.1" style="font-size:80%;">MoE-X-S (8</span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.6.6.1.m1.1"><semantics id="S5.T2.6.6.1.m1.1a"><mo id="S5.T2.6.6.1.m1.1.1" mathsize="80%" xref="S5.T2.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.1.m1.1b"><times id="S5.T2.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T2.6.6.1.2" style="font-size:80%;">124M)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.2"><span class="ltx_text" id="S5.T2.6.6.2.1" style="font-size:80%;">19.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.3"><span class="ltx_text" id="S5.T2.6.6.3.1" style="font-size:80%;">28.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.4"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.4.1" style="font-size:80%;">43.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.5"><span class="ltx_text" id="S5.T2.6.6.5.1" style="font-size:80%;">42.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.8.11.3.1"><span class="ltx_text" id="S5.T2.8.11.3.1.1" style="font-size:80%;">GPT-2 Medium</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.11.3.2"><span class="ltx_text" id="S5.T2.8.11.3.2.1" style="font-size:80%;">17.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.11.3.3"><span class="ltx_text" id="S5.T2.8.11.3.3.1" style="font-size:80%;">24.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.11.3.4"><span class="ltx_text" id="S5.T2.8.11.3.4.1" style="font-size:80%;">37.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.11.3.5"><span class="ltx_text" id="S5.T2.8.11.3.5.1" style="font-size:80%;">35.70</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.7.7.1">
<span class="ltx_text" id="S5.T2.7.7.1.1" style="font-size:80%;">Switch-M (8</span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.7.7.1.m1.1"><semantics id="S5.T2.7.7.1.m1.1a"><mo id="S5.T2.7.7.1.m1.1.1" mathsize="80%" xref="S5.T2.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.1.m1.1b"><times id="S5.T2.7.7.1.m1.1.1.cmml" xref="S5.T2.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T2.7.7.1.2" style="font-size:80%;">354M)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.7.7.2"><span class="ltx_text" id="S5.T2.7.7.2.1" style="font-size:80%;">15.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.7.7.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.3.1" style="font-size:80%;">20.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.7.7.4"><span class="ltx_text" id="S5.T2.7.7.4.1" style="font-size:80%;">35.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.5.1" style="font-size:80%;">34.71</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T2.8.8.1">
<span class="ltx_text" id="S5.T2.8.8.1.1" style="font-size:80%;">MoE-X-M (8</span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.8.8.1.m1.1"><semantics id="S5.T2.8.8.1.m1.1a"><mo id="S5.T2.8.8.1.m1.1.1" mathsize="80%" xref="S5.T2.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.1.m1.1b"><times id="S5.T2.8.8.1.m1.1.1.cmml" xref="S5.T2.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S5.T2.8.8.1.2" style="font-size:80%;">354M)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.8.8.2"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.2.1" style="font-size:80%;">14.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.8.8.3"><span class="ltx_text" id="S5.T2.8.8.3.1" style="font-size:80%;">21.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.8.8.4"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.4.1" style="font-size:80%;">35.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.5"><span class="ltx_text" id="S5.T2.8.8.5.1" style="font-size:80%;">35.16</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of language modeling experiments using different model architectures. The models were evaluated on four standard natural language processing benchmarks: OpenWeb, LAMBADA, WikiText-103, and WikiText-2.  The performance metric used is perplexity (PPL), where lower perplexity indicates better performance.  The table compares the performance of GPT-2 (small and medium sizes), Switch Transformers (small and medium sizes), and MoE-X (small and medium sizes).  The table also includes a GPT-2 small model combined with Sparse Autoencoders (SAE) for comparison.  This comparison aims to show the performance trade-offs between dense models and sparse MoE models, highlighting the effect of architecture on model interpretability.
> <details>
> <summary>read the caption</summary>
> Table 2: Language modeling performance for different architectures. For PPL, lower is better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.1.1" style="font-size:80%;background-color:#FFF2E6;">ReLU Expert</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.2.1" style="font-size:80%;background-color:#FFF2E6;">Sparsity Router</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1" style="font-size:80%;background-color:#FFF2E6;">Coverage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.4.1" style="font-size:80%;background-color:#FFF2E6;">Reconstruction</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.2.1.1.1" style="font-size:80%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.2.1.2.1" style="font-size:80%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.2.1.3.1" style="font-size:80%;">0.424</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.2.1.4.1" style="font-size:80%;">0.734</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.3.2.1.1" style="font-size:80%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.3.2.2.1" style="font-size:80%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.3.2.3.1" style="font-size:80%;">0.404</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.3.2.4.1" style="font-size:80%;">0.740</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.4.3.1.1" style="font-size:80%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.4.3.2.1" style="font-size:80%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.4.3.3.1" style="font-size:80%;">0.418</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.4.3.4.1" style="font-size:80%;">0.829</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T3.1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.5.4.1.1" style="font-size:80%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T3.1.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.1.5.4.2.1" style="font-size:80%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T3.1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.5.4.3.1" style="font-size:80%;">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.5.4.4.1" style="font-size:80%;">0.840</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of two key design choices in the MoE-X model on its performance and interpretability. Specifically, it examines the effects of using ReLU activation within experts and employing sparsity-aware routing, both individually and in combination.  The table shows how these design choices affect the model's ability to accurately reconstruct board states (Reconstruction) and capture semantically meaningful features of chess games (Coverage).  The results highlight the importance of both design elements for achieving optimal performance in terms of interpretability.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of Routing and Expert Choice.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T4.1.1.1.1"><span class="ltx_text" id="A1.T4.1.1.1.1.1" style="background-color:#FFF2E6;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T4.1.1.1.2"><span class="ltx_text" id="A1.T4.1.1.1.2.1" style="background-color:#FFF2E6;">Coverage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.3"><span class="ltx_text" id="A1.T4.1.1.1.3.1" style="background-color:#FFF2E6;">Reconstruction</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.2.1.1">Dense</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.2.1.2">0.356</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.3">0.608</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.3.2.1">Dense (Continued Training)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.3.2.2">0.377</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.3">0.674</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.4.3.1">MoE-X (Scratch)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.4.3.2">0.398</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.3">0.657</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T4.1.5.4.1">MoE-X (Up-cycle)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T4.1.5.4.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.5.4.2.1">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.5.4.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.5.4.3.1">0.840</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the interpretability scores achieved by different training methods for a Mixture-of-Experts (MoE) model.  The methods compared include training a dense model from scratch, continuing training of a dense model, training an MoE model from scratch, and training an MoE model using upcycled weights from a pre-trained dense model.  The interpretability is measured using two metrics: BSP Coverage and Reconstruction score.  Higher values for both metrics indicate better interpretability.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of interpretability scores for different training methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.1.1">
<span class="ltx_p" id="A4.T5.1.1.1.1.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.1.1.1.1.1.1.1">Auto-Interp Meaning</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.2.1">
<span class="ltx_p" id="A4.T5.1.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.1.1.1.2.1.1.1">Location</span></span>
</span>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.3.1">
<span class="ltx_p" id="A4.T5.1.1.1.3.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.1.1.1.3.1.1.1">Example</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.2.1.1.1">
<span class="ltx_p" id="A4.T5.1.2.1.1.1.1" style="width:170.7pt;">Time of day in expressions</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.2.1.2.1">
<span class="ltx_p" id="A4.T5.1.2.1.2.1.1" style="width:85.4pt;">Expert 2, #457</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.2.1.3.1">
<span class="ltx_p" id="A4.T5.1.2.1.3.1.1" style="width:170.7pt;">”We went for a walk in the <span class="ltx_text ltx_font_bold" id="A4.T5.1.2.1.3.1.1.1" style="color:#FF0000;">evening</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.3.2">
<td class="ltx_td ltx_align_top" id="A4.T5.1.3.2.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.3.2.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.3.2.3.1">
<span class="ltx_p" id="A4.T5.1.3.2.3.1.1" style="width:170.7pt;">”The meeting is scheduled for <span class="ltx_text ltx_font_bold" id="A4.T5.1.3.2.3.1.1.1" style="color:#FF0000;">afternoon</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.4.3">
<td class="ltx_td ltx_align_top" id="A4.T5.1.4.3.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.4.3.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.4.3.3.1">
<span class="ltx_p" id="A4.T5.1.4.3.3.1.1" style="width:170.7pt;">”She always exercises in the <span class="ltx_text ltx_font_bold" id="A4.T5.1.4.3.3.1.1.1" style="color:#FF0000;">morning</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.5.4.1.1">
<span class="ltx_p" id="A4.T5.1.5.4.1.1.1" style="width:170.7pt;">Abbreviations with dots</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.5.4.2.1">
<span class="ltx_p" id="A4.T5.1.5.4.2.1.1" style="width:85.4pt;">Expert 5, #89</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.5.4.3.1">
<span class="ltx_p" id="A4.T5.1.5.4.3.1.1" style="width:170.7pt;">”She explained the concept using <span class="ltx_text ltx_font_bold" id="A4.T5.1.5.4.3.1.1.1" style="color:#FF0000;">e.g.</span> as an example.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.6.5">
<td class="ltx_td ltx_align_top" id="A4.T5.1.6.5.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.6.5.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.6.5.3.1">
<span class="ltx_p" id="A4.T5.1.6.5.3.1.1" style="width:170.7pt;">”You must submit all forms by Friday, <span class="ltx_text ltx_font_bold" id="A4.T5.1.6.5.3.1.1.1" style="color:#FF0000;">i.e.</span>, tomorrow.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.7.6">
<td class="ltx_td ltx_align_top" id="A4.T5.1.7.6.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.7.6.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.7.6.3.1">
<span class="ltx_p" id="A4.T5.1.7.6.3.1.1" style="width:170.7pt;">”Common abbreviations include <span class="ltx_text ltx_font_bold" id="A4.T5.1.7.6.3.1.1.1" style="color:#FF0000;">a.m.</span> and <span class="ltx_text ltx_font_bold" id="A4.T5.1.7.6.3.1.1.2" style="color:#FF0000;">p.m.</span> for time.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.8.7.1.1">
<span class="ltx_p" id="A4.T5.1.8.7.1.1.1" style="width:170.7pt;">Capitals at the start of acronyms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.8.7.2.1">
<span class="ltx_p" id="A4.T5.1.8.7.2.1.1" style="width:85.4pt;">Expert 6, #1601</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.8.7.3.1">
<span class="ltx_p" id="A4.T5.1.8.7.3.1.1" style="width:170.7pt;">”The <span class="ltx_text ltx_font_bold" id="A4.T5.1.8.7.3.1.1.1" style="color:#FF0000;">NASA</span> mission was successful.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.9.8">
<td class="ltx_td ltx_align_top" id="A4.T5.1.9.8.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.9.8.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.9.8.3.1">
<span class="ltx_p" id="A4.T5.1.9.8.3.1.1" style="width:170.7pt;">”The company developed cutting-edge <span class="ltx_text ltx_font_bold" id="A4.T5.1.9.8.3.1.1.1" style="color:#FF0000;">AI</span> systems.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.10.9">
<td class="ltx_td ltx_align_top" id="A4.T5.1.10.9.1"></td>
<td class="ltx_td ltx_align_top" id="A4.T5.1.10.9.2"></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.10.9.3.1">
<span class="ltx_p" id="A4.T5.1.10.9.3.1.1" style="width:170.7pt;">”Students use <span class="ltx_text ltx_font_bold" id="A4.T5.1.10.9.3.1.1.1" style="color:#FF0000;">PDF</span> documents for submissions.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.11.10.1.1">
<span class="ltx_p" id="A4.T5.1.11.10.1.1.1" style="width:170.7pt;">Ordinal numbers in sentences</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.11.10.2.1">
<span class="ltx_p" id="A4.T5.1.11.10.2.1.1" style="width:85.4pt;">Expert 3, #412</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.11.10.3.1">
<span class="ltx_p" id="A4.T5.1.11.10.3.1.1" style="width:170.7pt;">”He finished in <span class="ltx_text ltx_font_bold" id="A4.T5.1.11.10.3.1.1.1" style="color:#FF0000;">1st</span> place.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.12.11.1.1">
<span class="ltx_p" id="A4.T5.1.12.11.1.1.1" style="width:170.7pt;">Hyphenated compound words</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.12.11.2.1">
<span class="ltx_p" id="A4.T5.1.12.11.2.1.1" style="width:85.4pt;">Expert 2, #187</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.12.11.3.1">
<span class="ltx_p" id="A4.T5.1.12.11.3.1.1" style="width:170.7pt;">”This is a <span class="ltx_text ltx_font_bold" id="A4.T5.1.12.11.3.1.1.1" style="color:#FF0000;">well-being</span> initiative.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.13.12.1.1">
<span class="ltx_p" id="A4.T5.1.13.12.1.1.1" style="width:170.7pt;">Currency symbols preceding numbers</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.13.12.2.1">
<span class="ltx_p" id="A4.T5.1.13.12.2.1.1" style="width:85.4pt;">Expert 1, #273</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.13.12.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.13.12.3.1">
<span class="ltx_p" id="A4.T5.1.13.12.3.1.1" style="width:170.7pt;">”The total cost was <span class="ltx_text ltx_font_bold" id="A4.T5.1.13.12.3.1.1.1" style="color:#FF0000;">$100</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.14.13.1.1">
<span class="ltx_p" id="A4.T5.1.14.13.1.1.1" style="width:170.7pt;">Parentheses around numbers or letters</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.14.13.2.1">
<span class="ltx_p" id="A4.T5.1.14.13.2.1.1" style="width:85.4pt;">Expert 6, #91</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.14.13.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.14.13.3.1">
<span class="ltx_p" id="A4.T5.1.14.13.3.1.1" style="width:170.7pt;">”Refer to section <span class="ltx_text ltx_font_bold" id="A4.T5.1.14.13.3.1.1.1" style="color:#FF0000;">(a)</span> for details.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.15.14.1.1">
<span class="ltx_p" id="A4.T5.1.15.14.1.1.1" style="width:170.7pt;">Ellipsis usage</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.15.14.2.1">
<span class="ltx_p" id="A4.T5.1.15.14.2.1.1" style="width:85.4pt;">Expert 0, #55</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.15.14.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.15.14.3.1">
<span class="ltx_p" id="A4.T5.1.15.14.3.1.1" style="width:170.7pt;">”He paused and said, <span class="ltx_text ltx_font_bold" id="A4.T5.1.15.14.3.1.1.1" style="color:#FF0000;">…</span> I’ll think about it.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.16.15.1.1">
<span class="ltx_p" id="A4.T5.1.16.15.1.1.1" style="width:170.7pt;">Measurements followed by units</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.16.15.2.1">
<span class="ltx_p" id="A4.T5.1.16.15.2.1.1" style="width:85.4pt;">Expert 0, #384</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.16.15.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.16.15.3.1">
<span class="ltx_p" id="A4.T5.1.16.15.3.1.1" style="width:170.7pt;">”The box weighs 5 <span class="ltx_text ltx_font_bold" id="A4.T5.1.16.15.3.1.1.1" style="color:#FF0000;">kg</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.17.16.1.1">
<span class="ltx_p" id="A4.T5.1.17.16.1.1.1" style="width:170.7pt;">Dates in numeric formats</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.17.16.2.1">
<span class="ltx_p" id="A4.T5.1.17.16.2.1.1" style="width:85.4pt;">Expert 7, #401</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.17.16.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.17.16.3.1">
<span class="ltx_p" id="A4.T5.1.17.16.3.1.1" style="width:170.7pt;">”The deadline is <span class="ltx_text ltx_font_bold" id="A4.T5.1.17.16.3.1.1.1" style="color:#FF0000;">2025-01-29</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.18.17.1.1">
<span class="ltx_p" id="A4.T5.1.18.17.1.1.1" style="width:170.7pt;">Repeated punctuation marks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.18.17.2.1">
<span class="ltx_p" id="A4.T5.1.18.17.2.1.1" style="width:85.4pt;">Expert 2, #1128</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.18.17.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.18.17.3.1">
<span class="ltx_p" id="A4.T5.1.18.17.3.1.1" style="width:170.7pt;">”What is happening <span class="ltx_text ltx_font_bold" id="A4.T5.1.18.17.3.1.1.1" style="color:#FF0000;">???</span>”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.19.18.1.1">
<span class="ltx_p" id="A4.T5.1.19.18.1.1.1" style="width:170.7pt;">Hashtags in text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.19.18.2.1">
<span class="ltx_p" id="A4.T5.1.19.18.2.1.1" style="width:85.4pt;">Expert 4, #340</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.19.18.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.19.18.3.1">
<span class="ltx_p" id="A4.T5.1.19.18.3.1.1" style="width:170.7pt;">”Follow the trend at <span class="ltx_text ltx_font_bold" id="A4.T5.1.19.18.3.1.1.1" style="color:#FF0000;">#trending</span>.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.20.19.1.1">
<span class="ltx_p" id="A4.T5.1.20.19.1.1.1" style="width:170.7pt;">Uppercase words for emphasis</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.20.19.2.1">
<span class="ltx_p" id="A4.T5.1.20.19.2.1.1" style="width:85.4pt;">Expert 4, #278</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.20.19.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.20.19.3.1">
<span class="ltx_p" id="A4.T5.1.20.19.3.1.1" style="width:170.7pt;">”The sign read, <span class="ltx_text ltx_font_bold" id="A4.T5.1.20.19.3.1.1.1" style="color:#FF0000;">STOP</span> immediately!”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.21.20.1.1">
<span class="ltx_p" id="A4.T5.1.21.20.1.1.1" style="width:170.7pt;">Colon in timestamps</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.21.20.2.1">
<span class="ltx_p" id="A4.T5.1.21.20.2.1.1" style="width:85.4pt;">Expert 3, #521</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T5.1.21.20.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.21.20.3.1">
<span class="ltx_p" id="A4.T5.1.21.20.3.1.1" style="width:170.7pt;">”The train arrives at 12<span class="ltx_text ltx_font_bold" id="A4.T5.1.21.20.3.1.1.1" style="color:#FF0000;">:</span>30.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T5.1.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.22.21.1.1">
<span class="ltx_p" id="A4.T5.1.22.21.1.1.1" style="width:170.7pt;">Contractions with apostrophes</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T5.1.22.21.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.22.21.2.1">
<span class="ltx_p" id="A4.T5.1.22.21.2.1.1" style="width:85.4pt;">Expert 6, #189</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T5.1.22.21.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.22.21.3.1">
<span class="ltx_p" id="A4.T5.1.22.21.3.1.1" style="width:170.7pt;">”I <span class="ltx_text ltx_font_bold" id="A4.T5.1.22.21.3.1.1.1" style="color:#FF0000;">can’t</span> do this alone.”</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays examples of activated tokens and their corresponding contexts from the MoE-X Small model.  The 'Auto-interp process' refers to an automated method used to interpret the meaning of the neuron activations. The table demonstrates how different neurons in the model respond to various linguistic features such as time expressions, abbreviations, capitalization, ordinal numbers, punctuation, and other aspects of text.  Each row shows an example token, the associated neuron (Expert number and neuron ID), and a sample sentence showing the token in context.
> <details>
> <summary>read the caption</summary>
> Table 5: Sampled Activated Tokens and Contexts for Neurons in MoE-X Small. The meanings are identified by the Auto-interp process.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A6.T6.1.1.1.1">Parameter</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T6.1.1.1.2">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T6.1.2.1.1">Num layer</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.1.2.1.2">8</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.3.2.1">Num head</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.3.2.2">8</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.4.3.1">Num embd</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.4.3.2">512</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.5.4.1">dropout</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.5.4.2">0.0</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.6.5.1">Init learning rate</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.6.5.2">3e-4</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.7.6.1">Min lr</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.7.6.2">3e-5</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.8.7.1">Lr warmup iters</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.8.7.2">2000</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.9.8.1">Max iters</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.9.8.2">600000</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.10.9.1">optimizer</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.10.9.2">Adamw</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.11.10.1">batch size</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.11.10.2">100</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.12.11.1">context len</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.12.11.2">1023</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.13.12.1">Num experts</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.13.12.2">8</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.1.14.13.1">Num experts per Token</th>
<td class="ltx_td ltx_align_left" id="A6.T6.1.14.13.2">2</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A6.T6.1.15.14.1">grad_clip</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T6.1.15.14.2">1.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters and training configuration used for training both the Mixture-of-Experts (MoE) and GPT-2 models on the chess dataset.  It includes settings such as the number of layers, number of attention heads, embedding size, dropout rate, learning rate schedule, optimizer, batch size, and context length.  It also specifies parameters specific to the MoE architecture, such as the number of experts and the number of experts activated per token.  Understanding these settings is crucial for replicating the experimental results reported in the paper.
> <details>
> <summary>read the caption</summary>
> Table 6: MoE & GPT-2 Training Configuration for Chess Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A6.T7.1.1.1.1">Names</th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T7.1.1.1.2">Small</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T7.1.1.1.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T7.1.2.2.1">Num layer</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.1.2.2.2">12</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.1.2.2.3">24</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.3.3.1">Num head</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.3.3.2">12</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.3.3.3">16</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.4.4.1">Num embd</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.4.4.2">768</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.4.4.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.5.5.1">dropout</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.5.5.2">0.0</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.5.5.3">0.0</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.6.6.1">Init learning rate</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.6.6.2">3e-4</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.6.6.3">3e-4</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.7.7.1">Min lr</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.7.7.2">3e-5</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.7.7.3">3e-5</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.8.8.1">Lr warmup iters</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.8.8.2">5000</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.8.8.3">5000</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.9.9.1">Max iters</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.9.9.2">100000</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.9.9.3">100000</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.10.10.1">optimizer</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.10.10.2">Adamw</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.10.10.3">Adamw</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.11.11.1">batch size</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.11.11.2">320</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.11.11.3">320</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.12.12.1">context len</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.12.12.2">1024</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.12.12.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.13.13.1">Num experts</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.13.13.2">8</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.13.13.3">8</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T7.1.14.14.1">Num experts per Token</th>
<td class="ltx_td ltx_align_left" id="A6.T7.1.14.14.2">2</td>
<td class="ltx_td ltx_align_left" id="A6.T7.1.14.14.3">2</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A6.T7.1.15.15.1">grad_clip</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T7.1.15.15.2">1.0</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T7.1.15.15.3">1.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training small and medium sized MoE and GPT-2 models on the FineWeb language dataset.  It lists the number of layers, heads, embedding dimensions, dropout rate, learning rate, learning rate warmup iterations, maximum iterations, optimizer, batch size, context length, number of experts, and the number of experts per token for each model configuration. The table provides a precise specification of the training settings used to compare the performance and interpretability of MoE-X against other models.
> <details>
> <summary>read the caption</summary>
> Table 7: MoE & GPT-2 Small Training Configuration for FineWeb Language Tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07639/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07639/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}