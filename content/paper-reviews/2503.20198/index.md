---
title: "Beyond Words: Advancing Long-Text Image Generation via Multimodal Autoregressive Models"
summary: "LongTextAR advances long-text image generation via a novel tokenizer, enabling accurate, controllable, and high-fidelity text rendering in images."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Central South University",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20198 {{< /keyword >}}
{{< keyword icon="writer" >}} Alex Jinpeng Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20198" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20198" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20198/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent models struggle with generating coherent, long-form text in images. Existing text-to-image systems are limited to brief phrases or sentences. **This paper identifies the image tokenizer as a key bottleneck in text generating quality**. State-of-the-art autoregressive generation models need improvement in handling complex or lengthy text inputs, particularly regarding codebook embedding limitations. Existing methods render longer text but lack font control and support limited token lengths.



**LongTextAR, a multi-modal autoregressive model, excels in generating high-quality long-text images** with unprecedented fidelity via a novel binary tokenizer optimized for capturing detailed scene text features. It provides robust controllability, allowing customization of font style, size, color, and alignment. Experiments show it outperforms models such as SD3.5 Large and DALL-E 3 in generating long text accurately and flexibly. The versatility also allows for innovative applications like document/PowerPoint generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Image tokenizers are the bottleneck for generating long-form, coherent text in images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LongTextAR, with a new tokenizer, significantly outperforms existing models in generating long text in images with high accuracy and flexibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model shows strong controllability over text properties and is versatile enough for synthetic and natural images. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
Addresses long-text image generation, overcoming limitations of existing models. Offers a new approach and opens avenues for document and PowerPoint generation. **It can significantly impact future research trends related to multi-modal learning and content creation**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/word_acc_comparison.png)

> 🔼 The figure illustrates the limitations of existing text-to-image models in handling long text.  While models like Text Diffusion 2 and AnyText perform well with short text inputs, their accuracy significantly decreases when processing longer passages. Even large diffusion models such as Stable Diffusion 3.5 Large struggle to maintain high accuracy with long text.  This experiment used the Qwen2-VL model for text recognition on images generated from 140 examples (with truncation) of the interleaved Obelics dataset.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Breaking the Limits: Long-Text Image Generation Remains Elusive for Existing Models. State-of-the-art text rendering models, such as Text Diffusion 2 [4] and AnyText [42], perform well on short text but struggle with longer passages. Large diffusion models like Stable Diffusion 3.5 Large [10] can handle longer text but exhibit lower accuracy. The text recognition on generated images was conducted using Qwen2-VL [46] model. For this evaluation, we sampled 140 examples from the interleaved Obelics [18] dataset with truncation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.3.4">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.3.5">Embed Dim</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.3.3.6">Codebook Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.7">Utilization</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.4.1.1">VQ</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.4.1.2">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.3.4.1.3">8192</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.4.1.4">33.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.4.1.5">29.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.4.1.6">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.4.1.7">0.84</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.5.2.1">Taming-Transformer VQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.5.2.2">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.3.5.2.3">8192</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.5.2.4">39.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.5.2.5">27.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.5.2.6">8.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.5.2.7">0.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.6.3.1">Chameleon VQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.6.3.2">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.3.6.3.3">8192</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.3.4">34.63</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.3.5">29.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.3.6">0.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.3.7">0.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.7.4.1">TextBinarizer</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.7.4.2">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.3.7.4.3">8192</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.4.4">27.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.4.5">33.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.4.6">0.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.4.7">0.73</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.3.8.5.1">TextBinarizer</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.3.8.5.2">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.3.8.5.3">65536</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.8.5.4">24.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.8.5.5">30.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.8.5.6">0.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.8.5.7">0.17</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the performance of TextBinarizer and Vector Quantization (VQ) methods on a complex long-text dataset reconstruction task.  It shows that TextBinarizer significantly outperforms VQ in terms of FID (Fréchet Inception Distance), PSNR (Peak Signal-to-Noise Ratio), and SSIM (Structural Similarity Index) scores, indicating a substantial improvement in reconstruction quality.  The table also includes the embedding dimension, codebook size, and utilization rate for both methods, providing additional context for the performance differences.  The results demonstrate that TextBinarizer offers a more efficient and effective approach for reconstructing text in complex datasets.
> <details>
> <summary>read the caption</summary>
> Table 1:  TextBinarizer clearly outperform Vector Quantization on complex long-text dataset reconstruction.
> </details>





### In-depth insights


#### Tokenizer Limit
When focusing on the idea of a 'Tokenizer Limit,' several key insights emerge. **Current autoregressive models** and even large diffusion models often face constraints due to their **limited context windows**. This impacts their ability to handle longer, coherent text, leading to a drop in accuracy and consistency. **Tokenization**, the process of converting text into discrete units, becomes a bottleneck when dealing with extensive textual data. Traditional tokenizers, often prioritizing general image features, may not capture the nuances of fine-grained textual details, leading to blurry or illegible outputs. Overcoming this 'Tokenizer Limit' is crucial for advancing text-rich image generation, necessitating specialized tokenization strategies tailored for text rendering to maintain fidelity and coherence in generated images.

#### TextBinarizer
**TextBinarizer** appears to be a novel text-focused tokenizer. It is designed to improve text rendering in multimodal autoregressive models. It addresses limitations in existing tokenization methods. **The key idea** seems to be using a binary codebook instead of vector quantization. This enables more precise text encoding. **A bitwise approach** captures finer details than traditional methods. It allows it to maintain high-quality text rendering. **The implementation** uses a CNN encoder, lightweight transformer, and decoder. Freezing VQGAN weights aids natural image transfer. **Potential benefits** include better text fidelity, computational efficiency, and image adaptation. **It aims to overcome blurry outputs** when generating text-heavy images. 

#### LongTextAR Model
The LongTextAR model marks a significant step in image generation, **specifically designed for extended textual content**. It tackles the challenge of generating coherent, high-quality images from long-form text, unlike existing systems often limited to short phrases. By addressing tokenization bottlenecks, the model improves text rendering in images. **LongTextAR employs a multimodal autoregressive approach**, effectively synthesizing text and image tokens. The model's architecture emphasizes capturing detailed textual features for fidelity and robust controllability, offering customization options for font style, size, color and alignment. **The focus on a specialized tokenizer highlights the importance of text encoding**, leading to more precise reconstruction. The results demonstrate LongTextAR's effectiveness in generating readable text, outperforming other models in accuracy and consistency. It's a move from short snippets to detailed content generation.

#### Control Renders
Thinking about 'Control Renders,' a key aspect would be the ability to manipulate generated images based on defined parameters. This includes controlling the **style**, **content**, and **attributes** of the rendered output. Crucially, it signifies going beyond simple text-to-image generation to offering **precise control over visual elements**. This could involve specifying font styles, colors, object placement, and overall aesthetic themes. The challenge lies in creating models that understand nuanced instructions and execute them accurately, maintaining both fidelity to the input and stylistic coherence. A robust 'Control Renders' system would unlock applications in design, content creation, and personalized image generation, enabling users to realize specific artistic visions with greater ease and precision. Control in rendering would signify a new level of capability in generative AI, moving from general approximation to deliberate artistic direction. It opens avenues for **creating targeted visuals** aligned with precise user needs, rather than relying on chance or broad prompting.

#### Generative Gap
While not explicitly mentioned, a 'Generative Gap' in the context of this paper on long-text image generation likely refers to the **discrepancy between the ideal output** (high-quality, coherent long text in an image) **and what current generative models can achieve**. This gap arises because existing models, while proficient with short text, struggle with the intricacies of rendering long, contextually relevant passages. Factors contributing to this gap include the **limitations of image tokenizers in capturing fine-grained text details**, the **context window constraints of diffusion models**, and the **difficulties AR models face in precise text rendering, particularly with complex or lengthy inputs**. Overcoming this 'Generative Gap' requires **innovations in tokenization**, model architecture, and training strategies, as evidenced by the authors' development of TextBinarizer and LongTextAR to push the boundaries of long-text image generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/TextBinarizer.png)

> 🔼 Figure 2 illustrates the architecture of TextBinarizer, a novel text-focused binary tokenizer.  It shows how high-dimensional word embeddings are converted into binary tokens through a quantization process, enabling direct quantization without the need for a codebook. The figure depicts the encoder and decoder components, highlighting the use of convolutional neural networks (CNNs) and a quantization discriminator to optimize the process for enhanced text detail preservation.
> <details>
> <summary>read the caption</summary>
> Figure 2:  TextBinarizer implementation details. This approach allows for direct quantization.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/main_ppl.png)

> 🔼 The figure illustrates the architecture of LongTextAR, a model designed for generating images from long text.  The process begins with a text-focused tokenizer converting the long text into discrete tokens. Simultaneously, a corresponding long-text prompt is generated.  The core model then uses this prompt to predict the image's token IDs, which are subsequently decoded to produce the final image.
> <details>
> <summary>read the caption</summary>
> Figure 3: The main pipeline of LongTextAR. Our trained text-focused tokenizer converts the long-text image into discrete token IDs. A corresponding long-text prompt is generated, and the model is then tasked with predicting the image token IDs based on this long text prompt.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/tokenizer_comparison.png)

> 🔼 This figure displays a comparison of text reconstruction quality between a traditional Vector Quantization (VQ) tokenizer and the novel TextBinarizer tokenizer introduced in the paper.  The comparison uses a dataset containing long text passages.  The results visually demonstrate that TextBinarizer, designed with a focus on detailed text features, achieves superior reconstruction of fine details such as individual letters compared to the VQ tokenizer.  The improved quality with TextBinarizer is particularly evident in the more complex, long-text data.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Tokenizer reconstruction comparison on data with long-text. Comparing with well-trained VQ tokenizer from Chameleon [38], our text-focus tokenizer leads to better reconstruction result on detail generation for letters.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/controable_variable.png)

> 🔼 This figure demonstrates the controllability of the LongTextAR model in generating text images.  Multiple examples are shown, each with different modifications to the text's font type, color, rotation degree, and alignment. This showcases the model's ability to precisely follow user-specified formatting instructions, resulting in high-fidelity text rendering and diverse visual styles.
> <details>
> <summary>read the caption</summary>
> Figure 5: Controllable experiment, we modify the text font type, text color and text rotation degree, also the alignment way.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/all_model_comparison.png)

> 🔼 This figure compares the long-text image generation capabilities of several models: LongTextAR, Stable Diffusion 3.5 Large, GPT-40+DALL-E 3, TextDiffuser 2, and AnyText.  The models were prompted to generate images containing a specific long text passage.  Stable Diffusion 3.5 Large and GPT-40+DALL-E 3 used a prompt specifying a white background and the target text. TextDiffuser 2 used a different prompt and included the text as tags.  The accuracy of text recognition in the generated images was assessed using Qwen2-VL. The results reveal that GPT-40, released in March 2025, significantly outperforms all other models, both open-source and closed-source.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Text-conditioned long-text image generation comparison. The Stable Diffusion3.5 Large [10] and GPT-4o [30]+Dall-E3 [3] using the prompt Generate a white-background text image and the text is: [Text Prompt]. The text is clear and large. For TextDiffuser 2 [4] we use the prompt A text image and input other text as tags. We use the Qwen2-VL [46] to recognize words from generated images and compute the accuracy according to the ground-truth text [Text Prompt]. The image generation capabilities of GPT4o [30], released at the end of March 2025, have shown a huge gap over all other models, both open-source and closed-source.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/natural_images.png)

> 🔼 This figure showcases examples of LongTextAR's ability to render text within natural images.  Unlike synthetically generated images with precisely placed text, these examples demonstrate the model's capacity to integrate text naturally into real-world scenes, handling variations in text style and image context.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Natural image text rendering examples.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/ppt_application.png)

> 🔼 Figure 8 showcases LongTextAR's ability to generate PowerPoint slides from long text prompts.  The model not only accurately renders the text and images provided but also effectively creates the layout of the slide, demonstrating proficiency in arranging both visual and textual elements in a coherent manner. Bounding boxes around the text within the input highlight the precise placement and alignment of elements in the generated slides.
> <details>
> <summary>read the caption</summary>
> Figure 8: LongTextAR  generates interleaved PowerPoint data from long-text prompts. The model accurately produces layouts and renders both text and images effectively. Bounding boxes from the text input are shown as a reference.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/supplementary/lumina_mgpt_same_case.png)

> 🔼 Figure 9 shows a comparison of the capabilities of Lumina-mGPT, a model based on Chameleon, in handling complex textual instructions for image generation.  The figure demonstrates that Lumina-mGPT, while an enhanced model, has limitations in effectively following and accurately representing intricate or lengthy textual instructions during the image generation process.  The results highlight that simply enhancing a model is not sufficient to overcome the challenge of accurately interpreting complex instructions and converting them into high-fidelity images.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Baseline comparison. Lumina-mGPT [21], an enhanced generation model built upon Chameleon [38], demonstrates limited capability in effectively following complex textual instructions.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/powerpoint_application_comparison.png)

> 🔼 This figure compares the performance of different models, including Stable Diffusion 3.5 Large, GPT-4.0 + DALL-E 3, and the authors' LongTextAR model, on the task of generating interleaved PowerPoint slides from text prompts.  The comparison highlights the ability of each model to accurately render text and images within the specified layout and formatting requirements. It demonstrates the superior performance of LongTextAR in terms of both accuracy and adherence to the prompt's instructions.
> <details>
> <summary>read the caption</summary>
> Figure 10: The interleaved powerpoint generation comparison.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/interleaved_examples.png)

> 🔼 This figure showcases additional examples of the model's ability to generate PowerPoint-like slides containing both text and images.  The slides demonstrate the model's capacity to handle various layouts and styles, incorporating both text-only and interleaved content effectively.  It highlights the model's ability to seamlessly integrate different modalities and generate visually appealing and informationally complete slides.
> <details>
> <summary>read the caption</summary>
> Figure 11: More interleaved data examples.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/controable_experiment.png)

> 🔼 This figure compares the performance of Stable Diffusion 3.5 Large and GPT-4-O in generating images based on prompts with controllable variables (font color, type, rotation).  Stable Diffusion 3.5 Large largely ignores the specified instructions, frequently producing unrelated images. GPT-4-O shows improvement in following instructions but still lacks accuracy and fails to incorporate all specified variables into the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 12:  Experiment on Controllable Variables: Stable Diffusion 3.5 Large [10] demonstrates poor instruction-following ability, ignoring all specified variants and occasionally generating irrelevant images. GPT-4-O [30], while showing noticeably better instruction-following capability, produces outputs with low accuracy and fails to capture the specified controllable variables.
> </details>



![](https://arxiv.org/html/2503.20198/extracted/6310534/figures/src/more_powerpoing_examples.png)

> 🔼 This figure displays additional examples of PowerPoint slides generated by the LongTextAR model.  The examples showcase the model's ability to handle diverse layouts and styles, including those with varying text lengths and combinations of text and images.  This demonstrates the model's flexibility in generating complex, multi-modal documents.
> <details>
> <summary>read the caption</summary>
> Figure 13:  More powerpoint generation examples.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.4.1.1">Metrics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.4.1.2">TextDiffuser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.4.1.3">AnyText <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.4.1.4">TextDiffuser-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.4.1.5">SD3.5 Large <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.4.1.6">LongTextAR</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.3.5.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.2">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.3">Long</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.4">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.5">Long</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.6">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.7">Long</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.8">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.9">Long</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.10">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.2.11">Long</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.1">CLIPScore<math alttext="{\uparrow}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">{\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2">31.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3">30.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.4.1">32.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5">30.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6">31.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.9.1">30.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.1">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.1">31.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.2.2.1">OCR (Accuracy)<math alttext="{\uparrow}" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mo id="S4.T2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><ci id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">{\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2">72.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.4">69.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5">34.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6">71.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.8.1">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.9.1">52.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.10.1">82.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.11.1">69.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.3.1">OCR (F-measure)<math alttext="{\uparrow}" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mo id="S4.T2.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><ci id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">{\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.2">77.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.3">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.4">75.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.5">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.6">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.7">52.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.8.1">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.1">63.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.10.1">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.11"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.1">70.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different models' performance on long-text image generation.  The models are evaluated on two categories of test data: short text (less than 10 words) and long text (more than 10 words). The metrics used are CLIPScore, OCR accuracy, and OCR F-measure.  The evaluation involves generating images from text prompts using each model, then using the Qwen2-VL model to perform optical character recognition (OCR) on the generated images to assess the accuracy of the rendered text.  For the TextDiffuser2 model, a specific prompt ('A text image') was used with additional keywords.  The best and second-best results for each metric and text length are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 2:  Demonstration of the quantitative results for long-text rendering. We split the test set into words Short (less than 10) and Long (more than 10), more details are in supplementary material. We use the Qwen2-VL [46] model to recognize text from generated image. For TextDiffuser2 model, we use prompt ”A text image” with all other texts as keywords. The best and second-best results are indicated in bold and underlined formats. LongTextAR  achieves the best results for all metrics especially for long text.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.4.5.1.1">Data</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.4.5.1.2">Llama2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.4.5.1.3">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20198v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T3.4.4.5"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S5.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.1.1.1">
<span class="ltx_p" id="S5.T3.1.1.1.1.1" style="width:25.0pt;">FID(S)<math alttext="\downarrow" class="ltx_centering" display="inline" id="S5.T3.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S5.T3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.2.2.1">
<span class="ltx_p" id="S5.T3.2.2.2.1.1" style="width:25.0pt;">FID(N)<math alttext="\downarrow" class="ltx_centering" display="inline" id="S5.T3.2.2.2.1.1.m1.1"><semantics id="S5.T3.2.2.2.1.1.m1.1a"><mo id="S5.T3.2.2.2.1.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.1.1.m1.1b"><ci id="S5.T3.2.2.2.1.1.m1.1.1.cmml" xref="S5.T3.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S5.T3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.3.3.1">
<span class="ltx_p" id="S5.T3.3.3.3.1.1" style="width:25.0pt;">FID(S)<math alttext="\downarrow" class="ltx_centering" display="inline" id="S5.T3.3.3.3.1.1.m1.1"><semantics id="S5.T3.3.3.3.1.1.m1.1a"><mo id="S5.T3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.1.1.m1.1b"><ci id="S5.T3.3.3.3.1.1.m1.1.1.cmml" xref="S5.T3.3.3.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S5.T3.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.4.1">
<span class="ltx_p" id="S5.T3.4.4.4.1.1" style="width:25.0pt;">FID(N)<math alttext="\downarrow" class="ltx_centering" display="inline" id="S5.T3.4.4.4.1.1.m1.1"><semantics id="S5.T3.4.4.4.1.1.m1.1a"><mo id="S5.T3.4.4.4.1.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.1.1.m1.1b"><ci id="S5.T3.4.4.4.1.1.m1.1.1.cmml" xref="S5.T3.4.4.4.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.4.6.1.1">Synthehic Data</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.6.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.6.1.2.1">
<span class="ltx_p" id="S5.T3.4.6.1.2.1.1" style="width:25.0pt;">28.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.6.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.6.1.3.1">
<span class="ltx_p" id="S5.T3.4.6.1.3.1.1" style="width:25.0pt;">73.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.6.1.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.6.1.4.1">
<span class="ltx_p" id="S5.T3.4.6.1.4.1.1" style="width:25.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.6.1.4.1.1.1">27.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.6.1.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.6.1.5.1">
<span class="ltx_p" id="S5.T3.4.6.1.5.1.1" style="width:25.0pt;">45.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.4.7.2.1">Natural Image</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.4.7.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.7.2.2.1">
<span class="ltx_p" id="S5.T3.4.7.2.2.1.1" style="width:25.0pt;">69.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.4.7.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.7.2.3.1">
<span class="ltx_p" id="S5.T3.4.7.2.3.1.1" style="width:25.0pt;">82.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.4.7.2.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.7.2.4.1">
<span class="ltx_p" id="S5.T3.4.7.2.4.1.1" style="width:25.0pt;">63.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.4.7.2.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.7.2.5.1">
<span class="ltx_p" id="S5.T3.4.7.2.5.1.1" style="width:25.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.7.2.5.1.1.1">30.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.4.8.3.1">Both</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.8.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.8.3.2.1">
<span class="ltx_p" id="S5.T3.4.8.3.2.1.1" style="width:25.0pt;">28.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.8.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.8.3.3.1">
<span class="ltx_p" id="S5.T3.4.8.3.3.1.1" style="width:25.0pt;">62.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.8.3.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.8.3.4.1">
<span class="ltx_p" id="S5.T3.4.8.3.4.1.1" style="width:25.0pt;">28.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.8.3.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.8.3.5.1">
<span class="ltx_p" id="S5.T3.4.8.3.5.1.1" style="width:25.0pt;">32.4</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of different training strategies for the LongTextAR model.  It compares the Fréchet Inception Distance (FID) scores achieved when training with synthetic data only, natural image data only, and a combination of both.  It also shows the impact of using different pre-trained weight initializations (Llama2 vs. Chameleon) on the model's performance across these training scenarios. Lower FID scores indicate better image quality.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparative Analysis of Co-training with Synthetic and Natural Data and Weight Initialization Strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.2">Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.3">VQ Quant</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.4">Projector</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.5">Quant Layer 2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.6">Decoder</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.2">Frozen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.3">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.4">Frozen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.5">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.6">Frozen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.7">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.8">Frozen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.9">Model</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.1.2.1.10">Frozen</td>
<td class="ltx_td" id="S5.T4.1.1.2.1.11"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.1">ConvNet(256)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.3">VQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.5">Single Layer FC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.9">DeConvNet(256)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.1.3.2.10">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.11">98.44</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.3">
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.1">ConvNet(256)</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.3">VQ</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.4">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.5">Single Layer FC</td>
<td class="ltx_td" id="S5.T4.1.1.4.3.6"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.7">TextBinarizer-13</td>
<td class="ltx_td" id="S5.T4.1.1.4.3.8"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.9">DeConvNet(13)</td>
<td class="ltx_td ltx_border_r" id="S5.T4.1.1.4.3.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.11">79.92</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.4">
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.1">ConvNet(256)</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.3">VQ</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.4">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.5">3-Layer Transformer</td>
<td class="ltx_td" id="S5.T4.1.1.5.4.6"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.7">TextBinarizer-13</td>
<td class="ltx_td" id="S5.T4.1.1.5.4.8"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.9">DeConvNet(13)</td>
<td class="ltx_td ltx_border_r" id="S5.T4.1.1.5.4.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.11">62.35</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6.5">
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.1">ConvNet(256)</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.3">VQ</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.4">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.5">3-Layer Transformer</td>
<td class="ltx_td" id="S5.T4.1.1.6.5.6"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.7">TextBinarizer-18</td>
<td class="ltx_td" id="S5.T4.1.1.6.5.8"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.9">DeConvNet(18)</td>
<td class="ltx_td ltx_border_r" id="S5.T4.1.1.6.5.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.11">58.43</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.7.6" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.1"><span class="ltx_text" id="S5.T4.1.1.7.6.1.1" style="background-color:#BFBFBF;">ConvNet(256)</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T4.1.1.7.6.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.3"><span class="ltx_text" id="S5.T4.1.1.7.6.3.1" style="background-color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.4"><span class="ltx_text" id="S5.T4.1.1.7.6.4.1" style="background-color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.5"><span class="ltx_text" id="S5.T4.1.1.7.6.5.1" style="background-color:#BFBFBF;">3-Layer Transformer</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T4.1.1.7.6.6"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.7"><span class="ltx_text" id="S5.T4.1.1.7.6.7.1" style="background-color:#BFBFBF;">TextBinarizer-13</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T4.1.1.7.6.8"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.9"><span class="ltx_text" id="S5.T4.1.1.7.6.9.1" style="background-color:#BFBFBF;">DeConvNet(13)</span></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S5.T4.1.1.7.6.10"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.7.6.11"><span class="ltx_text" id="S5.T4.1.1.7.6.11.1" style="background-color:#BFBFBF;">39.36</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.8.7" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.1"><span class="ltx_text" id="S5.T4.1.1.8.7.1.1" style="background-color:#BFBFBF;">ConvNet(13)</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T4.1.1.8.7.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.3"><span class="ltx_text" id="S5.T4.1.1.8.7.3.1" style="background-color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.4"><span class="ltx_text" id="S5.T4.1.1.8.7.4.1" style="background-color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.5"><span class="ltx_text" id="S5.T4.1.1.8.7.5.1" style="background-color:#BFBFBF;">Single Layer FC</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T4.1.1.8.7.6"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.7"><span class="ltx_text" id="S5.T4.1.1.8.7.7.1" style="background-color:#BFBFBF;">TextBinarizer-13</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T4.1.1.8.7.8"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.9"><span class="ltx_text" id="S5.T4.1.1.8.7.9.1" style="background-color:#BFBFBF;">DeConvNet(13)</span></td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S5.T4.1.1.8.7.10"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7.11"><span class="ltx_text" id="S5.T4.1.1.8.7.11.1" style="background-color:#BFBFBF;">42.68</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on different configurations of the TextBinarizer tokenizer within the LongTextAR model.  It compares various model components, including the encoder, decoder, and the VQ-GAN. Experiments involved freezing certain components (indicated by ✓) during training.  The FID score (Fréchet Inception Distance), a metric for image quality, was used to evaluate performance.  The last two rows provide upper-bound results using the full model capacity.
> <details>
> <summary>read the caption</summary>
> Table 4: Training quantization and decoder experiments. The VQ-GAN weights are initialized from the Chameleon [38] model, and each model is trained for 4 epochs. Frozen components are indicated with a ✓. The last two rows represent the upper bounds.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20198/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20198/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}