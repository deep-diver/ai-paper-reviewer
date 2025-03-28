---
title: "Equivariant Image Modeling"
summary: "Aligning image generation subtasks: Equivariant modeling boosts efficiency and generalization by leveraging natural visual signal invariance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18948 {{< /keyword >}}
{{< keyword icon="writer" >}} Ruixiao Dong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18948" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18948" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18948/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Modern generative models break down complex image learning into simpler subtasks, but inherent conflicts arise during joint optimization. Existing solutions compromise efficiency or scalability. The core issue lies in how task decomposition affects synergies/conflicts between subtasks, motivating a principled framework that inherently aligns optimization targets across subtasks.



This paper presents an equivariant image modeling paradigm that minimizes inter-task conflicts. It uses **column-wise tokenization** to enhance translational symmetry and **windowed causal attention** for consistent contextual relationships. Experiments on ImageNet show performance comparable to state-of-the-art models with fewer resources. Analysis shows improved zero-shot generalization and ultra-long image synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Equivariant image modeling aligns optimization targets across subtasks, enhancing parameter sharing and reducing conflicts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Column-wise tokenization and windowed causal attention improve translational symmetry and contextual consistency in image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Enhanced equivariance leads to better zero-shot generalization and enables the synthesis of ultra-long, high-fidelity images. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces a novel **equivariant image modeling** framework, offering a pathway to **efficient, conflict-free generative modeling**. It's highly relevant to current trends in generative AI and opens doors for new research into task-aligned decomposition and ultra-long image synthesis.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18948/x1.png)

> 🔼 This figure illustrates the Equivariant Image Generation Framework, which consists of two main stages: tokenization and modeling.  In the tokenization stage, a 1D tokenizer processes the input image, converting it into a sequence of 1D tokens arranged in columns. This is different from traditional methods that use 2D patches.  Each token represents a vertical slice of image features. The modeling stage uses an enhanced autoregressive model to capture the relationships between these column-wise tokens, thereby predicting the image. This novel approach leverages the translational invariance of natural images, aligning optimization targets across sub-tasks to improve generation quality and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of Equivariant Image Generation Framework. The tokenizer translates the image into 1D tokens arranged in columns and an enhanced autoregressive model models the column-wise token distribution.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.2"># Num task.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.3">gFID</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.1.1">AR-MAR-2D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.1.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.1.3">7.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3.2">
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2.2">16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2.3">5.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.3.1">AR-MAR-2D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.3.2">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.3.3">92.46</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.5.4.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.5.4.2">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.5.4.3">8.99</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of a zero-shot learning experiment.  Models were trained on a subset of 16 subtasks and then evaluated on all 16 subtasks. The table compares the performance of the proposed method against a baseline method, measuring performance using the gFID (Generative Fréchet Inception Distance) metric.  The number of training subtasks (# Num task.) is shown for both methods, highlighting the zero-shot generalization capabilities of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 1:  Performance under Zero-shot Setting. # Num task. is used to denote the number of trained subtasks. The total number of subtasks is 16 for all methods.
> </details>





### In-depth insights


#### Equivariance First
**Equivariance first** is a compelling principle for generative modeling, particularly in domains like image generation where inherent symmetries exist. Prioritizing equivariance means designing models that explicitly respect these symmetries (e.g., translation, rotation). This can be achieved through architectural choices or training strategies that ensure consistent behavior under symmetry transformations.  This approach offers several advantages. First, it **improves sample efficiency**: by leveraging symmetry, the model learns more generalizable representations from less data. Second, it **enhances robustness**: equivariant models are less susceptible to adversarial attacks or variations in input data. Third, it **promotes interpretability**: the model's behavior becomes more predictable and easier to understand. It inherently **reduces inter-task conflict** as the optimization direction for perdicting any pixel remains consistent. The challenge lies in effectively incorporating equivariance without sacrificing model capacity or introducing unwanted biases. Carefully selecting appropriate architectural constraints and regularization techniques is crucial for realizing the full potential of an equivariance-first approach.

#### Column-wise Tokens
Column-wise tokenization represents a departure from traditional 2D patch-based approaches in image modeling. **By organizing image features into vertical columns**, it enhances spatial uniformity and better preserves natural image statistics. This approach leverages the translation invariance of natural visual signals, addressing inherent conflicts arising during the joint optimization of subtasks in generative models. **Column-wise tokenization facilitates more efficient parameter sharing across spatial locations**, enabling the model to capture consistent contextual relationships and improve generalization capabilities. By eliminating the grid structure, this tokenization method provides a semantically continuous transition between tokens, **creating a more equivariant representation** conducive to autoregressive modeling.

#### Windowed Attention
Windowed attention mechanisms offer a compelling approach to balancing computational efficiency and performance in sequence modeling. By limiting the scope of attention to a fixed-size window, the computational cost associated with attending to all previous tokens can be significantly reduced. This becomes particularly relevant in tasks dealing with long sequences, such as image generation where computational resources can be a bottleneck. However, this benefit comes with a trade-off: the model's ability to capture long-range dependencies might be compromised. It is important to see **how the window size impacts the ability to capture long-range dependencies**. Further analysis may be warranted to determine the **optimal window size** that maximizes performance while remaining computationally feasible. There may be **performance improvement by dynamically adapting window size** with the aid of architectural re-design.

#### Zero-Shot Insight
Zero-shot learning represents a significant leap in model generalization. The ability of a model to perform tasks it hasn't been explicitly trained on is crucial for real-world applications where data scarcity is a common challenge. **Insights from zero-shot performance can reveal the robustness and adaptability of the underlying feature representations**. A strong zero-shot capability often indicates that the model has learned meaningful, transferable features rather than simply memorizing training data. The **success in zero-shot scenarios hinges on effectively leveraging prior knowledge or learning from related tasks**. This requires careful design of the model architecture and training strategies to ensure that the learned representations capture the essential characteristics of the data. The **analysis of failures in zero-shot learning is equally important, providing valuable feedback on the limitations of the model and guiding future research directions**.

#### Long Image Future
The paper demonstrates a strong generalization ability across different subtasks, showcasing the power of equivariance. Inspired by unbounded visual signals, the model combines generalization to generate training-unseen subtasks with equivariant properties, testing models in long image generation scenarios. Trained on the Nature subset of Places, with 30 categories, the model generates extended-length, arbitrary-resolution images. These exhibit high spatial resolution and lengths significantly exceeding 256 pixels. **The zero-shot long-content capability stems from inherent equivariance**. Despite being optimized on 256x256 images, the model generates content at previously unencountered positional indices. Images up to eight times longer than the training inputs are produced, maintaining visual fidelity and avoiding sharp edges between generated regions. **The method's equivariance enables the generation of coherent, high-resolution long images without specific training for such scenarios.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18948/x2.png)

> 🔼 This figure demonstrates the process of reconstructing an image from 1D token sequences. Starting with a sequence of randomly initialized tokens, the model progressively replaces them with tokens encoded from the ground truth image.  Each step in this replacement process results in a progressively more accurate reconstruction of the original image, visually showcasing how the tokens carry information that contributes to the reconstruction. The figure visually shows how the model successfully recovers the image, confirming the effectiveness of the proposed column-wise tokenization and the overall image generation process.  It highlights that each token encodes a relevant part of the image, and together they represent the whole image.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visual Meanings of 1D Tokens. By progressively replacing the randomly initialized token sequence with tokens encoded from the ground truth images, the decoder faithfully reconstructs the original images step by step.
> </details>



![](https://arxiv.org/html/2503.18948/x3.png)

> 🔼 This figure displays the training loss curves for different image generation models. The left panel shows the absolute training loss at an early stage (10 epochs) and a later stage (100 epochs) of training.  The right panel displays the *relative* improvement in training loss at the later stage compared to the loss at the early stage.  Multiple training scenarios are included, such as the multi-task setting (training on all tasks), and single-task settings (training on only selected tasks).  The comparison highlights how the proposed equivariant generation model achieves better parameter sharing and generalization, leading to consistent performance improvements across subtasks, unlike traditional 2D models where performance improvements in some tasks don't transfer to others.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training Loss of Different Models. Left: the training loss of different methods at early (10 epoches) and late (100 epoches) training stage. Right: the relative loss improvement of different methods under different settings compared to the early stage of Multi-task setting. The higher value indicates better performance. The equivariant generation approach can transfer the improvement from a single task to other untrained tasks.
> </details>



![](https://arxiv.org/html/2503.18948/x4.png)

> 🔼 Figure 4 compares the converged training loss for different subtasks in the ImageNet and LHQ datasets.  The ImageNet dataset shows a significant difference in the difficulty of different subtasks, with some subtasks consistently exhibiting higher loss than others. This uneven distribution across subtasks is likely due to the inherent bias in the ImageNet dataset towards objects that are centrally located and well-defined. In contrast, the LHQ dataset shows a much more uniform loss distribution across all subtasks, likely due to its higher degree of spatial uniformity. The figure suggests that the inconsistencies in the ImageNet data significantly impact the model's training process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Converged Training Loss on ImageNet vs LHQ. Compared to ImageNet, the visual statics in LHQ demonstrates greater uniformity, as does the task-wise loss distribution.
> </details>



![](https://arxiv.org/html/2503.18948/x5.png)

> 🔼 This figure showcases the model's ability to generate images significantly longer than those it was trained on.  The model was trained using images of a fixed 256-pixel length from the Places dataset.  Despite this, the generated examples demonstrate the ability to produce images of arbitrary lengths, maintaining visual coherence and detail across the extended spatial range. This highlights the model's generalization capability and robustness.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual examples of long image generation. We present visual examples of long images with arbitrary lengths, which are generated by our model that has been trained on the Places datasets with fixed length of 256.
> </details>



![](https://arxiv.org/html/2503.18948/x6.png)

> 🔼 This figure demonstrates the interactive nature of the image generation process.  Each token, representing a vertical strip of the image, is generated and displayed individually.  The user can then review the generated image and identify any unsatisfactory tokens (highlighted in orange rectangles). These problematic tokens are then discarded, and the model regenerates them, allowing for human-guided refinement of the output image. This process iterates until the user is satisfied with the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 6: Interactive Image Generation. During inference, each token is immediately visible and bad generated tokens (circled with orange rectangle) are dropped according to human feedback.
> </details>



![](https://arxiv.org/html/2503.18948/x7.png)

> 🔼 This figure is a visualization showing the effect of augmented position embedding on image generation.  The '(a) w/o random shift' indicates that this specific image was generated without applying random shifts to the position indices during training. This augmentation helps the model better learn consistent relationships across different spatial locations, improving the quality and coherence of generated images, especially those that extend beyond the length of sequences seen during training.
> <details>
> <summary>read the caption</summary>
> (a) w/o random shift
> </details>



![](https://arxiv.org/html/2503.18948/x8.png)

> 🔼 This figure visualizes the impact of the augmented position embedding technique on the model's ability to generate coherent and continuous images. The left panel (a) shows results without random position shifts, while the right panel (b) demonstrates the results with random position shifts applied. The use of random position shifts helps to reduce the effect of fixed positions in the model and enhances its generation performance, especially for longer image sequences.
> <details>
> <summary>read the caption</summary>
> (b) with random shift
> </details>



![](https://arxiv.org/html/2503.18948/x9.png)

> 🔼 This figure compares the results of using a standard positional embedding technique versus an augmented positional embedding technique in a transformer-based image generation model. The model was trained on a subset of the Places dataset. The augmented approach enhances the model's ability to generate images with consistent visual features across spatial positions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization effect of the Augmented Position Embedding. The model is trained on a subset of the Places dataset.
> </details>



![](https://arxiv.org/html/2503.18948/x10.png)

> 🔼 This figure provides additional examples to illustrate how the column-wise tokenization approach preserves the vertical equivariance of natural images.  Each image shows the progressive reconstruction of an image from its 1D token representation. The reconstruction starts with a randomly initialized sequence of tokens and progressively replaces those random tokens with tokens generated from the ground truth image.  This demonstrates how the model reconstructs the image from a column-wise representation, highlighting the effectiveness of the proposed 1D tokenization method in preserving spatial information.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional Examples about Visual Meanings of 1D Tokens.
> </details>



![](https://arxiv.org/html/2503.18948/x11.png)

> 🔼 This figure visualizes the image generation process step by step. Starting from randomly initialized tokens, it progressively replaces these tokens with tokens encoded from the ground truth image. This allows us to see how the decoder faithfully reconstructs the original image, step by step, as the correct token sequences are fed into it. It demonstrates the continuous transition and evolution of the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of the generation process.
> </details>



![](https://arxiv.org/html/2503.18948/x12.png)

> 🔼 This figure displays a diverse array of images generated by the model trained on the ImageNet-1k dataset.  Each image represents a different object category from the dataset, showcasing the model's ability to generate various objects with high fidelity and detail.  The figure demonstrates the model's capacity for class-conditional image generation, highlighting the quality and diversity of the generated samples.
> <details>
> <summary>read the caption</summary>
> Figure 10: Generation Results on the ImageNet-1k Dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.4" style="padding:0.25pt 4.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1" style="padding:0.25pt 4.0pt;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2" style="padding:0.25pt 4.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.5" style="padding:0.25pt 4.0pt;">#Para.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.6" style="padding:0.25pt 4.0pt;">#Len.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3" style="padding:0.25pt 4.0pt;">GFLOPs<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.3.4.1.1" style="padding:0.25pt 4.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.3.4.1.1.1" style="color:#808080;">Diffusion</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.1" style="padding:0.25pt 4.0pt;">DiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.2" style="padding:0.25pt 4.0pt;">2.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.3" style="padding:0.25pt 4.0pt;">278.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.4" style="padding:0.25pt 4.0pt;">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.5" style="padding:0.25pt 4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.6" style="padding:0.25pt 4.0pt;">118.64</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.3.6.3.1" style="padding:0.25pt 4.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.3.6.3.1.1" style="color:#808080;">MaskGIT</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.4">
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.1" style="padding:0.25pt 4.0pt;">TiTok <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.2" style="padding:0.25pt 4.0pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.3" style="padding:0.25pt 4.0pt;">281.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.4" style="padding:0.25pt 4.0pt;">287M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.5" style="padding:0.25pt 4.0pt;">128</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.6" style="padding:0.25pt 4.0pt;">37.35</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.5">
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.1" style="padding:0.25pt 4.0pt;">MAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.2" style="padding:0.25pt 4.0pt;">1.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.3" style="padding:0.25pt 4.0pt;">296.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.4" style="padding:0.25pt 4.0pt;">479M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.5" style="padding:0.25pt 4.0pt;">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.6" style="padding:0.25pt 4.0pt;">70.13</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.9.6">
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.1" style="padding:0.25pt 4.0pt;">FractalMAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.2" style="padding:0.25pt 4.0pt;">7.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.3" style="padding:0.25pt 4.0pt;">334.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.4" style="padding:0.25pt 4.0pt;">438M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.5" style="padding:0.25pt 4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.6" style="padding:0.25pt 4.0pt;">238.58</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.10.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.3.10.7.1" style="padding:0.25pt 4.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.3.10.7.1.1" style="color:#808080;">Autoregressive</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.11.8">
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.1" style="padding:0.25pt 4.0pt;">VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.2" style="padding:0.25pt 4.0pt;">15.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.3" style="padding:0.25pt 4.0pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.4" style="padding:0.25pt 4.0pt;">1.4B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.5" style="padding:0.25pt 4.0pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.6" style="padding:0.25pt 4.0pt;">246.67</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.12.9">
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.1" style="padding:0.25pt 4.0pt;">VAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.2" style="padding:0.25pt 4.0pt;">3.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.3" style="padding:0.25pt 4.0pt;">274.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.4" style="padding:0.25pt 4.0pt;">310M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.5" style="padding:0.25pt 4.0pt;">680</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.6" style="padding:0.25pt 4.0pt;">105.70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.13.10">
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.1" style="padding:0.25pt 4.0pt;">MAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18948v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.2" style="padding:0.25pt 4.0pt;">4.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.3" style="padding:0.25pt 4.0pt;">244.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.4" style="padding:0.25pt 4.0pt;">479M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.5" style="padding:0.25pt 4.0pt;">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.6" style="padding:0.25pt 4.0pt;">78.50</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.14.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.1" style="padding:0.25pt 4.0pt;">Ours-S</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.2" style="padding:0.25pt 4.0pt;">7.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.3" style="padding:0.25pt 4.0pt;">233.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.4" style="padding:0.25pt 4.0pt;">151M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.5" style="padding:0.25pt 4.0pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.14.11.6" style="padding:0.25pt 4.0pt;">5.41</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.15.12">
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.1" style="padding:0.25pt 4.0pt;">Ours-B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.2" style="padding:0.25pt 4.0pt;">5.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.3" style="padding:0.25pt 4.0pt;">260.05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.4" style="padding:0.25pt 4.0pt;">294M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.5" style="padding:0.25pt 4.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.6" style="padding:0.25pt 4.0pt;">9.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.16.13">
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.1" style="padding:0.25pt 4.0pt;">Ours-L</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.2" style="padding:0.25pt 4.0pt;">4.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.3" style="padding:0.25pt 4.0pt;">259.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.4" style="padding:0.25pt 4.0pt;">644M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.5" style="padding:0.25pt 4.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.6" style="padding:0.25pt 4.0pt;">19.66</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.17.14">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.1" style="padding:0.25pt 4.0pt;">Ours-H</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.2" style="padding:0.25pt 4.0pt;">4.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.3" style="padding:0.25pt 4.0pt;">290.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.4" style="padding:0.25pt 4.0pt;">1.2B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.5" style="padding:0.25pt 4.0pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.17.14.6" style="padding:0.25pt 4.0pt;">34.91</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of class-conditional image generation experiments conducted on the ImageNet dataset at 256x256 resolution.  Several different generative models were compared, and the table shows key performance metrics including the Fréchet Inception Distance (gFID), which measures the quality of the generated images, and the Inception Score (IS), which assesses the diversity and quality of the generated images.  The table also lists the number of parameters (#Para.) in each model, providing an indication of model complexity, and the token sequence length (#Len.) used by each model during the generation process. Lower gFID and higher IS values generally indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2:  Class-conditional Generation Results on ImageNet 256×256 Benchmark. #Para. denotes the number of parameters in each generator, while #Len. indicates the token sequence length that generators are required to model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.2.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.2.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">Tokens Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">GFLOPs<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.2.3.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">AR-MAR-2D-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.2.3.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">256</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.3.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">3.99</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.3.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">130.46</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.4.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">AR-MAR-2D-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.4.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">16</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">7.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">9.79</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.2.5.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">AR-MAR-2D-L</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.2.5.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">16</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">7.49</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">19.68</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.2.6.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Ours-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.2.6.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">16</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">5.57</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.3.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">9.78</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.2.7.4.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Ours-L</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.2.7.4.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">16</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.7.4.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">4.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.7.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">19.66</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance (in terms of gFID) and computational efficiency (GFLOPs) of different models for image generation.  It highlights the trade-off between these two aspects. The models compared include the baseline autoregressive models with different token lengths (256 and 16) and the proposed equivariant models with token lengths of 16. The results show that the proposed equivariant models achieve a better trade-off, offering comparable or better performance with significantly reduced computational cost.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison on the performance and computational efficiency. Our methods achieves better trade-off between performance and computation cost.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">Equ.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">L-Ctx.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">Attn FLOPs<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Full Causal</td>
<td class="ltx_td ltx_border_t" id="S4.T4.2.3.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">7.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">4.2M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4.2">
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Real Equ.</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td" id="S4.T4.2.4.2.3" style="padding-top:0.25pt;padding-bottom:0.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">8.87</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.5" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.2.5.1">0.26M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Window Causal</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.4" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.4.1">7.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">1.8M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of windowed causal attention in an equivariant autoregressive image generation model. It compares four different model variations: a baseline model with full causal attention, a strictly equivariant model (Real Equ.) with a limited context window, a model using windowed causal attention, and a model with windowed causal attention and long-range context.  The table shows the gFID (lower is better), a measure of image generation quality, and the attention FLOPs (floating-point operations, lower is better), representing computational cost.  This allows for an analysis of the trade-off between model performance and computational efficiency when employing different attention mechanisms and degrees of equivariance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Study of Windowed Causal Attention. ”Real Equ.” indicates the strictly equivariant model variant as described in  Sec. 3.2; ”Equ.” refers to whether the model possesses equivariant properties; and ”L-Ctx.” denotes whether long-range contexts are utilized.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T5.2.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2">gFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.3.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.1.2">baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.1.3">1.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.1.4">7.10</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.2.4.2.1">2</th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2.2">+Stronger discriminator</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2.3">0.62</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2.4">6.29</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.2.5.3.1">3</th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.3.2">+ Decoder finetune</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.3.3">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.3.4">6.25</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.2.6.4.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.6.4.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.2">+Semantic aligned loss</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.3">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.4">5.57</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments performed to evaluate the impact of different components within the tokenizer on the overall model performance.  The baseline model is compared against variations that include a stronger discriminator, decoder fine-tuning, and the addition of a semantic alignment loss. The 'Ours' row represents the final model configuration that incorporates all of these improvements, and was used in all other experiments in the paper. The table shows the resulting rFID and gFID scores for each variation, demonstrating how the incremental improvements affect the model's performance in reconstruction fidelity and sample quality.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation on the Impact of Tokenizer Components. ”Ours” denotes the final setting we adopted in all other experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.2.1.1.1">config</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.2.1.1.2">value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.2.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.1.1">Base channels</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.2.1.2">128</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.3.2">
<td class="ltx_td ltx_align_left" id="A2.T6.2.3.2.1">Base channel multiplier per stage</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.3.2.2">[1, 1, 2, 4, 4]</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.4.3">
<td class="ltx_td ltx_align_left" id="A2.T6.2.4.3.1">Residual blocks per stage</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.4.3.2">2</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.5.4">
<td class="ltx_td ltx_align_left" id="A2.T6.2.5.4.1">Attention resolutions</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.5.4.2">16</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.6.5">
<td class="ltx_td ltx_align_left" id="A2.T6.2.6.5.1">Token channels</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.6.5.2">256</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.7.6.1">Adversarial loss enabled at iteration</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.7.6.2">5000</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.8.7">
<td class="ltx_td ltx_align_left" id="A2.T6.2.8.7.1">Discriminator loss weight</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.8.7.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.9.8">
<td class="ltx_td ltx_align_left" id="A2.T6.2.9.8.1">Discriminator loss</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.9.8.2">hinge loss</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.10.9">
<td class="ltx_td ltx_align_left" id="A2.T6.2.10.9.1">Perceptual loss weight</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.10.9.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.11.10">
<td class="ltx_td ltx_align_left" id="A2.T6.2.11.10.1">Semantic anlignment loss enabled at iteration</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.11.10.2">20000</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.12.11">
<td class="ltx_td ltx_align_left" id="A2.T6.2.12.11.1">Semantic anlignment loss weight</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.12.11.2">5.0</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.13.12">
<td class="ltx_td ltx_align_left" id="A2.T6.2.13.12.1">KL divergence loss weight</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.13.12.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.14.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.14.13.1">Gradient clipping by norm</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.14.13.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.15.14">
<td class="ltx_td ltx_align_left" id="A2.T6.2.15.14.1">Optimizer</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.15.14.2">Adam</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.16.15">
<td class="ltx_td ltx_align_left" id="A2.T6.2.16.15.1">Beta1</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.16.15.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.17.16">
<td class="ltx_td ltx_align_left" id="A2.T6.2.17.16.1">Beta2</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.17.16.2">0.9</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.18.17">
<td class="ltx_td ltx_align_left" id="A2.T6.2.18.17.1">Base LR</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.18.17.2">1.92e-4</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.19.18">
<td class="ltx_td ltx_align_left" id="A2.T6.2.19.18.1">LR warmup iterations</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.19.18.2">5000</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.20.19">
<td class="ltx_td ltx_align_left" id="A2.T6.2.20.19.1">LR decay frequency</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.20.19.2">30000</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.21.20">
<td class="ltx_td ltx_align_left" id="A2.T6.2.21.20.1">LR decay ratio</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.21.20.2">0.2</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.22.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.22.21.1">EMA decay</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.22.21.2">0.9999</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.23.22">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.23.22.1">Training epochs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.23.22.2">50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.24.23">
<td class="ltx_td ltx_align_left" id="A2.T6.2.24.23.1">Total Batchsize</td>
<td class="ltx_td ltx_align_center" id="A2.T6.2.24.23.2">192</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.25.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.2.25.24.1">GPU</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.2.25.24.2">A100</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during training of the Equivariant 1D tokenizer, a key component in the proposed image generation framework.  It details settings for various aspects of the training process, including network architecture (base channels, residual blocks, attention resolutions), loss functions (adversarial, discriminator, perceptual, semantic alignment, KL divergence), optimization parameters (optimizer, learning rate, decay, warmup, and EMA), and training schedule (epochs, batch size). These values were carefully chosen to optimize the performance of the tokenizer in preparing the image data for the subsequent generative model.
> <details>
> <summary>read the caption</summary>
> Table 6: Detailed hyper-parameters for our equivariant 1D tokenizer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T7.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T7.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T7.2.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T7.2.1.1.2">#Para.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.2.1.1.3">Layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.2.1.1.4">Hidden dim</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.2.1.1.5">Attn heads</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.2.1.1.6">Diff. hidden dim</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.2.1.1.7">Diff.layers</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T7.2.2.1.1">Small</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T7.2.2.1.2">151M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.1.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.1.4">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.1.5">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.1.6">960</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.2.1.7">12</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T7.2.3.2.1">Base</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T7.2.3.2.2">294M</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.2.3">24</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.2.4">768</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.2.5">12</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.2.6">1024</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.3.2.7">12</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T7.2.4.3.1">Large</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T7.2.4.3.2">644M</th>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.3.3">32</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.3.4">1024</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.3.5">16</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.3.6">1280</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.4.3.7">12</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T7.2.5.4.1">Huge</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A2.T7.2.5.4.2">1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.5.4.3">40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.5.4.4">1280</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.5.4.5">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.5.4.6">1536</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.5.4.7">12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture specifications for four different image generation models (Small, Base, Large, and Huge).  For each model, it lists the number of parameters (#Para.), the number of layers, the hidden dimension size, the number of attention heads, the diffusion hidden dimension size, and the number of diffusion layers.  The 'Diff.' column refers to the diffusion head, a component of the model used for image generation. The table also notes that 'S', 'B', 'L', and 'H' are used in the paper as shorthand for Small, Base, Large, and Huge respectively.
> <details>
> <summary>read the caption</summary>
> Table 7: The model configurations of our generators. #Para. denotes the number of parameters in the respective generators and Diff. presents the diffusion head. We also use ”S”, ”B”, and ”L” and ”H” as shorthand for different models in the manuscript.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T8.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T8.2.1.1.1">config</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.2.1.1.2">value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.2.1.1">Token length</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.1.2">16</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.3.2.1">Token channels</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.2.2">256</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.4.3.1">MLP ratio</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.4.3.2">4</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.5.4.1">Norn layer in attention blocks</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.5.4.2"><span class="ltx_text ltx_font_italic" id="A2.T8.2.5.4.2.1">nn.LayerNorm</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.6.5.1">Class labels sequence length</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.6.5.2">16</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.7.6.1">Class labels dropout</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.7.6.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.8.7.1">Attention dropout</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.8.7.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.9.8.1">Projection layer dropout</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.9.8.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.10.9.1">Gradient clipping by norm</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.10.9.2">3.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.11.10.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.11.10.2">Adam</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.12.11.1">Beta1</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.12.11.2">0.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.13.12.1">Beta2</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.13.12.2">0.95</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.14.13.1">Base LR</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.14.13.2">8.0e-4</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.15.14.1">LR scheduler</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.15.14.2">constant</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.16.15.1">LR warmup epochs</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.16.15.2">100</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.17.16.1">Weight decay</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.17.16.2">0.02</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.18.17.1">EMA decay</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.18.17.2">0.9999</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.19.18.1">Training epochs</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.19.18.2">1200</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.20.19.1">Total Batchsize</th>
<td class="ltx_td ltx_align_center" id="A2.T8.2.20.19.2">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T8.2.21.20.1">GPU</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.21.20.2">A100</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the equivariant generator model.  It lists the settings for various aspects of the training process, including tokenization parameters (token length and channels), network architecture choices (MLP ratio, normalization layers, dropout rates), optimization settings (optimizer, learning rate schedule, weight decay), and other regularization techniques.
> <details>
> <summary>read the caption</summary>
> Table 8: Detailed hyper-parameters for our equivariant generator.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18948/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18948/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}