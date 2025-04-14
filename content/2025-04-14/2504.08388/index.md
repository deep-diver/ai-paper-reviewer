---
title: "MineWorld: a Real-Time and Open-Source Interactive World Model on Minecraft"
summary: "MineWorld: A real-time interactive world model in Minecraft that uses visual-action Transformer & parallel decoding, enabling real-time interactions with the game."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Microsoft Research",]
showSummary: true
date: 2025-04-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08388 {{< /keyword >}}
{{< keyword icon="writer" >}} Junliang Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08388" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08388" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08388/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

World modeling enhances human-agent interaction in dynamic environments. The key challenges are the efficiency and controllability of video generative models which leads to substantial computational costs during inference, making real-time interactions with the model a major challenge. Also, the diverse nature of control signals leads to difficulties in controllability. 



To address these issues, **MineWorld** is proposed, a real-time, open-source interactive world model in Minecraft. It employs visual-action Transformers & parallel decoding. This model learns correlations between states and actions by tokenizing both. The framework addresses efficiency and controllability, offering new assessment metrics and shows strong performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces MineWorld, an open-source real-time interactive world model for Minecraft, providing a benchmark for world modeling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a parallel decoding algorithm that accelerates inference speed for autoregressive Transformers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Offers new metrics to assess the controllability of generated sequences. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers by **offering a real-time, open-source interactive world model**, a benchmark for world modeling. The code and model weights being released empower further research in this direction. It can potentially open new avenues for interactive simulations and gaming AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08388/x1.png)

> 🔼 MineWorld's architecture is illustrated in this figure. Game states (visual information) and actions are converted into discrete tokens by visual and action tokenizers, respectively. These tokens are concatenated and fed to a Transformer decoder, which predicts the subsequent tokens (next game states) in an autoregressive manner. The model is trained to predict these subsequent tokens accurately, effectively learning the relationship between actions and their consequences on game state.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustrations of MineWorld model architecture. Visual and action tokenizers convert game states and actions into discrete tokens, which are concatenated and fed into a Transformer decoder as the input. The Transformer is then trained with an autoregressive objective.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.9.9">
<tr class="ltx_tr" id="S4.T1.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.9.9.9.10">Method</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.9.9.9.11">Param.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.1.1.1.1">FPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2">P<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3">R<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4">F1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.5.5.5.5">L1<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.6.6.6">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.7.7.7">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.8.8.8.8">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.9.9.9.9">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.10.1">Oasis</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.10.2">500M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.10.3">2.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.4">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.5">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.6">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.10.7">2.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.8">377</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.9">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.10">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.11">14.38</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.9.9.11.1" rowspan="3"><span class="ltx_text" id="S4.T1.9.9.11.1.1">MineWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.11.2">300M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.11.3"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.11.3.1">5.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.4">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.5">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.6">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.11.7">1.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.8">246</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.9">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.10">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11.11">15.13</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.12.1">700M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.12.2">3.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.3">0.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.4">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.5">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.12.6">1.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.7">231</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.8">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.9">0.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.10">15.32</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.9.9.13.1">1.2B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.9.9.13.2">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.3"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.3.1">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.4"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.4.1">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.5"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.5.1">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.9.9.13.6"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.6.1">1.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.7"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.7.1">227</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.8"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.8.1">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.9"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.9.1">0.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.13.10"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.13.10.1">15.69</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of the MineWorld model with different numbers of parameters (300M, 700M, and 1.2B) against the Oasis model (Decart et al., 2024).  The metrics used evaluate both the video quality and the model's ability to accurately follow given actions.  Video quality is assessed using Fréchet Video Distance (FVD), Learned Perceptual Image Patch Similarity (LPIPS), Structural Similarity Index Measure (SSIM), and Peak Signal-to-Noise Ratio (PSNR). Action following accuracy is measured using precision (P), recall (R), and F1-score for discrete actions, along with L1 loss for continuous camera control. The table also shows the frames per second (FPS) generated by each model, indicating the real-time performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Generation result of Oasis (Decart et al., 2024) and different scales of our models.“FPS” indicates the number of frames generated per second by the model. “P, R, F1” denote the classification precision, recall and F1 scores on discrete actions. “L1” indicates the camera control loss.
> </details>





### In-depth insights


#### Real-Time Worlds
Real-time world models represent a significant advancement, enabling agents to interact dynamically with simulated environments. The ability to generate consequences in real-time, aligning with user-provided control signals, is crucial. Defining "real-time" within specific contexts, such as considering Actions Per Minute (APM) in gaming scenarios, provides a valuable benchmark. **Balancing efficiency and accuracy** is paramount; models must generate frames quickly enough to respond to user input without sacrificing visual fidelity or controllability. **Parallel decoding techniques** offer promise for accelerating generation, but challenges remain in preserving quality and coherency. Successfully achieving real-time performance unlocks potential for intuitive interactions and immersive simulations, ultimately advancing research in world modeling and agent development.

#### Tokenized Control
**Tokenized Control** involves representing control signals (actions, commands, etc.) as discrete tokens, similar to how words are represented in natural language processing. This allows for the use of sequence models, like Transformers, to predict future states based on past states and actions. **Discretization enables easier learning and manipulation** of control signals. However, **the choice of vocabulary and granularity** of tokenization is important to consider. Too coarse a vocabulary may limit the expressiveness of the control, while too fine a vocabulary may increase the computational complexity and make learning more difficult. The paper could explore the **trade-offs between different tokenization strategies**, such as using a fixed vocabulary or learning an adaptive vocabulary from the data. Also, it will be worth exploring how the chosen tokenization method impacts the model's **ability to generalize to unseen control sequences** or handle noisy control signals. Furthermore, tokenization simplifies evaluation of control by enabling classification-based metrics.

#### Parallel Decode
**Parallel decoding** addresses the efficiency bottleneck in autoregressive world models, crucial for real-time interaction. By predicting multiple tokens simultaneously, leveraging spatial dependencies, it achieves significant speedups compared to sequential decoding. This balances the trade-off between speed and quality, often requiring fine-tuning to mitigate performance degradation. The method's effectiveness increases with higher image resolution, making it suitable for complex environments. This parallel approach enables faster response times, crucial for interactive applications and aligning with the Actions Per Minute (APM) of human players. The work introduces a novel approach, making real-time interaction feasible. This technique optimizes the generation process, while still allowing for context aware token generation.

#### Minecraft Metrics
Evaluating world models in Minecraft necessitates metrics beyond standard video quality measures. Assessing **controllability**, or how well generated scenes adhere to actions, is crucial. The paper introduces metrics using an Inverse Dynamics Model (IDM) to infer actions from generated frames, comparing them to input actions. Discrepancies between inferred and actual actions reflect controllability issues. Additionally, actions are categorized for classification-based metrics like precision and recall, focusing on identifying **correct action execution**. Camera movement evaluation involves measuring the L1 loss between predicted and ground truth angles, capturing accuracy in viewpoint control. Together, these metrics offer a comprehensive view of a model's ability to both generate visually plausible scenes and faithfully respond to input commands within the Minecraft environment, addressing limitations of solely relying on video quality measures.

#### Scaling Limits
In the realm of world models, scaling limits are multifaceted. **Computational resources** pose a primary constraint; training ever-larger models demands substantial infrastructure. **Dataset size and quality** are also crucial bottlenecks. Gathering diverse, high-fidelity data for complex environments like Minecraft is challenging, and data biases can hinder generalization. **Model architecture** itself presents limits; current architectures may struggle to capture long-range dependencies or handle intricate interactions. Furthermore, **evaluation metrics** may not fully capture the nuances of realistic world simulation, making it difficult to assess true progress. Addressing these limits requires innovations in model design, data acquisition, and evaluation methodologies.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.08388/x2.png)

> 🔼 This figure illustrates two different decoding algorithms for processing game states represented as tokens.  In autoregressive decoding (a), tokens are processed sequentially in a raster scan pattern, like reading a book from left to right and top to bottom. This is slow. In the proposed parallel decoding method (b), multiple tokens are processed simultaneously. After a token is generated, its horizontally and vertically adjacent tokens are generated in parallel in the next iteration. This significantly speeds up the process, making real-time interaction possible.  The numbers inside each token indicate the order in which they're generated.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of two decoding algorithms. The game state is encoded into 12121212 tokens. The number in each token represents that in which decoding iteration it is generated. (a) Autoregressive decoding, which follows a raster scanned order and generates each token sequentially. (b) Our proposed parallel decoding. For each generated token, the tokens in the adjacent rows and columns will be generated simutaneously in the next iteration.
> </details>



![](https://arxiv.org/html/2504.08388/x3.png)

> 🔼 This figure showcases MineWorld's ability to generate realistic game sequences in Minecraft.  It demonstrates a case study using the 700M parameter model where the initial game state and a series of subsequent actions are fed as input. The model then generates a series of game states, visually demonstrating its ability to accurately follow instructions and produce plausible game environments.  The caption directs the reader to the project page for more examples.
> <details>
> <summary>read the caption</summary>
> Figure 3: Case study on MineWorld 700700700700M model. The first game state and actions in following steps are provided as input, based on which the model generates consequent game states. For more cases and videos, please visit our project page.
> </details>



![](https://arxiv.org/html/2504.08388/x4.png)

> 🔼 This figure demonstrates MineWorld's ability to generate different game outcomes based on different actions, even when starting from the same initial game state.  It showcases the model's capacity to respond appropriately to various control signals, highlighting the key aspect of controllability in world modeling.  The images illustrate several sequences of game states generated by the model in response to distinct user-provided actions, demonstrating the consistency and accuracy of MineWorld's reaction to varied inputs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Case study on the controllability of MineWorld. Providing the same initial game state and different actions, the model generates different results correspondingly.
> </details>



![](https://arxiv.org/html/2504.08388/x5.png)

> 🔼 This figure demonstrates MineWorld's capability as a gaming agent.  The top half shows initial game states and corresponding actions provided to the model (separated by a dashed line). The bottom half illustrates how MineWorld autonomously continues gameplay by iteratively generating subsequent game states and actions, effectively playing the game without further human intervention.  This showcases the model's ability to predict future game states based on past states and actions, highlighting its predictive and autonomous capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Case study on MineWorld as a gaming playing agent. By providing several initial game states and actions (splited by the dashed line), MineWorld continues to play the game by itself through generating future game states and actions in an iterative manner.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.4.4">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.4.4.4.5" style="padding-left:10.0pt;padding-right:10.0pt;">Param.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.4.4.4.6" style="padding-left:10.0pt;padding-right:10.0pt;">Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;">FPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">F1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3" style="padding-left:10.0pt;padding-right:10.0pt;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.4" style="padding-left:10.0pt;padding-right:10.0pt;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.4.5.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T2.4.4.5.1.1">300M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.5.2" style="padding-left:10.0pt;padding-right:10.0pt;">AT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.3" style="padding-left:10.0pt;padding-right:10.0pt;">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.5" style="padding-left:10.0pt;padding-right:10.0pt;">15.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.6" style="padding-left:10.0pt;padding-right:10.0pt;">223</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.6.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/ FT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2" style="padding-left:10.0pt;padding-right:10.0pt;">5.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.4" style="padding-left:10.0pt;padding-right:10.0pt;">15.13</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.5" style="padding-left:10.0pt;padding-right:10.0pt;">246</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/o FT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.2" style="padding-left:10.0pt;padding-right:10.0pt;">5.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.4" style="padding-left:10.0pt;padding-right:10.0pt;">14.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.5" style="padding-left:10.0pt;padding-right:10.0pt;">275</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.4.8.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T2.4.4.8.1.1">700M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.8.2" style="padding-left:10.0pt;padding-right:10.0pt;">AT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.8.3" style="padding-left:10.0pt;padding-right:10.0pt;">1.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.8.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.8.5" style="padding-left:10.0pt;padding-right:10.0pt;">15.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.8.6" style="padding-left:10.0pt;padding-right:10.0pt;">210</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.9.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/ FT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.18</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.4" style="padding-left:10.0pt;padding-right:10.0pt;">15.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5" style="padding-left:10.0pt;padding-right:10.0pt;">231</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.10.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/o FT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.18</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.4" style="padding-left:10.0pt;padding-right:10.0pt;">15.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.5" style="padding-left:10.0pt;padding-right:10.0pt;">247</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.1" rowspan="3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T2.4.4.11.1.1">1.2B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.11.2" style="padding-left:10.0pt;padding-right:10.0pt;">AT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.5" style="padding-left:10.0pt;padding-right:10.0pt;">16.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.6" style="padding-left:10.0pt;padding-right:10.0pt;">203</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.12.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/ FT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.4" style="padding-left:10.0pt;padding-right:10.0pt;">15.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.5" style="padding-left:10.0pt;padding-right:10.0pt;">227</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.4.13.1" style="padding-left:10.0pt;padding-right:10.0pt;">Parallel w/o FT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.13.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.13.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.13.4" style="padding-left:10.0pt;padding-right:10.0pt;">15.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.13.5" style="padding-left:10.0pt;padding-right:10.0pt;">258</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of MineWorld models of various sizes (300M, 700M, and 1.2B parameters) using two decoding methods: standard autoregressive decoding and the proposed parallel decoding.  The impact of fine-tuning the autoregressive pre-trained model with a parallel attention mask is also evaluated.  Metrics used include frames per second (FPS), F1 score (a measure of model controllability), PSNR (peak signal-to-noise ratio, a measure of visual quality), and FVD (Fréchet Video Distance, another measure of video quality).  The results show how the parallel decoding method improves efficiency and the effect of fine-tuning on overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: The performance of different scales of MineWorld models with default autoregressive decoding and the proposed parallel decoding. “w/” or “w/o FT” indicate results after fine-tuning the autoregressive pre-trained model with the parallel attenion mask or not. We choose several main metrics on the efficiency and effectiveness to make the table compact.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.5">
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.1.1.2">F1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1"><math alttext="0.81" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mn id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml">0.81</mn><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><cn id="S4.T3.1.1.1.m1.1.1.cmml" type="float" xref="S4.T3.1.1.1.m1.1.1">0.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">0.81</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">0.81</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.2.2">Human</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.1"><math alttext="4.21" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mn id="S4.T3.2.2.1.m1.1.1" xref="S4.T3.2.2.1.m1.1.1.cmml">4.21</mn><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><cn id="S4.T3.2.2.1.m1.1.1.cmml" type="float" xref="S4.T3.2.2.1.m1.1.1">4.21</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">4.21</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">4.21</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.3.3.1"><math alttext="r" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mi id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><ci id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">italic_r</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2"><math alttext="0.56" class="ltx_Math" display="inline" id="S4.T3.4.4.2.m1.1"><semantics id="S4.T3.4.4.2.m1.1a"><mn id="S4.T3.4.4.2.m1.1.1" xref="S4.T3.4.4.2.m1.1.1.cmml">0.56</mn><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.2.m1.1b"><cn id="S4.T3.4.4.2.m1.1.1.cmml" type="float" xref="S4.T3.4.4.2.m1.1.1">0.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.2.m1.1c">0.56</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.2.m1.1d">0.56</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.5.5.2">p-value</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.1"><math alttext="0.01" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mn id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml">0.01</mn><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><cn id="S4.T3.5.5.1.m1.1.1.cmml" type="float" xref="S4.T3.5.5.1.m1.1.1">0.01</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">0.01</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">0.01</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the correlation analysis between automatically computed metrics (proposed in Section 3.2) and human judgments for evaluating the controllability of the MineWorld model.  Controllability refers to how well the generated actions align with given instructions and prior game states.  The table shows the Pearson correlation coefficient (r) and its associated p-value, indicating the statistical significance of the correlation between human ratings and the proposed quantitative metrics. A high correlation coefficient with a low p-value would suggest that the proposed metrics are effective in reflecting the human perception of controllability.
> <details>
> <summary>read the caption</summary>
> Table 3: The correlation between the proposed metrics and human evaluation on controllability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1">Task Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1">Actions</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.3.1">Labels</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.2.1" rowspan="3"><span class="ltx_text" id="A1.T4.1.2.1.1">Triple Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.2.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.2.1">forward</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.2.2">backward</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.3">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.3.1">forward</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.3.2">backward</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.3.3">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.3.1">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.1.1">left</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.1.2">right</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.2.1">left</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.2.2">right</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.2.3">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.4.1">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.1.1">sprint</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.1.2">sneak</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.2.1">sprint</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.2.2">sneak</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.2.3">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T4.1.5.1" rowspan="4"><span class="ltx_text" id="A1.T4.1.5.1.1">Binary Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.5.2"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.5.2.1">use</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.3">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.5.3.1">use</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.5.3.2">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.6.1"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.6.1.1">attack</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.6.2.1">attack</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.6.2.2">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.7.1"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.7.1.1">jump</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.7.2.1">jump</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.7.2.2">null</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.1.8.1"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.8.1.1">drop</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.8.2">
<span class="ltx_text ltx_font_typewriter" id="A1.T4.1.8.2.1">drop</span>, <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.8.2.2">null</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the classification tasks used to evaluate the action-following capability of the MineWorld model.  It lists various actions in Minecraft, categorized into either triple classification tasks (where an action is classified into one of three categories) or binary classification tasks (where an action is classified as either present or absent). This breakdown helps assess the model's ability to accurately predict specific actions and groups of actions, providing a more nuanced evaluation of its performance than a single, overall accuracy metric.
> <details>
> <summary>read the caption</summary>
> Table 4: Classification Tasks and Their Labels
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.1">
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.2.1">Forward-Backward</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.3.1">Left-Right</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.4.1">Sprint-Sneak</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.5.1">Use</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.6.1">Attack</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.7.1">Jump</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.8.1">Drop</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.2.1.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.2">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.3">0.808</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.4">0.765</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.5">0.742</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.6">0.729</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.1.2.7">0.760</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.8">0.500</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.3.1.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.2">0.773</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.3">0.745</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.4">0.788</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.5">0.648</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.6">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.3.7">0.847</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.3.8">0.498</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T5.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.4.1.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.2">0.782</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.3">0.771</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.4">0.750</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.5">0.682</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.6">0.736</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.1.4.7">0.796</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.4.8">0.499</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the precision, recall, and F1 scores achieved by the 700M parameter MineWorld model across various action classification tasks.  These tasks are categorized into three types: triple classification (forward/backward/null, left/right/null, sprint/sneak/null), and four binary classifications (use/null, attack/null, jump/null, drop/null). The F1-score summarizes the model's performance by balancing precision and recall for each classification task. The results highlight the model's ability to predict various actions within Minecraft with varying degrees of accuracy, showing which actions were more challenging to learn for the model.
> <details>
> <summary>read the caption</summary>
> Table 5: Precision, Recall, and F1 scores for the 700 MineWorld model across different tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A2.T6.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T6.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1">Hidden dim</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T6.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.1">MLP dim</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T6.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.4.1">Num. Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.5.1">Num. Layers</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.1.2.1">300M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.1.2.2">1024</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.1.2.3">4096</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.1.2.4">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.5">20</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.1.3.1">700M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.3.2">2048</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.3.3">4096</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.3.4">32</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.5">20</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T6.1.4.1">1.2B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T6.1.4.2">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T6.1.4.3">8192</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T6.1.4.4">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.4.5">20</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architectural configurations for three different sized models: 300M, 700M, and 1.2B parameters.  For each model size, it lists the hidden dimension, MLP dimension, number of heads, and number of layers in the transformer architecture. This information is crucial in understanding the computational complexity and capacity of each model variant.
> <details>
> <summary>read the caption</summary>
> Table 6: The configuration of different size of models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.3">
<tr class="ltx_tr" id="A2.T7.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T7.3.4.1"><span class="ltx_text ltx_font_bold" id="A2.T7.3.4.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.3.4.2"><span class="ltx_text ltx_font_bold" id="A2.T7.3.4.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.3.5.1">Learning rate scheduler</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.5.2">cosine</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.1.2">Learning rate</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.1"><math alttext="3e^{-4}" class="ltx_Math" display="inline" id="A2.T7.1.1.1.m1.1"><semantics id="A2.T7.1.1.1.m1.1a"><mrow id="A2.T7.1.1.1.m1.1.1" xref="A2.T7.1.1.1.m1.1.1.cmml"><mn id="A2.T7.1.1.1.m1.1.1.2" xref="A2.T7.1.1.1.m1.1.1.2.cmml">3</mn><mo id="A2.T7.1.1.1.m1.1.1.1" xref="A2.T7.1.1.1.m1.1.1.1.cmml">⁢</mo><msup id="A2.T7.1.1.1.m1.1.1.3" xref="A2.T7.1.1.1.m1.1.1.3.cmml"><mi id="A2.T7.1.1.1.m1.1.1.3.2" xref="A2.T7.1.1.1.m1.1.1.3.2.cmml">e</mi><mrow id="A2.T7.1.1.1.m1.1.1.3.3" xref="A2.T7.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T7.1.1.1.m1.1.1.3.3a" xref="A2.T7.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T7.1.1.1.m1.1.1.3.3.2" xref="A2.T7.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.1.1.1.m1.1b"><apply id="A2.T7.1.1.1.m1.1.1.cmml" xref="A2.T7.1.1.1.m1.1.1"><times id="A2.T7.1.1.1.m1.1.1.1.cmml" xref="A2.T7.1.1.1.m1.1.1.1"></times><cn id="A2.T7.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T7.1.1.1.m1.1.1.2">3</cn><apply id="A2.T7.1.1.1.m1.1.1.3.cmml" xref="A2.T7.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T7.1.1.1.m1.1.1.3.1.cmml" xref="A2.T7.1.1.1.m1.1.1.3">superscript</csymbol><ci id="A2.T7.1.1.1.m1.1.1.3.2.cmml" xref="A2.T7.1.1.1.m1.1.1.3.2">𝑒</ci><apply id="A2.T7.1.1.1.m1.1.1.3.3.cmml" xref="A2.T7.1.1.1.m1.1.1.3.3"><minus id="A2.T7.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T7.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T7.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T7.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.1.1.1.m1.1c">3e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T7.1.1.1.m1.1d">3 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.3.6.1">Warm up steps</td>
<td class="ltx_td ltx_align_center" id="A2.T7.3.6.2">10000</td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.3.7.1">Weight decay</td>
<td class="ltx_td ltx_align_center" id="A2.T7.3.7.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.3.8.1">Optimizer</td>
<td class="ltx_td ltx_align_center" id="A2.T7.3.8.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.2.2.2">AdamW betas</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.2.1"><math alttext="(0.9,0.95)" class="ltx_Math" display="inline" id="A2.T7.2.2.1.m1.2"><semantics id="A2.T7.2.2.1.m1.2a"><mrow id="A2.T7.2.2.1.m1.2.3.2" xref="A2.T7.2.2.1.m1.2.3.1.cmml"><mo id="A2.T7.2.2.1.m1.2.3.2.1" stretchy="false" xref="A2.T7.2.2.1.m1.2.3.1.cmml">(</mo><mn id="A2.T7.2.2.1.m1.1.1" xref="A2.T7.2.2.1.m1.1.1.cmml">0.9</mn><mo id="A2.T7.2.2.1.m1.2.3.2.2" xref="A2.T7.2.2.1.m1.2.3.1.cmml">,</mo><mn id="A2.T7.2.2.1.m1.2.2" xref="A2.T7.2.2.1.m1.2.2.cmml">0.95</mn><mo id="A2.T7.2.2.1.m1.2.3.2.3" stretchy="false" xref="A2.T7.2.2.1.m1.2.3.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.2.2.1.m1.2b"><interval closure="open" id="A2.T7.2.2.1.m1.2.3.1.cmml" xref="A2.T7.2.2.1.m1.2.3.2"><cn id="A2.T7.2.2.1.m1.1.1.cmml" type="float" xref="A2.T7.2.2.1.m1.1.1">0.9</cn><cn id="A2.T7.2.2.1.m1.2.2.cmml" type="float" xref="A2.T7.2.2.1.m1.2.2">0.95</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.2.2.1.m1.2c">(0.9,0.95)</annotation><annotation encoding="application/x-llamapun" id="A2.T7.2.2.1.m1.2d">( 0.9 , 0.95 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T7.3.3.2">Maximum Positions</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.3.3.1"><math alttext="5376" class="ltx_Math" display="inline" id="A2.T7.3.3.1.m1.1"><semantics id="A2.T7.3.3.1.m1.1a"><mn id="A2.T7.3.3.1.m1.1.1" xref="A2.T7.3.3.1.m1.1.1.cmml">5376</mn><annotation-xml encoding="MathML-Content" id="A2.T7.3.3.1.m1.1b"><cn id="A2.T7.3.3.1.m1.1.1.cmml" type="integer" xref="A2.T7.3.3.1.m1.1.1">5376</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.3.3.1.m1.1c">5376</annotation><annotation encoding="application/x-llamapun" id="A2.T7.3.3.1.m1.1d">5376</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for optimizing the MineWorld model during training.  It includes the learning rate scheduler used, the initial learning rate, the number of warmup steps before the learning rate starts decaying, the weight decay applied for regularization, the optimizer used (AdamW), the beta parameters for AdamW, and the maximum sequence length handled by the positional embeddings.
> <details>
> <summary>read the caption</summary>
> Table 7: Optimization hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T8.4.4">
<tr class="ltx_tr" id="A3.T8.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T8.4.4.4.5" style="padding:0.5pt 8.0pt;">Visual Tokenizer</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.1.1.1.1" style="padding:0.5pt 8.0pt;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.1.1.1.1.m1.1"><semantics id="A3.T8.1.1.1.1.m1.1a"><mo id="A3.T8.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.1.1.1.1.m1.1b"><ci id="A3.T8.1.1.1.1.m1.1.1.cmml" xref="A3.T8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.2.2.2.2" style="padding:0.5pt 8.0pt;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T8.2.2.2.2.m1.1"><semantics id="A3.T8.2.2.2.2.m1.1a"><mo id="A3.T8.2.2.2.2.m1.1.1" stretchy="false" xref="A3.T8.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T8.2.2.2.2.m1.1b"><ci id="A3.T8.2.2.2.2.m1.1.1.cmml" xref="A3.T8.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.3.3.3.3" style="padding:0.5pt 8.0pt;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.3.3.3.3.m1.1"><semantics id="A3.T8.3.3.3.3.m1.1a"><mo id="A3.T8.3.3.3.3.m1.1.1" stretchy="false" xref="A3.T8.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.3.3.3.3.m1.1b"><ci id="A3.T8.3.3.3.3.m1.1.1.cmml" xref="A3.T8.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.4.4.4.4" style="padding:0.5pt 8.0pt;">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.4.4.4.4.m1.1"><semantics id="A3.T8.4.4.4.4.m1.1a"><mo id="A3.T8.4.4.4.4.m1.1.1" stretchy="false" xref="A3.T8.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.4.4.4.4.m1.1b"><ci id="A3.T8.4.4.4.4.m1.1.1.cmml" xref="A3.T8.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T8.4.4.5.1" style="padding:0.5pt 8.0pt;">Amused <cite class="ltx_cite ltx_citemacro_citep">(Patil et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.08388v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.5.2" style="padding:0.5pt 8.0pt;">25.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.5.3" style="padding:0.5pt 8.0pt;">0.758</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.5.4" style="padding:0.5pt 8.0pt;">0.238</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.4.4.5.5" style="padding:0.5pt 8.0pt;">35.05</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T8.4.4.6.1" style="padding:0.5pt 8.0pt;">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.4.4.6.2" style="padding:0.5pt 8.0pt;">29.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.4.4.6.3" style="padding:0.5pt 8.0pt;">0.816</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.4.4.6.4" style="padding:0.5pt 8.0pt;">0.134</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.4.4.6.5" style="padding:0.5pt 8.0pt;">18.93</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the visual tokenizer's performance.  It compares the reconstruction quality of a pre-trained visual tokenizer (Amused) against the quality achieved after fine-tuning it on the MineWorld dataset (Ours).  The comparison uses standard image quality metrics: PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and rFID (Fréchet Inception Distance).  Lower LPIPS and rFID scores indicate better perceptual similarity to the original image.
> <details>
> <summary>read the caption</summary>
> Table 8: The reconstruction performance of the visual tokenizers on the validation set.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08388/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08388/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}