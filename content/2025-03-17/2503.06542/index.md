---
title: "ARMOR v0.1: Empowering Autoregressive Multimodal Understanding Model with Interleaved Multimodal Generation via Asymmetric Synergy"
summary: "ARMOR: Empowers MLLMs with interleaved multimodal generation via asymmetric synergy, using limited resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 Nankai University",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06542 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianwen Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06542" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06542" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06542/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Unified models are promising for multimodal tasks but demand computational resources and struggle with interleaved generation**. Existing models simultaneously learn understanding and generation, requiring extensive resources. The goal is to develop a resource-efficient approach that achieves both understanding and generation effectively. 



This paper introduces ARMOR framework by fine-tuning existing MLLMs. **ARMOR extends existing MLLMs using an asymmetric encoder-decoder architecture**, a high-quality interleaved dataset, and a training algorithm, and experimental results demonstrate that ARMOR empowers MLLMs with enhanced capabilities using limited resources.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ARMOR introduces an asymmetric encoder-decoder architecture with a forward-switching mechanism for interleaved text-image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A meticulously curated, high-quality interleaved dataset and a novel "what or how to generate" algorithm are proposed for fine-tuning MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experimental results demonstrate that ARMOR upgrades existing MLLMs to UniMs with promising image generation capabilities, using limited training resources. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a resource-efficient framework and enhances the way towards achieving both understanding and generation capabilities for MLLMs. The architecture introduces an asymmetric design and a novel training algorithm which could open new research avenues for more efficient multimodal learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06542/x1.png)

> 🔼 This figure showcases ARMOR's multimodal capabilities.  It demonstrates ARMOR's ability to generate different output formats, including images only, text only, and a combination of interleaved text and images, in response to various prompts or questions.  The examples provided in the figure illustrate diverse interaction scenarios, highlighting ARMOR's flexibility and effectiveness in handling various multimodal tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: ARMOR can output images, text, or interleaved text-image. We show some examples of chat with ARMOR.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1">Token Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1">Head</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1">Functional Description</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" colspan="3" id="S3.T1.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.2.2.1.1">Special Tokens:</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.2.3.3.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.3.3.1.1">&lt;imgbos&gt;</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.3.3.2">text output</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.3.3.3">Switch model to visual output mode, begin image generation</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S3.T1.2.4.4.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.4.4.1.1">&lt;imgend&gt;</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.4.2">visual output</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.4.4.3">Terminate image generation, revert to text output mode</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S3.T1.2.5.5.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.5.5.1.1">&lt;imgpad&gt;</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.5.2">visual output</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.5.5.3">Padding placeholder in image token sequences</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" colspan="3" id="S3.T1.2.6.6.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.6.6.1.1">Image Content Tokens:</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.2.7.7.1">8192 image tokens</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.2.7.7.2">visual output</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.2.7.7.3">Content representation tokens</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the special tokens and image content tokens used in the ARMOR model.  The special tokens control the model's behavior, such as switching between text and image generation modes, indicating the beginning and end of image generation sequences, and providing padding for image token sequences. The image content tokens represent the visual information processed by the model.
> <details>
> <summary>read the caption</summary>
> Table 1: Special token and image content token specifications.
> </details>





### In-depth insights


#### UniM Upgrade
The concept of a "UniM Upgrade" suggests a method to **enhance existing unified models**, potentially by leveraging recent advancements in multimodal learning. This could involve incorporating novel attention mechanisms, **integrating improved visual representations**, or refining the training process to better balance understanding and generation. An upgrade might also target **addressing limitations in interleaved text-image generation**, a common challenge in UniMs. Furthermore, such an upgrade may strive for **resource efficiency**, a critical aspect for broader adoption and personalized use. The development of a UniM upgrade is a **significant direction**, given the rising need for these models.

#### Asymmetric Synergy
The concept of "Asymmetric Synergy" suggests an unequal yet mutually beneficial interaction between different components or modalities within a system. In the context of multimodal AI, this might refer to a scenario where **one modality contributes more significantly to the overall performance**, while the other, though less dominant, plays a crucial supporting role. This synergy could arise from **complementary strengths**, where one modality compensates for the weaknesses of another. This approach acknowledges that not all modalities are created equal and that optimal system performance can be achieved by **carefully balancing their contributions** rather than treating them uniformly. Therefore, the success of the multimodal AI depends upon this asymmetric synergy.

#### WoHG Algorithm
The WoHG algorithm, a **three-stage training process**, aims to equip MLLMs with **enhanced generation capabilities** while **preserving their understanding**. Each stage has a **specific training objective**, ensuring progressive improvement. The first stage, "What to Generate", focuses on enabling the model to **autonomously determine the appropriate response format** (text or image) based on the input. The second stage, "How to Generate", is dedicated to **improving image generation**, activating this capability within the model and ensuring accurate image synthesis based on textual input. Finally, "How to Answer Better", uses a carefully selected **high-quality interleaved dataset** to fine-tune the model and ensure a **synergistic effect** between generated text and images, creating cohesive and contextually relevant responses.

#### Text-Image Fusion
**Text-Image Fusion** represents a critical frontier in multimodal AI, aiming to create synergetic representations that leverage the complementary strengths of textual and visual data. Effective fusion is not merely concatenating features; it involves deep interaction to model complex relationships. **Early fusion** methods directly combine raw data or low-level features, while **late fusion** integrates predictions from separate modalities. More advanced approaches, like attention mechanisms, enable adaptive weighting of relevant features across modalities. The key challenge lies in handling the **heterogeneity** between text and images, addressing issues like differing dimensionality, semantic granularity, and noise levels. Future research should explore **context-aware** fusion strategies and enhance robustness to modality-specific challenges.

#### Resource-Efficient
The concept of resource-efficient computing is increasingly critical, especially for multimodal models demanding substantial computational power. A **resource-efficient approach** prioritizes minimizing computational costs through innovative techniques like **model fine-tuning** rather than training from scratch. Further emphasizes on **lightweight architectures** and **optimized data usage**. Which ensures accessibility and sustainability in AI development. This efficiency unlocks potential for deployment on limited-resource devices and reduces carbon footprint. The significance of **algorithmic optimization** alongside hardware considerations is paramount, ensuring maximal utility from available resources, which enables broader participation in AI innovation and promotes eco-friendly practices.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06542/x2.png)

> 🔼 Figure 2 presents a structural comparison of several Unified Multimodal Models (UniMs).  It illustrates the architectural differences in how these models handle multimodal inputs (text and image) and outputs, highlighting distinct approaches such as fully autoregressive architectures, hybrid approaches using autoregressive and diffusion methods, and variations in encoder and decoder designs.  Key differences, including the use of asymmetric encoders and decoders, are highlighted to provide insights into the different strategies used for multimodal understanding and generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Structural comparison of UniMs.
> </details>



![](https://arxiv.org/html/2503.06542/x3.png)

> 🔼 ARMOR's architecture is composed of an asymmetric encoder-decoder structure.  The encoder leverages the pre-trained components of the MLLM (multimodal large language model), preserving its strong understanding capabilities. The decoder is extended with a new visual output layer (VQGAN decoder) and a forward-switching mechanism, enabling the model to naturally generate text and images and seamlessly interleave them. This enables efficient generation of both images and text, as well as natural text-image interleaving, with minimal added computational overhead. The unified embedding space allows integration of textual and visual information for generating coherent outputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of ARMOR.
> </details>



![](https://arxiv.org/html/2503.06542/x4.png)

> 🔼 This figure illustrates the forward-switching mechanism used in ARMOR.  It shows how the model dynamically selects between text and image generation based on the input.  Special tokens control which modality's answer space is used for prediction, enabling natural interleaved text-image generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Forward switching mechanism.
> </details>



![](https://arxiv.org/html/2503.06542/x5.png)

> 🔼 This figure shows the first step of the three-stage WoHG training algorithm. In this stage, the model learns to decide what to generate (text, image, or both) based on different types of input questions.  The model is trained on various datasets including text-to-text (t2t), text-image-to-text (ti2t), text-to-image (t2i), and text-to-text-image (t2ti). The weights of the loss function are adjusted to α = 1.0 and β = 0.0 to emphasize text prediction, helping the model learn to differentiate between question types.
> <details>
> <summary>read the caption</summary>
> (a) step 1.
> </details>



![](https://arxiv.org/html/2503.06542/x6.png)

> 🔼 This figure shows the second stage of the three-stage WoHG (What or How to Generate) training algorithm.  In this stage, the model focuses on enhancing its image generation capabilities.  The parameters related to image generation are unfrozen and trained to improve the accuracy and quality of image generation. The image generation loss weight (β) is set to 1.0, and the text generation loss weight (α) is set to 0.0.  The goal is to allow the model to generate high-quality images matching text input, while preserving its multimodal understanding capabilities from the first stage.
> <details>
> <summary>read the caption</summary>
> (b) step 2.
> </details>



![](https://arxiv.org/html/2503.06542/x7.png)

> 🔼 This figure shows the third stage of the 'What or How to Generate' (WoHG) training algorithm.  In this stage, the model is fine-tuned using a high-quality dataset of interleaved text and image data. The goal is to improve the model's ability to generate high-quality, integrated text and image responses that are contextually relevant and coherent.  The model learns to better integrate text and visual modalities, leading to more natural and effective multimodal output.
> <details>
> <summary>read the caption</summary>
> (c) step 3.
> </details>



![](https://arxiv.org/html/2503.06542/extracted/6250560/figs/show-fig/1-1.jpg)

> 🔼 This figure demonstrates the three-stage training process of the 'What or How to Generate' (WoHG) algorithm. Each stage focuses on a specific objective: Stage 1 trains the model to determine what type of response to generate (text, image, or both); Stage 2 trains the model to improve its image generation capabilities; and Stage 3 trains the model to improve the quality and coherence of its multimodal responses. The figure visually illustrates the changes in the model's architecture and training data used in each stage.
> <details>
> <summary>read the caption</summary>
> Figure 5: Demonstration of the proposed three-stage WoHG training algorithm.
> </details>



![](https://arxiv.org/html/2503.06542/extracted/6250560/figs/show-fig/1-2.jpg)

> 🔼 This figure displays the evolution of image generation quality throughout the training process, focusing on two different prompts. The leftmost images correspond to epoch 4, and the quality progressively improves towards the rightmost images (epoch 18).  Each set of images shows side-by-side examples generated from the same prompt at different training epochs.  Prompt 1 focuses on the generation of an aurora, while Prompt 2 involves creating a depiction of a tropical rainforest. The progression demonstrates the model's learning ability to generate increasingly detailed and accurate images over time.
> <details>
> <summary>read the caption</summary>
> Figure 6: Changes in image generation quality during part of the training process (epochs: 4, 6, 8… 18, from left to right). Prompt 1: “Could you generate an image of the aurora for me?”; Prompt 2: “Please help me draw a picture of the tropical rainforest.”.
> </details>



![](https://arxiv.org/html/2503.06542/extracted/6250560/figs/show-fig/1-3.jpg)

> 🔼 This figure compares the training loss curves for two different model architectures.  The x-axis represents the training epoch, while the y-axis shows the loss value.  The plot allows for a visual comparison of the convergence speed and overall training loss between the two models, providing insights into their relative training efficiency and effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 7: The training loss of the two model structures.
> </details>



![](https://arxiv.org/html/2503.06542/extracted/6250560/figs/show-fig/1-4.jpg)

> 🔼 This figure visualizes the impact of the model architecture on image generation quality.  Using the prompt 'Can you help me draw a picture of a teddy bear doll?', the model was used to generate images. The first three images (a, b, and c) were generated by a model with a single output layer, while the next three images (d, e, and f) were created by a model with two output layers. The comparison highlights how the increased model complexity (two output layers) leads to improved image generation, resulting in more refined and detailed teddy bear depictions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Generated images with the prompt “Can you help me draw a picture of a teddy bear doll?”. Images (a), (b) and (c) are from a model with one output layer, and images (d), (e) and (f) are from a model with two output layers.
> </details>



![](https://arxiv.org/html/2503.06542/extracted/6250560/figs/show-fig/1-5.jpg)

> 🔼 This figure shows example images generated by a model trained with a visual output layer and adapter.  The visual output layer is a component added to enable image generation capabilities, and the adapter is a set of additional transformer layers designed to help integrate the new image generation functionality with the pre-existing language model. The quality of the generated images likely reflects the effectiveness of the training process and the architecture modifications made to the model.
> <details>
> <summary>read the caption</summary>
> Figure 9: The Generated Images Trained with Visual Output Layer and Adapter.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.1">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.2">Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.3">MMMU (val) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.4">MME-P <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.5">MME <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.6">MMvet <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.7">MMB <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.8">SEEDBench-img <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.9">HallusionBench <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.10">POPE <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.11">LLaVABench <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06542v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_border_tt" id="S4.T2.2.1.1.1.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.2.1.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.1.2.2.1.1">Understanding modals</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.1.3.3.1">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.3">56.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.4">1685.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.5">2299.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.6">66.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.7">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.8">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.9">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.10">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.3.11">80.6</td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.3.3.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.4.4.1">InternVL 2.5</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.3">53.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.4">1688.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.5">2338.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.6">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.7">82.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.8">77.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.9">49.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.10">88.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.11">80.3</td>
<td class="ltx_td" id="S4.T2.2.1.4.4.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.5.5.1">Qwen2-VL</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.3">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.4">1639.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.5">2276.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.6">61.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.7">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.8">76.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.9">50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.10">88.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.11">70.1</td>
<td class="ltx_td" id="S4.T2.2.1.5.5.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.6.6.1">LLaVA-Next-Vicuna</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.3">37.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.4">1448.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.5">1745.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.6">44.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.7">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.8">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.9">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.10">87.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.11">73.9</td>
<td class="ltx_td" id="S4.T2.2.1.6.6.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.7.7.1">LLaVA-ov</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.3">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.4">1577.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.5">1993.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.6">51.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.7">83.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.8">76.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.9">31.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.10">88.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.11">81.0</td>
<td class="ltx_td" id="S4.T2.2.1.7.7.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.8.8.1">Llama-3-VILA1.5</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.3">37.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.4">1438.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.5">1698.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.6">41.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.7">62.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.8">65.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.9">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.10">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.11">71.7</td>
<td class="ltx_td" id="S4.T2.2.1.8.8.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.9.9.1">DeepSeek-VL2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.2">16B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.3">54.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.4">1632.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.5">2230.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.6">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.7">84.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.8">77.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.9">45.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.10">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.11">89.7</td>
<td class="ltx_td" id="S4.T2.2.1.9.9.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.10.10.1">LLaVA-v1.5</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.3">35.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.4">1506.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.5">1808.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.6">32.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.7">66.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.8">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.9">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.10">86.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.11">61.8</td>
<td class="ltx_td" id="S4.T2.2.1.10.10.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.11.11.1">InstructBLIP</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.3">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.4">1137.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.5">1391.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.6">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.7">33.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.8">44.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.9">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.10">86.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.11">59.8</td>
<td class="ltx_td" id="S4.T2.2.1.11.11.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.12.12.1">Qwen-VL-Chat</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.3">37.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.4">1467.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.5">1860.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.6">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.7">61.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.8">64.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.9">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.10">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.11">67.7</td>
<td class="ltx_td" id="S4.T2.2.1.12.12.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.13.13.1">Emu3_Chat</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.3">33.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.4">1334.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.5">1610.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.6">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.7">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.8">69.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.9">31.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.10">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.11">49.2</td>
<td class="ltx_td" id="S4.T2.2.1.13.13.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.2.1.14.14.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.1.14.14.1.1">Uni modals <span class="ltx_text ltx_font_bold" id="S4.T2.2.1.14.14.1.1.1">without</span> interleaved text - image output</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.1.15.15.1">Show-o-256</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.2">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.3">25.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.4">948.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.10">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.15.15.11">-</td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.15.15.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.16.16.1">SEED-X</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.2">17B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.3">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.4">1435.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.10">84.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.16.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.16.16.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.17.17.1">VILA-U-384</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.4">1401.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.6">33.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.8">59.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.10">85.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.17.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.17.17.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.18.18.1">LWM</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.6">9.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.10">75.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.18.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.18.18.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.19.19.1">TokenFlow-B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.3">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.4">1353.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.5">1660.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.6">22.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.8">60.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.10">84.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.19.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.19.19.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.20.20.1">TokenFlow-L</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.3">34.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.4">1365.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.5">1622.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.6">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.8">62.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.10">85.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.20.20.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.20.20.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.21.21.1">TokenFlow-XL-Vicuna</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.2">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.3">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.4">1545.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.5">1840.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.6">40.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.8">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.10">86.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.21.21.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.21.21.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.22.22.1">TokenFlow-XL-Qwen</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.3">43.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.4">1551.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.5">1922.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.6">48.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.8">72.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.10">87.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.22.22.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.22.22.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.23.23.1">SynerGen-VL</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.2">2.4B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.3">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.4">1381.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.5">1837.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.6">34.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.7">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.8">62.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.10">85.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.23.23.11">-</td>
<td class="ltx_td" id="S4.T2.2.1.23.23.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.24.24.1">Janus-Pro</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.3">41.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.4">1516.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.5">1791.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.6">45.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.7">62.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.8">70.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.9">39.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.10">78.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.24.24.11">74.4</td>
<td class="ltx_td" id="S4.T2.2.1.24.24.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.2.1.25.25.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.1.25.25.1.1">Uni modals <span class="ltx_text ltx_font_bold" id="S4.T2.2.1.25.25.1.1.1">with</span> interleaved text - image output</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.1.26.26.1">chameleon</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.3">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.4">153.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.5">202.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.6">8.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.7">15.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.8">30.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.9">17.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.10">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.26.26.11">26.6</td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.26.26.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.1.27.27.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.1.1">ARMOR (InternVL2.5)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.3.1">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.4.1">1619.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.5.1">2229.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.6.1">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.7.1">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.8.1">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.9"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.9.1">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.10.1">87.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.27.27.11"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.27.27.11.1">78.5</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T2.2.1.27.27.12"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various models' performance on nine multimodal understanding benchmarks.  It shows the scores achieved by different models on each benchmark, allowing for a direct comparison of their capabilities in understanding combined text and image data. The models are categorized into those focused primarily on understanding, those focused primarily on generation, and those attempting both (unified models). ARMOR's results are highlighted for emphasis, showcasing its performance relative to other models.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation on multimodal understanding benchmarks. We include several methods with their results on multiple benchmarks. The results of ARMOR are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.2">Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4">#Param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.5">#Train Images</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.6">Train Cost(GPU days)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.7">Image Res.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.2.1.1">Gen.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.2.1.2">LlamaGen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.3">0.8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.4">60M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.7">0.32</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.3.2.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.3.2.2">LDM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3">1.4B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4">400M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.6">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.7">0.37</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.4.3.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.3.2">SDv1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.3">0.9B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.4">2000M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.5">6250/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.6">512</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.7">0.43</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.4">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.5.4.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.5.4.2">PixArt-alpha</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.3">0.6B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.4">25M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.5">753/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.6">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.7">0.48</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.5">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.6.5.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.5.2">SDv2.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.3">0.9B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.5">8333/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.6">768</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.7">0.50</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.6">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.7.6.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.6.2">Emu3-Gen</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.3">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.6">512</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.7">0.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.7">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.8.7.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.8.7.2">DALL-E2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7.3">6.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7.4">650M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7.5">4166/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7.6">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7.7">0.52</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.8">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.9.8.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.9.8.2">SDXL</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.8.3">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.8.4">2000M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.8.6">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.8.7">0.55</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.9">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.10.9.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.10.9.2">SDv3 (d=24)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9.3">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9.6">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9.7">0.62</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.11.10.1">NoILO-Uni.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.11.10.2">VILA-U</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10.3">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10.4">15M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10.6">384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10.7">0.42</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.11">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.12.11.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.12.11.2">Show-o</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.11.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.11.4">36M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.11.6">512</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.11.7">0.53</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.12">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.13.12.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.13.12.2">D-DiT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.12.3">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.12.4">400M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.12.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.12.6">512</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.12.7">0.65</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14.13">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.14.13.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.14.13.2">SEED-X</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.13.3">17B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.13.4">158M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.13.5">480/H800</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.13.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.13.7">0.49</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15.14">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.15.14.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.15.14.2">TokenFlow-XL</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.14.3">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.14.4">60M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.14.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.14.6">384</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.14.7">0.55</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.16.15">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.16.15.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.16.15.2">SynerGen-VL</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.15.3">2.4B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.15.4">667M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.15.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.15.6">512</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.15.7">0.61</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.17.16">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.17.16.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.17.16.2">Janus-Pro-1B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.16.3">1.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.16.4">72M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.16.5">1568/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.16.6">384</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.16.7">0.73</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.18.17">
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.18.17.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.18.17.2">Janus-Pro-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.17.3">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.17.4">72M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.17.5">3584/A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.17.6">384</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.17.7">0.80</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.19.18.1">ILO-Uni.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.19.18.2">Chameleon</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.19.18.3">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.19.18.4">1.4B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.19.18.5">35687/A100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.19.18.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.19.18.7">0.39</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.20.19">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T3.1.1.20.19.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.20.19.2">ARMOR</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.20.19.3">8B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.20.19.4">5M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.20.19.5">160/H100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.20.19.6">256</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.20.19.7">0.37</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of different models' performance on the GenEval benchmark, which evaluates visual generation capabilities.  The benchmark assesses the quality of generated images. The table specifically categorizes models into those that do not support interleaved text-image output (NoILO-Uni) and those that do (ILO-Uni), showing the impact of this capability on the results.  Metrics include the number of parameters (#Param), number of training images, training cost (GPU days), image resolution (Image Res), and the GenEval score, which represents the overall image generation quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation on the GenEval benchmark. Gen. denotes “generation” and NoILO-Uni. denotes “UniMs without interleaved text-image output”. ILO-Uni. denotes “UniMs with interleaved text-image output”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.16">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.16.17.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.16.17.1.1"><span class="ltx_text" id="S6.T4.16.17.1.1.1" style="font-size:144%;">Epoch</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.16.17.1.2"><span class="ltx_text" id="S6.T4.16.17.1.2.1" style="font-size:144%;">Text_L.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.16.17.1.3"><span class="ltx_text" id="S6.T4.16.17.1.3.1" style="font-size:144%;">Emb.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.16.17.1.4"><span class="ltx_text" id="S6.T4.16.17.1.4.1" style="font-size:144%;">Visual_L.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.16.17.1.5"><span class="ltx_text" id="S6.T4.16.17.1.5.1" style="font-size:144%;">Adp.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.16.17.1.6"><span class="ltx_text" id="S6.T4.16.17.1.6.1" style="font-size:144%;">Und.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.4.4.5"><span class="ltx_text" id="S6.T4.4.4.5.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.m1.1a"><mi id="S6.T4.1.1.1.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.m1.1b"><ci id="S6.T4.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.2.2.2"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T4.2.2.2.m1.1"><semantics id="S6.T4.2.2.2.m1.1a"><mo id="S6.T4.2.2.2.m1.1.1" mathsize="144%" xref="S6.T4.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.m1.1b"><times id="S6.T4.2.2.2.m1.1.1.cmml" xref="S6.T4.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.3.3.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.3.3.3.m1.1"><semantics id="S6.T4.3.3.3.m1.1a"><mi id="S6.T4.3.3.3.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.3.3.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.3.m1.1b"><ci id="S6.T4.3.3.3.m1.1.1.cmml" xref="S6.T4.3.3.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.4.4.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.4.4.4.m1.1"><semantics id="S6.T4.4.4.4.m1.1a"><mi id="S6.T4.4.4.4.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.4.4.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.4.4.4.m1.1b"><ci id="S6.T4.4.4.4.m1.1.1.cmml" xref="S6.T4.4.4.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.4.4.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.4.4.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.4.4.6"><span class="ltx_text" id="S6.T4.4.4.6.1" style="font-size:144%;">0.78</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.8.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.8.8.5"><span class="ltx_text" id="S6.T4.8.8.5.1" style="font-size:144%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.5.5.1.m1.1"><semantics id="S6.T4.5.5.1.m1.1a"><mi id="S6.T4.5.5.1.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.5.5.1.m1.1b"><ci id="S6.T4.5.5.1.m1.1.1.cmml" xref="S6.T4.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.6.6.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.6.6.2.m1.1"><semantics id="S6.T4.6.6.2.m1.1a"><mi id="S6.T4.6.6.2.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.6.6.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.6.6.2.m1.1b"><ci id="S6.T4.6.6.2.m1.1.1.cmml" xref="S6.T4.6.6.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.6.6.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.6.6.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.7.7.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.7.7.3.m1.1"><semantics id="S6.T4.7.7.3.m1.1a"><mi id="S6.T4.7.7.3.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.7.7.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.7.7.3.m1.1b"><ci id="S6.T4.7.7.3.m1.1.1.cmml" xref="S6.T4.7.7.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.7.7.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.7.7.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.8.8.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.8.8.4.m1.1"><semantics id="S6.T4.8.8.4.m1.1a"><mi id="S6.T4.8.8.4.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.8.8.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.8.8.4.m1.1b"><ci id="S6.T4.8.8.4.m1.1.1.cmml" xref="S6.T4.8.8.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.8.8.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.8.8.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.8.8.6"><span class="ltx_text" id="S6.T4.8.8.6.1" style="font-size:144%;">0.72</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.12.12">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.12.12.5"><span class="ltx_text" id="S6.T4.12.12.5.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.9.9.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.9.9.1.m1.1"><semantics id="S6.T4.9.9.1.m1.1a"><mi id="S6.T4.9.9.1.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.9.9.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.9.9.1.m1.1b"><ci id="S6.T4.9.9.1.m1.1.1.cmml" xref="S6.T4.9.9.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.9.9.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.9.9.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.10.10.2"><math alttext="\times" class="ltx_Math" display="inline" id="S6.T4.10.10.2.m1.1"><semantics id="S6.T4.10.10.2.m1.1a"><mo id="S6.T4.10.10.2.m1.1.1" mathsize="144%" xref="S6.T4.10.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T4.10.10.2.m1.1b"><times id="S6.T4.10.10.2.m1.1.1.cmml" xref="S6.T4.10.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.10.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T4.10.10.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.11.11.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.11.11.3.m1.1"><semantics id="S6.T4.11.11.3.m1.1a"><mi id="S6.T4.11.11.3.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.11.11.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.11.11.3.m1.1b"><ci id="S6.T4.11.11.3.m1.1.1.cmml" xref="S6.T4.11.11.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.11.11.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.11.11.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.12.12.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.12.12.4.m1.1"><semantics id="S6.T4.12.12.4.m1.1a"><mi id="S6.T4.12.12.4.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.12.12.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.12.12.4.m1.1b"><ci id="S6.T4.12.12.4.m1.1.1.cmml" xref="S6.T4.12.12.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.12.12.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.12.12.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.12.12.6"><span class="ltx_text" id="S6.T4.12.12.6.1" style="font-size:144%;">0.64</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.16.16">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.16.16.5"><span class="ltx_text" id="S6.T4.16.16.5.1" style="font-size:144%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.13.13.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.13.13.1.m1.1"><semantics id="S6.T4.13.13.1.m1.1a"><mi id="S6.T4.13.13.1.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.13.13.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.13.13.1.m1.1b"><ci id="S6.T4.13.13.1.m1.1.1.cmml" xref="S6.T4.13.13.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.13.13.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.13.13.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.14.14.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.14.14.2.m1.1"><semantics id="S6.T4.14.14.2.m1.1a"><mi id="S6.T4.14.14.2.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.14.14.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.14.14.2.m1.1b"><ci id="S6.T4.14.14.2.m1.1.1.cmml" xref="S6.T4.14.14.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.14.14.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.14.14.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.15.15.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.15.15.3.m1.1"><semantics id="S6.T4.15.15.3.m1.1a"><mi id="S6.T4.15.15.3.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.15.15.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.15.15.3.m1.1b"><ci id="S6.T4.15.15.3.m1.1.1.cmml" xref="S6.T4.15.15.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.15.15.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.15.15.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.16.16.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T4.16.16.4.m1.1"><semantics id="S6.T4.16.16.4.m1.1a"><mi id="S6.T4.16.16.4.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T4.16.16.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T4.16.16.4.m1.1b"><ci id="S6.T4.16.16.4.m1.1.1.cmml" xref="S6.T4.16.16.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.16.16.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T4.16.16.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.16.16.6"><span class="ltx_text" id="S6.T4.16.16.6.1" style="font-size:144%;">0.48</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of different model configurations on multimodal understanding ability.  Specifically, it shows the effects of including or excluding the text output layer, visual output layer, and added transformer adapter on the model's performance. The 'Und.' column indicates the percentage of the original InternVL2.5 model's capabilities that were retained after training each configuration, providing a measure of how much the model's original understanding capabilities were preserved. The experiment uses a single training stage, and different layer combinations are tested in this stage.
> <details>
> <summary>read the caption</summary>
> Table 4: A Single Train Stage Result of Understanding Ability. Text_L denotes the text output layer. Visual_L denotes the visual output layer. Adp. denotes the added transformers adapter. Und. denote the percentage of the original InternVL2.5 capabilities mantained after training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S6.T5.4.5.1.1"><span class="ltx_text" id="S6.T5.4.5.1.1.1" style="font-size:144%;">Stage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.4.5.1.2"><span class="ltx_text" id="S6.T5.4.5.1.2.1" style="font-size:144%;">Text_L.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.4.5.1.3"><span class="ltx_text" id="S6.T5.4.5.1.3.1" style="font-size:144%;">Emb.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.4.5.1.4"><span class="ltx_text" id="S6.T5.4.5.1.4.1" style="font-size:144%;">Visual_L.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.4.5.1.5"><span class="ltx_text" id="S6.T5.4.5.1.5.1" style="font-size:144%;">Adp.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.4.5.1.6"><span class="ltx_text" id="S6.T5.4.5.1.6.1" style="font-size:144%;">Und.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.4.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T5.4.4.5"><span class="ltx_text" id="S6.T5.4.4.5.1" style="font-size:144%;">Stage1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T5.1.1.1.m1.1"><semantics id="S6.T5.1.1.1.m1.1a"><mi id="S6.T5.1.1.1.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T5.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T5.1.1.1.m1.1b"><ci id="S6.T5.1.1.1.m1.1.1.cmml" xref="S6.T5.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T5.1.1.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.2.2.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T5.2.2.2.m1.1"><semantics id="S6.T5.2.2.2.m1.1a"><mi id="S6.T5.2.2.2.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T5.2.2.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T5.2.2.2.m1.1b"><ci id="S6.T5.2.2.2.m1.1.1.cmml" xref="S6.T5.2.2.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.2.2.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T5.2.2.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.3.3.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T5.3.3.3.m1.1"><semantics id="S6.T5.3.3.3.m1.1a"><mi id="S6.T5.3.3.3.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T5.3.3.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T5.3.3.3.m1.1b"><ci id="S6.T5.3.3.3.m1.1.1.cmml" xref="S6.T5.3.3.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.3.3.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T5.3.3.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.4.4.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T5.4.4.4.m1.1"><semantics id="S6.T5.4.4.4.m1.1a"><mi id="S6.T5.4.4.4.m1.1.1" mathsize="144%" mathvariant="normal" xref="S6.T5.4.4.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T5.4.4.4.m1.1b"><ci id="S6.T5.4.4.4.m1.1.1.cmml" xref="S6.T5.4.4.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.4.4.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T5.4.4.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.4.4.6"><span class="ltx_text" id="S6.T5.4.4.6.1" style="font-size:144%;">0.72</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of training the model in the first stage of the WoHG training algorithm.  The first stage focuses on enabling the model to decide which modality to generate (text, image, or both) based on the input.  It shows the settings for the model's output layers (text and visual), embedding, adapter modules, and the resulting understanding capability. The understanding capability is measured as a percentage of the original model's abilities retained after this first stage of training.
> <details>
> <summary>read the caption</summary>
> Table 5: Train The First Stage with A Small Amount of Data.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06542/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06542/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}