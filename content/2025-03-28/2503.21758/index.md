---
title: "Lumina-Image 2.0: A Unified and Efficient Image Generative Framework"
summary: "Lumina-Image 2.0: A unified & efficient image generative framework, outperforming previous models with only 2.6B parameters."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21758 {{< /keyword >}}
{{< keyword icon="writer" >}} Qi Qin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21758" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21758" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21758/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-image (T2I) models have seen improvements, yet limitations persist in text injection via cross-attention, limiting multimodal fusion and introducing bias. Existing models lack dedicated captioning systems tailored for T2I, resulting in inaccurate text-image pairs, constraining text and visual representation expressiveness. Thus, this impairs faithful instruction following and high-quality image generation.



The paper introduces **Lumina-Image 2.0**, a unified and efficient T2I generative framework. It uses a Unified Next-DiT model that generates images aligned with text input, and a Unified Captioner (UniCap) producing high-quality text-image pairs. The model employs efficient training and inference strategies. Unified Next-DiT utilizes a joint self-attention mechanism. UniCap generates comprehensive multilingual descriptions, enhancing model capacity and performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Lumina-Image 2.0 introduces a unified architecture for text-to-image generation, treating text and image tokens as a joint sequence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework includes a unified captioning system (UniCap) that enhances prompt adherence by generating comprehensive and accurate captions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Multi-stage progressive training strategies and inference acceleration techniques improve efficiency without compromising image quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers aiming to **improve text-to-image generation**. It introduces an efficient, unified framework and offers detailed analysis, code, and models, which can advance future research and development in this rapidly evolving field.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21758/x1.png)

> 🔼 Figure 1 showcases the high-quality image generation capabilities of Lumina-Image 2.0 across various tasks.  The samples demonstrate its ability to produce ultra-realistic images, generate images from text prompts with artistic versatility, handle bilingual prompts with accuracy, perform logical reasoning tasks within image generation, and generate multiple images in a unified sequence.
> <details>
> <summary>read the caption</summary>
> Figure 1: High-quality samples from our Lumina-Image 2.0, showcasing its capabilities in ultra-realistic, text generation, artistic versatility, bilingual mastery, logical reasoning, and unified multi-image generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.9">
<tr class="ltx_tr" id="S4.T1.9.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.1.1" style="width:56.9pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.1.1.1">
<span class="ltx_p" id="S4.T1.9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.9.1.1.1.1.1">Template A</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.1.2" style="width:284.5pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.1.2.1">
<span class="ltx_p" id="S4.T1.9.1.2.1.1">You are an assistant designed to generate high-quality images based on user prompts. <span class="ltx_text" id="S4.T1.9.1.2.1.1.1" style="color:#9D0703;"> &lt;Prompt Start&gt; </span> <span class="ltx_text" id="S4.T1.9.1.2.1.1.2" style="color:#3B7D23;">&lt;Image Prompt&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.2.1" style="width:56.9pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.2.1.1">
<span class="ltx_p" id="S4.T1.9.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.9.2.1.1.1.1">Template B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.2.2" style="width:284.5pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.2.2.1">
<span class="ltx_p" id="S4.T1.9.2.2.1.1">You are an assistant designed to generate superior images with the superior degree of image-text alignment based on textual prompts or user prompts. <span class="ltx_text" id="S4.T1.9.2.2.1.1.1" style="color:#9D0703;"> &lt;Prompt Start&gt; </span> <span class="ltx_text" id="S4.T1.9.2.2.1.1.2" style="color:#3B7D23;">&lt;Image Prompt&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.3.1" style="width:56.9pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.3.1.1">
<span class="ltx_p" id="S4.T1.9.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.9.3.1.1.1.1">Template C</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.3.2" style="width:284.5pt;padding-top:3.5pt;padding-bottom:3.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.3.2.1">
<span class="ltx_p" id="S4.T1.9.3.2.1.1">Generate a dual-panel image where the <span class="ltx_text" id="S4.T1.9.3.2.1.1.1" style="color:#215F9A;">&lt;lower half&gt;</span> displays a <span class="ltx_text" id="S4.T1.9.3.2.1.1.2" style="color:#FF8000;">&lt;depth map&gt;</span>, while the <span class="ltx_text" id="S4.T1.9.3.2.1.1.3" style="color:#215F9A;">&lt;upper half&gt;</span> retains the original image for direct visual comparison. <span class="ltx_text" id="S4.T1.9.3.2.1.1.4" style="color:#9D0703;"> &lt;Prompt Start&gt; </span> <span class="ltx_text" id="S4.T1.9.3.2.1.1.5" style="color:#3B7D23;">&lt;Image Prompt&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.4.1" style="width:56.9pt;padding-top:3.5pt;padding-bottom:3.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.9.4.2" style="width:284.5pt;padding-top:3.5pt;padding-bottom:3.5pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the system prompts used in the Lumina-Image 2.0 framework for different image generation tasks.  It shows three different prompt templates: Template A is for general image generation, Template B focuses on superior image-text alignment, and Template C is designed for multi-image generation tasks requiring the comparison of a base image with a transformed version (like a depth map or pose estimation). The table highlights how these prompts are constructed to guide the model towards producing high-quality, task-specific results by specifying the image prompt, along with the type of transformation or comparison needed.
> <details>
> <summary>read the caption</summary>
> Table 1: Prompt template for Lumina-Image 2.0. <Image Prompt> will be replaced with the user specific image description. <lower half> and <upper half> will be replaced with the specific spatial relationships. <depth map> will be replaced with the target image type.
> </details>





### In-depth insights


#### Unified T2I DiT
The idea of a 'Unified T2I DiT' or Diffusion Transformer architecture for text-to-image generation is intriguing. It suggests a move away from separate text and image processing pathways towards a more integrated model. The **key advantage** is the potential for richer cross-modal understanding. By processing text and image data in a shared latent space, the model could learn more nuanced relationships between textual descriptions and visual features. This could lead to improved image quality, better prompt adherence, and the ability to generate images from more complex and abstract prompts. **Challenges** could involve designing an effective joint representation and scaling the transformer architecture to handle the combined input sequence. The architecture needs to avoid the pitfall of attending each modality individually and force both modalities to interact with each other. Further work would be helpful on understanding the **scalability** of such a model, considering existing attention mechanism requires quadratic complexity. The **integration of specialized components**, like a high-quality captioner, could further enhance the unified architecture. Overall, a well-designed Unified T2I DiT holds promise for advancing the state-of-the-art in text-to-image generation.

#### Efficient UniCap
While the paper doesn't explicitly have a section titled "Efficient UniCap," we can infer that efficiency in UniCap, the Unified Captioner, likely refers to **reducing computational costs and time** associated with generating high-quality image captions. An efficient UniCap would generate **accurate and detailed captions faster**, potentially through methods like optimized model architectures, efficient training techniques, or knowledge distillation. Further, efficiency could be achieved through techniques like **prompt engineering** to guide the captioning process or by using **lower-precision arithmetic** during inference, balancing quality with speed. Finally, an efficient UniCap would **scale effectively** to handle large datasets and diverse image content without a significant increase in computational demands.

#### Multi-stage Train
Multi-stage training is a common technique used to improve the performance of machine learning models. The general idea is to **break down the training process into multiple stages**, each with its own objective or data distribution. This can be useful for a variety of reasons, such as **preventing overfitting**, **improving generalization**, or **accelerating convergence**. Each stage might use a different resolution, dataset, or optimization strategy, allowing the model to learn different aspects of the task at hand in a sequential manner. By progressively refining the model in multiple stages, it can achieve better performance compared to training it in a single stage.

#### Accurate Details
When discussing "Accurate Details" in the context of a research paper, one can delve into several crucial aspects. It is important to ensure **factual precision** in any research endeavor. This means data, observations, and measurements are represented with the highest possible fidelity. **Methodological rigor** dictates that the processes used to collect and analyze information must be transparent, reproducible, and validated. Transparency in reporting is key, with all assumptions, limitations, and potential sources of error being clearly articulated. **Comprehensive documentation** of data collection, processing, and analysis pipelines ensures that others can verify and build upon the findings. Attention must be given to **contextual integrity**, maintaining that details are presented within their proper framework to avoid misinterpretations. Addressing potential biases in data collection and interpretation is crucial for maintaining objectivity. Striving for **interpretive accuracy** ensures that conclusions are directly supported by the evidence, avoiding overgeneralizations or unsupported claims.

#### Longer Prompts
The idea of 'Longer Prompts' in image generation suggests that **more detailed and descriptive text inputs can lead to improved image quality and relevance**. This implies a shift from abstract or concise prompts to those that elaborate on the desired scene, objects, style, and overall composition. Longer prompts could provide **richer contextual information** for generative models, enabling them to capture nuanced details and produce images that more accurately align with the user's intent. However, the effectiveness of longer prompts also depends on the model's ability to **parse and interpret complex text**, as well as the quality and diversity of the training data.  Overly verbose or ambiguous prompts could potentially confuse the model or introduce artifacts, highlighting the importance of **carefully crafting clear and specific language** to guide the image generation process effectively. The exploration of optimal prompt length and structure remains an area of active research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21758/x2.png)

> 🔼 Lumina-Image 2.0 is composed of two main components: the Unified Captioner and the Unified Next-DiT.  The Unified Captioner takes web-crawled and synthetic images as input and generates multi-level, high-quality captions for each image. These captions are then used to create a hierarchical dataset of image-text pairs. This dataset is used to train the Unified Next-DiT model, which is a unified text-to-image generation model. The efficient training strategy helps ensure that the model can generate high-quality images. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Lumina-Image 2.0, which consists of Unified Captioner and Unified Next-DiT. The Unified Captioner re-captions web-crawled and synthetic images to construct hierarchical text-image pairs, which are then used to optimize Unified Next-DiT with our efficient training strategy.
> </details>



![](https://arxiv.org/html/2503.21758/x3.png)

> 🔼 Figure 3 provides a visual comparison of different Diffusion Transformer architectures.  It highlights the key architectural differences between the authors' proposed Unified Next-DiT model and several other prominent models, including PixArt [15], Lumina-Next [17], Stable Diffusion 3 [36], OmniGen [37], and FLUX [9]. The comparison focuses on the core components and arrangement of the transformer blocks to illustrate the design choices and potential advantages of each architecture.  The figure aids in understanding the differences and the design choices behind the Unified Next-DiT architecture.
> <details>
> <summary>read the caption</summary>
> Figure 3: We compare the Diffusion Transformer architectures between our Unified Next-DiT, and PixArt [15], Lumina-Next [17], Stable Diffusion 3 [36], OmniGen [37] and FLUX [9].
> </details>



![](https://arxiv.org/html/2503.21758/x4.png)

> 🔼 This figure shows the training loss curves for three different caption lengths: short captions from Florence, relatively short captions from UniCap, and longer, more detailed captions from UniCap.  The x-axis represents the number of training steps, and the y-axis represents the training loss.  The graph visually demonstrates that the model converges faster and achieves a lower loss when trained with longer, more detailed captions compared to shorter captions.  The 'Avg. Length' specifies the average number of characters in each caption type.
> <details>
> <summary>read the caption</summary>
> Figure 4: The training loss curve with respect to captions with different lengths. The “Avg. Length” represents the average character number.
> </details>



![](https://arxiv.org/html/2503.21758/x5.png)

> 🔼 Figure 5 illustrates how the image-text attention mechanism in a transformer network can be reinterpreted as a feed-forward network (FFN). This FFN is generated by a hyper-network, meaning its weights and the dimensionality of its hidden layer are dynamically adjusted according to the input text tokens. The diagram visually represents this transformation by showing how the input text token influences the hyper-network's output, which in turn determines the FFN's structure and parameters. This reformulation helps to explain how the model's capacity adapts to different text lengths, implying that longer descriptions allow for a richer representation and better integration of textual and visual information.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of reformulating the Image-Text Attention as an FFN generated by a hyper-network, with its weights and hidden dimensions dynamically determined by the input text token.
> </details>



![](https://arxiv.org/html/2503.21758/x8.png)

> 🔼 This table presents a comparison of ELO scores from the Artificial Analysis 1 text-to-image arena as of February 23, 2025.  ELO scores are a measure of relative performance, reflecting the results of competition between different models in the arena. The table allows for a direct comparison of the performance of various models, showing their relative strengths and weaknesses in generating images from text prompts.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of ELO scores evaluated in text-to-image arena from Artificial Analysis 1 (as of February 23, 2025).
> </details>



![](https://arxiv.org/html/2503.21758/x9.png)

> 🔼 This table compares the ELO scores of different text-to-image models in the Rapidata 2 arena as of February 23, 2025.  The ELO scores reflect the relative performance of each model based on head-to-head comparisons judged by human evaluators.  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of ELO scores evaluated in text-to-image arena from Rapidata 2 (as of February 23, 2025).
> </details>



![](https://arxiv.org/html/2503.21758/x10.png)

> 🔼 This figure displays the results of Lumina-Image 2.0's multilingual text-to-image generation capabilities.  It shows examples of images generated from the same prompts translated into five different languages: Chinese, Japanese, English, Russian, and German. This demonstrates the model's ability to understand and generate images accurately across multiple languages, showcasing its robustness and multilingual capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization results of multilingual text-to-image generation by our Lumina-Image 2.0, covering five languages: Chinese, Japanese, English, Russian, and German.
> </details>



![](https://arxiv.org/html/2503.21758/x11.png)

> 🔼 Figure 7 compares the captioning abilities of three models: UniCap (the model introduced in this paper), ShareGPT4V, and Florence.  The figure shows example captions generated by each model for a complex image.  Blue underlines highlight areas where UniCap provides significantly more detailed and accurate descriptions than the other models. Conversely, red underlines and strikethroughs show where ShareGPT4V and Florence provide inaccurate or incomplete information compared to UniCap. This illustrates UniCap's superiority in handling complex scenes and generating comprehensive and precise descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison with ShareGPT4V [46] and Florence [62] in complex scenes and dense text for caption generation. The blue underline correspond to areas with more detailed and accurate descriptions, while red underline and red strikethrough represent the incorrect and insufficient descriptions respectively.
> </details>



![](https://arxiv.org/html/2503.21758/x12.png)

> 🔼 Figure 8 presents a comparison of captioning results generated by UniCap, ShareGPT4V [46], and Florence [62] for images containing complex visual relationships.  UniCap's superior performance is highlighted by comparing the captions side-by-side; UniCap provides more comprehensive and accurate descriptions of the visual details and spatial relationships within the images. Conversely, ShareGPT4V and Florence show deficiencies in accurately capturing the visual understanding and precise spatial aspects. Blue underlines indicate where UniCap provided superior descriptions; red underlines and strikethroughs indicate where the other models made mistakes or omissions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison with ShareGPT4V [46] and Florence [62] in visual understanding and spatial relationships. The blue underline correspond to areas with more detailed and accurate descriptions, while red underline and red strikethrough represent the incorrect and insufficient descriptions respectively.
> </details>



![](https://arxiv.org/html/2503.21758/x13.png)

> 🔼 Figure 9 presents a collection of images generated by Lumina-Image 2.0.  These examples highlight the model's ability to accurately interpret and fulfill detailed user prompts, producing highly realistic and visually appealing results. The images showcase a variety of styles and subjects, demonstrating the model's versatility and capacity to generate high-quality output across different resolutions. The figure serves as visual evidence of the model's capabilities in precise prompt-following, aesthetic generation, and resolution scalability.
> <details>
> <summary>read the caption</summary>
> Figure 9: High-quality image generation examples from Lumina-Image 2.0, showcasing its precise prompt-following ability and its capability to generate highly aesthetic and realistic images across different resolutions.
> </details>



![](https://arxiv.org/html/2503.21758/x14.png)

> 🔼 This figure presents the training loss curves for Lumina-Image 2.0 across three training stages: low-resolution, high-resolution, and high-quality tuning.  Each stage is characterized by a distinct dataset resolution and size, with progressively higher quality data used in later stages. The curves show a general downward trend, indicating that the model is learning effectively throughout the training process. Notably, there is a clear improvement in performance (lower loss) as the training progresses to the later stages, which demonstrates the effectiveness of the multi-stage training strategy on both DPG and GenEval benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Loss curves for the three training stages, showing a steady performance increase in the DPG [30] and GenEval [31] benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.3.3">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.1.1.1.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.4.1">Patch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.5.1">Dimension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.6.1">Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.7.1">KV Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.8.1">Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">RMSNorm <math alttext="\epsilon" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.1.m1.1a"><mi id="S5.T2.1.1.1.1.1.m1.1.1" xref="S5.T2.1.1.1.1.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.1.m1.1d">italic_ϵ</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib72" title="">72</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.9.1">Pos. Emb.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">Lumina-Next</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.3" style="padding-left:2.3pt;padding-right:2.3pt;">1.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">2304</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.1.m1.1a"><mrow id="S5.T2.2.2.2.1.m1.1.1" xref="S5.T2.2.2.2.1.m1.1.1.cmml"><mn id="S5.T2.2.2.2.1.m1.1.1.2" xref="S5.T2.2.2.2.1.m1.1.1.2.cmml">1</mn><mo id="S5.T2.2.2.2.1.m1.1.1.1" xref="S5.T2.2.2.2.1.m1.1.1.1.cmml">⁢</mo><msup id="S5.T2.2.2.2.1.m1.1.1.3" xref="S5.T2.2.2.2.1.m1.1.1.3.cmml"><mi id="S5.T2.2.2.2.1.m1.1.1.3.2" xref="S5.T2.2.2.2.1.m1.1.1.3.2.cmml">e</mi><mrow id="S5.T2.2.2.2.1.m1.1.1.3.3" xref="S5.T2.2.2.2.1.m1.1.1.3.3.cmml"><mo id="S5.T2.2.2.2.1.m1.1.1.3.3a" xref="S5.T2.2.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="S5.T2.2.2.2.1.m1.1.1.3.3.2" xref="S5.T2.2.2.2.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><apply id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1"><times id="S5.T2.2.2.2.1.m1.1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1.1"></times><cn id="S5.T2.2.2.2.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.2.2.2.1.m1.1.1.2">1</cn><apply id="S5.T2.2.2.2.1.m1.1.1.3.cmml" xref="S5.T2.2.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T2.2.2.2.1.m1.1.1.3.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1.3">superscript</csymbol><ci id="S5.T2.2.2.2.1.m1.1.1.3.2.cmml" xref="S5.T2.2.2.2.1.m1.1.1.3.2">𝑒</ci><apply id="S5.T2.2.2.2.1.m1.1.1.3.3.cmml" xref="S5.T2.2.2.2.1.m1.1.1.3.3"><minus id="S5.T2.2.2.2.1.m1.1.1.3.3.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1.3.3"></minus><cn id="S5.T2.2.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T2.2.2.2.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.9" style="padding-left:2.3pt;padding-right:2.3pt;">2D-RoPE</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.3.3.3.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.2.1">Lumina-Image 2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">2.6B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.4" style="padding-left:2.3pt;padding-right:2.3pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.5" style="padding-left:2.3pt;padding-right:2.3pt;">2304</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.6" style="padding-left:2.3pt;padding-right:2.3pt;">24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.7" style="padding-left:2.3pt;padding-right:2.3pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.8" style="padding-left:2.3pt;padding-right:2.3pt;">26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="S5.T2.3.3.3.1.m1.1"><semantics id="S5.T2.3.3.3.1.m1.1a"><mrow id="S5.T2.3.3.3.1.m1.1.1" xref="S5.T2.3.3.3.1.m1.1.1.cmml"><mn id="S5.T2.3.3.3.1.m1.1.1.2" xref="S5.T2.3.3.3.1.m1.1.1.2.cmml">1</mn><mo id="S5.T2.3.3.3.1.m1.1.1.1" xref="S5.T2.3.3.3.1.m1.1.1.1.cmml">⁢</mo><msup id="S5.T2.3.3.3.1.m1.1.1.3" xref="S5.T2.3.3.3.1.m1.1.1.3.cmml"><mi id="S5.T2.3.3.3.1.m1.1.1.3.2" xref="S5.T2.3.3.3.1.m1.1.1.3.2.cmml">e</mi><mrow id="S5.T2.3.3.3.1.m1.1.1.3.3" xref="S5.T2.3.3.3.1.m1.1.1.3.3.cmml"><mo id="S5.T2.3.3.3.1.m1.1.1.3.3a" xref="S5.T2.3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="S5.T2.3.3.3.1.m1.1.1.3.3.2" xref="S5.T2.3.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.1.m1.1b"><apply id="S5.T2.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1"><times id="S5.T2.3.3.3.1.m1.1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1.1"></times><cn id="S5.T2.3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.3.3.3.1.m1.1.1.2">1</cn><apply id="S5.T2.3.3.3.1.m1.1.1.3.cmml" xref="S5.T2.3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T2.3.3.3.1.m1.1.1.3.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1.3">superscript</csymbol><ci id="S5.T2.3.3.3.1.m1.1.1.3.2.cmml" xref="S5.T2.3.3.3.1.m1.1.1.3.2">𝑒</ci><apply id="S5.T2.3.3.3.1.m1.1.1.3.3.cmml" xref="S5.T2.3.3.3.1.m1.1.1.3.3"><minus id="S5.T2.3.3.3.1.m1.1.1.3.3.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1.3.3"></minus><cn id="S5.T2.3.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T2.3.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.1.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.1.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.3.9" style="padding-left:2.3pt;padding-right:2.3pt;">M-RoPE</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the architecture configurations of Lumina-Next and Lumina-Image 2.0, highlighting key differences in the number of parameters, patch size, dimensions, number of heads (both KV and key value heads), the number of layers, the type of normalization used (RMSNorm), and the type of positional embedding used (2D-ROPE and Multimodal-ROPE).  It provides a quantitative overview of the architectural changes between the two models, allowing for a direct comparison of their computational complexity and design choices.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of configuration between Lumina-Next and Lumina-Image 2.0.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.6.6">
<tr class="ltx_tr" id="S5.T3.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.6.6.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.1.1">Stage</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.2.1">Image Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.3.1">#Images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.4.1">Training Steps (K)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.5.1">Batch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.6.1">Learning Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.7.1">GPU Days (A100)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.6.7.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.7.8.1">Optimizer</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">Low Res. Stage</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">256<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><times id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">100M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">144</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mrow id="S5.T3.2.2.2.2.m1.1.1" xref="S5.T3.2.2.2.2.m1.1.1.cmml"><mn id="S5.T3.2.2.2.2.m1.1.1.2" xref="S5.T3.2.2.2.2.m1.1.1.2.cmml">2</mn><mo id="S5.T3.2.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T3.2.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S5.T3.2.2.2.2.m1.1.1.3" xref="S5.T3.2.2.2.2.m1.1.1.3.cmml"><mn id="S5.T3.2.2.2.2.m1.1.1.3.2" xref="S5.T3.2.2.2.2.m1.1.1.3.2.cmml">10</mn><mrow id="S5.T3.2.2.2.2.m1.1.1.3.3" xref="S5.T3.2.2.2.2.m1.1.1.3.3.cmml"><mo id="S5.T3.2.2.2.2.m1.1.1.3.3a" xref="S5.T3.2.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="S5.T3.2.2.2.2.m1.1.1.3.3.2" xref="S5.T3.2.2.2.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><apply id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1"><times id="S5.T3.2.2.2.2.m1.1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1.1"></times><cn id="S5.T3.2.2.2.2.m1.1.1.2.cmml" type="integer" xref="S5.T3.2.2.2.2.m1.1.1.2">2</cn><apply id="S5.T3.2.2.2.2.m1.1.1.3.cmml" xref="S5.T3.2.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.2.2.2.2.m1.1.1.3.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1.3">superscript</csymbol><cn id="S5.T3.2.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.2.2.2.2.m1.1.1.3.2">10</cn><apply id="S5.T3.2.2.2.2.m1.1.1.3.3.cmml" xref="S5.T3.2.2.2.2.m1.1.1.3.3"><minus id="S5.T3.2.2.2.2.m1.1.1.3.3.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1.3.3"></minus><cn id="S5.T3.2.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T3.2.2.2.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">191</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.2.2.8" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S5.T3.2.2.2.8.1">AdamW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib73" title="">73</a>]</cite></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_left" id="S5.T3.4.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">High Res. Stage</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">1024<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.3.3.3.1.m1.1"><semantics id="S5.T3.3.3.3.1.m1.1a"><mo id="S5.T3.3.3.3.1.m1.1.1" xref="S5.T3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.1.m1.1b"><times id="S5.T3.3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.1.m1.1d">×</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">10M</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">40</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">512</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S5.T3.4.4.4.2.m1.1"><semantics id="S5.T3.4.4.4.2.m1.1a"><mrow id="S5.T3.4.4.4.2.m1.1.1" xref="S5.T3.4.4.4.2.m1.1.1.cmml"><mn id="S5.T3.4.4.4.2.m1.1.1.2" xref="S5.T3.4.4.4.2.m1.1.1.2.cmml">2</mn><mo id="S5.T3.4.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T3.4.4.4.2.m1.1.1.1.cmml">×</mo><msup id="S5.T3.4.4.4.2.m1.1.1.3" xref="S5.T3.4.4.4.2.m1.1.1.3.cmml"><mn id="S5.T3.4.4.4.2.m1.1.1.3.2" xref="S5.T3.4.4.4.2.m1.1.1.3.2.cmml">10</mn><mrow id="S5.T3.4.4.4.2.m1.1.1.3.3" xref="S5.T3.4.4.4.2.m1.1.1.3.3.cmml"><mo id="S5.T3.4.4.4.2.m1.1.1.3.3a" xref="S5.T3.4.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="S5.T3.4.4.4.2.m1.1.1.3.3.2" xref="S5.T3.4.4.4.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.2.m1.1b"><apply id="S5.T3.4.4.4.2.m1.1.1.cmml" xref="S5.T3.4.4.4.2.m1.1.1"><times id="S5.T3.4.4.4.2.m1.1.1.1.cmml" xref="S5.T3.4.4.4.2.m1.1.1.1"></times><cn id="S5.T3.4.4.4.2.m1.1.1.2.cmml" type="integer" xref="S5.T3.4.4.4.2.m1.1.1.2">2</cn><apply id="S5.T3.4.4.4.2.m1.1.1.3.cmml" xref="S5.T3.4.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.4.4.4.2.m1.1.1.3.1.cmml" xref="S5.T3.4.4.4.2.m1.1.1.3">superscript</csymbol><cn id="S5.T3.4.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.4.4.4.2.m1.1.1.3.2">10</cn><apply id="S5.T3.4.4.4.2.m1.1.1.3.3.cmml" xref="S5.T3.4.4.4.2.m1.1.1.3.3"><minus id="S5.T3.4.4.4.2.m1.1.1.3.3.1.cmml" xref="S5.T3.4.4.4.2.m1.1.1.3.3"></minus><cn id="S5.T3.4.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T3.4.4.4.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.2.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.2.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">176</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.6.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">HQ Tuning Stage</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">1024<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.5.5.5.1.m1.1"><semantics id="S5.T3.5.5.5.1.m1.1a"><mo id="S5.T3.5.5.5.1.m1.1.1" xref="S5.T3.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.1.m1.1b"><times id="S5.T3.5.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.1.m1.1d">×</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">1M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">512</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S5.T3.6.6.6.2.m1.1"><semantics id="S5.T3.6.6.6.2.m1.1a"><mrow id="S5.T3.6.6.6.2.m1.1.1" xref="S5.T3.6.6.6.2.m1.1.1.cmml"><mn id="S5.T3.6.6.6.2.m1.1.1.2" xref="S5.T3.6.6.6.2.m1.1.1.2.cmml">2</mn><mo id="S5.T3.6.6.6.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T3.6.6.6.2.m1.1.1.1.cmml">×</mo><msup id="S5.T3.6.6.6.2.m1.1.1.3" xref="S5.T3.6.6.6.2.m1.1.1.3.cmml"><mn id="S5.T3.6.6.6.2.m1.1.1.3.2" xref="S5.T3.6.6.6.2.m1.1.1.3.2.cmml">10</mn><mrow id="S5.T3.6.6.6.2.m1.1.1.3.3" xref="S5.T3.6.6.6.2.m1.1.1.3.3.cmml"><mo id="S5.T3.6.6.6.2.m1.1.1.3.3a" xref="S5.T3.6.6.6.2.m1.1.1.3.3.cmml">−</mo><mn id="S5.T3.6.6.6.2.m1.1.1.3.3.2" xref="S5.T3.6.6.6.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.2.m1.1b"><apply id="S5.T3.6.6.6.2.m1.1.1.cmml" xref="S5.T3.6.6.6.2.m1.1.1"><times id="S5.T3.6.6.6.2.m1.1.1.1.cmml" xref="S5.T3.6.6.6.2.m1.1.1.1"></times><cn id="S5.T3.6.6.6.2.m1.1.1.2.cmml" type="integer" xref="S5.T3.6.6.6.2.m1.1.1.2">2</cn><apply id="S5.T3.6.6.6.2.m1.1.1.3.cmml" xref="S5.T3.6.6.6.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T3.6.6.6.2.m1.1.1.3.1.cmml" xref="S5.T3.6.6.6.2.m1.1.1.3">superscript</csymbol><cn id="S5.T3.6.6.6.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T3.6.6.6.2.m1.1.1.3.2">10</cn><apply id="S5.T3.6.6.6.2.m1.1.1.3.3.cmml" xref="S5.T3.6.6.6.2.m1.1.1.3.3"><minus id="S5.T3.6.6.6.2.m1.1.1.3.3.1.cmml" xref="S5.T3.6.6.6.2.m1.1.1.3.3"></minus><cn id="S5.T3.6.6.6.2.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T3.6.6.6.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.2.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.2.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">224</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the training configurations used for Lumina-Image 2.0 across its three-stage training process: low-resolution, high-resolution, and high-quality tuning.  For each stage, it specifies the image resolution, the number of images used, the number of training steps (in thousands), the batch size, the learning rate, the number of GPU days consumed (using A100 GPUs), and the optimizer used (AdamW). This information is crucial in understanding the training choices made in developing the model and the computational resources required.
> <details>
> <summary>read the caption</summary>
> Table 3: Training configuration across different stages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.8.4">
<tr class="ltx_tr" id="S5.T4.7.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.7.3.3.4" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.3.3.4.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.3.3.5" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.3.3.5.1"># Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T4.5.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.1.1">GenEval</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.1.1.1.m1.1"><semantics id="S5.T4.5.1.1.1.m1.1a"><mo id="S5.T4.5.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.1.1.1.m1.1b"><ci id="S5.T4.5.1.1.1.m1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T4.6.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.2.2.2.1">DPG</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.6.2.2.2.m1.1"><semantics id="S5.T4.6.2.2.2.m1.1a"><mo id="S5.T4.6.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.2.2.2.m1.1b"><ci id="S5.T4.6.2.2.2.m1.1.1.cmml" xref="S5.T4.6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T4.7.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.7.3.3.3.1">T2I-CompBench</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.7.3.3.3.m1.1"><semantics id="S5.T4.7.3.3.3.m1.1a"><mo id="S5.T4.7.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.3.3.3.m1.1b"><ci id="S5.T4.7.3.3.3.m1.1.1.cmml" xref="S5.T4.7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Two Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Counting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Color Attri.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.5.4.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">Entity</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Relation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">Attribute</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.5.8.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">Color</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">Shape</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.5.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">Texture</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S5.T4.8.4.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.6.1.1">AutoRegressive Models</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.8.4.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib4" title="">4</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">65.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.7.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.8">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.8.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.9">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HART <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib6" title="">6</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">732M</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.89</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.9.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.10">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib3" title="">3</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.3B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">67.48</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.10.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.11">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Emu3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib7" title="">7</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.0B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.17</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.61</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">86.33</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.60</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7544</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5706</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.11.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7164</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.12">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Infinity <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib44" title="">44</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.57</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.76</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.46</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.12.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.13">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Janus-Pro-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.5B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.63</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.98</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.17</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.63</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.13.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.14">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Janus-Pro-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.14.3.1">0.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.14.5.1">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.14.6.1">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.90</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.32</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.14.9.1">89.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.19</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.14.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.15">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S5.T4.8.4.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.15.1.1">Diffusion Models</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.8.4.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LDM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.4B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">63.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.4.16.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.17">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDv1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.40</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">74.23</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">73.49</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">75.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">63.18</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3730</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3646</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.17.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4219</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.18">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Lumina-Next <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib17" title="">17</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.7B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.46</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.78</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.78</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.67</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">75.66</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5088</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3386</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.18.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4239</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.19">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDv2.1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">68.09</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5694</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4495</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.19.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.4982</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.4">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T4.8.4.4.1.m1.1"><semantics id="S5.T4.8.4.4.1.m1.1a"><mi id="S5.T4.8.4.4.1.m1.1.1" xref="S5.T4.8.4.4.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T4.8.4.4.1.m1.1b"><ci id="S5.T4.8.4.4.1.m1.1.1.cmml" xref="S5.T4.8.4.4.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.4.4.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.4.4.1.m1.1d">italic_α</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib15" title="">15</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.48</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">79.32</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.57</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.60</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">71.11</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6886</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5582</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7044</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.20">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib33" title="">33</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.23</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.43</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">86.76</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.91</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">74.65</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6369</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5408</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.20.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5637</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.21">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SD3-medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">91.01</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.70</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.83</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.08</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.21.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.22">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.3B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.42</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.31</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.79</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.09</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.22.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.23">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sana-0.6B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib8" title="">8</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.50</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.10</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.30</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.60</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.23.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.24">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sana-1.6B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib8" title="">8</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.24.7.1">91.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.24.8.1">91.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.90</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.24.10.1">84.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.24.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.25">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DALL-E3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib2" title="">2</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">89.61</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.58</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.39</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.50</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.25.11.1">0.8110</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.25.12.1">0.6750</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.25.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.25.13.1">0.8070</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.26">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.26.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">OmniGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib37" title="">37</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.8B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.86</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.26.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.27">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.27.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sana-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib67" title="">67</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.8B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.27.4.1">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.00</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.27.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4.28" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.8.4.28.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.1.1" style="background-color:#F2F2F2;">Lumina-Image 2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T4.8.4.28.2.1" style="background-color:#F2F2F2;">2.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.3.1" style="background-color:#F2F2F2;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.4.1" style="background-color:#F2F2F2;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.5.1" style="background-color:#F2F2F2;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.6.1" style="background-color:#F2F2F2;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.7.1" style="background-color:#F2F2F2;">91.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.8.1" style="background-color:#F2F2F2;">94.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.9.1" style="background-color:#F2F2F2;">90.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.10.1" style="background-color:#F2F2F2;">87.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.4.28.11.1" style="background-color:#F2F2F2;">0.8211</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.12.1" style="background-color:#F2F2F2;">0.6028</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.4.28.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.8.4.28.13.1" style="background-color:#F2F2F2;">0.7417</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various text-to-image models across three benchmark datasets: GenEval, DPG, and T2I-CompBench.  For each model, the table shows the number of parameters, and performance scores on several metrics for each benchmark. The metrics evaluate different aspects of image generation quality, such as object recognition accuracy, color and shape representation quality, and overall image quality. Higher scores generally indicate better performance, as specified by the up and down arrows in the header. The best performing model in each metric is shown in bold, while the second-best is underlined. This allows for a direct comparison of the capabilities of different models on various aspects of image generation.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison across different models on GenEval [31], DPG [30], and T2I-CompBench [32] benchmarks. '↓↓\downarrow↓' or '↑↑\uparrow↑' indicate lower or higher values are better. Bold indicates the best performance, while underlining denotes the second-best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.1.1.1">
<tr class="ltx_tr" id="S5.T6.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.1.1.1.1.2" rowspan="2" style="padding:2pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.2.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T6.1.1.1.1.1" style="padding:2pt 10.0pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="23" id="S5.T6.1.1.1.1.1.g1" src="x6.png" width="27"/> <span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1.1">Artificial Analysis</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.2.1" style="padding:2pt 10.0pt;">Overall</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.2.2" style="padding:2pt 10.0pt;">Traditional Art</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.2.3" style="padding:2pt 10.0pt;">Fantasy &amp; Mythical</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.2.4" style="padding:2pt 10.0pt;">Anime</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.1.3.1" style="padding:2pt 10.0pt;">FLUX1.1 [pro] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib9" title="">9</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.3.2" style="padding:2pt 10.0pt;">1122</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.3.3" style="padding:2pt 10.0pt;">1075</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.3.4" style="padding:2pt 10.0pt;">1111</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.1.3.5" style="padding:2pt 10.0pt;">1127</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.1.4.1" style="padding:2pt 10.0pt;">FLUX1 [pro] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib9" title="">9</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.4.2" style="padding:2pt 10.0pt;">1107</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.4.3" style="padding:2pt 10.0pt;">983</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.4.4" style="padding:2pt 10.0pt;">1081</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.4.5" style="padding:2pt 10.0pt;">1051</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.5" style="background-color:#E7E7E7;">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.1.5.1" style="padding:2pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.5.1.1" style="background-color:#E7E7E7;">Lumina-Image 2.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.5.2" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.5.2.1" style="background-color:#E7E7E7;">982</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.5.3" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.5.3.1" style="background-color:#E7E7E7;">1015</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.5.4" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.5.4.1" style="background-color:#E7E7E7;">1051</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.5.5" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.5.5.1" style="background-color:#E7E7E7;">1037</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.1.6.1" style="padding:2pt 10.0pt;">DALLE 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib2" title="">2</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.6.2" style="padding:2pt 10.0pt;">970</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.6.3" style="padding:2pt 10.0pt;">1008</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.6.4" style="padding:2pt 10.0pt;">1026</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.6.5" style="padding:2pt 10.0pt;">977</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.1.7.1" style="padding:2pt 10.0pt;">SD3 Medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.7.2" style="padding:2pt 10.0pt;">945</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.7.3" style="padding:2pt 10.0pt;">990</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.7.4" style="padding:2pt 10.0pt;">1026</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.7.5" style="padding:2pt 10.0pt;">929</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.1.1.1.8.1" style="padding:2pt 10.0pt;">Janus Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.1.8.2" style="padding:2pt 10.0pt;">748</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.1.8.3" style="padding:2pt 10.0pt;">828</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.1.8.4" style="padding:2pt 10.0pt;">784</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.1.8.5" style="padding:2pt 10.0pt;">766</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of ELO scores obtained from the AGI-Eval 3 text-to-image arena as of February 23, 2025.  ELO scores represent a ranking of models based on their performance in head-to-head comparisons against other models in the arena, determined by human judges.  The table lists several models and their corresponding ELO scores, providing a relative measure of each model's performance in generating images from textual descriptions.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of ELO scores evaluated in text-to-image arena from AGI-Eval 3 (as of February 23, 2025).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.2.1.1">
<tr class="ltx_tr" id="S5.T6.2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.2.1.1.1.2" rowspan="2" style="padding:2pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.1.1.2.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T6.2.1.1.1.1" style="padding:2pt 10.0pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="20" id="S5.T6.2.1.1.1.1.g1" src="x7.png" width="16"/> <span class="ltx_text ltx_font_bold" id="S5.T6.2.1.1.1.1.1">Rapidata</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.2.1" style="padding:2pt 10.0pt;">Overall</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.2.2" style="padding:2pt 10.0pt;">Alignment</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.2.3" style="padding:2pt 10.0pt;">Coherence</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.2.1.1.3.1" style="padding:2pt 10.0pt;">FLUX1.1 [pro] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib9" title="">9</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.3.2" style="padding:2pt 10.0pt;">1040</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.3.3" style="padding:2pt 10.0pt;">1036</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.1.3.4" style="padding:2pt 10.0pt;">1023</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T6.2.1.1.4.1" style="padding:2pt 10.0pt;">Imagen 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib75" title="">75</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.4.2" style="padding:2pt 10.0pt;">1018</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.4.3" style="padding:2pt 10.0pt;">1003</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.4.4" style="padding:2pt 10.0pt;">1032</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.5" style="background-color:#E7E7E7;">
<td class="ltx_td ltx_align_left" id="S5.T6.2.1.1.5.1" style="padding:2pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.1.5.1.1" style="background-color:#E7E7E7;">Lumina-Image 2.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.5.2" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.5.2.1" style="background-color:#E7E7E7;">969</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.5.3" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.5.3.1" style="background-color:#E7E7E7;">1031</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.5.4" style="padding:2pt 10.0pt;"><span class="ltx_text" id="S5.T6.2.1.1.5.4.1" style="background-color:#E7E7E7;">986</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T6.2.1.1.6.1" style="padding:2pt 10.0pt;">DALLE 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib2" title="">2</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.6.2" style="padding:2pt 10.0pt;">952</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.6.3" style="padding:2pt 10.0pt;">1022</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.6.4" style="padding:2pt 10.0pt;">958</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T6.2.1.1.7.1" style="padding:2pt 10.0pt;">SD3 Medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.7.2" style="padding:2pt 10.0pt;">952</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.7.3" style="padding:2pt 10.0pt;">1022</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.7.4" style="padding:2pt 10.0pt;">984</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.2.1.1.8.1" style="padding:2pt 10.0pt;">Janus Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21758v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.1.1.8.2" style="padding:2pt 10.0pt;">734</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.1.1.8.3" style="padding:2pt 10.0pt;">932</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.1.1.8.4" style="padding:2pt 10.0pt;">947</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of the Lumina-Image 2.0 model across three training stages: low-resolution, high-resolution, and high-quality tuning.  It shows the number of training steps, and the resulting scores on the DPG (Dense Prompt Generation) and GenEval benchmarks for each stage, illustrating the performance gains as the model progresses through the training stages. This demonstrates the effectiveness of the multi-stage progressive training strategy used in the model.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance Comparison Across Stages on DPG [30] and GenEval [31] Benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21758/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21758/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}