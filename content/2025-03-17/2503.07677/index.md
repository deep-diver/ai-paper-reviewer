---
title: "PLADIS: Pushing the Limits of Attention in Diffusion Models at Inference Time by Leveraging Sparsity"
summary: "PLADIS: Sparsity boosts attention for diffusion models, enhancing text-to-image generation at inference time!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Samsung Research",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07677 {{< /keyword >}}
{{< keyword icon="writer" >}} Kwanyoung Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07677" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07677" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07677/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel at generating high-quality images, but often need extra training or NFEs using CFG. Existing methods also depend on heuristic approaches that need identifying target layers. To address these issues, this paper proposes **PLADIS**, a method that boosts pre-trained models by leveraging sparse attention.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Leveraging sparse attention in cross-attention layers significantly enhances text-to-image diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PLADIS, a novel and efficient method, improves text alignment and generation quality without additional training or neural function evaluations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method can be seamlessly integrated with various guidance techniques, including guidance-distilled models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **PLADIS, a universal technique that improves text-to-image diffusion models without extra training**, offering a practical solution for researchers seeking enhanced generation quality, text alignment, and controllable sparsity in attention mechanisms. **It integrates with existing models and unlocks new research directions in multimodal generation**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/main_figure_2.jpg)

> 🔼 Figure 1 displays a qualitative comparison of various text-to-image generation methods.  The top row shows results from three guidance sampling methods: Classifier-Free Guidance (CFG), Perturbed Attention Guidance (PAG), and Smooth Energy Guidance (SEG). The middle row showcases results using three guidance-distilled models: DMD2, SDXL-Lightning, and Hyper-SDXL. The bottom row presents results obtained by applying the authors' proposed method, PLADIS, to several different base diffusion models, including Stable Diffusion 1.5 and SANA. This figure highlights PLADIS's versatility and compatibility with various existing techniques, showing improved text alignment and more plausible image generations without requiring any additional training or inference steps.
> <details>
> <summary>read the caption</summary>
> Figure 1: Qualitative comparison (Top): guidance sampling methods (CFG[18], PAG[1], SEG[20]) (Mid): guidance-distilled models (DMD2[61], SDXL-Lightning [31], Hyper-SDXL[42]) (Bottom): Other backbone such as Stable Diffusion 1.5 [44] and SANA [59] with our proposed method, PLADIS(Ours). PLADIS is compatible with all guidance techniques and also supports guidance-distilled models including various backbone. It provides the generation of plausible and improved text alignment without any training or extra inference.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.6.1.1.1.1"><span class="ltx_text" id="S1.T1.6.1.1.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_center" id="S1.T1.6.1.1.1.1.1.1">
<span class="ltx_p" id="S1.T1.6.1.1.1.1.1.1.1">Method</span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.6.1.1.1.2"><span class="ltx_text" id="S1.T1.6.1.1.1.2.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_center" id="S1.T1.6.1.1.1.2.1.1">
<span class="ltx_p" id="S1.T1.6.1.1.1.2.1.1.1">Need extra</span>
<span class="ltx_p" id="S1.T1.6.1.1.1.2.1.1.2">Training</span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.6.1.1.1.3"><span class="ltx_text" id="S1.T1.6.1.1.1.3.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_center" id="S1.T1.6.1.1.1.3.1.1">
<span class="ltx_p" id="S1.T1.6.1.1.1.3.1.1.1">Need heuristic</span>
<span class="ltx_p" id="S1.T1.6.1.1.1.3.1.1.2">Search</span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.6.1.1.1.4"><span class="ltx_text" id="S1.T1.6.1.1.1.4.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_center" id="S1.T1.6.1.1.1.4.1.1">
<span class="ltx_p" id="S1.T1.6.1.1.1.4.1.1.1">Need extra</span>
<span class="ltx_p" id="S1.T1.6.1.1.1.4.1.1.2">Inference</span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.6.1.1.1.5"><span class="ltx_text" id="S1.T1.6.1.1.1.5.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_align_center" id="S1.T1.6.1.1.1.5.1.1">
<span class="ltx_p" id="S1.T1.6.1.1.1.5.1.1.1">Supports guidance-</span>
<span class="ltx_p" id="S1.T1.6.1.1.1.5.1.1.2">Distilled Model</span>
</span></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.6.1.2.1.1">
<span class="ltx_text" id="S1.T1.6.1.2.1.1.1" style="font-size:90%;">CFG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.6.1.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S1.T1.6.1.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.1.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.2.1.2.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.1.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.2.1.3.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.1.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.2.1.4.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.1.2.1.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.2.1.5.1">\faFrown</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.6.1.3.2.1">
<span class="ltx_text" id="S1.T1.6.1.3.2.1.1" style="font-size:90%;">SAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.6.1.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S1.T1.6.1.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.2.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.3.2.2.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.2.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.3.2.3.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.2.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.3.2.4.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.3.2.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.3.2.5.1">\faFrown</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.6.1.4.3.1">
<span class="ltx_text" id="S1.T1.6.1.4.3.1.1" style="font-size:90%;">AG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.6.1.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S1.T1.6.1.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.3.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.4.3.2.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.3.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.4.3.3.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.3.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.4.3.4.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.4.3.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.4.3.5.1">\faFrown</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.6.1.5.4.1">
<span class="ltx_text" id="S1.T1.6.1.5.4.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.6.1.5.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S1.T1.6.1.5.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.4.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.5.4.2.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.4.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.5.4.3.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.4.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.5.4.4.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.5.4.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.5.4.5.1">\faFrown</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.6.1.6.5.1">
<span class="ltx_text" id="S1.T1.6.1.6.5.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.6.1.6.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S1.T1.6.1.6.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.5.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.6.5.2.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.5.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.6.5.3.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.5.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.6.5.4.1">\faFrown</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.1.6.5.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.6.5.5.1">\faFrown</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S1.T1.6.1.7.6.1"><span class="ltx_text ltx_font_bold" id="S1.T1.6.1.7.6.1.1" style="font-size:90%;">PLADIS (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.7.6.2"><span class="ltx_ERROR undefined" id="S1.T1.6.1.7.6.2.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.7.6.3"><span class="ltx_ERROR undefined" id="S1.T1.6.1.7.6.3.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.7.6.4"><span class="ltx_ERROR undefined" id="S1.T1.6.1.7.6.4.1">\faGrin</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.6.1.7.6.5"><span class="ltx_ERROR undefined" id="S1.T1.6.1.7.6.5.1">\faGrin</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares PLADIS against other image generation sampling methods.  It evaluates each method across several key aspects: the need for extra training data, reliance on heuristic search methods, and the need for extra inference steps.  A positive (+) or negative (-) symbol indicates the relative advantage or disadvantage of each method compared to PLADIS.  For example, a '+' in the 'Need extra training' column signifies PLADIS does not require additional training, which is advantageous compared to methods that do.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of PLADIS with other sampling methods reveals key advantages of ours, with \faGrin  and \faFrown  denoting positive and negative connotations for each category.
> </details>





### In-depth insights


#### Sparse Attention
Sparse attention mechanisms, while initially conceived for computational efficiency, hold intriguing potential beyond mere speed. The paper's exploration into leveraging sparsity reveals its capacity to enhance **noise robustness**, a crucial asset in diffusion models where noisy data is inherent. By discarding less relevant correlations, sparse attention may effectively filter out noise, allowing the model to focus on the most salient features for accurate reconstruction. This suggests that sparsity isn't simply a computational shortcut but a way to **guide the model's focus**, mitigating the influence of irrelevant or misleading information. The connection to Hopfield Networks further strengthens this interpretation, where sparsity aids in clearer pattern retrieval. Therefore, sparse attention offers a valuable tool for improving the **reliability and quality** of diffusion model outputs.

#### Robust to Noise
**Noise robustness** is crucial for deep learning models, particularly in diffusion models where the generative process is inherently noisy. The capacity to withstand noise in the input data, internal representations, or training process is key to achieving stable and reliable results. Models robust to noise can generalize well from limited datasets and avoid overfitting to spurious correlations. Various techniques contribute to noise robustness, including **data augmentation**, **regularization methods like dropout**, and the use of **robust loss functions**. Sparsity can play a key role in noise robustness because **sparse representations** tend to ignore immaterial correlations while maintaining stricter ones. Furthermore, **sparse attention** can be more robust to noise than dense attention, leading to lower retrieval error. In essence, noise robustness is not just about handling imperfections but about fostering a more resilient and capable system.

#### Cross-Attention
Cross-attention plays a crucial role in diffusion models, mediating the interaction between text prompts and image features. By analyzing the query-key correlations it enables the model to generate images that align semantically with the input text. **Sparsifying cross-attention** can significantly improve performance by focusing on the most relevant correlations, while reducing noise. Moreover the **noise robustness** is another advantage of using sparse attention in noisy generation process. Techniques like PLADIS can efficiently leverage sparse cross-attention at inference time, enhancing text-image alignment and overall generation quality without extra training. 

#### No Extra NFE
The paper emphasizes a significant advantage by obviating the need for extra Neural Function Evaluations (NFEs). This is crucial because existing guidance methods often require additional NFEs, which increases computational cost and limits compatibility with **guidance-distilled models**. By avoiding extra NFEs, the method maintains efficiency, making it universally applicable and seamlessly integrable with other guidance techniques and even pre-trained **guidance-distilled models**. This feature enhances the method’s practicality and broadens its potential applications, addressing a key limitation in existing approaches.

#### SHN connection
The paper connects the proposed PLADIS method to **Sparse Hopfield Networks (SHN)**, drawing parallels between attention mechanisms and Hopfield networks. It suggests that PLADIS's effectiveness stems from SHN's **noise robustness**, especially beneficial in diffusion models due to noisy image/text data. By **sparsifying attention**, PLADIS reduces retrieval errors, leading to improved performance, text alignment, and robustness. The connection to SHN provides a theoretical grounding for PLADIS, supporting its efficacy from the perspective of reducing noise and promoting more reliable information retrieval within the diffusion process. The theoretical justification connects to an error bound in retrieval dynamics.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/compare_self-cross.jpg)

> 🔼 Figure 2 illustrates the core difference between PLADIS and other guidance methods.  Existing methods like CFG, PAG, and SEG, while effective, introduce extra computational steps during inference because they either handle null conditions (CFG) or modify the behavior of self-attention (PAG and SEG). These modifications, such as replacing self-attention weights with an identity matrix (PAG) or blurring attention weights (SEG), introduce indirect paths that add to inference time. PLADIS, however, directly incorporates both sparse and dense cross-attention computations within the cross-attention module. A scaling factor (λ) controls the balance between these two attention types. This streamlined approach eliminates the need for additional inference steps and facilitates easy integration into existing guidance techniques simply by replacing the cross-attention module. This is in contrast to the other methods which often require adjusting parameters for specific layers or modules.
> <details>
> <summary>read the caption</summary>
> Figure 2: Conceptual comparison between other guidance methods [18, 1, 20] and PLADIS: Existing guidance methods require extra inference steps due to undesired paths, such as null conditions or perturbing self-attention with an identity matrix or blurred attention weights. In contrast, PLADIS avoids additional inference paths by computing both sparse and dense attentions within all cross-attention modules using a scaling factor, λ𝜆\lambdaitalic_λ. Moreover, PLADIS can be easily integrated with existing guidance approaches by simply replacing the cross-attention module.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_ablation_alpha.jpg)

> 🔼 Figure 3 presents a qualitative comparison of image generation results using different attention mechanisms in diffusion models.  The 'Baseline' uses standard dense self-attention and cross-attention. The 'Replace Self-Attention' variant substitutes sparse attention for the self-attention mechanism, while the 'Replace Cross-Attention' variant replaces the cross-attention with sparse attention.  The figure displays generated images to illustrate the impact of each approach on image quality and text alignment.  It aims to show that replacing cross-attention with its sparse counterpart yields more favorable results but that replacing self-attention negatively impacts image generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison between baseline and variants that substitute self-attention and cross-attention mechanisms with sparse attention methods.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_lambda.jpg)

> 🔼 This figure displays the results of an experiment evaluating the impact of different sparsity levels (controlled by the αα parameter in α⁢-Entmaxα-Entmax ) on the quality of images generated by a diffusion model. The experiment used the MS-COCO dataset and two guidance methods: Classifier-Free Guidance (CFG) and Perturbed Attention Guidance (PAG).  The figure likely shows metrics like FID (Fréchet Inception Distance), CLIPScore, and possibly others, across varying αα values.  It demonstrates how the sparsity level affects the quality of generated images and potentially other aspects of image generation, as measured by these metrics, when using either CFG or PAG.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of α𝛼\alphaitalic_α values in α⁢-Entmax𝛼-Entmax\alpha\texttt{-Entmax}italic_α -Entmax on the MS-COCO dataset with CFG and PAG guidance.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/userstudy.jpg)

> 🔼 This figure displays a qualitative comparison of image generation results using the PLADIS method with different scaling factors (λ).  The top row shows images generated with a baseline method, while subsequent rows demonstrate results with increasing λ values (1.0, 1.5, 2.0, 3.0, 4.0). The images illustrate how increasing λ enhances both the plausibility of the generated images and their alignment with the given text prompts.  However, excessively large λ values (e.g., 4.0) can lead to overly smoothed textures and potential artifacts, mirroring the behavior observed with classifier-free guidance (CFG). The optimal λ value selected for the PLADIS method in this paper is 2.0.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison by varying the scale λ𝜆\lambdaitalic_λ. As the scale λ𝜆\lambdaitalic_λ increases, images represent improved plausibility and enhanced text alignment. But too high a value leads to smoother textures and potential artifacts, similar to those seen in CFG. When λ𝜆\lambdaitalic_λ is greater than 0, our PLADIS method is applied. In our configuration, λ𝜆\lambdaitalic_λ is set to 2.0.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_ablation.jpg)

> 🔼 This figure presents the results of a user preference study comparing image generation results with and without the proposed PLADIS method.  The study used various guidance sampling methods (CFG, PAG, SEG) and guidance-distilled models.  Two questions were asked of participants:  'Which image is of higher quality and visually more pleasing?' and 'Which image looks more representative of the given prompt?'. The bar graphs show the percentage of times each method was preferred for image quality and prompt alignment.
> <details>
> <summary>read the caption</summary>
> Figure 6: User Preference Study for PLADIS.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/userstudy_supple.jpg)

> 🔼 This ablation study analyzes how changing the scaling factor λ in the PLADIS method affects the model's performance.  The scaling factor λ controls the influence of sparse attention compared to dense attention.  The plots show how FID, CLIPScore, and PickScore change as λ varies from 1.0 to 3.0.  This helps determine the optimal value of λ for balancing the benefits of sparse attention with the performance of the base model.  The results illustrate the impact of different levels of sparsity on image generation quality and text alignment.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study on the scale, λ𝜆\lambdaitalic_λ, for PLADIS.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_ablation_tmper.jpg)

> 🔼 This figure presents the results of a user preference study comparing image generation with and without the PLADIS method applied to guidance-distilled models.  Users were asked to evaluate two aspects of the generated images: image quality and prompt alignment. The bar charts show the percentage of users who preferred the images generated with PLADIS for each aspect and each model.  The results demonstrate that PLADIS consistently improves both image quality and prompt alignment across different guidance-distilled models, highlighting its effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 8: User preference study for PLADIS in the context of guidance-distilled models. We evaluate the two aspects of model output with and without PLADIS such as image quality and prompt alignment.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_cross.jpg)

> 🔼 This table presents a quantitative comparison of the performance of the proposed PLADIS method on different backbones: Stable Diffusion v1.5 (SD1.5) and SANA 1.6B.  It evaluates the FID (Fréchet Inception Distance), CLIPScore, and ImageReward metrics to assess the image quality, text-image alignment, and overall user preference.  The results demonstrate the effectiveness and generalizability of the PLADIS method across various diffusion models.
> <details>
> <summary>read the caption</summary>
> Table 7: Application on other BackBone Model on MS COCO validation set. SD1.5 and SANA indicate that Stable Diffusion version 1.5 and SANA 1.6 B model, respectively.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_sd15.jpg)

> 🔼 This ablation study investigates the impact of applying PLADIS to different layer groups within the UNet architecture of Stable Diffusion XL.  The MS-COCO validation dataset was used for evaluation. The table compares the performance (FID, CLIPScore, and ImageReward) of various configurations, including applying PLADIS to only the 'Up', 'Mid', or 'Down' layer groups, combinations of these groups, and finally applying it to all layers. This analysis aims to determine the optimal layer or group of layers for applying PLADIS to maximize its effectiveness in improving image generation quality and text alignment.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation study on layer group which is replaced with PLADIS on MS COCO validation dataset.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_sana.jpg)

> 🔼 Figure 9 displays the impact of temperature on the performance of different attention mechanisms, with and without the proposed PLADIS method.  The x-axis represents temperature, ranging from 0.1 to 1.0.  Four lines are plotted: Softmax (baseline), Softmax with PLADIS, 1.5-Entmax, and 1.5-Entmax with PLADIS. Each line shows the performance in terms of FID, CLIPScore, and ImageReward metrics. The results indicate that while lower temperatures generally improve the baseline method, the 1.5-Entmax approach (with or without PLADIS) consistently outperforms Softmax across all temperature settings.  This suggests that the sparsity introduced by 1.5-Entmax is beneficial, regardless of temperature.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison results for various temperatures, with and without PLADIS, are presented, including the baseline (Softmax) and 1.5−EntmaxEntmax-\texttt{Entmax}- Entmax. While lower temperatures with the baseline offer benefits in both cases, our proposed method (α𝛼\alphaitalic_α = 1.5), with and without PLADIS, outperforms across all temperature settings.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_cfg.jpg)

> 🔼 Figure 10 visualizes cross-attention maps across different time steps to compare the baseline method with PLADIS, using α-Entmax with different sparsity levels (λ=1 and λ=2). The baseline shows diffuse attention, failing to clearly distinguish between objects in the prompt. PLADIS with λ=1 shows improvement in focusing on relevant objects. PLADIS with λ=2 yields the sharpest, most accurate attention map, correctly highlighting the 'rabbit' and 'dog' while avoiding the incorrect attention given to the space between them present in other methods.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative comparison of cross-attention average maps across all time steps. Top: Baseline. Middle: PLADIS (with λ𝜆\lambdaitalic_λ = 1) represent only use α⁢-Entmax𝛼-Entmax\alpha\texttt{-Entmax}italic_α -Entmax transformation. Bottom: PLADIS (with λ𝜆\lambdaitalic_λ = 2.0). Our PLADIS with λ𝜆\lambdaitalic_λ = 2.0 provides a more sparse and sharp correlation with each text prompt, especially ”rabbit” and ”dog.” Furthermore, other approaches yield incorrect attention maps that highlight the space between the dog prompt and rabbit space. However, our method provides an exact attention map.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_pag.jpg)

> 🔼 This figure showcases the improved image generation capabilities of Stable Diffusion 1.5 when enhanced with the PLADIS method.  The examples demonstrate that PLADIS not only improves the visual quality of the generated images but also significantly improves the alignment between the generated image and the given text prompt.  Each row presents a text prompt and the corresponding images generated by Stable Diffusion 1.5 both with and without PLADIS. The comparison highlights PLADIS's ability to create more realistic and visually appealing images that better match the user's intentions.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative evaluation of Stable Diffusion 1.5 using our PLADIS method: PLADIS significantly boosts generation quality, strengthens alignment with the given text prompt, and generates visually compelling images.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_seg.jpg)

> 🔼 This figure presents a qualitative comparison of image generation results using the SANA model [59] with and without the application of the proposed PLADIS method.  Each row shows a text prompt, followed by two images: one generated using the original SANA model, and one generated using SANA enhanced with PLADIS.  The comparison highlights how PLADIS improves the generated images by enhancing their visual quality, ensuring that the generated image more accurately reflects the given text prompt, and overall resulting in more visually striking and compelling images.
> <details>
> <summary>read the caption</summary>
> Figure 12: Qualitative assessment of SANA [59] with and without our PLADIS method: PLADIS notably improves generation quality, strengthens alignment with the provided text prompt, and produces visually striking images.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_1step.jpg)

> 🔼 Figure 13 showcases the combined effect of Classifier-Free Guidance (CFG) and the proposed PLADIS method on image generation.  It demonstrates that integrating PLADIS with CFG produces images that are more realistic and have better alignment with the text prompts.  Importantly, this improvement is achieved without any increase in the computational cost of inference, showing the efficiency of PLADIS.
> <details>
> <summary>read the caption</summary>
> Figure 13: Qualitative evaluation of the joint usage CFG [18] with our method: CFG with PLADIS generates more plausible images with significantly improved text alignment based on the text prompt, without requiring additional inference.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_4step.jpg)

> 🔼 Figure 14 shows a qualitative comparison of image generation results using Perturbed Attention Guidance (PAG) with and without PLADIS.  The figure demonstrates that combining PAG with PLADIS significantly improves the quality and accuracy of generated images, especially in their alignment with the given text prompt.  Importantly, this improvement is achieved without the need for any additional inference steps or model retraining, highlighting the efficiency of the PLADIS method.
> <details>
> <summary>read the caption</summary>
> Figure 14: Qualitative evaluation of the joint usage PAG [1] with our method: Integrating PAG with PLADIS produces highly credible images with markedly enhanced correspondence to the text prompt, all achieved without any further inference steps.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_ablation.jpg)

> 🔼 Figure 15 presents a qualitative comparison showcasing the results of using Smooth Energy Guidance (SEG) in conjunction with the proposed PLADIS method.  The images generated demonstrate that combining these techniques leads to highly realistic and convincing outputs, significantly improving the alignment between the generated images and their corresponding text prompts. Notably, these improvements are achieved without the need for any additional inference steps, highlighting the efficiency of the PLADIS approach.
> <details>
> <summary>read the caption</summary>
> Figure 15: Qualitative evaluation of the joint usage SEG [20] with our method: The combination of SEG and PLADIS yields highly convincing image generations with substantially improved alignment to the given text prompt, accomplished without the need for additional inference.
> </details>



![](https://arxiv.org/html/2503.07677/extracted/6266216/fig/fig_supple_alpha.jpg)

> 🔼 Figure 16 presents a qualitative comparison of several guidance-distilled models (SDXL-Turbo, SDXL-Lightening, DMD2, and Hyper-SDXL) with and without the application of the proposed PLADIS method.  The comparison focuses specifically on one-step sampling.  The figure shows that even with just one sampling step, PLADIS significantly improves the quality of generated images, enhances the alignment between the generated images and the given text prompts, and produces images that are more visually realistic and plausible.
> <details>
> <summary>read the caption</summary>
> Figure 16: Qualitative comparison of the guidance-distilled model with our PLADIS method for one-step sampling: Even with one-step sampling, our PLADIS enhances generation quality, improves coherence with the given text prompt, and produces visually plausible images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.3.3.4"><span class="ltx_text" id="S4.T2.3.3.3.4.1" style="font-size:90%;">CFG</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.3.3.5"><span class="ltx_text" id="S4.T2.3.3.3.5.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.2.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3">
<span class="ltx_text" id="S4.T2.3.3.3.3.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.4.1.1" rowspan="6"><span class="ltx_text" id="S4.T2.3.3.4.1.1.1" style="font-size:90%;">✗</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.4.1.2"><span class="ltx_text" id="S4.T2.3.3.4.1.2.1" style="font-size:90%;">Vanilla</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.3"><span class="ltx_text" id="S4.T2.3.3.4.1.3.1" style="font-size:90%;">83.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.4"><span class="ltx_text" id="S4.T2.3.3.4.1.4.1" style="font-size:90%;">20.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.5"><span class="ltx_text" id="S4.T2.3.3.4.1.5.1" style="font-size:90%;">-1.050</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.5.2.1"><span class="ltx_text" id="S4.T2.3.3.5.2.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.5.2.2.1" style="font-size:90%;background-color:#E6FFE6;">79.72 <span class="ltx_text" id="S4.T2.3.3.5.2.2.1.1" style="font-size:78%;color:#0000FF;">(-3.96)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.5.2.3.1" style="font-size:90%;background-color:#E6FFE6;">21.86 <span class="ltx_text" id="S4.T2.3.3.5.2.3.1.1" style="font-size:78%;color:#0000FF;">(+0.89)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.5.2.4.1" style="font-size:90%;background-color:#E6FFE6;">-0.858 <span class="ltx_text" id="S4.T2.3.3.5.2.4.1.1" style="font-size:78%;color:#0000FF;">(+0.19)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.6.3.1">
<span class="ltx_text" id="S4.T2.3.3.6.3.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.6.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T2.3.3.6.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.6.3.2"><span class="ltx_text" id="S4.T2.3.3.6.3.2.1" style="font-size:90%;">29.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.6.3.3"><span class="ltx_text" id="S4.T2.3.3.6.3.3.1" style="font-size:90%;">24.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.6.3.4"><span class="ltx_text" id="S4.T2.3.3.6.3.4.1" style="font-size:90%;">-0.011</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.7.4.1"><span class="ltx_text" id="S4.T2.3.3.7.4.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.7.4.2.1" style="font-size:90%;background-color:#E6FFE6;">24.51 <span class="ltx_text" id="S4.T2.3.3.7.4.2.1.1" style="font-size:78%;color:#0000FF;">(-4.85)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.7.4.3.1" style="font-size:90%;background-color:#E6FFE6;">24.85 <span class="ltx_text" id="S4.T2.3.3.7.4.3.1.1" style="font-size:78%;color:#0000FF;">(+0.93)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.7.4.4.1" style="font-size:90%;background-color:#E6FFE6;">0.251 <span class="ltx_text" id="S4.T2.3.3.7.4.4.1.1" style="font-size:78%;color:#0000FF;">(+0.31)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.8.5.1">
<span class="ltx_text" id="S4.T2.3.3.8.5.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.8.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T2.3.3.8.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.5.2"><span class="ltx_text" id="S4.T2.3.3.8.5.2.1" style="font-size:90%;">38.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.5.3"><span class="ltx_text" id="S4.T2.3.3.8.5.3.1" style="font-size:90%;">23.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.5.4"><span class="ltx_text" id="S4.T2.3.3.8.5.4.1" style="font-size:90%;">-0.139</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.9.6.1"><span class="ltx_text" id="S4.T2.3.3.9.6.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.9.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.2.1" style="font-size:90%;background-color:#E6FFE6;">33.19 <span class="ltx_text" id="S4.T2.3.3.9.6.2.1.1" style="font-size:78%;color:#0000FF;">(-4.89)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.9.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.3.1" style="font-size:90%;background-color:#E6FFE6;">24.63 <span class="ltx_text" id="S4.T2.3.3.9.6.3.1.1" style="font-size:78%;color:#0000FF;">(+1.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.9.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.4.1" style="font-size:90%;background-color:#E6FFE6;">0.134 <span class="ltx_text" id="S4.T2.3.3.9.6.4.1.1" style="font-size:78%;color:#0000FF;">(+0.28)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.10.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.3.3.10.7.1" rowspan="6"><span class="ltx_text" id="S4.T2.3.3.10.7.1.1" style="font-size:90%;">✓</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.10.7.2"><span class="ltx_text" id="S4.T2.3.3.10.7.2.1" style="font-size:90%;">Vanilla</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.10.7.3"><span class="ltx_text" id="S4.T2.3.3.10.7.3.1" style="font-size:90%;">23.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.10.7.4"><span class="ltx_text" id="S4.T2.3.3.10.7.4.1" style="font-size:90%;">25.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.10.7.5"><span class="ltx_text" id="S4.T2.3.3.10.7.5.1" style="font-size:90%;">0.425</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.11.8.1"><span class="ltx_text" id="S4.T2.3.3.11.8.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.11.8.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.8.2.1" style="font-size:90%;background-color:#E6FFE6;">19.01 <span class="ltx_text" id="S4.T2.3.3.11.8.2.1.1" style="font-size:78%;color:#0000FF;">(-4.38)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.11.8.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.8.3.1" style="font-size:90%;background-color:#E6FFE6;">26.61 <span class="ltx_text" id="S4.T2.3.3.11.8.3.1.1" style="font-size:78%;color:#0000FF;">(+0.70)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.11.8.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.11.8.4.1" style="font-size:90%;background-color:#E6FFE6;">0.622 <span class="ltx_text" id="S4.T2.3.3.11.8.4.1.1" style="font-size:78%;color:#0000FF;">(+0.20)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.12.9.1">
<span class="ltx_text" id="S4.T2.3.3.12.9.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.12.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T2.3.3.12.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.12.9.2"><span class="ltx_text" id="S4.T2.3.3.12.9.2.1" style="font-size:90%;">24.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.12.9.3"><span class="ltx_text" id="S4.T2.3.3.12.9.3.1" style="font-size:90%;">25.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.12.9.4"><span class="ltx_text" id="S4.T2.3.3.12.9.4.1" style="font-size:90%;">0.478</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.13.10.1"><span class="ltx_text" id="S4.T2.3.3.13.10.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.13.10.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.13.10.2.1" style="font-size:90%;background-color:#E6FFE6;">20.11 <span class="ltx_text" id="S4.T2.3.3.13.10.2.1.1" style="font-size:78%;color:#0000FF;">(-4.21)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.13.10.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.13.10.3.1" style="font-size:90%;background-color:#E6FFE6;">26.41 <span class="ltx_text" id="S4.T2.3.3.13.10.3.1.1" style="font-size:78%;color:#0000FF;">(+0.99)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.13.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.13.10.4.1" style="font-size:90%;background-color:#E6FFE6;">0.726 <span class="ltx_text" id="S4.T2.3.3.13.10.4.1.1" style="font-size:78%;color:#0000FF;">(+0.25)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.14.11.1">
<span class="ltx_text" id="S4.T2.3.3.14.11.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.14.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T2.3.3.14.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.14.11.2"><span class="ltx_text" id="S4.T2.3.3.14.11.2.1" style="font-size:90%;">26.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.14.11.3"><span class="ltx_text" id="S4.T2.3.3.14.11.3.1" style="font-size:90%;">25.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.14.11.4"><span class="ltx_text" id="S4.T2.3.3.14.11.4.1" style="font-size:90%;">0.431</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.3.3.15.12.1"><span class="ltx_text" id="S4.T2.3.3.15.12.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.3.15.12.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.15.12.2.1" style="font-size:90%;background-color:#E6FFE6;">22.08 <span class="ltx_text" id="S4.T2.3.3.15.12.2.1.1" style="font-size:78%;color:#0000FF;">(-4.80)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.3.15.12.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.15.12.3.1" style="font-size:90%;background-color:#E6FFE6;">26.49 <span class="ltx_text" id="S4.T2.3.3.15.12.3.1.1" style="font-size:78%;color:#0000FF;">(+1.10)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.3.15.12.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.15.12.4.1" style="font-size:90%;background-color:#E6FFE6;">0.689 <span class="ltx_text" id="S4.T2.3.3.15.12.4.1.1" style="font-size:78%;color:#0000FF;">(+0.26)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different guidance sampling methods applied to a diffusion model for image generation on the MS-COCO dataset.  The methods compared include Classifier-Free Guidance (CFG), Perturbed Attention Guidance (PAG), and Smooth Energy Guidance (SEG), each with and without the addition of the proposed PLADIS method.  The evaluation metrics used are Frechet Inception Distance (FID), CLIPScore, and ImageReward. Lower FID values indicate better image quality, higher CLIPScore values indicate better alignment between generated images and text prompts, and higher ImageReward values indicate higher human preference.  The bold values in the table highlight the best performance for each metric across all the methods tested.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results of various guidance methods on the MS-COCO dataset. Bold text indicates the best performance for each metric across the different methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.4.5"><span class="ltx_text" id="S4.T3.4.4.4.5.1" style="font-size:90%;">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.4.6"><span class="ltx_text" id="S4.T3.4.4.4.6.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.2.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.3.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4">
<span class="ltx_text" id="S4.T3.4.4.4.4.1" style="font-size:90%;">HPSv2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.6.1.1" rowspan="6"><span class="ltx_text" id="S4.T3.5.5.6.1.1.1" style="font-size:90%;">Drawbench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.6.1.2">
<span class="ltx_text" id="S4.T3.5.5.6.1.2.1" style="font-size:90%;">CFG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.6.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T3.5.5.6.1.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.3"><span class="ltx_text" id="S4.T3.5.5.6.1.3.1" style="font-size:90%;">26.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.4"><span class="ltx_text" id="S4.T3.5.5.6.1.4.1" style="font-size:90%;">21.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.5"><span class="ltx_text" id="S4.T3.5.5.6.1.5.1" style="font-size:90%;">0.198</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.6"><span class="ltx_text" id="S4.T3.5.5.6.1.6.1" style="font-size:90%;">26.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.5.1" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.5.1.1" style="font-size:90%;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.2" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.5.2.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.2.1.1" style="background-color:#E6FFE6;">27.72 <span class="ltx_text" id="S4.T3.5.5.5.2.1.1.1" style="font-size:78%;color:#0000FF;">(+1.09)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.3" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.5.3.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.3.1.1" style="background-color:#E6FFE6;">21.94 <span class="ltx_text" id="S4.T3.5.5.5.3.1.1.1" style="font-size:78%;color:#0000FF;">(+0.22)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.4" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.5.4.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.4.1.1" style="background-color:#E6FFE6;">0.419 <span class="ltx_text" id="S4.T3.5.5.5.4.1.1.1" style="font-size:78%;color:#0000FF;">(+0.22)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.5" style="background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1" style="font-size:90%;background-color:#E6FFE6;">27.10 <span class="ltx_text" id="S4.T3.5.5.5.5.1.1" style="font-size:78%;color:#0000FF;">(+0.24)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.7.2.1">
<span class="ltx_text" id="S4.T3.5.5.7.2.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.7.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T3.5.5.7.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.2"><span class="ltx_text" id="S4.T3.5.5.7.2.2.1" style="font-size:90%;">26.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.3"><span class="ltx_text" id="S4.T3.5.5.7.2.3.1" style="font-size:90%;">21.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.4"><span class="ltx_text" id="S4.T3.5.5.7.2.4.1" style="font-size:90%;">0.295</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.5"><span class="ltx_text" id="S4.T3.5.5.7.2.5.1" style="font-size:90%;">28.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.8.3.1" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.8.3.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.8.3.2" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.8.3.2.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.8.3.2.1.1" style="background-color:#E6FFE6;">27.23 <span class="ltx_text" id="S4.T3.5.5.8.3.2.1.1.1" style="font-size:78%;color:#0000FF;">(+1.05)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.8.3.3" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.8.3.3.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.8.3.3.1.1" style="background-color:#E6FFE6;">22.16 <span class="ltx_text" id="S4.T3.5.5.8.3.3.1.1.1" style="font-size:78%;color:#0000FF;">(+0.22)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.8.3.4" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.8.3.4.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.8.3.4.1.1" style="background-color:#E6FFE6;">0.570 <span class="ltx_text" id="S4.T3.5.5.8.3.4.1.1.1" style="font-size:78%;color:#0000FF;">(+0.27)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.8.3.5" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.8.3.5.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.8.3.5.1.1" style="background-color:#E6FFE6;">28.93 <span class="ltx_text" id="S4.T3.5.5.8.3.5.1.1.1" style="font-size:78%;color:#0000FF;">(+0.28)</span></span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.9.4.1">
<span class="ltx_text" id="S4.T3.5.5.9.4.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.9.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T3.5.5.9.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.4.2"><span class="ltx_text" id="S4.T3.5.5.9.4.2.1" style="font-size:90%;">26.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.4.3"><span class="ltx_text" id="S4.T3.5.5.9.4.3.1" style="font-size:90%;">21.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.4.4"><span class="ltx_text" id="S4.T3.5.5.9.4.4.1" style="font-size:90%;">0.291</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.9.4.5"><span class="ltx_text" id="S4.T3.5.5.9.4.5.1" style="font-size:90%;">28.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.10.5.1"><span class="ltx_text" id="S4.T3.5.5.10.5.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.10.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.10.5.2.1" style="font-size:90%;background-color:#E6FFE6;">27.41 <span class="ltx_text" id="S4.T3.5.5.10.5.2.1.1" style="font-size:78%;color:#0000FF;">(+1.34)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.10.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.10.5.3.1" style="font-size:90%;background-color:#E6FFE6;">21.99 <span class="ltx_text" id="S4.T3.5.5.10.5.3.1.1" style="font-size:78%;color:#0000FF;">(+0.20)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.10.5.4.1" style="font-size:90%;background-color:#E6FFE6;">0.497 <span class="ltx_text" id="S4.T3.5.5.10.5.4.1.1" style="font-size:78%;color:#0000FF;">(+0.21)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.10.5.5.1" style="font-size:90%;background-color:#E6FFE6;">29.08 <span class="ltx_text" id="S4.T3.5.5.10.5.5.1.1" style="font-size:78%;color:#0000FF;">(+0.37)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.11.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.11.6.1" rowspan="6"><span class="ltx_text" id="S4.T3.5.5.11.6.1.1" style="font-size:90%;">HPD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.11.6.2">
<span class="ltx_text" id="S4.T3.5.5.11.6.2.1" style="font-size:90%;">CFG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.11.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T3.5.5.11.6.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.3"><span class="ltx_text" id="S4.T3.5.5.11.6.3.1" style="font-size:90%;">29.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.4"><span class="ltx_text" id="S4.T3.5.5.11.6.4.1" style="font-size:90%;">21.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.5"><span class="ltx_text" id="S4.T3.5.5.11.6.5.1" style="font-size:90%;">0.567</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.6"><span class="ltx_text" id="S4.T3.5.5.11.6.6.1" style="font-size:90%;">28.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.12.7.1"><span class="ltx_text" id="S4.T3.5.5.12.7.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.12.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.12.7.2.1" style="font-size:90%;background-color:#E6FFE6;">29.78 <span class="ltx_text" id="S4.T3.5.5.12.7.2.1.1" style="font-size:78%;color:#0000FF;">(+0.78)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.12.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.12.7.3.1" style="font-size:90%;background-color:#E6FFE6;">22.11 <span class="ltx_text" id="S4.T3.5.5.12.7.3.1.1" style="font-size:78%;color:#0000FF;">(+0.13)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.12.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.12.7.4.1" style="font-size:90%;background-color:#E6FFE6;">0.693 <span class="ltx_text" id="S4.T3.5.5.12.7.4.1.1" style="font-size:78%;color:#0000FF;">(+0.13)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.12.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.12.7.5.1" style="font-size:90%;background-color:#E6FFE6;">28.54 <span class="ltx_text" id="S4.T3.5.5.12.7.5.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.13.8.1">
<span class="ltx_text" id="S4.T3.5.5.13.8.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.13.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T3.5.5.13.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.13.8.2"><span class="ltx_text" id="S4.T3.5.5.13.8.2.1" style="font-size:90%;">28.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.13.8.3"><span class="ltx_text" id="S4.T3.5.5.13.8.3.1" style="font-size:90%;">22.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.13.8.4"><span class="ltx_text" id="S4.T3.5.5.13.8.4.1" style="font-size:90%;">0.637</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.13.8.5"><span class="ltx_text" id="S4.T3.5.5.13.8.5.1" style="font-size:90%;">30.64</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.14.9.1" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.14.9.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.14.9.2" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.14.9.2.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.14.9.2.1.1" style="background-color:#E6FFE6;">28.93 <span class="ltx_text" id="S4.T3.5.5.14.9.2.1.1.1" style="font-size:78%;color:#0000FF;">(+0.92)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.14.9.3" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.14.9.3.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.14.9.3.1.1" style="background-color:#E6FFE6;">22.35 <span class="ltx_text" id="S4.T3.5.5.14.9.3.1.1.1" style="font-size:78%;color:#0000FF;">(+0.22)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.14.9.4" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.14.9.4.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.14.9.4.1.1" style="background-color:#E6FFE6;">0.828 <span class="ltx_text" id="S4.T3.5.5.14.9.4.1.1.1" style="font-size:78%;color:#0000FF;">(+0.19)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.14.9.5" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.14.9.5.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.14.9.5.1.1" style="background-color:#E6FFE6;">31.12 <span class="ltx_text" id="S4.T3.5.5.14.9.5.1.1.1" style="font-size:78%;color:#0000FF;">(+0.48)</span></span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.15.10.1">
<span class="ltx_text" id="S4.T3.5.5.15.10.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.15.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T3.5.5.15.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.15.10.2"><span class="ltx_text" id="S4.T3.5.5.15.10.2.1" style="font-size:90%;">28.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.15.10.3"><span class="ltx_text" id="S4.T3.5.5.15.10.3.1" style="font-size:90%;">21.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.15.10.4"><span class="ltx_text" id="S4.T3.5.5.15.10.4.1" style="font-size:90%;">0.673</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.15.10.5"><span class="ltx_text" id="S4.T3.5.5.15.10.5.1" style="font-size:90%;">30.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.16.11.1"><span class="ltx_text" id="S4.T3.5.5.16.11.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.16.11.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.16.11.2.1" style="font-size:90%;background-color:#E6FFE6;">29.21 <span class="ltx_text" id="S4.T3.5.5.16.11.2.1.1" style="font-size:78%;color:#0000FF;">(+1.00)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.16.11.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.16.11.3.1" style="font-size:90%;background-color:#E6FFE6;">22.15 <span class="ltx_text" id="S4.T3.5.5.16.11.3.1.1" style="font-size:78%;color:#0000FF;">(+0.17)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.16.11.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.16.11.4.1" style="font-size:90%;background-color:#E6FFE6;">0.786 <span class="ltx_text" id="S4.T3.5.5.16.11.4.1.1" style="font-size:78%;color:#0000FF;">(+0.11)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.16.11.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.16.11.5.1" style="font-size:90%;background-color:#E6FFE6;">30.75 <span class="ltx_text" id="S4.T3.5.5.16.11.5.1.1" style="font-size:78%;color:#0000FF;">(+0.27)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.17.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.5.5.17.12.1" rowspan="9"><span class="ltx_text" id="S4.T3.5.5.17.12.1.1" style="font-size:90%;">Pick-a-pic <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.17.12.2">
<span class="ltx_text" id="S4.T3.5.5.17.12.2.1" style="font-size:90%;">CFG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.17.12.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T3.5.5.17.12.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.17.12.3"><span class="ltx_text" id="S4.T3.5.5.17.12.3.1" style="font-size:90%;">27.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.17.12.4"><span class="ltx_text" id="S4.T3.5.5.17.12.4.1" style="font-size:90%;">21.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.17.12.5"><span class="ltx_text" id="S4.T3.5.5.17.12.5.1" style="font-size:90%;">0.340</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.17.12.6"><span class="ltx_text" id="S4.T3.5.5.17.12.6.1" style="font-size:90%;">28.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.18.13.1"><span class="ltx_text" id="S4.T3.5.5.18.13.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.18.13.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.18.13.2.1" style="font-size:90%;background-color:#E6FFE6;">27.97 <span class="ltx_text" id="S4.T3.5.5.18.13.2.1.1" style="font-size:78%;color:#0000FF;">(+0.89)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.18.13.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.18.13.3.1" style="font-size:90%;background-color:#E6FFE6;">21.69 <span class="ltx_text" id="S4.T3.5.5.18.13.3.1.1" style="font-size:78%;color:#0000FF;">(+0.09)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.18.13.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.18.13.4.1" style="font-size:90%;background-color:#E6FFE6;">0.466 <span class="ltx_text" id="S4.T3.5.5.18.13.4.1.1" style="font-size:78%;color:#0000FF;">(+0.13)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.18.13.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.18.13.5.1" style="font-size:90%;background-color:#E6FFE6;">28.14 <span class="ltx_text" id="S4.T3.5.5.18.13.5.1.1" style="font-size:78%;color:#0000FF;">(+0.09)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.19.14.1">
<span class="ltx_text" id="S4.T3.5.5.19.14.1.1" style="font-size:90%;">PAG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.19.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T3.5.5.19.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.19.14.2"><span class="ltx_text" id="S4.T3.5.5.19.14.2.1" style="font-size:90%;">26.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.19.14.3"><span class="ltx_text" id="S4.T3.5.5.19.14.3.1" style="font-size:90%;">21.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.19.14.4"><span class="ltx_text" id="S4.T3.5.5.19.14.4.1" style="font-size:90%;">0.467</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.19.14.5"><span class="ltx_text" id="S4.T3.5.5.19.14.5.1" style="font-size:90%;">29.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.20.15.1" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.20.15.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.20.15.2" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.20.15.2.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.20.15.2.1.1" style="background-color:#E6FFE6;">27.31 <span class="ltx_text" id="S4.T3.5.5.20.15.2.1.1.1" style="font-size:78%;color:#0000FF;">(+0.97)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.20.15.3" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.20.15.3.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.20.15.3.1.1" style="background-color:#E6FFE6;">21.67 <span class="ltx_text" id="S4.T3.5.5.20.15.3.1.1.1" style="font-size:78%;color:#0000FF;">(+0.18)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.20.15.4" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.20.15.4.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.20.15.4.1.1" style="background-color:#E6FFE6;">0.668
<span class="ltx_text" id="S4.T3.5.5.20.15.4.1.1.1" style="font-size:78%;color:#0000FF;">(+0.20)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.20.15.5" style="background-color:#E6FFE6;"><span class="ltx_text" id="S4.T3.5.5.20.15.5.1" style="font-size:90%;background-color:#E6FFE6;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.20.15.5.1.1" style="background-color:#E6FFE6;">30.38 <span class="ltx_text" id="S4.T3.5.5.20.15.5.1.1.1" style="font-size:78%;color:#0000FF;">(+0.47)</span></span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.21.16.1">
<span class="ltx_text" id="S4.T3.5.5.21.16.1.1" style="font-size:90%;">SEG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.5.5.21.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T3.5.5.21.16.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.21.16.2"><span class="ltx_text" id="S4.T3.5.5.21.16.2.1" style="font-size:90%;">26.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.21.16.3"><span class="ltx_text" id="S4.T3.5.5.21.16.3.1" style="font-size:90%;">21.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.21.16.4"><span class="ltx_text" id="S4.T3.5.5.21.16.4.1" style="font-size:90%;">0.461</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.21.16.5"><span class="ltx_text" id="S4.T3.5.5.21.16.5.1" style="font-size:90%;">29.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.22.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.5.5.22.17.1"><span class="ltx_text" id="S4.T3.5.5.22.17.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.22.17.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.22.17.2.1" style="font-size:90%;background-color:#E6FFE6;">27.50 <span class="ltx_text" id="S4.T3.5.5.22.17.2.1.1" style="font-size:78%;color:#0000FF;">(+1.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.22.17.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.22.17.3.1" style="font-size:90%;background-color:#E6FFE6;">21.48 <span class="ltx_text" id="S4.T3.5.5.22.17.3.1.1" style="font-size:78%;color:#0000FF;">(+0.12)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.22.17.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.22.17.4.1" style="font-size:90%;background-color:#E6FFE6;">0.613 <span class="ltx_text" id="S4.T3.5.5.22.17.4.1.1" style="font-size:78%;color:#0000FF;">(+0.15)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.22.17.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.22.17.5.1" style="font-size:90%;background-color:#E6FFE6;">30.15 <span class="ltx_text" id="S4.T3.5.5.22.17.5.1.1" style="font-size:78%;color:#0000FF;">(+0.77)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different guidance methods (CFG, PAG, SEG) on text-to-image generation across multiple datasets (Drawbench, HPD, Pick-a-pic).  It evaluates the effectiveness of each method by measuring CLIPScore (evaluates text-image alignment), PickScore (human preference), and ImageReward (another measure of human preference).  The results are displayed for each method individually and when combined with the proposed PLADIS method. The bold text highlights the best performance for each metric on each dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison of text alignment and human preference across datasets using various guidance methods. For PAG, SEG, CFG guidance is used jointly. Bold text indicates the best performance for each metric.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.9.9.10.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.9.9.10.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T4.9.9.10.1.2">
<span class="ltx_text" id="S4.T4.9.9.10.1.2.1" style="font-size:90%;">Drawbench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.10.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T4.9.9.10.1.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T4.9.9.10.1.3">
<span class="ltx_text" id="S4.T4.9.9.10.1.3.1" style="font-size:90%;">HPD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.10.1.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T4.9.9.10.1.3.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T4.9.9.10.1.4">
<span class="ltx_text" id="S4.T4.9.9.10.1.4.1" style="font-size:90%;">Pick-a-pic </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.10.1.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S4.T4.9.9.10.1.4.3.2" style="font-size:90%;">]</span></cite>
</th>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T4.9.9.9.10"><span class="ltx_text" id="S4.T4.9.9.9.10.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.2.2.2.2">
<span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.3.3">
<span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.4">
<span class="ltx_text" id="S4.T4.4.4.4.4.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.5.5">
<span class="ltx_text" id="S4.T4.5.5.5.5.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.m1.1b"><ci id="S4.T4.5.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.6.6.6">
<span class="ltx_text" id="S4.T4.6.6.6.6.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.6.6.6.6.m1.1"><semantics id="S4.T4.6.6.6.6.m1.1a"><mo id="S4.T4.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.6.m1.1b"><ci id="S4.T4.6.6.6.6.m1.1.1.cmml" xref="S4.T4.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.7.7.7.7">
<span class="ltx_text" id="S4.T4.7.7.7.7.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.7.7.7.7.m1.1"><semantics id="S4.T4.7.7.7.7.m1.1a"><mo id="S4.T4.7.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.7.m1.1b"><ci id="S4.T4.7.7.7.7.m1.1.1.cmml" xref="S4.T4.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.8.8.8.8">
<span class="ltx_text" id="S4.T4.8.8.8.8.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.8.8.8.8.m1.1"><semantics id="S4.T4.8.8.8.8.m1.1a"><mo id="S4.T4.8.8.8.8.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.8.m1.1b"><ci id="S4.T4.8.8.8.8.m1.1.1.cmml" xref="S4.T4.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.9.9.9.9">
<span class="ltx_text" id="S4.T4.9.9.9.9.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.9.9.9.9.m1.1"><semantics id="S4.T4.9.9.9.9.m1.1a"><mo id="S4.T4.9.9.9.9.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.9.m1.1b"><ci id="S4.T4.9.9.9.9.m1.1.1.cmml" xref="S4.T4.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.9.9.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.11.1.1">
<span class="ltx_text" id="S4.T4.9.9.11.1.1.1" style="font-size:90%;">Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.11.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T4.9.9.11.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.2"><span class="ltx_text" id="S4.T4.9.9.11.1.2.1" style="font-size:90%;">27.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.3"><span class="ltx_text" id="S4.T4.9.9.11.1.3.1" style="font-size:90%;">22.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.4"><span class="ltx_text" id="S4.T4.9.9.11.1.4.1" style="font-size:90%;">0.555</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.5"><span class="ltx_text" id="S4.T4.9.9.11.1.5.1" style="font-size:90%;">29.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.6"><span class="ltx_text" id="S4.T4.9.9.11.1.6.1" style="font-size:90%;">22.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.7"><span class="ltx_text" id="S4.T4.9.9.11.1.7.1" style="font-size:90%;">0.733</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.8"><span class="ltx_text" id="S4.T4.9.9.11.1.8.1" style="font-size:90%;">27.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.9"><span class="ltx_text" id="S4.T4.9.9.11.1.9.1" style="font-size:90%;">21.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.1.10"><span class="ltx_text" id="S4.T4.9.9.11.1.10.1" style="font-size:90%;">0.625</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.12.2" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.12.2.1"><span class="ltx_text" id="S4.T4.9.9.12.2.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.2.1" style="font-size:90%;background-color:#E6FFE6;">28.55 <span class="ltx_text" id="S4.T4.9.9.12.2.2.1.1" style="font-size:78%;color:#0000FF;">(+0.73)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.3.1" style="font-size:90%;background-color:#E6FFE6;">22.18 <span class="ltx_text" id="S4.T4.9.9.12.2.3.1.1" style="font-size:78%;color:#0000FF;">(+0.07)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.4.1" style="font-size:90%;background-color:#E6FFE6;">0.601 <span class="ltx_text" id="S4.T4.9.9.12.2.4.1.1" style="font-size:78%;color:#0000FF;">(+0.05)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.5.1" style="font-size:90%;background-color:#E6FFE6;">29.56 <span class="ltx_text" id="S4.T4.9.9.12.2.5.1.1" style="font-size:78%;color:#0000FF;">(+0.50)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.6.1" style="font-size:90%;background-color:#E6FFE6;">22.44 <span class="ltx_text" id="S4.T4.9.9.12.2.6.1.1" style="font-size:78%;color:#0000FF;">(+0.05)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.7"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.7.1" style="font-size:90%;background-color:#E6FFE6;">0.754 <span class="ltx_text" id="S4.T4.9.9.12.2.7.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.8"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.8.1" style="font-size:90%;background-color:#E6FFE6;">27.92 <span class="ltx_text" id="S4.T4.9.9.12.2.8.1.1" style="font-size:78%;color:#0000FF;">(+0.52)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.9"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.9.1" style="font-size:90%;background-color:#E6FFE6;">21.77 <span class="ltx_text" id="S4.T4.9.9.12.2.9.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.12.2.10"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.12.2.10.1" style="font-size:90%;background-color:#E6FFE6;">0.657 <span class="ltx_text" id="S4.T4.9.9.12.2.10.1.1" style="font-size:78%;color:#0000FF;">(+0.03)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.13.3.1">
<span class="ltx_text" id="S4.T4.9.9.13.3.1.1" style="font-size:90%;">Light </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.13.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S4.T4.9.9.13.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.2"><span class="ltx_text" id="S4.T4.9.9.13.3.2.1" style="font-size:90%;">26.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.3"><span class="ltx_text" id="S4.T4.9.9.13.3.3.1" style="font-size:90%;">22.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.4"><span class="ltx_text" id="S4.T4.9.9.13.3.4.1" style="font-size:90%;">0.625</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.5"><span class="ltx_text" id="S4.T4.9.9.13.3.5.1" style="font-size:90%;">28.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.6"><span class="ltx_text" id="S4.T4.9.9.13.3.6.1" style="font-size:90%;">22.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.7"><span class="ltx_text" id="S4.T4.9.9.13.3.7.1" style="font-size:90%;">0.931</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.8"><span class="ltx_text" id="S4.T4.9.9.13.3.8.1" style="font-size:90%;">27.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.9"><span class="ltx_text" id="S4.T4.9.9.13.3.9.1" style="font-size:90%;">22.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.13.3.10"><span class="ltx_text" id="S4.T4.9.9.13.3.10.1" style="font-size:90%;">0.827</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.14.4" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.14.4.1"><span class="ltx_text" id="S4.T4.9.9.14.4.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.2.1" style="font-size:90%;background-color:#E6FFE6;">27.70 <span class="ltx_text" id="S4.T4.9.9.14.4.2.1.1" style="font-size:78%;color:#0000FF;">(+0.84)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.3.1" style="font-size:90%;background-color:#E6FFE6;">22.39 <span class="ltx_text" id="S4.T4.9.9.14.4.3.1.1" style="font-size:78%;color:#0000FF;">(+0.09)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.4.1" style="font-size:90%;background-color:#E6FFE6;">0.738 <span class="ltx_text" id="S4.T4.9.9.14.4.4.1.1" style="font-size:78%;color:#0000FF;">(+0.11)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.5.1" style="font-size:90%;background-color:#E6FFE6;">29.41 <span class="ltx_text" id="S4.T4.9.9.14.4.5.1.1" style="font-size:78%;color:#0000FF;">(+0.64)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.6.1" style="font-size:90%;background-color:#E6FFE6;">22.76 <span class="ltx_text" id="S4.T4.9.9.14.4.6.1.1" style="font-size:78%;color:#0000FF;">(+0.06)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.7"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.7.1" style="font-size:90%;background-color:#E6FFE6;">1.011 <span class="ltx_text" id="S4.T4.9.9.14.4.7.1.1" style="font-size:78%;color:#0000FF;">(+0.08)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.8"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.8.1" style="font-size:90%;background-color:#E6FFE6;">27.91 <span class="ltx_text" id="S4.T4.9.9.14.4.8.1.1" style="font-size:78%;color:#0000FF;">(+0.72)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.9"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.9.1" style="font-size:90%;background-color:#E6FFE6;">22.09 <span class="ltx_text" id="S4.T4.9.9.14.4.9.1.1" style="font-size:78%;color:#0000FF;">(+0.06)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.14.4.10"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.14.4.10.1" style="font-size:90%;background-color:#E6FFE6;">0.891 <span class="ltx_text" id="S4.T4.9.9.14.4.10.1.1" style="font-size:78%;color:#0000FF;">(+0.07)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.15.5.1">
<span class="ltx_text" id="S4.T4.9.9.15.5.1.1" style="font-size:90%;">DMD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.15.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T4.9.9.15.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.2"><span class="ltx_text" id="S4.T4.9.9.15.5.2.1" style="font-size:90%;">28.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.3"><span class="ltx_text" id="S4.T4.9.9.15.5.3.1" style="font-size:90%;">22.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.4"><span class="ltx_text" id="S4.T4.9.9.15.5.4.1" style="font-size:90%;">0.829</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.5"><span class="ltx_text" id="S4.T4.9.9.15.5.5.1" style="font-size:90%;">29.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.6"><span class="ltx_text" id="S4.T4.9.9.15.5.6.1" style="font-size:90%;">22.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.7"><span class="ltx_text" id="S4.T4.9.9.15.5.7.1" style="font-size:90%;">1.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.8"><span class="ltx_text" id="S4.T4.9.9.15.5.8.1" style="font-size:90%;">28.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.9"><span class="ltx_text" id="S4.T4.9.9.15.5.9.1" style="font-size:90%;">21.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.15.5.10"><span class="ltx_text" id="S4.T4.9.9.15.5.10.1" style="font-size:90%;">0.983</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.16.6" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.16.6.1"><span class="ltx_text" id="S4.T4.9.9.16.6.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.2.1" style="font-size:90%;background-color:#E6FFE6;">28.38 <span class="ltx_text" id="S4.T4.9.9.16.6.2.1.1" style="font-size:78%;color:#0000FF;">(+0.30)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.3.1" style="font-size:90%;background-color:#E6FFE6;">22.41 <span class="ltx_text" id="S4.T4.9.9.16.6.3.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.4.1" style="font-size:90%;background-color:#E6FFE6;">0.919
<span class="ltx_text" id="S4.T4.9.9.16.6.4.1.1" style="font-size:78%;color:#0000FF;">(+0.09)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.5.1" style="font-size:90%;background-color:#E6FFE6;">29.94 <span class="ltx_text" id="S4.T4.9.9.16.6.5.1.1" style="font-size:78%;color:#0000FF;">(+0.16)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.6.1" style="font-size:90%;background-color:#E6FFE6;">22.60 <span class="ltx_text" id="S4.T4.9.9.16.6.6.1.1" style="font-size:78%;color:#0000FF;">(+0.05)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.7"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.7.1" style="font-size:90%;background-color:#E6FFE6;">1.043 <span class="ltx_text" id="S4.T4.9.9.16.6.7.1.1" style="font-size:78%;color:#0000FF;">(+0.04)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.8"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.8.1" style="font-size:90%;background-color:#E6FFE6;">28.53 <span class="ltx_text" id="S4.T4.9.9.16.6.8.1.1" style="font-size:78%;color:#0000FF;">(+0.39)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.9"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.9.1" style="font-size:90%;background-color:#E6FFE6;">21.91 <span class="ltx_text" id="S4.T4.9.9.16.6.9.1.1" style="font-size:78%;color:#0000FF;">(+0.03)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6.10"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.16.6.10.1" style="font-size:90%;background-color:#E6FFE6;">0.993 <span class="ltx_text" id="S4.T4.9.9.16.6.10.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.17.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.17.7.1">
<span class="ltx_text" id="S4.T4.9.9.17.7.1.1" style="font-size:90%;">Hyper </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.9.9.17.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S4.T4.9.9.17.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.2"><span class="ltx_text" id="S4.T4.9.9.17.7.2.1" style="font-size:90%;">27.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.3"><span class="ltx_text" id="S4.T4.9.9.17.7.3.1" style="font-size:90%;">22.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.4"><span class="ltx_text" id="S4.T4.9.9.17.7.4.1" style="font-size:90%;">0.768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.5"><span class="ltx_text" id="S4.T4.9.9.17.7.5.1" style="font-size:90%;">29.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.6"><span class="ltx_text" id="S4.T4.9.9.17.7.6.1" style="font-size:90%;">22.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.7"><span class="ltx_text" id="S4.T4.9.9.17.7.7.1" style="font-size:90%;">1.123</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.8"><span class="ltx_text" id="S4.T4.9.9.17.7.8.1" style="font-size:90%;">27.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.9"><span class="ltx_text" id="S4.T4.9.9.17.7.9.1" style="font-size:90%;">22.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.17.7.10"><span class="ltx_text" id="S4.T4.9.9.17.7.10.1" style="font-size:90%;">1.023</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.18.8" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.1"><span class="ltx_text" id="S4.T4.9.9.18.8.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.2.1" style="font-size:90%;background-color:#E6FFE6;">28.22 <span class="ltx_text" id="S4.T4.9.9.18.8.2.1.1" style="font-size:78%;color:#0000FF;">(+0.71)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.3.1" style="font-size:90%;background-color:#E6FFE6;">22.60 <span class="ltx_text" id="S4.T4.9.9.18.8.3.1.1" style="font-size:78%;color:#0000FF;">(+0.07)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.4.1" style="font-size:90%;background-color:#E6FFE6;">0.867 <span class="ltx_text" id="S4.T4.9.9.18.8.4.1.1" style="font-size:78%;color:#0000FF;">(+0.10)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.5.1" style="font-size:90%;background-color:#E6FFE6;">29.80 <span class="ltx_text" id="S4.T4.9.9.18.8.5.1.1" style="font-size:78%;color:#0000FF;">(+0.53)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.6.1" style="font-size:90%;background-color:#E6FFE6;">22.96 <span class="ltx_text" id="S4.T4.9.9.18.8.6.1.1" style="font-size:78%;color:#0000FF;">(+0.10)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.7"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.7.1" style="font-size:90%;background-color:#E6FFE6;">1.184 <span class="ltx_text" id="S4.T4.9.9.18.8.7.1.1" style="font-size:78%;color:#0000FF;">(+0.06)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.8"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.8.1" style="font-size:90%;background-color:#E6FFE6;">28.27 <span class="ltx_text" id="S4.T4.9.9.18.8.8.1.1" style="font-size:78%;color:#0000FF;">(+0.64)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.9"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.9.1" style="font-size:90%;background-color:#E6FFE6;">22.23 <span class="ltx_text" id="S4.T4.9.9.18.8.9.1.1" style="font-size:78%;color:#0000FF;">(+0.08)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.9.18.8.10"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.18.8.10.1" style="font-size:90%;background-color:#E6FFE6;">1.111 <span class="ltx_text" id="S4.T4.9.9.18.8.10.1.1" style="font-size:78%;color:#0000FF;">(+0.09)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different guidance-distilled models' performance across multiple datasets when using a 4-step sampling process.  It compares various metrics (CLIPScore, PickScore, and ImageReward) to evaluate the models’ text alignment and image quality across datasets such as Drawbench, HPD, and Pick-a-pic.  The table also shows the impact of the proposed PLADIS method on the performance of each guidance-distilled model, highlighting the improvements achieved with PLADIS across different datasets and sampling methods. 
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative comparison across various datasets using 4-steps sampling with the guidance-distilled model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.14.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.9.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.7.1.1.1"><math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.7.1.1.1.m1.1"><semantics id="S5.T5.7.1.1.1.m1.1a"><mi id="S5.T5.7.1.1.1.m1.1.1" mathsize="90%" xref="S5.T5.7.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.7.1.1.1.m1.1b"><ci id="S5.T5.7.1.1.1.m1.1.1.cmml" xref="S5.T5.7.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.1.1.1.m1.1d">italic_α</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.9.3.3.4"><span class="ltx_text" id="S5.T5.9.3.3.4.1" style="font-size:90%;">1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.9.3.3.5"><span class="ltx_text" id="S5.T5.9.3.3.5.1" style="font-size:90%;">1.25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.9.3.3.6"><span class="ltx_text" id="S5.T5.9.3.3.6.1" style="font-size:90%;">1.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.9.3.3.7"><span class="ltx_text" id="S5.T5.9.3.3.7.1" style="font-size:90%;">1.75</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.9.3.3.8"><span class="ltx_text" id="S5.T5.9.3.3.8.1" style="font-size:90%;">2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.8.2.2.2">
<span class="ltx_text" id="S5.T5.8.2.2.2.1" style="font-size:90%;">Ours(</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.8.2.2.2.m1.1"><semantics id="S5.T5.8.2.2.2.m1.1a"><mi id="S5.T5.8.2.2.2.m1.1.1" mathsize="90%" xref="S5.T5.8.2.2.2.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.8.2.2.2.m1.1b"><ci id="S5.T5.8.2.2.2.m1.1.1.cmml" xref="S5.T5.8.2.2.2.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.2.2.2.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.2.2.2.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S5.T5.8.2.2.2.2" style="font-size:90%;"> = 1.5)</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T5.9.3.3.3">
<span class="ltx_text" id="S5.T5.9.3.3.3.1" style="font-size:90%;">Ours(</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.9.3.3.3.m1.1"><semantics id="S5.T5.9.3.3.3.m1.1a"><mi id="S5.T5.9.3.3.3.m1.1.1" mathsize="90%" xref="S5.T5.9.3.3.3.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.9.3.3.3.m1.1b"><ci id="S5.T5.9.3.3.3.m1.1.1.cmml" xref="S5.T5.9.3.3.3.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.3.3.3.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.3.3.3.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S5.T5.9.3.3.3.2" style="font-size:90%;"> = 2)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.10.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.4.4.1">
<span class="ltx_text" id="S5.T5.10.4.4.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.10.4.4.1.m1.1"><semantics id="S5.T5.10.4.4.1.m1.1a"><mo id="S5.T5.10.4.4.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.10.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.10.4.4.1.m1.1b"><ci id="S5.T5.10.4.4.1.m1.1.1.cmml" xref="S5.T5.10.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.10.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.10.4.4.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.10.4.4.2"><span class="ltx_text" id="S5.T5.10.4.4.2.1" style="font-size:90%;">33.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.4.4.3"><span class="ltx_text" id="S5.T5.10.4.4.3.1" style="font-size:90%;">32.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.4.4.4"><span class="ltx_text" id="S5.T5.10.4.4.4.1" style="font-size:90%;">31.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.4.4.5"><span class="ltx_text" id="S5.T5.10.4.4.5.1" style="font-size:90%;">31.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.10.4.4.6"><span class="ltx_text" id="S5.T5.10.4.4.6.1" style="font-size:90%;">30.87</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.10.4.4.7">
<span class="ltx_text" id="S5.T5.10.4.4.7.1" style="font-size:90%;">27.87 </span><span class="ltx_text" id="S5.T5.10.4.4.7.2" style="font-size:70%;color:#0000FF;">(-5.89)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.10.4.4.8">
<span class="ltx_text" id="S5.T5.10.4.4.8.1" style="font-size:90%;">26.88 </span><span class="ltx_text" id="S5.T5.10.4.4.8.2" style="font-size:70%;color:#0000FF;">(-6.88)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.11.5.5">
<td class="ltx_td ltx_align_center" id="S5.T5.11.5.5.1">
<span class="ltx_text" id="S5.T5.11.5.5.1.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.11.5.5.1.m1.1"><semantics id="S5.T5.11.5.5.1.m1.1a"><mo id="S5.T5.11.5.5.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.11.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.11.5.5.1.m1.1b"><ci id="S5.T5.11.5.5.1.m1.1.1.cmml" xref="S5.T5.11.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.11.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.11.5.5.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.11.5.5.2"><span class="ltx_text" id="S5.T5.11.5.5.2.1" style="font-size:90%;">25.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.11.5.5.3"><span class="ltx_text" id="S5.T5.11.5.5.3.1" style="font-size:90%;">25.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.11.5.5.4"><span class="ltx_text" id="S5.T5.11.5.5.4.1" style="font-size:90%;">25.87</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.11.5.5.5"><span class="ltx_text" id="S5.T5.11.5.5.5.1" style="font-size:90%;">25.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.11.5.5.6"><span class="ltx_text" id="S5.T5.11.5.5.6.1" style="font-size:90%;">25.95</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.11.5.5.7">
<span class="ltx_text" id="S5.T5.11.5.5.7.1" style="font-size:90%;">26.41 </span><span class="ltx_text" id="S5.T5.11.5.5.7.2" style="font-size:70%;color:#0000FF;">(+1.00)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.11.5.5.8">
<span class="ltx_text" id="S5.T5.11.5.5.8.1" style="font-size:90%;">26.56 </span><span class="ltx_text" id="S5.T5.11.5.5.8.2" style="font-size:70%;color:#0000FF;">(+1.15)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.12.6.6">
<td class="ltx_td ltx_align_center" id="S5.T5.12.6.6.1">
<span class="ltx_text" id="S5.T5.12.6.6.1.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.12.6.6.1.m1.1"><semantics id="S5.T5.12.6.6.1.m1.1a"><mo id="S5.T5.12.6.6.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.12.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.12.6.6.1.m1.1b"><ci id="S5.T5.12.6.6.1.m1.1.1.cmml" xref="S5.T5.12.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.12.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.12.6.6.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.12.6.6.2"><span class="ltx_text" id="S5.T5.12.6.6.2.1" style="font-size:90%;">0.478</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.12.6.6.3"><span class="ltx_text" id="S5.T5.12.6.6.3.1" style="font-size:90%;">0.617</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.12.6.6.4"><span class="ltx_text" id="S5.T5.12.6.6.4.1" style="font-size:90%;">0.647</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.12.6.6.5"><span class="ltx_text" id="S5.T5.12.6.6.5.1" style="font-size:90%;">0.653</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.12.6.6.6"><span class="ltx_text" id="S5.T5.12.6.6.6.1" style="font-size:90%;">0.648</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.12.6.6.7">
<span class="ltx_text" id="S5.T5.12.6.6.7.1" style="font-size:90%;">0.726 </span><span class="ltx_text" id="S5.T5.12.6.6.7.2" style="font-size:70%;color:#0000FF;">(+0.25)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.12.6.6.8">
<span class="ltx_text" id="S5.T5.12.6.6.8.1" style="font-size:90%;">0.649 </span><span class="ltx_text" id="S5.T5.12.6.6.8.2" style="font-size:70%;color:#0000FF;">(+0.001)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.13.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.13.7.7.1">
<span class="ltx_text" id="S5.T5.13.7.7.1.1" style="font-size:90%;">Inference Time (sec) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.13.7.7.1.m1.1"><semantics id="S5.T5.13.7.7.1.m1.1a"><mo id="S5.T5.13.7.7.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.13.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.13.7.7.1.m1.1b"><ci id="S5.T5.13.7.7.1.m1.1.1.cmml" xref="S5.T5.13.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.13.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.13.7.7.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.13.7.7.2"><span class="ltx_text ltx_font_bold" id="S5.T5.13.7.7.2.1" style="font-size:90%;">2.521</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.13.7.7.3"><span class="ltx_text" id="S5.T5.13.7.7.3.1" style="font-size:90%;">9.172</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.13.7.7.4"><span class="ltx_text" id="S5.T5.13.7.7.4.1" style="font-size:90%;">3.085</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.13.7.7.5"><span class="ltx_text" id="S5.T5.13.7.7.5.1" style="font-size:90%;">9.097</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.13.7.7.6"><span class="ltx_text" id="S5.T5.13.7.7.6.1" style="font-size:90%;">2.785</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.13.7.7.7">
<span class="ltx_text" id="S5.T5.13.7.7.7.1" style="font-size:90%;">3.087 </span><span class="ltx_text" id="S5.T5.13.7.7.7.2" style="font-size:70%;color:#FF0000;">(+0.56)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.13.7.7.8">
<span class="ltx_text" id="S5.T5.13.7.7.8.1" style="font-size:90%;">2.788 </span><span class="ltx_text" id="S5.T5.13.7.7.8.2" style="font-size:70%;color:#FF0000;">(+0.28)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.14.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.8.8.1">
<span class="ltx_text" id="S5.T5.14.8.8.1.1" style="font-size:90%;">Memory (G) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.14.8.8.1.m1.1"><semantics id="S5.T5.14.8.8.1.m1.1a"><mo id="S5.T5.14.8.8.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.14.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.14.8.8.1.m1.1b"><ci id="S5.T5.14.8.8.1.m1.1.1.cmml" xref="S5.T5.14.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.14.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.14.8.8.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.14.8.8.2"><span class="ltx_text ltx_font_bold" id="S5.T5.14.8.8.2.1" style="font-size:90%;">16.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.8.8.3"><span class="ltx_text" id="S5.T5.14.8.8.3.1" style="font-size:90%;">16.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.8.8.4"><span class="ltx_text" id="S5.T5.14.8.8.4.1" style="font-size:90%;">16.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.14.8.8.5"><span class="ltx_text" id="S5.T5.14.8.8.5.1" style="font-size:90%;">16.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.14.8.8.6"><span class="ltx_text" id="S5.T5.14.8.8.6.1" style="font-size:90%;">16.45</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.14.8.8.7">
<span class="ltx_text" id="S5.T5.14.8.8.7.1" style="font-size:90%;">16.45 </span><span class="ltx_text" id="S5.T5.14.8.8.7.2" style="font-size:70%;color:#FF0000;">(+0.01)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.14.8.8.8">
<span class="ltx_text" id="S5.T5.14.8.8.8.1" style="font-size:90%;">16.45 </span><span class="ltx_text" id="S5.T5.14.8.8.8.2" style="font-size:70%;color:#FF0000;">(+0.01)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of varying the αα parameter within the αα -Entmax function on the performance of the PLADIS method.  The study uses 25 sampling steps and measures the FID score, CLIPScore, ImageReward, inference time per prompt, and memory usage.  Different values of αα (1.0, 1.25, 1.5, 1.75, 2.0) are tested, comparing results against a baseline and the proposed PLADIS method with αα = 1.5 and αα = 2.0 to determine the optimal αα value for balancing performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the α𝛼\alphaitalic_α scale for α𝛼\alphaitalic_α-Entmax with 25 steps. Inference time is measured per prompt.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A5.T6.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T6.9.9.10.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A5.T6.9.9.10.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A5.T6.9.9.10.1.2">
<span class="ltx_text" id="A5.T6.9.9.10.1.2.1" style="font-size:90%;">Drawbench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.10.1.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="A5.T6.9.9.10.1.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A5.T6.9.9.10.1.3">
<span class="ltx_text" id="A5.T6.9.9.10.1.3.1" style="font-size:90%;">HPD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.10.1.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A5.T6.9.9.10.1.3.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A5.T6.9.9.10.1.4">
<span class="ltx_text" id="A5.T6.9.9.10.1.4.1" style="font-size:90%;">Pick-a-pic </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.10.1.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="A5.T6.9.9.10.1.4.3.2" style="font-size:90%;">]</span></cite>
</th>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A5.T6.9.9.9.10"><span class="ltx_text" id="A5.T6.9.9.9.10.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.1.1.1.1">
<span class="ltx_text" id="A5.T6.1.1.1.1.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.1.1.1.1.m1.1"><semantics id="A5.T6.1.1.1.1.m1.1a"><mo id="A5.T6.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.1.1.1.1.m1.1b"><ci id="A5.T6.1.1.1.1.m1.1.1.cmml" xref="A5.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.2.2.2.2">
<span class="ltx_text" id="A5.T6.2.2.2.2.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.2.2.2.2.m1.1"><semantics id="A5.T6.2.2.2.2.m1.1a"><mo id="A5.T6.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.2.2.2.2.m1.1b"><ci id="A5.T6.2.2.2.2.m1.1.1.cmml" xref="A5.T6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.3.3.3.3">
<span class="ltx_text" id="A5.T6.3.3.3.3.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.3.3.3.3.m1.1"><semantics id="A5.T6.3.3.3.3.m1.1a"><mo id="A5.T6.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.3.3.3.3.m1.1b"><ci id="A5.T6.3.3.3.3.m1.1.1.cmml" xref="A5.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.4.4.4.4">
<span class="ltx_text" id="A5.T6.4.4.4.4.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.4.4.4.4.m1.1"><semantics id="A5.T6.4.4.4.4.m1.1a"><mo id="A5.T6.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.4.4.4.4.m1.1b"><ci id="A5.T6.4.4.4.4.m1.1.1.cmml" xref="A5.T6.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.5.5.5.5">
<span class="ltx_text" id="A5.T6.5.5.5.5.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.5.5.5.5.m1.1"><semantics id="A5.T6.5.5.5.5.m1.1a"><mo id="A5.T6.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.5.5.5.5.m1.1b"><ci id="A5.T6.5.5.5.5.m1.1.1.cmml" xref="A5.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.6.6.6.6">
<span class="ltx_text" id="A5.T6.6.6.6.6.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.6.6.6.6.m1.1"><semantics id="A5.T6.6.6.6.6.m1.1a"><mo id="A5.T6.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.6.6.6.6.m1.1b"><ci id="A5.T6.6.6.6.6.m1.1.1.cmml" xref="A5.T6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.7.7.7.7">
<span class="ltx_text" id="A5.T6.7.7.7.7.1" style="font-size:90%;">CLIPScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.7.7.7.7.m1.1"><semantics id="A5.T6.7.7.7.7.m1.1a"><mo id="A5.T6.7.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.7.7.7.7.m1.1b"><ci id="A5.T6.7.7.7.7.m1.1.1.cmml" xref="A5.T6.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.8.8.8.8">
<span class="ltx_text" id="A5.T6.8.8.8.8.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.8.8.8.8.m1.1"><semantics id="A5.T6.8.8.8.8.m1.1a"><mo id="A5.T6.8.8.8.8.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.8.8.8.8.m1.1b"><ci id="A5.T6.8.8.8.8.m1.1.1.cmml" xref="A5.T6.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T6.9.9.9.9">
<span class="ltx_text" id="A5.T6.9.9.9.9.1" style="font-size:90%;">ImageReward </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.9.9.9.9.m1.1"><semantics id="A5.T6.9.9.9.9.m1.1a"><mo id="A5.T6.9.9.9.9.m1.1.1" mathsize="90%" stretchy="false" xref="A5.T6.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.9.9.9.9.m1.1b"><ci id="A5.T6.9.9.9.9.m1.1.1.cmml" xref="A5.T6.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T6.9.9.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.11.1.1">
<span class="ltx_text" id="A5.T6.9.9.11.1.1.1" style="font-size:90%;">Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.11.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="A5.T6.9.9.11.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.2"><span class="ltx_text" id="A5.T6.9.9.11.1.2.1" style="font-size:90%;">27.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.3"><span class="ltx_text" id="A5.T6.9.9.11.1.3.1" style="font-size:90%;">21.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.4"><span class="ltx_text" id="A5.T6.9.9.11.1.4.1" style="font-size:90%;">0.305</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.5"><span class="ltx_text" id="A5.T6.9.9.11.1.5.1" style="font-size:90%;">28.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.6"><span class="ltx_text" id="A5.T6.9.9.11.1.6.1" style="font-size:90%;">21.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.7"><span class="ltx_text" id="A5.T6.9.9.11.1.7.1" style="font-size:90%;">0.479</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.8"><span class="ltx_text" id="A5.T6.9.9.11.1.8.1" style="font-size:90%;">26.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.9"><span class="ltx_text" id="A5.T6.9.9.11.1.9.1" style="font-size:90%;">21.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.11.1.10"><span class="ltx_text" id="A5.T6.9.9.11.1.10.1" style="font-size:90%;">0.346</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.12.2" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.12.2.1"><span class="ltx_text" id="A5.T6.9.9.12.2.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.2"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.2.1" style="font-size:90%;background-color:#E6FFE6;">27.56 <span class="ltx_text" id="A5.T6.9.9.12.2.2.1.1" style="font-size:78%;color:#0000FF;">(+0.37)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.3"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.3.1" style="font-size:90%;background-color:#E6FFE6;">21.68 <span class="ltx_text" id="A5.T6.9.9.12.2.3.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.4"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.4.1" style="font-size:90%;background-color:#E6FFE6;">0.390 <span class="ltx_text" id="A5.T6.9.9.12.2.4.1.1" style="font-size:78%;color:#0000FF;">(+0.08)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.5"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.5.1" style="font-size:90%;background-color:#E6FFE6;">28.78 <span class="ltx_text" id="A5.T6.9.9.12.2.5.1.1" style="font-size:78%;color:#0000FF;">(+0.33)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.6"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.6.1" style="font-size:90%;background-color:#E6FFE6;">21.86 <span class="ltx_text" id="A5.T6.9.9.12.2.6.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.7"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.7.1" style="font-size:90%;background-color:#E6FFE6;">0.517 <span class="ltx_text" id="A5.T6.9.9.12.2.7.1.1" style="font-size:78%;color:#0000FF;">(+0.04)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.8"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.8.1" style="font-size:90%;background-color:#E6FFE6;">27.10 <span class="ltx_text" id="A5.T6.9.9.12.2.8.1.1" style="font-size:78%;color:#0000FF;">(+0.21)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.9"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.9.1" style="font-size:90%;background-color:#E6FFE6;">21.17 <span class="ltx_text" id="A5.T6.9.9.12.2.9.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.12.2.10"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.12.2.10.1" style="font-size:90%;background-color:#E6FFE6;">0.378 <span class="ltx_text" id="A5.T6.9.9.12.2.10.1.1" style="font-size:78%;color:#0000FF;">(+0.04)</span></span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.13.3.1">
<span class="ltx_text" id="A5.T6.9.9.13.3.1.1" style="font-size:90%;">Light </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.13.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="A5.T6.9.9.13.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.2"><span class="ltx_text" id="A5.T6.9.9.13.3.2.1" style="font-size:90%;">26.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.3"><span class="ltx_text" id="A5.T6.9.9.13.3.3.1" style="font-size:90%;">21.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.4"><span class="ltx_text" id="A5.T6.9.9.13.3.4.1" style="font-size:90%;">0.428</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.5"><span class="ltx_text" id="A5.T6.9.9.13.3.5.1" style="font-size:90%;">27.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.6"><span class="ltx_text" id="A5.T6.9.9.13.3.6.1" style="font-size:90%;">22.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.7"><span class="ltx_text" id="A5.T6.9.9.13.3.7.1" style="font-size:90%;">0.730</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.8"><span class="ltx_text" id="A5.T6.9.9.13.3.8.1" style="font-size:90%;">25.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.9"><span class="ltx_text" id="A5.T6.9.9.13.3.9.1" style="font-size:90%;">21.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.13.3.10"><span class="ltx_text" id="A5.T6.9.9.13.3.10.1" style="font-size:90%;">0.585</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.14.4" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.14.4.1"><span class="ltx_text" id="A5.T6.9.9.14.4.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.2"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.2.1" style="font-size:90%;background-color:#E6FFE6;">26.66 <span class="ltx_text" id="A5.T6.9.9.14.4.2.1.1" style="font-size:78%;color:#0000FF;">(+0.58)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.3"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.3.1" style="font-size:90%;background-color:#E6FFE6;">21.94 <span class="ltx_text" id="A5.T6.9.9.14.4.3.1.1" style="font-size:78%;color:#0000FF;">(+0.08)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.4"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.4.1" style="font-size:90%;background-color:#E6FFE6;">0.558 <span class="ltx_text" id="A5.T6.9.9.14.4.4.1.1" style="font-size:78%;color:#0000FF;">(+0.13)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.5"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.5.1" style="font-size:90%;background-color:#E6FFE6;">28.42 <span class="ltx_text" id="A5.T6.9.9.14.4.5.1.1" style="font-size:78%;color:#0000FF;">(+1.05)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.6"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.6.1" style="font-size:90%;background-color:#E6FFE6;">22.24 <span class="ltx_text" id="A5.T6.9.9.14.4.6.1.1" style="font-size:78%;color:#0000FF;">(+0.19)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.7"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.7.1" style="font-size:90%;background-color:#E6FFE6;">0.830 <span class="ltx_text" id="A5.T6.9.9.14.4.7.1.1" style="font-size:78%;color:#0000FF;">(+0.10)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.8"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.8.1" style="font-size:90%;background-color:#E6FFE6;">26.63 <span class="ltx_text" id="A5.T6.9.9.14.4.8.1.1" style="font-size:78%;color:#0000FF;">(+0.90)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.9"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.9.1" style="font-size:90%;background-color:#E6FFE6;">21.46 <span class="ltx_text" id="A5.T6.9.9.14.4.9.1.1" style="font-size:78%;color:#0000FF;">(+0.12)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.14.4.10"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.14.4.10.1" style="font-size:90%;background-color:#E6FFE6;">0.680 <span class="ltx_text" id="A5.T6.9.9.14.4.10.1.1" style="font-size:78%;color:#0000FF;">(+0.10)</span></span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.15.5.1">
<span class="ltx_text" id="A5.T6.9.9.15.5.1.1" style="font-size:90%;">DMD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.15.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="A5.T6.9.9.15.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.2"><span class="ltx_text" id="A5.T6.9.9.15.5.2.1" style="font-size:90%;">27.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.3"><span class="ltx_text" id="A5.T6.9.9.15.5.3.1" style="font-size:90%;">22.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.4"><span class="ltx_text" id="A5.T6.9.9.15.5.4.1" style="font-size:90%;">0.651</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.5"><span class="ltx_text" id="A5.T6.9.9.15.5.5.1" style="font-size:90%;">29.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.6"><span class="ltx_text" id="A5.T6.9.9.15.5.6.1" style="font-size:90%;">22.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.7"><span class="ltx_text" id="A5.T6.9.9.15.5.7.1" style="font-size:90%;">0.888</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.8"><span class="ltx_text" id="A5.T6.9.9.15.5.8.1" style="font-size:90%;">28.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.9"><span class="ltx_text" id="A5.T6.9.9.15.5.9.1" style="font-size:90%;">21.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.15.5.10"><span class="ltx_text" id="A5.T6.9.9.15.5.10.1" style="font-size:90%;">0.770</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.16.6" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.16.6.1"><span class="ltx_text" id="A5.T6.9.9.16.6.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.2"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.2.1" style="font-size:90%;background-color:#E6FFE6;">28.09
<span class="ltx_text" id="A5.T6.9.9.16.6.2.1.1" style="font-size:78%;color:#0000FF;">(+0.19)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.3"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.3.1" style="font-size:90%;background-color:#E6FFE6;">22.05 <span class="ltx_text" id="A5.T6.9.9.16.6.3.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.4"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.4.1" style="font-size:90%;background-color:#E6FFE6;">0.662
<span class="ltx_text" id="A5.T6.9.9.16.6.4.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.5"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.5.1" style="font-size:90%;background-color:#E6FFE6;">30.21 <span class="ltx_text" id="A5.T6.9.9.16.6.5.1.1" style="font-size:78%;color:#0000FF;">(+0.26)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.6"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.6.1" style="font-size:90%;background-color:#E6FFE6;">22.20 <span class="ltx_text" id="A5.T6.9.9.16.6.6.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.7"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.7.1" style="font-size:90%;background-color:#E6FFE6;">0.902 <span class="ltx_text" id="A5.T6.9.9.16.6.7.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.8"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.8.1" style="font-size:90%;background-color:#E6FFE6;">28.38 <span class="ltx_text" id="A5.T6.9.9.16.6.8.1.1" style="font-size:78%;color:#0000FF;">(+0.43)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.9"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.9.1" style="font-size:90%;background-color:#E6FFE6;">21.58 <span class="ltx_text" id="A5.T6.9.9.16.6.9.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.16.6.10"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.16.6.10.1" style="font-size:90%;background-color:#E6FFE6;">0.794 <span class="ltx_text" id="A5.T6.9.9.16.6.10.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.17.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T6.9.9.17.7.1">
<span class="ltx_text" id="A5.T6.9.9.17.7.1.1" style="font-size:90%;">Hyper </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T6.9.9.17.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07677v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="A5.T6.9.9.17.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.2"><span class="ltx_text" id="A5.T6.9.9.17.7.2.1" style="font-size:90%;">27.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.3"><span class="ltx_text" id="A5.T6.9.9.17.7.3.1" style="font-size:90%;">22.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.4"><span class="ltx_text" id="A5.T6.9.9.17.7.4.1" style="font-size:90%;">0.662</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.5"><span class="ltx_text" id="A5.T6.9.9.17.7.5.1" style="font-size:90%;">29.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.6"><span class="ltx_text" id="A5.T6.9.9.17.7.6.1" style="font-size:90%;">22.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.7"><span class="ltx_text" id="A5.T6.9.9.17.7.7.1" style="font-size:90%;">0.912</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.8"><span class="ltx_text" id="A5.T6.9.9.17.7.8.1" style="font-size:90%;">27.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.9"><span class="ltx_text" id="A5.T6.9.9.17.7.9.1" style="font-size:90%;">21.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.9.9.17.7.10"><span class="ltx_text" id="A5.T6.9.9.17.7.10.1" style="font-size:90%;">0.812</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.9.9.18.8" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.1"><span class="ltx_text" id="A5.T6.9.9.18.8.1.1" style="font-size:90%;background-color:#E6FFE6;">+ Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.2"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.2.1" style="font-size:90%;background-color:#E6FFE6;">27.80
<span class="ltx_text" id="A5.T6.9.9.18.8.2.1.1" style="font-size:78%;color:#0000FF;">(+0.39)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.3"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.3.1" style="font-size:90%;background-color:#E6FFE6;">22.30 <span class="ltx_text" id="A5.T6.9.9.18.8.3.1.1" style="font-size:78%;color:#0000FF;">(+0.03)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.4"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.4.1" style="font-size:90%;background-color:#E6FFE6;">0.674 <span class="ltx_text" id="A5.T6.9.9.18.8.4.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.5"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.5.1" style="font-size:90%;background-color:#E6FFE6;">29.42 <span class="ltx_text" id="A5.T6.9.9.18.8.5.1.1" style="font-size:78%;color:#0000FF;">(+0.33)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.6"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.6.1" style="font-size:90%;background-color:#E6FFE6;">22.65 <span class="ltx_text" id="A5.T6.9.9.18.8.6.1.1" style="font-size:78%;color:#0000FF;">(+0.04)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.7"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.7.1" style="font-size:90%;background-color:#E6FFE6;">0.932 <span class="ltx_text" id="A5.T6.9.9.18.8.7.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.8"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.8.1" style="font-size:90%;background-color:#E6FFE6;">27.85 <span class="ltx_text" id="A5.T6.9.9.18.8.8.1.1" style="font-size:78%;color:#0000FF;">(+0.56)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.9"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.9.1" style="font-size:90%;background-color:#E6FFE6;">21.92 <span class="ltx_text" id="A5.T6.9.9.18.8.9.1.1" style="font-size:78%;color:#0000FF;">(+0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T6.9.9.18.8.10"><span class="ltx_text ltx_font_bold" id="A5.T6.9.9.18.8.10.1" style="font-size:90%;background-color:#E6FFE6;">0.832 <span class="ltx_text" id="A5.T6.9.9.18.8.10.1.1" style="font-size:78%;color:#0000FF;">(+0.02)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different guidance-distilled models' performance on various datasets when using one-step sampling.  It shows the improvements achieved by integrating the PLADIS method with several state-of-the-art guidance-distilled models.  The comparison is made across three key metrics: CLIPScore, PickScore, and ImageReward, each indicating different aspects of image quality and text alignment.
> <details>
> <summary>read the caption</summary>
> Table 6: Quantitative comparison across various datasets using 1-steps sampling with the guidance-distilled model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07677/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07677/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}