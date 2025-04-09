---
title: "OmniSVG: A Unified Scalable Vector Graphics Generation Model"
summary: "OmniSVG: Unified model generates scalable vector graphics with high quality and versatility."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Fudan University",]
showSummary: true
date: 2025-04-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06263 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiying Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06263" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06263" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06263/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scalable Vector Graphics(SVG) play a vital role in graphic design due to their resolution independence and editability. Current methods produce unstructured outputs, incur high computational costs, or are limited to generating simple icons. To address these limitations, OmniSVG emerges as a unified framework utilizing Vision-Language Models (VLMs) for end-to-end multimodal SVG generation. 



OmniSVG parameterizes SVG commands and coordinates into discrete tokens, decoupling structural logic from low-level geometry for efficient training while retaining expressiveness. The introduction of MMSVG-2M, a multimodal dataset with two million annotated SVG assets, and standardized evaluation protocols further advances SVG synthesis. Experiments reveal that OmniSVG outperforms existing methods, showcasing its potential for professional SVG design workflows.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OmniSVG, a unified framework, leverages VLMs for multimodal SVG generation, decoupling structural logic from geometry using discrete tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MMSVG-2M, a new multimodal dataset with two million annotated SVG assets, facilitates conditional SVG generation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate OmniSVG's superior performance over existing methods, showcasing its potential for professional SVG design workflows. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces OmniSVG, a novel framework for high-quality SVG generation. By releasing MMSVG-2M dataset, the work paves the way for future research in vector graphics. The approach addresses the limitations of existing methods and pushes the boundaries of AI-driven design workflows. **This enables diverse applications and promotes advancements in the field**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06263/x2.png)

> 🔼 OmniSVG is a versatile model capable of generating high-quality Scalable Vector Graphics (SVGs) with varying complexity, from simple icons to intricate anime characters.  It achieves this through multiple generation modalities: Text-to-SVG, Image-to-SVG, and Character-Reference SVG. This flexibility makes it a powerful tool for various creative applications.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Highlighted features of OmniSVG. OmniSVG is capable of autoregressively generating high-quality SVGs across a wide spectrum of complexity — from simple icons to intricate anime characters. It demonstrates remarkable versatility through multiple generation modalities, including Text-to-SVG, Image-to-SVG, and Character-Reference SVG, making it a powerful and flexible solution for diverse creative tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.3">
<tr class="ltx_tr" id="S3.T1.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.2.1">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.3.1">Val</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.4.1">Test</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.5.1">Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.6.1">Token Length</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">MMSVG-Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.3">990k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.4">106.7k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.5">3.3k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.6">Iconfont<span class="ltx_note ltx_role_footnote" id="footnote1"><sup class="ltx_note_mark">†</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">†</sup><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.iconfont.cn/" title="">https://www.iconfont.cn/</a></span></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.1">2.2k <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">±</annotation></semantics></math> 0.9k</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.2.2.1">MMSVG-Illustration</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2.3">450k</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2.4">48.5k</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2.5">1.5k</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2.6">IconSount</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2.1">8.1k <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.2.1.m1.1a"><mo id="S3.T1.2.2.2.2.1.m1.1.1" xref="S3.T1.2.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.1.m1.1b"><csymbol cd="latexml" id="S3.T1.2.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.1.m1.1d">±</annotation></semantics></math> 3.3k</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T1.3.3.3.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.2.1">MMSVG-Character</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.3.3.3.3">350k</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.3.3.3.4">48.9k</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.3.3.3.5">1.1k</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.3.3.3.6">Freepik &amp; generated</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.3.3.3.1">28k <math alttext="\pm" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S3.T1.3.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.m1.1d">±</annotation></semantics></math> 7.3k</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a detailed breakdown of the MMSVG-2M dataset's composition.  It shows the number of SVG samples categorized into three subsets: icons, illustrations, and anime characters.  This allows readers to understand the scale and diversity of the dataset, highlighting the significant contribution of each category to the overall 2 million SVG assets. The dataset includes training, validation, and test splits for each category.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for MMSVG-2M. Our MMSVG-2M consists of 1.1 million SVG icons, 0.5 million SVG illustrations, and 0.4 million SVG anime characters.
> </details>





### In-depth insights


#### Unified SVG Gen
The idea of a "Unified SVG Gen" model is compelling, suggesting a **single framework capable of handling diverse SVG generation tasks**. This implies a system that can move beyond specialized models and handle tasks from generating simple icons to complex illustrations. The core challenge lies in creating a model with sufficient **expressiveness and generalization ability** to capture the nuances of different SVG styles and complexities. A unified approach offers **efficiency and ease of use**, eliminating the need for multiple models. A successful "Unified SVG Gen" would require a **robust understanding of SVG structure and parameters**, as well as effective methods for encoding and decoding them. Training such a model would likely necessitate a **large and diverse dataset**, covering a wide range of SVG styles and complexities. Ultimately, a "Unified SVG Gen" represents a significant step towards democratizing SVG creation, making it accessible to a wider audience.

#### Multimodal VLMs
Multimodal VLMs are revolutionizing how we approach various AIGC tasks, especially in areas like SVG generation. The capability of these models to process both **visual and textual information** allows for a deeper understanding of the input, leading to more accurate and contextually relevant results. These models can generate high-quality SVGs by leveraging pre-trained VLMs by parameterizing SVG commands and coordinates into discrete tokens, which in turn decouples structural logic from low-level geometry for efficient training and maintain the expressiveness of complex SVG structure. Moreover, the ability to reason upon visual and textual instructions enables the **synthesis of editable, high-fidelity SVGs** across diverse domains, ranging from simple icons to intricate illustrations and anime characters. However, challenges persist. The context window limitation in some VLMs can hinder the processing of complex SVGs requiring longer sequences. Future research could focus on extending the context window and improving the alignment between textual descriptions and visual outputs. 

#### MMSVG-2M Dataset
The MMSVG-2M dataset appears to be a **significant contribution** to SVG research. Its large scale (two million samples) addresses a key limitation in the field, offering a more **robust training ground** for models. The multimodal nature, including icons, illustrations, and anime designs, expands the scope of SVG generation beyond simple shapes. The annotations are enriched, **enhancing the dataset's utility** for tasks like text-to-SVG and image-to-SVG. The mention of a standardized evaluation protocol (MMSVG-Bench) is crucial, providing a **consistent benchmark** for comparing different approaches. The publicly available data should **facilitate future research** and encourage the development of more versatile and user-centric SVG synthesis techniques. By providing a way for researchers and designers to easily access and use the dataset, the authors are fostering collaboration and progress in the field. 

#### SVG Parameterize
**SVG parameterization** is key to bridging vector graphics with modern machine learning. It involves converting SVG commands and coordinates into a structured, discrete token sequence. This **decouples structural logic from low-level geometry**, mitigating coordinate hallucination issues common in code-based Large Language Models. By using tokens, complex SVGs are represented efficiently, allowing for longer context windows and enabling vivid, colorful results. This approach is crucial for tasks like text-to-SVG and image-to-SVG generation, enabling the creation of high-quality, editable vector graphics. **Parameterization allows for end-to-end training**, and it allows the model to be capable of completing SVGs with diverse generation results given some partial observations. Ultimately, it enhances both the expressiveness and trainability of SVG generation models, making them more scalable and versatile.

#### Complex SVG Gen
Complex SVG generation is a challenging task due to the intricate nature of SVG syntax and the high dimensionality of possible designs. **Generating detailed and visually appealing SVGs requires models to capture long-range dependencies and handle a large vocabulary of commands and coordinates.** Existing methods often struggle with either producing unstructured outputs, incurring high computational costs, or being limited to simple monochrome icons. Overcoming these limitations involves developing novel architectures and training strategies that can efficiently parameterize complex SVG structures and leverage large datasets of annotated SVG assets. **Addressing the 'coordinate hallucination' problem and decoupling structural logic from low-level geometry are crucial steps towards achieving high-fidelity and editable SVG synthesis.** The introduction of multimodal datasets like MMSVG-2M can significantly contribute to advancing research in this area by providing a valuable resource for training and evaluating complex SVG generation models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.06263/x8.png)

> 🔼 OmniSVG, a novel scalable vector graphics (SVG) generation model, leverages a pre-trained vision-language model (Qwen-2.5-VL) and a custom SVG tokenizer.  The architecture processes both text and image inputs, tokenizing them as prefixes. These prefixes are then concatenated with SVG commands (also tokenized) to create a unified input representation for the Qwen-2.5-VL model. The model then generates high-quality SVG outputs. This unified approach allows OmniSVG to effectively handle diverse input modalities and complexities, enabling various SVG generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of OmniSVG. OmniSVG is built on a pre-trained vision-language model Qwen2.5-VL and incorporates an SVG tokenizer. The model tokenizes both text and image inputs as prefix tokens, while the SVG tokenizer encodes vector graphics commands into a unified representation space.
> </details>



![](https://arxiv.org/html/2504.06263/x9.png)

> 🔼 This figure shows the training perplexity (PPL) of the OmniSVG models during training.  The training perplexity is a measure of how well the model predicts the next token in a sequence. A lower perplexity indicates better performance. The plot shows the perplexity decreasing as the number of processed tokens during training increases, suggesting that the model is learning and improving its ability to generate SVGs.
> <details>
> <summary>read the caption</summary>
> (a) Training PPL for our models.
> </details>



![](https://arxiv.org/html/2504.06263/x10.png)

> 🔼 The figure shows the validation perplexity (PPL) results for different OmniSVG models.  Validation perplexity is a metric used to evaluate how well a language model predicts unseen data; lower values indicate better performance. The x-axis represents the number of processed tokens (in billions) during training, and the y-axis represents the validation perplexity.  The plot illustrates how the validation perplexity changes as the models are trained on a larger dataset (more tokens). Multiple lines are shown, each corresponding to an OmniSVG model with a different number of parameters (model size). This allows for a comparison of how model size impacts performance on unseen data.
> <details>
> <summary>read the caption</summary>
> (b) Validation PPL for our models.
> </details>



![](https://arxiv.org/html/2504.06263/x11.png)

> 🔼 This figure displays the training and validation perplexity (PPL) for different sized OmniSVG models.  The x-axis shows the number of tokens processed (in billions) during training, and the y-axis represents the perplexity. Two separate lines are plotted: one for training perplexity and one for validation perplexity.  Both lines show a decreasing trend as the number of training tokens increases, indicating improved model performance with more training data. Notably, the larger models (as indicated by color/line style) exhibit lower perplexity, demonstrating that model performance improves with increased model size.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training and Validation Perplexity (PPL) for OmniSVG Models. We train all the models from scratch on 250 billion tokens. We observe that the performance grows with model sizes.
> </details>



![](https://arxiv.org/html/2504.06263/x12.png)

> 🔼 Figure 4 presents a qualitative comparison of OmniSVG's Text-to-SVG capabilities against other state-of-the-art methods.  The comparison focuses on three benchmark categories: Icons, Illustrations, and Characters, each representing a different level of complexity in SVG generation. For each category, sample text prompts were used to generate SVGs using OmniSVG and competing methods.  The figure visually showcases the SVG outputs, allowing for a direct comparison of the accuracy with which each method followed the instructions (instruction-following) and the overall visual appeal and quality of the generated images (aesthetic quality). OmniSVG consistently produces superior results in both instruction-following and aesthetic quality across all three benchmark categories.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison with SOTA methods on Text-to-SVG task. We compare the propose method with SOTA Text-to-SVG methods on our evaluation benchmarks, namely Icon, Illustration and Character. The proposed method outperforms existing state-of-the-art approaches in both instruction-following and the aesthetic quality of the generated SVGs.
> </details>



![](https://arxiv.org/html/2504.06263/x13.png)

> 🔼 Figure 5 presents a qualitative comparison of various state-of-the-art (SOTA) image-to-SVG generation methods.  The figure showcases the performance of these methods across three different image complexities: icons, illustrations, and character images. The results reveal that while optimization-based methods like DiffVG and LIVE perform well on simpler icon images, they often produce unsatisfactory artifacts when applied to more intricate illustrations or character images.  In contrast, the GPT-4o model can only generate SVGs at the icon level of complexity, even when provided with complex input images.  StarVector demonstrates some success with icon images, but it consistently fails to produce satisfactory results for illustrations and character images.  This figure highlights the limitations of existing methods and emphasizes the superior performance of the proposed method (OmniSVG) in handling complex image-to-SVG tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison with SOTA methods on Image-to-SVG task. We compare the propose method with SOTA Image-to-SVG methods on our evaluation benchmarks. Despite generating plausible results on simple icon samples, optimization based methods like DiffVG [25] and LIVE [30] tend to output artifacts on complex images. GPT-4o [18] is only able to generate icon-level SVG even given the complex input image. StarVector [37] is able to generate SVG for the input icon image. However, when inputed the illustration or more complex character image, StarVector fails to generate SVGs. Please zoom-in for more details.
> </details>



![](https://arxiv.org/html/2504.06263/x14.png)

> 🔼 This figure showcases OmniSVG's capability to generate character-specific SVGs using image references.  The model was trained on the MMSVG-Character dataset, which contains pairs of images depicting characters and their corresponding SVG representations.  As shown, given a reference image, OmniSVG can accurately generate a new SVG of a similar character in a similar style, demonstrating its ability to learn and apply stylistic characteristics from example data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Generated SVG with Character-Reference (CRef) by OmniSVG. By training on MMSVG-Character with natural character image and SVG pair data, OmniSVG is capable of generating character SVGs through image references.
> </details>



![](https://arxiv.org/html/2504.06263/x15.png)

> 🔼 This figure displays the results of an ablation study on the effectiveness of different parametrization methods for SVG generation.  The study compares four variations:  using only color parameters, only coordinate parameters, neither color nor coordinate parameters, and using both color and coordinate parameters.  Each variation is tested with the same prompt, and the resulting generated SVG images are shown for comparison. The goal was to determine the optimal parametrization strategy for generating high-quality SVGs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative study on parametrization. Ablation studies on color parametrization (abbreviated as param.) and coordinate (abbreviated ad coord.) paramterization are conducted.
> </details>



![](https://arxiv.org/html/2504.06263/x16.png)

> 🔼 Figure 8 presents a comprehensive visual showcase of OmniSVG's capabilities in generating diverse and intricate SVG graphics across various categories.  The figure is structured into three main sections: Icons, Illustrations, and Characters. Each section displays a variety of SVG images, demonstrating the model's ability to generate high-quality results with varying levels of complexity and detail, from simple, stylized icons to more elaborate illustrations and detailed character designs. This figure highlights the versatility and effectiveness of the OmniSVG model in producing high-fidelity SVG outputs for a wide range of applications and artistic styles.
> <details>
> <summary>read the caption</summary>
> Figure 8: Illustration of the SVG generation capabilities of OmniSVG.
> </details>



![](https://arxiv.org/html/2504.06263/x17.png)

> 🔼 Figure 9 demonstrates the limitations of OmniSVG when applied to the image-to-SVG task.  While OmniSVG excels at generating vector-style graphics, it struggles to accurately represent the nuances and complexities of natural photographs or realistic images.  The figure visually compares the outputs of OmniSVG with the input images, highlighting the differences and illustrating that OmniSVG produces vectorized renderings that do not capture the subtleties of texture, lighting, and shading present in natural scenes.
> <details>
> <summary>read the caption</summary>
> Figure 9: Limitation of OmniSVG on Image-to-SVG Task. OmniSVG can successfully generate vector style images, while fail to fit natural images.
> </details>



![](https://arxiv.org/html/2504.06263/extracted/6346030/files/wordcloud.png)

> 🔼 Figure 10 showcases examples from the MMSVG-2M dataset, a large-scale collection of scalable vector graphics (SVGs).  The dataset is divided into three subsets: Icons, Illustrations, and Characters.  The Icons and Illustrations subsets, along with a portion of the Character subset, were sourced from publicly available online resources.  The remaining portion of the Character subset was created using a custom data generation pipeline. This pipeline is particularly valuable because it generates paired image and SVG data, which is crucial for training models on image-to-SVG tasks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Samples from MMSVG-2M dataset. The proposed MMSVG-2M dataset can be separated into three subset, namely Icon, Illustration and Character. Samples from Icon, Illustration and part of Character subsets are downloaded from Internet. Another part of Character subset is generated by our data creation pipeline, which can provide image and SVG pairs for image prompting task.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.43.39">
<tr class="ltx_tr" id="S3.T2.43.39.40">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T2.43.39.40.1" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.40.1.1">
<span class="ltx_p" id="S3.T2.43.39.40.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.43.39.40.1.1.1.1">Command</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T2.43.39.40.2" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.40.2.1">
<span class="ltx_p" id="S3.T2.43.39.40.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.43.39.40.2.1.1.1">Arguments</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T2.43.39.40.3" style="width:159.3pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.40.3.1">
<span class="ltx_p" id="S3.T2.43.39.40.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.43.39.40.3.1.1.1">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T2.43.39.40.4" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.40.4.1">
<span class="ltx_p" id="S3.T2.43.39.40.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.43.39.40.4.1.1.1">Visualization</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.5.1.1.2" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.1.1.2.1">
<span class="ltx_p" id="S3.T2.5.1.1.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T2.5.1.1.2.1.1.1">&lt;SOP&gt;</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.5.1.1.1" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.5.1.1.1.1">
<span class="ltx_p" id="S3.T2.5.1.1.1.1.1"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S3.T2.5.1.1.1.1.1.m1.1"><semantics id="S3.T2.5.1.1.1.1.1.m1.1a"><mi id="S3.T2.5.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T2.5.1.1.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S3.T2.5.1.1.1.1.1.m1.1b"><emptyset id="S3.T2.5.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.5.1.1.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.1.1.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.1.1.1.1.1.m1.1d">∅</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.5.1.1.3" style="width:159.3pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.5.1.1.3.1">
<tr class="ltx_tr" id="S3.T2.5.1.1.3.1.1">
<td class="ltx_td ltx_align_left" id="S3.T2.5.1.1.3.1.1.1" style="padding:0.5pt 2.5pt;">’Start-of-Path’ token.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.5.1.1.4" style="width:111.0pt;padding:0.5pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.9.5.5.5" style="width:44.1pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.9.5.5.5.1">
<tr class="ltx_tr" id="S3.T2.9.5.5.5.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.9.5.5.5.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.9.5.5.5.1.1.1.1">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.5.5.5.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.9.5.5.5.1.2.1" style="padding:0.5pt 2.5pt;">(MoveTo)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.7.3.3.2" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.7.3.3.2.2">
<span class="ltx_p" id="S3.T2.7.3.3.2.2.2"><math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.6.2.2.1.1.1.m1.1"><semantics id="S3.T2.6.2.2.1.1.1.m1.1a"><msub id="S3.T2.6.2.2.1.1.1.m1.1.1" xref="S3.T2.6.2.2.1.1.1.m1.1.1.cmml"><mi id="S3.T2.6.2.2.1.1.1.m1.1.1.2" xref="S3.T2.6.2.2.1.1.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.6.2.2.1.1.1.m1.1.1.3" xref="S3.T2.6.2.2.1.1.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.6.2.2.1.1.1.m1.1b"><apply id="S3.T2.6.2.2.1.1.1.m1.1.1.cmml" xref="S3.T2.6.2.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.6.2.2.1.1.1.m1.1.1.1.cmml" xref="S3.T2.6.2.2.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.6.2.2.1.1.1.m1.1.1.2.cmml" xref="S3.T2.6.2.2.1.1.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.6.2.2.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.6.2.2.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.2.2.1.1.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.2.2.1.1.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.7.3.3.2.2.2.m2.1"><semantics id="S3.T2.7.3.3.2.2.2.m2.1a"><msub id="S3.T2.7.3.3.2.2.2.m2.1.1" xref="S3.T2.7.3.3.2.2.2.m2.1.1.cmml"><mi id="S3.T2.7.3.3.2.2.2.m2.1.1.2" xref="S3.T2.7.3.3.2.2.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.7.3.3.2.2.2.m2.1.1.3" xref="S3.T2.7.3.3.2.2.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.7.3.3.2.2.2.m2.1b"><apply id="S3.T2.7.3.3.2.2.2.m2.1.1.cmml" xref="S3.T2.7.3.3.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.7.3.3.2.2.2.m2.1.1.1.cmml" xref="S3.T2.7.3.3.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.7.3.3.2.2.2.m2.1.1.2.cmml" xref="S3.T2.7.3.3.2.2.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.7.3.3.2.2.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.7.3.3.2.2.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.3.3.2.2.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.3.3.2.2.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.8.4.4.3" style="width:159.3pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.8.4.4.3.1">
<span class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.8.4.4.3.1.1">
<span class="ltx_tr" id="S3.T2.8.4.4.3.1.1.1">
<span class="ltx_td ltx_align_left" id="S3.T2.8.4.4.3.1.1.1.1" style="padding:0.5pt 2.5pt;">Move the cursor to the end-point <math alttext="(x_{2},y_{2})" class="ltx_Math" display="inline" id="S3.T2.8.4.4.3.1.1.1.1.m1.2"><semantics id="S3.T2.8.4.4.3.1.1.1.1.m1.2a"><mrow id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.3.cmml"><mo id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.3" stretchy="false" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.3.cmml">(</mo><msub id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.cmml"><mi id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.2" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.2.cmml">x</mi><mn id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.3" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.3.cmml">2</mn></msub><mo id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.4" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.3.cmml">,</mo><msub id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.cmml"><mi id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.2" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.2.cmml">y</mi><mn id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.3" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.5" stretchy="false" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.8.4.4.3.1.1.1.1.m1.2b"><interval closure="open" id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.3.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2"><apply id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.2.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.2">𝑥</ci><cn id="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S3.T2.8.4.4.3.1.1.1.1.m1.1.1.1.1.3">2</cn></apply><apply id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.1.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.2.cmml" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.2">𝑦</ci><cn id="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.3.cmml" type="integer" xref="S3.T2.8.4.4.3.1.1.1.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.4.4.3.1.1.1.1.m1.2c">(x_{2},y_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.4.4.3.1.1.1.1.m1.2d">( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></span></span>
<span class="ltx_tr" id="S3.T2.8.4.4.3.1.1.2">
<span class="ltx_td ltx_align_left" id="S3.T2.8.4.4.3.1.1.2.1" style="padding:0.5pt 2.5pt;">without drawing anything.</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.9.5.5.4" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.9.5.5.4.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="29" id="S3.T2.9.5.5.4.1.g1" src="x3.png" width="81"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.9.9">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.13.9.9.5" style="width:44.1pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.13.9.9.5.1">
<tr class="ltx_tr" id="S3.T2.13.9.9.5.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.5.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.13.9.9.5.1.1.1.1">L</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.9.9.5.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.5.1.2.1" style="padding:0.5pt 2.5pt;">(LineTo)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.11.7.7.2" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.11.7.7.2.2">
<span class="ltx_p" id="S3.T2.11.7.7.2.2.2"><math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.10.6.6.1.1.1.m1.1"><semantics id="S3.T2.10.6.6.1.1.1.m1.1a"><msub id="S3.T2.10.6.6.1.1.1.m1.1.1" xref="S3.T2.10.6.6.1.1.1.m1.1.1.cmml"><mi id="S3.T2.10.6.6.1.1.1.m1.1.1.2" xref="S3.T2.10.6.6.1.1.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.10.6.6.1.1.1.m1.1.1.3" xref="S3.T2.10.6.6.1.1.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.10.6.6.1.1.1.m1.1b"><apply id="S3.T2.10.6.6.1.1.1.m1.1.1.cmml" xref="S3.T2.10.6.6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.10.6.6.1.1.1.m1.1.1.1.cmml" xref="S3.T2.10.6.6.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.10.6.6.1.1.1.m1.1.1.2.cmml" xref="S3.T2.10.6.6.1.1.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.10.6.6.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.10.6.6.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.6.6.1.1.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.6.6.1.1.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.11.7.7.2.2.2.m2.1"><semantics id="S3.T2.11.7.7.2.2.2.m2.1a"><msub id="S3.T2.11.7.7.2.2.2.m2.1.1" xref="S3.T2.11.7.7.2.2.2.m2.1.1.cmml"><mi id="S3.T2.11.7.7.2.2.2.m2.1.1.2" xref="S3.T2.11.7.7.2.2.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.11.7.7.2.2.2.m2.1.1.3" xref="S3.T2.11.7.7.2.2.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.11.7.7.2.2.2.m2.1b"><apply id="S3.T2.11.7.7.2.2.2.m2.1.1.cmml" xref="S3.T2.11.7.7.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.11.7.7.2.2.2.m2.1.1.1.cmml" xref="S3.T2.11.7.7.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.11.7.7.2.2.2.m2.1.1.2.cmml" xref="S3.T2.11.7.7.2.2.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.11.7.7.2.2.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.11.7.7.2.2.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.7.7.2.2.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.7.7.2.2.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.12.8.8.3" style="width:159.3pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.12.8.8.3.1">
<span class="ltx_p" id="S3.T2.12.8.8.3.1.1">Draw a line to the point <math alttext="(x_{2},y_{2})" class="ltx_Math" display="inline" id="S3.T2.12.8.8.3.1.1.m1.2"><semantics id="S3.T2.12.8.8.3.1.1.m1.2a"><mrow id="S3.T2.12.8.8.3.1.1.m1.2.2.2" xref="S3.T2.12.8.8.3.1.1.m1.2.2.3.cmml"><mo id="S3.T2.12.8.8.3.1.1.m1.2.2.2.3" stretchy="false" xref="S3.T2.12.8.8.3.1.1.m1.2.2.3.cmml">(</mo><msub id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.cmml"><mi id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.2" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.2.cmml">x</mi><mn id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.3" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.3.cmml">2</mn></msub><mo id="S3.T2.12.8.8.3.1.1.m1.2.2.2.4" xref="S3.T2.12.8.8.3.1.1.m1.2.2.3.cmml">,</mo><msub id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.cmml"><mi id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.2" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.2.cmml">y</mi><mn id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.3" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.12.8.8.3.1.1.m1.2.2.2.5" stretchy="false" xref="S3.T2.12.8.8.3.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.12.8.8.3.1.1.m1.2b"><interval closure="open" id="S3.T2.12.8.8.3.1.1.m1.2.2.3.cmml" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2"><apply id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.cmml" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.1.cmml" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.2.cmml" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.2">𝑥</ci><cn id="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S3.T2.12.8.8.3.1.1.m1.1.1.1.1.3">2</cn></apply><apply id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.cmml" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.1.cmml" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.2.cmml" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.2">𝑦</ci><cn id="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.3.cmml" type="integer" xref="S3.T2.12.8.8.3.1.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.8.8.3.1.1.m1.2c">(x_{2},y_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.8.8.3.1.1.m1.2d">( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.13.9.9.4" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.13.9.9.4.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="30" id="S3.T2.13.9.9.4.1.g1" src="x4.png" width="109"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.19.19">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.23.19.19.11" style="width:44.1pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.23.19.19.11.1">
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.23.19.19.11.1.1.1.1">C</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.2.1" style="padding:0.5pt 2.5pt;">(Cubic</td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.3.1" style="padding:0.5pt 2.5pt;">Bézier)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.19.15.15.6" style="width:65.4pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.19.15.15.6.6.6">
<tr class="ltx_tr" id="S3.T2.15.11.11.2.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.15.11.11.2.2.2.2.2" style="padding:0.5pt 2.5pt;">
<math alttext="q_{x1}" class="ltx_Math" display="inline" id="S3.T2.14.10.10.1.1.1.1.1.m1.1"><semantics id="S3.T2.14.10.10.1.1.1.1.1.m1.1a"><msub id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2.cmml">q</mi><mrow id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.cmml"><mi id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2.cmml">x</mi><mo id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.14.10.10.1.1.1.1.1.m1.1b"><apply id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2">𝑞</ci><apply id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3"><times id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1"></times><ci id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2">𝑥</ci><cn id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.10.10.1.1.1.1.1.m1.1c">q_{x1}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.10.10.1.1.1.1.1.m1.1d">italic_q start_POSTSUBSCRIPT italic_x 1 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="q_{y1}" class="ltx_Math" display="inline" id="S3.T2.15.11.11.2.2.2.2.2.m2.1"><semantics id="S3.T2.15.11.11.2.2.2.2.2.m2.1a"><msub id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.cmml"><mi id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2.cmml">q</mi><mrow id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.cmml"><mi id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2.cmml">y</mi><mo id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.15.11.11.2.2.2.2.2.m2.1b"><apply id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2">𝑞</ci><apply id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3"><times id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1"></times><ci id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2">𝑦</ci><cn id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3.cmml" type="integer" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.11.11.2.2.2.2.2.m2.1c">q_{y1}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.11.11.2.2.2.2.2.m2.1d">italic_q start_POSTSUBSCRIPT italic_y 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.17.13.13.4.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T2.17.13.13.4.4.4.4.2" style="padding:0.5pt 2.5pt;">
<math alttext="q_{x2}" class="ltx_Math" display="inline" id="S3.T2.16.12.12.3.3.3.3.1.m1.1"><semantics id="S3.T2.16.12.12.3.3.3.3.1.m1.1a"><msub id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.cmml"><mi id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2.cmml">q</mi><mrow id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.cmml"><mi id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2.cmml">x</mi><mo id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.16.12.12.3.3.3.3.1.m1.1b"><apply id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2">𝑞</ci><apply id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3"><times id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1"></times><ci id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2">𝑥</ci><cn id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.12.12.3.3.3.3.1.m1.1c">q_{x2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.12.12.3.3.3.3.1.m1.1d">italic_q start_POSTSUBSCRIPT italic_x 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="q_{y2}" class="ltx_Math" display="inline" id="S3.T2.17.13.13.4.4.4.4.2.m2.1"><semantics id="S3.T2.17.13.13.4.4.4.4.2.m2.1a"><msub id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.cmml"><mi id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2.cmml">q</mi><mrow id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.cmml"><mi id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2.cmml">y</mi><mo id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.17.13.13.4.4.4.4.2.m2.1b"><apply id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1">subscript</csymbol><ci id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2">𝑞</ci><apply id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3"><times id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1"></times><ci id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2">𝑦</ci><cn id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3.cmml" type="integer" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.13.13.4.4.4.4.2.m2.1c">q_{y2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.13.13.4.4.4.4.2.m2.1d">italic_q start_POSTSUBSCRIPT italic_y 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.19.15.15.6.6.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.19.15.15.6.6.6.6.2" style="padding:0.5pt 2.5pt;">
<math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.18.14.14.5.5.5.5.1.m1.1"><semantics id="S3.T2.18.14.14.5.5.5.5.1.m1.1a"><msub id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.cmml"><mi id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.18.14.14.5.5.5.5.1.m1.1b"><apply id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.1.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.14.14.5.5.5.5.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.14.14.5.5.5.5.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.19.15.15.6.6.6.6.2.m2.1"><semantics id="S3.T2.19.15.15.6.6.6.6.2.m2.1a"><msub id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.cmml"><mi id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.19.15.15.6.6.6.6.2.m2.1b"><apply id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.1.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1">subscript</csymbol><ci id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.15.15.6.6.6.6.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.15.15.6.6.6.6.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.22.18.18.9" style="width:159.3pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.22.18.18.9.3.3">
<tr class="ltx_tr" id="S3.T2.22.18.18.9.3.3.4">
<td class="ltx_td ltx_align_left" id="S3.T2.22.18.18.9.3.3.4.1" style="padding:0.5pt 2.5pt;">Draw a cubic Bézier curve with control</td>
</tr>
<tr class="ltx_tr" id="S3.T2.21.17.17.8.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.21.17.17.8.2.2.2.2" style="padding:0.5pt 2.5pt;">points <math alttext="(q_{x1},q_{y1})" class="ltx_Math" display="inline" id="S3.T2.20.16.16.7.1.1.1.1.m1.2"><semantics id="S3.T2.20.16.16.7.1.1.1.1.m1.2a"><mrow id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.3.cmml"><mo id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.3" stretchy="false" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.3.cmml">(</mo><msub id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.cmml"><mi id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.2.cmml">q</mi><mrow id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.cmml"><mi id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.2.cmml">x</mi><mo id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.1" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.3" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.3.cmml">1</mn></mrow></msub><mo id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.4" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.3.cmml">,</mo><msub id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.cmml"><mi id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.2.cmml">q</mi><mrow id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.cmml"><mi id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.2" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.2.cmml">y</mi><mo id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.1" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><mn id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.3" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.3.cmml">1</mn></mrow></msub><mo id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.5" stretchy="false" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.20.16.16.7.1.1.1.1.m1.2b"><interval closure="open" id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.3.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2"><apply id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.2.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.2">𝑞</ci><apply id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3"><times id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.1.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.1"></times><ci id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.2.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.2">𝑥</ci><cn id="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.3.cmml" type="integer" xref="S3.T2.20.16.16.7.1.1.1.1.m1.1.1.1.1.3.3">1</cn></apply></apply><apply id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.1.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.2.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.2">𝑞</ci><apply id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3"><times id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.1.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.1"></times><ci id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.2.cmml" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.2">𝑦</ci><cn id="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.3.cmml" type="integer" xref="S3.T2.20.16.16.7.1.1.1.1.m1.2.2.2.2.3.3">1</cn></apply></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.20.16.16.7.1.1.1.1.m1.2c">(q_{x1},q_{y1})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.20.16.16.7.1.1.1.1.m1.2d">( italic_q start_POSTSUBSCRIPT italic_x 1 end_POSTSUBSCRIPT , italic_q start_POSTSUBSCRIPT italic_y 1 end_POSTSUBSCRIPT )</annotation></semantics></math>, <math alttext="(q_{x2},q_{y2})" class="ltx_Math" display="inline" id="S3.T2.21.17.17.8.2.2.2.2.m2.2"><semantics id="S3.T2.21.17.17.8.2.2.2.2.m2.2a"><mrow id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.3.cmml"><mo id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.3" stretchy="false" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.3.cmml">(</mo><msub id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.cmml"><mi id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.2.cmml">q</mi><mrow id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.cmml"><mi id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.2.cmml">x</mi><mo id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.1" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.3" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.3.cmml">2</mn></mrow></msub><mo id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.4" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.3.cmml">,</mo><msub id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.cmml"><mi id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.2.cmml">q</mi><mrow id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.cmml"><mi id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.2" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.2.cmml">y</mi><mo id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.1" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.1.cmml">⁢</mo><mn id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.3" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.3.cmml">2</mn></mrow></msub><mo id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.5" stretchy="false" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.21.17.17.8.2.2.2.2.m2.2b"><interval closure="open" id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.3.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2"><apply id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.1.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1">subscript</csymbol><ci id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.2.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.2">𝑞</ci><apply id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3"><times id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.1.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.1"></times><ci id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.2.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.2">𝑥</ci><cn id="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.3.cmml" type="integer" xref="S3.T2.21.17.17.8.2.2.2.2.m2.1.1.1.1.3.3">2</cn></apply></apply><apply id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.1.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2">subscript</csymbol><ci id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.2.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.2">𝑞</ci><apply id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3"><times id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.1.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.1"></times><ci id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.2.cmml" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.2">𝑦</ci><cn id="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.3.cmml" type="integer" xref="S3.T2.21.17.17.8.2.2.2.2.m2.2.2.2.2.3.3">2</cn></apply></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.21.17.17.8.2.2.2.2.m2.2c">(q_{x2},q_{y2})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.21.17.17.8.2.2.2.2.m2.2d">( italic_q start_POSTSUBSCRIPT italic_x 2 end_POSTSUBSCRIPT , italic_q start_POSTSUBSCRIPT italic_y 2 end_POSTSUBSCRIPT )</annotation></semantics></math> and end-point</td>
</tr>
<tr class="ltx_tr" id="S3.T2.22.18.18.9.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T2.22.18.18.9.3.3.3.1" style="padding:0.5pt 2.5pt;">
<math alttext="(x_{2},y_{2})" class="ltx_Math" display="inline" id="S3.T2.22.18.18.9.3.3.3.1.m1.2"><semantics id="S3.T2.22.18.18.9.3.3.3.1.m1.2a"><mrow id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.3.cmml"><mo id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.3" stretchy="false" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.3.cmml">(</mo><msub id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.cmml"><mi id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.2" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.2.cmml">x</mi><mn id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.3" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.3.cmml">2</mn></msub><mo id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.4" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.3.cmml">,</mo><msub id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.cmml"><mi id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.2" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.2.cmml">y</mi><mn id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.3" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.5" stretchy="false" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.22.18.18.9.3.3.3.1.m1.2b"><interval closure="open" id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.3.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2"><apply id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.1.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.2.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.2">𝑥</ci><cn id="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.3.cmml" type="integer" xref="S3.T2.22.18.18.9.3.3.3.1.m1.1.1.1.1.3">2</cn></apply><apply id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.1.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.2.cmml" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.2">𝑦</ci><cn id="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.3.cmml" type="integer" xref="S3.T2.22.18.18.9.3.3.3.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.22.18.18.9.3.3.3.1.m1.2c">(x_{2},y_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.22.18.18.9.3.3.3.1.m1.2d">( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.23.19.19.10" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.23.19.19.10.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="73" id="S3.T2.23.19.19.10.1.g1" src="x5.png" width="163"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.37.33.33">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.37.33.33.15" style="width:44.1pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.37.33.33.15.1">
<tr class="ltx_tr" id="S3.T2.37.33.33.15.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.37.33.33.15.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.37.33.33.15.1.1.1.1">A</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.37.33.33.15.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.37.33.33.15.1.2.1" style="padding:0.5pt 2.5pt;">(Elliptical</td>
</tr>
<tr class="ltx_tr" id="S3.T2.37.33.33.15.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.37.33.33.15.1.3.1" style="padding:0.5pt 2.5pt;">Arc)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.30.26.26.7" style="width:65.4pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.30.26.26.7.7.7">
<tr class="ltx_tr" id="S3.T2.25.21.21.2.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.25.21.21.2.2.2.2.2" style="padding:0.5pt 2.5pt;">
<math alttext="r_{x}" class="ltx_Math" display="inline" id="S3.T2.24.20.20.1.1.1.1.1.m1.1"><semantics id="S3.T2.24.20.20.1.1.1.1.1.m1.1a"><msub id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.2" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.2.cmml">r</mi><mi id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.3" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.24.20.20.1.1.1.1.1.m1.1b"><apply id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.2">𝑟</ci><ci id="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.24.20.20.1.1.1.1.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.24.20.20.1.1.1.1.1.m1.1c">r_{x}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.24.20.20.1.1.1.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="r_{y}" class="ltx_Math" display="inline" id="S3.T2.25.21.21.2.2.2.2.2.m2.1"><semantics id="S3.T2.25.21.21.2.2.2.2.2.m2.1a"><msub id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.cmml"><mi id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.2" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.2.cmml">r</mi><mi id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.3" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.25.21.21.2.2.2.2.2.m2.1b"><apply id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.cmml" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.1.cmml" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.2.cmml" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.2">𝑟</ci><ci id="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.3.cmml" xref="S3.T2.25.21.21.2.2.2.2.2.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.25.21.21.2.2.2.2.2.m2.1c">r_{y}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.25.21.21.2.2.2.2.2.m2.1d">italic_r start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.28.24.24.5.5.5.5">
<td class="ltx_td ltx_align_left" id="S3.T2.28.24.24.5.5.5.5.3" style="padding:0.5pt 2.5pt;">
<math alttext="\varphi" class="ltx_Math" display="inline" id="S3.T2.26.22.22.3.3.3.3.1.m1.1"><semantics id="S3.T2.26.22.22.3.3.3.3.1.m1.1a"><mi id="S3.T2.26.22.22.3.3.3.3.1.m1.1.1" xref="S3.T2.26.22.22.3.3.3.3.1.m1.1.1.cmml">φ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.26.22.22.3.3.3.3.1.m1.1b"><ci id="S3.T2.26.22.22.3.3.3.3.1.m1.1.1.cmml" xref="S3.T2.26.22.22.3.3.3.3.1.m1.1.1">𝜑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.26.22.22.3.3.3.3.1.m1.1c">\varphi</annotation><annotation encoding="application/x-llamapun" id="S3.T2.26.22.22.3.3.3.3.1.m1.1d">italic_φ</annotation></semantics></math>, <math alttext="f_{A}" class="ltx_Math" display="inline" id="S3.T2.27.23.23.4.4.4.4.2.m2.1"><semantics id="S3.T2.27.23.23.4.4.4.4.2.m2.1a"><msub id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.cmml"><mi id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.2" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.2.cmml">f</mi><mi id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.3" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.3.cmml">A</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.27.23.23.4.4.4.4.2.m2.1b"><apply id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.cmml" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.1.cmml" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1">subscript</csymbol><ci id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.2.cmml" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.2">𝑓</ci><ci id="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.3.cmml" xref="S3.T2.27.23.23.4.4.4.4.2.m2.1.1.3">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.27.23.23.4.4.4.4.2.m2.1c">f_{A}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.27.23.23.4.4.4.4.2.m2.1d">italic_f start_POSTSUBSCRIPT italic_A end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="f_{S}" class="ltx_Math" display="inline" id="S3.T2.28.24.24.5.5.5.5.3.m3.1"><semantics id="S3.T2.28.24.24.5.5.5.5.3.m3.1a"><msub id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.cmml"><mi id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.2" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.2.cmml">f</mi><mi id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.3" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.3.cmml">S</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.28.24.24.5.5.5.5.3.m3.1b"><apply id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.cmml" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1"><csymbol cd="ambiguous" id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.1.cmml" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1">subscript</csymbol><ci id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.2.cmml" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.2">𝑓</ci><ci id="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.3.cmml" xref="S3.T2.28.24.24.5.5.5.5.3.m3.1.1.3">𝑆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.28.24.24.5.5.5.5.3.m3.1c">f_{S}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.28.24.24.5.5.5.5.3.m3.1d">italic_f start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.30.26.26.7.7.7.7">
<td class="ltx_td ltx_align_left" id="S3.T2.30.26.26.7.7.7.7.2" style="padding:0.5pt 2.5pt;">
<math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.29.25.25.6.6.6.6.1.m1.1"><semantics id="S3.T2.29.25.25.6.6.6.6.1.m1.1a"><msub id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.cmml"><mi id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.2" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.3" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.29.25.25.6.6.6.6.1.m1.1b"><apply id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.cmml" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.1.cmml" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1">subscript</csymbol><ci id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.2.cmml" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.29.25.25.6.6.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.29.25.25.6.6.6.6.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.29.25.25.6.6.6.6.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.30.26.26.7.7.7.7.2.m2.1"><semantics id="S3.T2.30.26.26.7.7.7.7.2.m2.1a"><msub id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.cmml"><mi id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.2" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.3" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.30.26.26.7.7.7.7.2.m2.1b"><apply id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.cmml" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.1.cmml" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1">subscript</csymbol><ci id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.2.cmml" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.30.26.26.7.7.7.7.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.30.26.26.7.7.7.7.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.30.26.26.7.7.7.7.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.36.32.32.13" style="width:159.3pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.36.32.32.13.6.6">
<tr class="ltx_tr" id="S3.T2.32.28.28.9.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.32.28.28.9.2.2.2.2" style="padding:0.5pt 2.5pt;">Draw an elliptical arc with radii <math alttext="r_{x}" class="ltx_Math" display="inline" id="S3.T2.31.27.27.8.1.1.1.1.m1.1"><semantics id="S3.T2.31.27.27.8.1.1.1.1.m1.1a"><msub id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.2" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.2.cmml">r</mi><mi id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.3" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.31.27.27.8.1.1.1.1.m1.1b"><apply id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.cmml" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.2">𝑟</ci><ci id="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.31.27.27.8.1.1.1.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.31.27.27.8.1.1.1.1.m1.1c">r_{x}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.31.27.27.8.1.1.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> and <math alttext="r_{y}" class="ltx_Math" display="inline" id="S3.T2.32.28.28.9.2.2.2.2.m2.1"><semantics id="S3.T2.32.28.28.9.2.2.2.2.m2.1a"><msub id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.cmml"><mi id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.2" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.2.cmml">r</mi><mi id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.3" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.32.28.28.9.2.2.2.2.m2.1b"><apply id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.cmml" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.1.cmml" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.2.cmml" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.2">𝑟</ci><ci id="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.3.cmml" xref="S3.T2.32.28.28.9.2.2.2.2.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.32.28.28.9.2.2.2.2.m2.1c">r_{y}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.32.28.28.9.2.2.2.2.m2.1d">italic_r start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.36.32.32.13.6.6.7">
<td class="ltx_td ltx_align_left" id="S3.T2.36.32.32.13.6.6.7.1" style="padding:0.5pt 2.5pt;">(semi-major and semi-minor axes),</td>
</tr>
<tr class="ltx_tr" id="S3.T2.33.29.29.10.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T2.33.29.29.10.3.3.3.1" style="padding:0.5pt 2.5pt;">rotated by angle <math alttext="\varphi" class="ltx_Math" display="inline" id="S3.T2.33.29.29.10.3.3.3.1.m1.1"><semantics id="S3.T2.33.29.29.10.3.3.3.1.m1.1a"><mi id="S3.T2.33.29.29.10.3.3.3.1.m1.1.1" xref="S3.T2.33.29.29.10.3.3.3.1.m1.1.1.cmml">φ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.33.29.29.10.3.3.3.1.m1.1b"><ci id="S3.T2.33.29.29.10.3.3.3.1.m1.1.1.cmml" xref="S3.T2.33.29.29.10.3.3.3.1.m1.1.1">𝜑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.33.29.29.10.3.3.3.1.m1.1c">\varphi</annotation><annotation encoding="application/x-llamapun" id="S3.T2.33.29.29.10.3.3.3.1.m1.1d">italic_φ</annotation></semantics></math> to the x-axis,</td>
</tr>
<tr class="ltx_tr" id="S3.T2.36.32.32.13.6.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.36.32.32.13.6.6.6.3" style="padding:0.5pt 2.5pt;">and end-point (<math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.34.30.30.11.4.4.4.1.m1.1"><semantics id="S3.T2.34.30.30.11.4.4.4.1.m1.1a"><msub id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.cmml"><mi id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.2" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.3" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.34.30.30.11.4.4.4.1.m1.1b"><apply id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.cmml" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.1.cmml" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1">subscript</csymbol><ci id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.2.cmml" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.34.30.30.11.4.4.4.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.34.30.30.11.4.4.4.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.34.30.30.11.4.4.4.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.35.31.31.12.5.5.5.2.m2.1"><semantics id="S3.T2.35.31.31.12.5.5.5.2.m2.1a"><msub id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.cmml"><mi id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.2" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.3" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.35.31.31.12.5.5.5.2.m2.1b"><apply id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.cmml" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.1.cmml" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1">subscript</csymbol><ci id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.2.cmml" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.35.31.31.12.5.5.5.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.35.31.31.12.5.5.5.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.35.31.31.12.5.5.5.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>).
<math alttext="(x_{2},y_{2})" class="ltx_Math" display="inline" id="S3.T2.36.32.32.13.6.6.6.3.m3.2"><semantics id="S3.T2.36.32.32.13.6.6.6.3.m3.2a"><mrow id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.3.cmml"><mo id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.3" stretchy="false" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.3.cmml">(</mo><msub id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.cmml"><mi id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.2" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.2.cmml">x</mi><mn id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.3" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.3.cmml">2</mn></msub><mo id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.4" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.3.cmml">,</mo><msub id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.cmml"><mi id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.2" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.2.cmml">y</mi><mn id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.3" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.5" stretchy="false" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.36.32.32.13.6.6.6.3.m3.2b"><interval closure="open" id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.3.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2"><apply id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.1.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1">subscript</csymbol><ci id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.2.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.2">𝑥</ci><cn id="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.3.cmml" type="integer" xref="S3.T2.36.32.32.13.6.6.6.3.m3.1.1.1.1.3">2</cn></apply><apply id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.1.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2">subscript</csymbol><ci id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.2.cmml" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.2">𝑦</ci><cn id="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.3.cmml" type="integer" xref="S3.T2.36.32.32.13.6.6.6.3.m3.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.36.32.32.13.6.6.6.3.m3.2c">(x_{2},y_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.36.32.32.13.6.6.6.3.m3.2d">( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.37.33.33.14" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.37.33.33.14.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="150" id="S3.T2.37.33.33.14.1.g1" src="x6.png" width="163"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.40.36.36">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.40.36.36.4" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.40.36.36.4.1">
<span class="ltx_p" id="S3.T2.40.36.36.4.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T2.40.36.36.4.1.1.1">Z</span> (ClosePath)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.38.34.34.1" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.38.34.34.1.1">
<span class="ltx_p" id="S3.T2.38.34.34.1.1.1"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S3.T2.38.34.34.1.1.1.m1.1"><semantics id="S3.T2.38.34.34.1.1.1.m1.1a"><mi id="S3.T2.38.34.34.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T2.38.34.34.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S3.T2.38.34.34.1.1.1.m1.1b"><emptyset id="S3.T2.38.34.34.1.1.1.m1.1.1.cmml" xref="S3.T2.38.34.34.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.38.34.34.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S3.T2.38.34.34.1.1.1.m1.1d">∅</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.39.35.35.2" style="width:159.3pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.39.35.35.2.1.1">
<tr class="ltx_tr" id="S3.T2.39.35.35.2.1.1.2">
<td class="ltx_td ltx_align_left" id="S3.T2.39.35.35.2.1.1.2.1" style="padding:0.5pt 2.5pt;">Close the path by moving the cursor back</td>
</tr>
<tr class="ltx_tr" id="S3.T2.39.35.35.2.1.1.1">
<td class="ltx_td ltx_align_left" id="S3.T2.39.35.35.2.1.1.1.1" style="padding:0.5pt 2.5pt;">to the path’s starting position <math alttext="(x_{0},y_{0})" class="ltx_Math" display="inline" id="S3.T2.39.35.35.2.1.1.1.1.m1.2"><semantics id="S3.T2.39.35.35.2.1.1.1.1.m1.2a"><mrow id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.3.cmml"><mo id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.3" stretchy="false" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.3.cmml">(</mo><msub id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.cmml"><mi id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.2" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.2.cmml">x</mi><mn id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.3" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.3.cmml">0</mn></msub><mo id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.4" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.3.cmml">,</mo><msub id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.cmml"><mi id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.2" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.2.cmml">y</mi><mn id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.3" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.3.cmml">0</mn></msub><mo id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.5" stretchy="false" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.39.35.35.2.1.1.1.1.m1.2b"><interval closure="open" id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.3.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2"><apply id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.2.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.2">𝑥</ci><cn id="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S3.T2.39.35.35.2.1.1.1.1.m1.1.1.1.1.3">0</cn></apply><apply id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.1.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.2.cmml" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.2">𝑦</ci><cn id="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.3.cmml" type="integer" xref="S3.T2.39.35.35.2.1.1.1.1.m1.2.2.2.2.3">0</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.39.35.35.2.1.1.1.1.m1.2c">(x_{0},y_{0})</annotation><annotation encoding="application/x-llamapun" id="S3.T2.39.35.35.2.1.1.1.1.m1.2d">( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT )</annotation></semantics></math>.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.40.36.36.3" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.40.36.36.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="32" id="S3.T2.40.36.36.3.1.g1" src="x7.png" width="71"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.43.39.41">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.43.39.41.1" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.41.1.1">
<span class="ltx_p" id="S3.T2.43.39.41.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T2.43.39.41.1.1.1.1">F</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.43.39.41.2" style="width:65.4pt;padding:0.5pt 2.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.43.39.41.3" style="width:159.3pt;padding:0.5pt 2.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.43.39.41.4" style="width:111.0pt;padding:0.5pt 2.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.42.38.38">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.42.38.38.3" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.42.38.38.3.1">
<span class="ltx_p" id="S3.T2.42.38.38.3.1.1">(Fill)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.41.37.37.1" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.41.37.37.1.1">
<span class="ltx_p" id="S3.T2.41.37.37.1.1.1"><math alttext="fill" class="ltx_Math" display="inline" id="S3.T2.41.37.37.1.1.1.m1.1"><semantics id="S3.T2.41.37.37.1.1.1.m1.1a"><mrow id="S3.T2.41.37.37.1.1.1.m1.1.1" xref="S3.T2.41.37.37.1.1.1.m1.1.1.cmml"><mi id="S3.T2.41.37.37.1.1.1.m1.1.1.2" xref="S3.T2.41.37.37.1.1.1.m1.1.1.2.cmml">f</mi><mo id="S3.T2.41.37.37.1.1.1.m1.1.1.1" xref="S3.T2.41.37.37.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.41.37.37.1.1.1.m1.1.1.3" xref="S3.T2.41.37.37.1.1.1.m1.1.1.3.cmml">i</mi><mo id="S3.T2.41.37.37.1.1.1.m1.1.1.1a" xref="S3.T2.41.37.37.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.41.37.37.1.1.1.m1.1.1.4" xref="S3.T2.41.37.37.1.1.1.m1.1.1.4.cmml">l</mi><mo id="S3.T2.41.37.37.1.1.1.m1.1.1.1b" xref="S3.T2.41.37.37.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.41.37.37.1.1.1.m1.1.1.5" xref="S3.T2.41.37.37.1.1.1.m1.1.1.5.cmml">l</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.41.37.37.1.1.1.m1.1b"><apply id="S3.T2.41.37.37.1.1.1.m1.1.1.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1"><times id="S3.T2.41.37.37.1.1.1.m1.1.1.1.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1.1"></times><ci id="S3.T2.41.37.37.1.1.1.m1.1.1.2.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1.2">𝑓</ci><ci id="S3.T2.41.37.37.1.1.1.m1.1.1.3.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1.3">𝑖</ci><ci id="S3.T2.41.37.37.1.1.1.m1.1.1.4.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1.4">𝑙</ci><ci id="S3.T2.41.37.37.1.1.1.m1.1.1.5.cmml" xref="S3.T2.41.37.37.1.1.1.m1.1.1.5">𝑙</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.41.37.37.1.1.1.m1.1c">fill</annotation><annotation encoding="application/x-llamapun" id="S3.T2.41.37.37.1.1.1.m1.1d">italic_f italic_i italic_l italic_l</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.42.38.38.4" style="width:159.3pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.42.38.38.4.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.42.38.38.4.1.1">
<span class="ltx_tr" id="S3.T2.42.38.38.4.1.1.1">
<span class="ltx_td ltx_align_left" id="S3.T2.42.38.38.4.1.1.1.1" style="padding:0.5pt 2.5pt;">Draw the fill attribute of the path.</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.42.38.38.2" style="width:111.0pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.42.38.38.2.1">
<span class="ltx_p" id="S3.T2.42.38.38.2.1.1"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S3.T2.42.38.38.2.1.1.m1.1"><semantics id="S3.T2.42.38.38.2.1.1.m1.1a"><mi id="S3.T2.42.38.38.2.1.1.m1.1.1" mathvariant="normal" xref="S3.T2.42.38.38.2.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S3.T2.42.38.38.2.1.1.m1.1b"><emptyset id="S3.T2.42.38.38.2.1.1.m1.1.1.cmml" xref="S3.T2.42.38.38.2.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.42.38.38.2.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S3.T2.42.38.38.2.1.1.m1.1d">∅</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.43.39.39">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.43.39.39.2" style="width:44.1pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.39.2.1">
<span class="ltx_p" id="S3.T2.43.39.39.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T2.43.39.39.2.1.1.1">&lt;EOS&gt;</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.43.39.39.1" style="width:65.4pt;padding:0.5pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.43.39.39.1.1">
<span class="ltx_p" id="S3.T2.43.39.39.1.1.1"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S3.T2.43.39.39.1.1.1.m1.1"><semantics id="S3.T2.43.39.39.1.1.1.m1.1a"><mi id="S3.T2.43.39.39.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T2.43.39.39.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S3.T2.43.39.39.1.1.1.m1.1b"><emptyset id="S3.T2.43.39.39.1.1.1.m1.1.1.cmml" xref="S3.T2.43.39.39.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.43.39.39.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S3.T2.43.39.39.1.1.1.m1.1d">∅</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.43.39.39.3" style="width:159.3pt;padding:0.5pt 2.5pt;">
<table class="ltx_tabular ltx_align_top" id="S3.T2.43.39.39.3.1">
<tr class="ltx_tr" id="S3.T2.43.39.39.3.1.1">
<td class="ltx_td ltx_align_left" id="S3.T2.43.39.39.3.1.1.1" style="padding:0.5pt 2.5pt;">’End-of-SVG’ token.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T2.43.39.39.4" style="width:111.0pt;padding:0.5pt 2.5pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the simplified SVG commands used in the OmniSVG model, along with their arguments and visual representations.  The commands are fundamental drawing instructions, such as moving to a point, drawing a line, creating Bézier curves, or drawing elliptical arcs. The table shows how these commands are used to construct more complex shapes within the SVG format.  Importantly, it explains that the starting point of each command is implicitly determined by the ending point of the preceding command, showing how the commands are sequentially chained to build shapes.
> <details>
> <summary>read the caption</summary>
> Table 2: SVG draw-commands. Draw commands used in this work along with their arguments and a visualization are listed. The start-position (x1(x_{1}( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT, y1)y_{1})italic_y start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ) is implicitly defined as the end-position of the preceding command.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.5.1.1.3.1">
<tr class="ltx_tr" id="S3.T2.5.1.1.3.1.1">
<td class="ltx_td ltx_align_left" id="S3.T2.5.1.1.3.1.1.1" style="padding:0.5pt 2.5pt;">’Start-of-Path’ token.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of OmniSVG against state-of-the-art baselines for text-to-SVG and image-to-SVG tasks.  The table uses several metrics to assess performance on three datasets of varying complexity (MMSVG-Icon, MMSVG-Illustration, MMSVG-Character).  Key metrics include FID, CLIP, Aesthetic, HPS, DINO, SSIM, LPIPS, and MSE, evaluating aspects like visual fidelity, text/image alignment, and aesthetic appeal.  The best and second-best results for each metric and dataset are highlighted, demonstrating OmniSVG's superior performance. Notably, the table shows that a competitive baseline, StarVector (8B), fails to produce SVGs of comparable quality and complexity on the challenging MMSVG-Character dataset. 
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative Evaluations. Quantitative results between OmniSVG and current state-of-the-art text-to-SVG and image-to-SVG baseline methods. The bold numbers and underlined numbers represents the best and second best performance repectively. Our OmniSVG model demonstrates superior performance compared SOTA SVG generation baselines. StarVector(8B) fails to generate complex SVGs when evaluated in the complex MMSVG-Character dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.9.5.5.5.1">
<tr class="ltx_tr" id="S3.T2.9.5.5.5.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.9.5.5.5.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.9.5.5.5.1.1.1.1">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.5.5.5.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.9.5.5.5.1.2.1" style="padding:0.5pt 2.5pt;">(MoveTo)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of different SVG parameterization strategies.  It compares the performance of four approaches: one with no parameterization, one without color parameters, one without coordinate parameters, and one with both color and coordinate parameters (OmniSVG's approach). The comparison is based on various metrics for both text-to-SVG and image-to-SVG tasks, such as FID, CLIP, Aesthetic, HPS, DINO, SSIM, LPIPS, and MSE, allowing for a comprehensive evaluation of the impact of different parameterization choices on SVG generation quality and efficiency. The number of tokens used by each approach is also listed.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative study on SVG parameterization. Ablation studies on color parametrization (abbreviated as color param.) and coordinate paramterization (abbreviated as coord param.) are conducted.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.13.9.9.5.1">
<tr class="ltx_tr" id="S3.T2.13.9.9.5.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.5.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.13.9.9.5.1.1.1.1">L</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.9.9.5.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.13.9.9.5.1.2.1" style="padding:0.5pt 2.5pt;">(LineTo)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of model size on the quality of generated samples in the OmniSVG model.  It shows the performance metrics (FID, CLIP, Aesthetic, HPS, DINO, SSIM, LPIPS, MSE) across different model sizes (223M, 770M, 3B, 3.94B, 3.7B, 8.3B parameters) for both text-to-SVG and image-to-SVG tasks. The results demonstrate that as the model size increases, the quality of the generated SVG samples generally improves, as indicated by better scores across most metrics.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation of the model size. As the model size grows, the generated samples are of higher quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.23.19.19.11.1">
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.1">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S3.T2.23.19.19.11.1.1.1.1">C</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.2.1" style="padding:0.5pt 2.5pt;">(Cubic</td>
</tr>
<tr class="ltx_tr" id="S3.T2.23.19.19.11.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.23.19.19.11.1.3.1" style="padding:0.5pt 2.5pt;">Bézier)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on different Vision-Language Model (VLM) architectures used in OmniSVG for SVG generation.  The goal was to determine which architecture performs best for generating SVGs from text and image inputs.  Three different VLMs (CLIP ViT-B/32, VQGAN, and Qwen2.5-VL) were compared against the Qwen2.5-VL architecture used in the main OmniSVG model.  The models were trained on the MMSVG-Illustration dataset, and their performance was evaluated using standard metrics for SVG generation.  The results show that the Qwen2.5-VL architecture achieved the best performance overall.
> <details>
> <summary>read the caption</summary>
> Table 6:  Ablation of the VLM architecture. we ablate the VLM architecture by replacing it with the LLM architecture with the image encoder, including the CLIP ViT-B/32 [33], VQGAN [12], and the Qwen2.5-VL [1] we use in OmniSVG. We experiment with training experiments on the MMSVG-Illustration dataset. Qwen2.5-VL architecture gives the best results on all metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S3.T2.19.15.15.6.6.6">
<tr class="ltx_tr" id="S3.T2.15.11.11.2.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T2.15.11.11.2.2.2.2.2" style="padding:0.5pt 2.5pt;">
<math alttext="q_{x1}" class="ltx_Math" display="inline" id="S3.T2.14.10.10.1.1.1.1.1.m1.1"><semantics id="S3.T2.14.10.10.1.1.1.1.1.m1.1a"><msub id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2.cmml">q</mi><mrow id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.cmml"><mi id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2.cmml">x</mi><mo id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.14.10.10.1.1.1.1.1.m1.1b"><apply id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.2">𝑞</ci><apply id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3"><times id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.1"></times><ci id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2.cmml" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.2">𝑥</ci><cn id="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T2.14.10.10.1.1.1.1.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.10.10.1.1.1.1.1.m1.1c">q_{x1}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.10.10.1.1.1.1.1.m1.1d">italic_q start_POSTSUBSCRIPT italic_x 1 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="q_{y1}" class="ltx_Math" display="inline" id="S3.T2.15.11.11.2.2.2.2.2.m2.1"><semantics id="S3.T2.15.11.11.2.2.2.2.2.m2.1a"><msub id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.cmml"><mi id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2.cmml">q</mi><mrow id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.cmml"><mi id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2.cmml">y</mi><mo id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.15.11.11.2.2.2.2.2.m2.1b"><apply id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1">subscript</csymbol><ci id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.2">𝑞</ci><apply id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3"><times id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.1"></times><ci id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2.cmml" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.2">𝑦</ci><cn id="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3.cmml" type="integer" xref="S3.T2.15.11.11.2.2.2.2.2.m2.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.11.11.2.2.2.2.2.m2.1c">q_{y1}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.11.11.2.2.2.2.2.m2.1d">italic_q start_POSTSUBSCRIPT italic_y 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.17.13.13.4.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T2.17.13.13.4.4.4.4.2" style="padding:0.5pt 2.5pt;">
<math alttext="q_{x2}" class="ltx_Math" display="inline" id="S3.T2.16.12.12.3.3.3.3.1.m1.1"><semantics id="S3.T2.16.12.12.3.3.3.3.1.m1.1a"><msub id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.cmml"><mi id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2.cmml">q</mi><mrow id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.cmml"><mi id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2.cmml">x</mi><mo id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.16.12.12.3.3.3.3.1.m1.1b"><apply id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.2">𝑞</ci><apply id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3"><times id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.1"></times><ci id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2.cmml" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.2">𝑥</ci><cn id="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T2.16.12.12.3.3.3.3.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.12.12.3.3.3.3.1.m1.1c">q_{x2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.12.12.3.3.3.3.1.m1.1d">italic_q start_POSTSUBSCRIPT italic_x 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="q_{y2}" class="ltx_Math" display="inline" id="S3.T2.17.13.13.4.4.4.4.2.m2.1"><semantics id="S3.T2.17.13.13.4.4.4.4.2.m2.1a"><msub id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.cmml"><mi id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2.cmml">q</mi><mrow id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.cmml"><mi id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2.cmml">y</mi><mo id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1.cmml">⁢</mo><mn id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.17.13.13.4.4.4.4.2.m2.1b"><apply id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1">subscript</csymbol><ci id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.2">𝑞</ci><apply id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3"><times id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.1"></times><ci id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2.cmml" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.2">𝑦</ci><cn id="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3.cmml" type="integer" xref="S3.T2.17.13.13.4.4.4.4.2.m2.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.13.13.4.4.4.4.2.m2.1c">q_{y2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.13.13.4.4.4.4.2.m2.1d">italic_q start_POSTSUBSCRIPT italic_y 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.19.15.15.6.6.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.19.15.15.6.6.6.6.2" style="padding:0.5pt 2.5pt;">
<math alttext="x_{2}" class="ltx_Math" display="inline" id="S3.T2.18.14.14.5.5.5.5.1.m1.1"><semantics id="S3.T2.18.14.14.5.5.5.5.1.m1.1a"><msub id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.cmml"><mi id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2.cmml">x</mi><mn id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.18.14.14.5.5.5.5.1.m1.1b"><apply id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.1.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2.cmml" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.2">𝑥</ci><cn id="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.18.14.14.5.5.5.5.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.14.14.5.5.5.5.1.m1.1c">x_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.14.14.5.5.5.5.1.m1.1d">italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>, <math alttext="y_{2}" class="ltx_Math" display="inline" id="S3.T2.19.15.15.6.6.6.6.2.m2.1"><semantics id="S3.T2.19.15.15.6.6.6.6.2.m2.1a"><msub id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.cmml"><mi id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2.cmml">y</mi><mn id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.19.15.15.6.6.6.6.2.m2.1b"><apply id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1"><csymbol cd="ambiguous" id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.1.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1">subscript</csymbol><ci id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2.cmml" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.2">𝑦</ci><cn id="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3.cmml" type="integer" xref="S3.T2.19.15.15.6.6.6.6.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.15.15.6.6.6.6.2.m2.1c">y_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.15.15.6.6.6.6.2.m2.1d">italic_y start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing OmniSVG's performance against several baseline methods in terms of user preference, vividness of generated SVGs, and alignment between generated SVGs and input text or image prompts.  The study involved human participants rating the outputs of different methods.  Each method received scores for preference (how much users preferred it), vividness (how visually appealing and lively the SVGs were), and alignment (how well the SVG matched the input instructions).  OmniSVG consistently achieved the highest scores across all three metrics, indicating it produces SVGs that are more visually appealing, more closely match the input, and are more preferred by users overall.
> <details>
> <summary>read the caption</summary>
> Table 7: User Study of OmniSVG and baselines. Our OmniSVG achieves the user preference among the baselines.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06263/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06263/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}