---
title: "TextCrafter: Accurately Rendering Multiple Texts in Complex Visual Scenes"
summary: "TextCrafter: Precisely renders multiple texts in complex scenes, overcoming distortion and omission issues in existing visual text generation models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Nanjing University",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23461 {{< /keyword >}}
{{< keyword icon="writer" >}} Nikai Du et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23461" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23461" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23461/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image generation models struggle with rendering visual text, especially in complex scenarios, leading to text distortion, omission, and blurriness. This paper tackles these challenges in Complex Visual Text Generation (CVTG) by introducing **TextCrafter, a novel multi-visual text rendering method**. TextCrafter employs a progressive strategy to decompose complex visual text into distinct components, ensuring alignment between textual content and its visual carrier. It incorporates a token focus enhancement mechanism to amplify the prominence of visual text.



The authors present the **CVTG-2K dataset** to evaluate generative models on CVTG tasks. TextCrafter consists of three key stages: **instance fusion** to strengthen the connection between visual text and its carrier; **region insulation** to initialize layout information and separate text prompts across regions; and **text focus** to enhance visual text attention maps. Extensive experiments show that TextCrafter outperforms state-of-the-art approaches.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TextCrafter, a training-free framework, enhances multi-text control by instance fusion, region insulation, and token focus. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The CVTG-2K dataset is introduced for evaluating models in complex visual text generation tasks, encompassing diverse positions, quantities, lengths, and attributes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate TextCrafter's superior performance in robustness, accuracy, and prompt-following ability compared to existing state-of-the-art approaches. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces TextCrafter and the CVTG-2K dataset, offering a new approach to **generating accurate and contextually relevant visual text** in complex images. It addresses limitations in current models and opens new avenues for research in multi-instance visual generation and text rendering, pushing the boundaries of AI's ability to integrate text seamlessly into visual content.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23461/x2.png)

> 🔼 Figure 1 showcases TextCrafter's ability to generate images with multiple text regions, each exhibiting varying lengths, sizes, styles, numbers, and symbols.  It directly addresses common issues in visual text generation, such as distortion, blurriness, and omission. The figure provides a visual comparison of TextCrafter's output against three state-of-the-art models (FLUX, TextDiffuser-2, and 3DIS) across several diverse scenarios, highlighting TextCrafter's superior accuracy and detail in rendering complex visual text.
> <details>
> <summary>read the caption</summary>
> Figure 1: TextCrafter enables precise multi-region visual text rendering, addressing the challenges of long, small-size,various numbers, symbols and styles in visual text generation. We illustrate the comparisons among TextCrafter with three state-of-the-art models, i.e., FLUX, TextDiffuser-2 and 3DIS.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.3.1.1"><span class="ltx_text" id="S3.T1.2.3.1.1.1" style="font-size:70%;color:#333333;">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.3.1.2"><span class="ltx_text" id="S3.T1.2.3.1.2.1" style="font-size:70%;color:#333333;">Number</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.1.3"><span class="ltx_text" id="S3.T1.2.3.1.3.1" style="font-size:70%;color:#333333;">Word</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.1.4"><span class="ltx_text" id="S3.T1.2.3.1.4.1" style="font-size:70%;color:#333333;">Char</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.1.5"><span class="ltx_text" id="S3.T1.2.3.1.5.1" style="font-size:70%;color:#333333;">Attribute</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.1.6"><span class="ltx_text" id="S3.T1.2.3.1.6.1" style="font-size:70%;color:#333333;">Region</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.4.2.1"><span class="ltx_text" id="S3.T1.2.4.2.1.1" style="font-size:70%;">CreativeBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.4.2.2"><span class="ltx_text" id="S3.T1.2.4.2.2.1" style="font-size:70%;">400</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.3"><span class="ltx_text" id="S3.T1.2.4.2.3.1" style="font-size:70%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.4"><span class="ltx_text" id="S3.T1.2.4.2.4.1" style="font-size:70%;">7.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.5"><span class="ltx_text" id="S3.T1.2.4.2.5.1" style="font-size:70%;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.6"><span class="ltx_text" id="S3.T1.2.4.2.6.1" style="font-size:70%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.5.3.1"><span class="ltx_text" id="S3.T1.2.5.3.1.1" style="font-size:70%;">MARIOEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.5.3.2"><span class="ltx_text" id="S3.T1.2.5.3.2.1" style="font-size:70%;">5414</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.5.3.3"><span class="ltx_text" id="S3.T1.2.5.3.3.1" style="font-size:70%;">2.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.5.3.4"><span class="ltx_text" id="S3.T1.2.5.3.4.1" style="font-size:70%;">15.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.5.3.5"><span class="ltx_text" id="S3.T1.2.5.3.5.1" style="font-size:70%;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.5.3.6"><span class="ltx_text" id="S3.T1.2.5.3.6.1" style="font-size:70%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.6.4.1"><span class="ltx_text" id="S3.T1.2.6.4.1.1" style="font-size:70%;">DrawTextExt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.6.4.2"><span class="ltx_text" id="S3.T1.2.6.4.2.1" style="font-size:70%;">220</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.4.3"><span class="ltx_text" id="S3.T1.2.6.4.3.1" style="font-size:70%;">3.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.4.4"><span class="ltx_text" id="S3.T1.2.6.4.4.1" style="font-size:70%;">17.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.4.5"><span class="ltx_text" id="S3.T1.2.6.4.5.1" style="font-size:70%;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.4.6"><span class="ltx_text" id="S3.T1.2.6.4.6.1" style="font-size:70%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.7.5.1"><span class="ltx_text" id="S3.T1.2.7.5.1.1" style="font-size:70%;">AnyText-benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.7.5.2"><span class="ltx_text" id="S3.T1.2.7.5.2.1" style="font-size:70%;">1000</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.7.5.3"><span class="ltx_text" id="S3.T1.2.7.5.3.1" style="font-size:70%;">4.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.7.5.4"><span class="ltx_text" id="S3.T1.2.7.5.4.1" style="font-size:70%;">21.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.7.5.5"><span class="ltx_text" id="S3.T1.2.7.5.5.1" style="font-size:70%;">×</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.7.5.6"><span class="ltx_text" id="S3.T1.2.7.5.6.1" style="font-size:70%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.2.2.3"><span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:70%;">CVTG-2K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S3.T1.2.2.4"><span class="ltx_text" id="S3.T1.2.2.4.1" style="font-size:70%;">2000</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.2.2.5"><span class="ltx_text" id="S3.T1.2.2.5.1" style="font-size:70%;">8.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.2.2.6"><span class="ltx_text" id="S3.T1.2.2.6.1" style="font-size:70%;">39.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.1.1.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S3.T1.1.1.1.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.2.1"><span class="ltx_text" id="S3.T1.1.1.1.1.2.1.1" style="font-size:70%;">size/color/font</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.2.1">
<tr class="ltx_tr" id="S3.T1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.1.m1.1a"><mi id="S3.T1.2.2.2.1.1.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S3.T1.2.2.2.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.1.m1.1b"><ci id="S3.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.1.2.1"><span class="ltx_text" id="S3.T1.2.2.2.1.2.1.1" style="font-size:70%;">2/3/4/5</span></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the CVTG-2K dataset with other publicly available visual text benchmark datasets.  It provides a quantitative comparison across several key features, including the total number of samples, the average number of words and characters per sample, whether attributes (like size, color, or font) are included in the annotations, and the average number of regions containing text within each sample. This comparison highlights the relative size and complexity of CVTG-2K compared to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of CVTG-2K with existing public visual text Benchmarks in terms of Number of Samples(Number), Average Word Count (Word), Average Character Count (Char), Attribute, and number of Regions (Region).
> </details>





### In-depth insights


#### TextCrafter: CVTG
**TextCrafter** tackles the Complex Visual Text Generation (CVTG) task by generating intricate textual content across diverse visual regions within images. Image generation models in CVTG often distort, blur, or omit visual text, which TextCrafter addresses with a novel multi-visual text rendering method. Employing a progressive strategy, TextCrafter deconstructs complex visual text into components while aligning content and its visual carrier, using a token focus enhancement to emphasize text during generation. It tackles text confusion, omissions, and blurriness. TextCrafter outperforms current methods and is rigorously evaluated on the CVTG-2K dataset.

#### Instance Fusion
**Instance Fusion** aims to accurately position visual text within an image by integrating text content with its spatial carrier. It leverages the embedding of the preceding quotation mark, which encapsulates complete information about the text, to establish spatial relationships. By incorporating this embedding into the carrier's embedding via weighted fusion, it ensures precise alignment and prevents text from floating in incorrect positions. This strategy enhances the model's ability to generate images where visual text is logically and spatially consistent with the surrounding elements, improving the overall coherence and realism of the generated scene. The fusion process is controlled by a parameter λ, which determines the proportion of the quotation mark's embedding added to the carrier's embedding, allowing for fine-tuning of the spatial integration.

#### Region Control
While the title 'Region Control' isn't explicitly present, the paper introduces a region insulation strategy that implicitly manages different regions of interest where texts appear. **Region insulation is key to disentangling complexity in CVTG by separating text instances and preventing glyph or layout interference**. The study leveraged the DiT model's positional priors to initialize layouts and assigned bounding boxes to each visual text, essentially isolating them for individual processing. This approach, in contrast to relying on LLMs or manual layout, harnesses the model's inherent spatial understanding. The region control ensures **text boundaries were well-defined to harmonize the overall image, preventing confusion**. Ablation studies revealed its effectiveness in reducing text interference. This form of localized control is vital for precise manipulation and coherency, as the quality of the generated visual texts is greatly improved with the technique.

#### CVTG-2K dataset
The paper introduces CVTG-2K, a novel dataset addressing the limitations of existing visual text benchmarks. **CVTG-2K tackles complex visual text generation**, featuring diverse scenes, multiple text regions (2-5), varied text lengths (avg. 8.10 words, 39.47 characters), and attributes (size, color, font). **Unlike fixed-template datasets**, CVTG-2K ensures diversity and real-world relevance through prompts generated by OpenAI's O1-mini API using Chain-of-Thought techniques. The dataset includes fine-grained information, decoupling prompts and specifying carrier-text relationships. **Rigorous filtering and manual review ensures quality and avoids harmful content**. Public release alongside the code will foster research in complex visual text generation.

#### Focus on small Text
Focusing on small text within complex visual scenes presents a significant challenge in text generation. Accurately rendering small text requires high fidelity to avoid blurriness and maintain legibility, which is crucial for conveying information effectively. The model needs to allocate sufficient attention to these regions, ensuring that the details are preserved during the generation process. Techniques such as **attention control mechanisms** and **token focus enhancement** can be employed to amplify the prominence of small text. This involves refining the attention maps to highlight textual elements and re-weighting the relevant features. Addressing the small-text challenge is important for enhancing the overall quality and informativeness of generated images, particularly in scenarios where textual information is a key component.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23461/x3.png)

> 🔼 TextCrafter, a novel framework for complex visual text generation, is illustrated in this figure. It consists of three main steps: 1) Instance Fusion: This step ensures precise alignment between textual content and its visual carrier by integrating the embedding of the preceding quotation mark into the carrier's embedding. This step strengthens the connection between the visual text and its surrounding environment, preventing the text from appearing in incorrect positions. 2) Region Insulation: This step leverages the positional priors of the pre-trained DiT model to initialize the layout information for each text instance while separating and denoising text prompts across different regions. It prevents early interference between text areas, thereby reducing confusion and the risk of content omission in multi-text scenarios. 3) Text Focus: This step enhances the attention maps of visual text, improving the fidelity of text rendering and addressing blurriness, especially in smaller text. This is achieved by introducing an attention control mechanism to amplify the prominence of visual text during the generation process.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our TextCrafter. TextCrafter consists of three steps. (a) Instance Fusion: Strengthen the connection between visual text and its corresponding carrier. (b) Region Insulation: Leverage the positional priors of the pre-trained DiT model to initialize the layout information for each text instance while separating and denoising text prompts across different regions. (c) Text Focus: Enhance the attention maps of visual text, refing the fidelity of text rendering.
> </details>



![](https://arxiv.org/html/2503.23461/x4.png)

> 🔼 Figure 3 visualizes the process of tokenizing a complex prompt for visual text generation.  The prompt, 'A sidewalk poster with ‘Register Now for IJCAI 2025’', is broken down into individual tokens, including punctuation.  The image displays the attention map associated with each token, highlighting how the model focuses on different parts of the prompt. Notably, the figure shows how the inclusion of quotation marks around 'Register Now for IJCAI 2025' strengthens the association between the text phrase and its visual representation (the poster).  This demonstrates a key aspect of the proposed TextCrafter model, which uses such techniques to improve the accuracy of complex visual text generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of tokenizing the prompt “A sidewalk poster with ‘Register Now for IJCAI 2025’.” along with the attention map corresponding to each token. The use of preceding quotation marks can reinforce the relationship between text tokens and carrier tokens.
> </details>



![](https://arxiv.org/html/2503.23461/x5.png)

> 🔼 This figure demonstrates the efficiency of the TextCrafter model's pre-generation phase.  It shows that using a pre-trained Diffusion-based Image Transformer (DiT) model, a good approximation of the final image layout and the relative positions of key objects can be achieved with far fewer denoising steps than a full generation.  The comparison highlights that after only 8 denoising steps, the generated layout is already very similar to the layout produced after 50 steps. The remaining steps primarily focus on refining the details and visual quality of the image, rather than establishing the overall structure.
> <details>
> <summary>read the caption</summary>
> Figure 4: For a pre-trained DiT model, only a few denoising steps are required to approximate the layout of the image and the relative positions of the main subjects. After 8 denoising steps, the layout closely resembles that of a full 50-step process, with subsequent steps primarily refining image details.
> </details>



![](https://arxiv.org/html/2503.23461/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of TextCrafter's performance against several other state-of-the-art baselines on the CVTG-2K benchmark dataset. The figure showcases example outputs from each model, highlighting TextCrafter's ability to generate visually harmonious and aesthetically pleasing images with multiple text instances.  In contrast to the baseline methods, which often struggle with text distortion, omissions, and blurring, particularly in complex scenarios, TextCrafter consistently renders multiple texts accurately and maintains stability across diverse visual text layouts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison of TextCrafter with other baselines on CVTG-2K. TextCrafter excels in delivering harmonious and aesthetically pleasing images. It also accurately renders multiple visual texts while maintaining stability in complex scenarios.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S3.T1.1.1.1.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.2.1"><span class="ltx_text" id="S3.T1.1.1.1.1.2.1.1" style="font-size:70%;">size/color/font</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of TextCrafter against several state-of-the-art models on the CVTG-2K benchmark dataset.  The benchmark evaluates the performance of complex visual text generation models. Three metrics are used to assess the models: Word Accuracy (measuring the accuracy of generated text), Normalized Edit Distance (NED, a more lenient metric that considers character-level similarity), and CLIPScore (an assessment of how well the generated image aligns with the given text prompt). The results demonstrate TextCrafter's superior performance across all three metrics, highlighting its ability to accurately generate complex visual text scenes.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on the proposed CVTG-2K. The results highlight TextCrafter’s superiority across three metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.2.1">
<tr class="ltx_tr" id="S3.T1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.1.m1.1a"><mi id="S3.T1.2.2.2.1.1.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S3.T1.2.2.2.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.1.m1.1b"><ci id="S3.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.1.2.1"><span class="ltx_text" id="S3.T1.2.2.2.1.2.1.1" style="font-size:70%;">2/3/4/5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the CVTG-2K benchmark dataset. It shows the impact of each step in the TextCrafter model: Instance Fusion (Step 1), Region Insulation (Step 2), and Text Focus (Step 3) on the Word Accuracy and NED metrics.  The results demonstrate the individual and combined contributions of each step to the overall performance of the model. It quantifies how each component of the proposed TextCrafter method impacts the final results.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on CVTG-2K of Instance Fusion  (Step 1), Region Insulation  (Step 2), and Text Focus  (Step 3).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23461/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23461/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}