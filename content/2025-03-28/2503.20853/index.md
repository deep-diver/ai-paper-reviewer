---
title: "Unified Multimodal Discrete Diffusion"
summary: "UniDisc: a unified multimodal discrete diffusion model for joint text and image generation, surpassing autoregressive models in quality & efficiency!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20853 {{< /keyword >}}
{{< keyword icon="writer" >}} Alexander Swerdlow et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20853" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20853" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20853/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal generative models, essential for understanding and generating across various modalities, are dominated by autoregressive approaches. These methods process tokens sequentially, which can be inefficient. This work explores discrete diffusion models as a unified generative formulation in the joint text and image domain to address these limitations. 



This paper introduces UniDisc, a Unified Multimodal Discrete Diffusion model capable of jointly understanding and generating text and images. UniDisc offers advantages over AR models, including improved control over quality versus diversity, joint multimodal inpainting, and greater controllability through guidance. Experiments demonstrate that UniDisc outperforms AR models in performance, compute efficiency, and controllability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniDisc, a unified multimodal discrete diffusion model, achieves superior performance compared to autoregressive models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model demonstrates strong joint image-text inpainting capabilities without explicit training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} UniDisc showcases enhanced controllability and a flexible trade-off between inference time and generation quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel approach to multimodal generative modeling**, offering a **unified discrete diffusion framework**.  It challenges existing autoregressive methods and presents a **promising alternative for joint text and image understanding**. Researchers can leverage this framework for **various downstream tasks** and explore its potential for broader applications in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20853/x1.png)

> 🔼 This figure showcases the model's ability to perform joint inpainting on image and text pairs.  The model is given an image and text with masked regions, and it successfully fills in both the missing image and text portions. Notably, the model was not explicitly trained for this specific inpainting task; rather, its ability to perform this task is an inherent consequence of its unified diffusion objective, which allows the model to jointly model and generate both image and text modalities.
> <details>
> <summary>read the caption</summary>
> Figure 1: We show UniDisc’s ability to jointly inpaint image & text pairs. We do not explicitly optimize for this objective but it is intrinsic to UniDisc’s unified diffusion objective.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T1.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.1.1.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.1.1.1.1">
<span class="ltx_p" id="A2.T1.2.1.1.1.1.1" style="width:119.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T1.2.1.1.1.1.1.1" style="font-size:70%;">Text</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A2.T1.2.1.1.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text ltx_font_bold" id="A2.T1.2.1.1.2.1" style="font-size:70%;">Chameleon Perplexity</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A2.T1.2.1.1.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text ltx_font_bold" id="A2.T1.2.1.1.3.1" style="font-size:70%;">GPT2 Perplexity</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T1.2.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.2.1.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.2.1.1.1">
<span class="ltx_p" id="A2.T1.2.2.1.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="A2.T1.2.2.1.1.1.1.1" style="font-size:70%;">"ICLR is globally renowned for presenting…" (Continued)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.2.1.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.2.1.2.1" style="font-size:70%;">32.836</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.2.1.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.2.1.3.1" style="font-size:70%;">35.780</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.3.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.3.2.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.3.2.1.1">
<span class="ltx_p" id="A2.T1.2.3.2.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="A2.T1.2.3.2.1.1.1.1" style="font-size:70%;">"This is simple. This is simple." (Repeated)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.3.2.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.3.2.2.1" style="font-size:70%;">8.423</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.3.2.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.3.2.3.1" style="font-size:70%;">3.930</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.4.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.4.3.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.4.3.1.1">
<span class="ltx_p" id="A2.T1.2.4.3.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="A2.T1.2.4.3.1.1.1.1" style="font-size:70%;">"Words Words Words Words" (Repeated)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.4.3.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.4.3.2.1" style="font-size:70%;">2.226</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.4.3.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.4.3.3.1" style="font-size:70%;">3.583</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.5.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.5.4.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.5.4.1.1">
<span class="ltx_p" id="A2.T1.2.5.4.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="A2.T1.2.5.4.1.1.1.1" style="font-size:70%;">"AAAAAAAAAAAA" (Repeated)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.5.4.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.5.4.2.1" style="font-size:70%;">2.732</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.2.5.4.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.5.4.3.1" style="font-size:70%;">1.904</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.6.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T1.2.6.5.1" style="padding-top:1.75pt;padding-bottom:1.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T1.2.6.5.1.1">
<span class="ltx_p" id="A2.T1.2.6.5.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="A2.T1.2.6.5.1.1.1.1" style="font-size:70%;">"(Spaces Repeated)"</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="A2.T1.2.6.5.2" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.6.5.2.1" style="font-size:70%;">80.240</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="A2.T1.2.6.5.3" style="padding-top:1.75pt;padding-bottom:1.75pt;"><span class="ltx_text" id="A2.T1.2.6.5.3.1" style="font-size:70%;">1.095</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows that generative perplexity alone is insufficient for evaluating the quality of text generation models.  It demonstrates how, even with low generative perplexity scores, the generated text might lack diversity or be repetitive. The table highlights that combining generative perplexity with entropy provides a more robust and comprehensive evaluation of generation quality.
> <details>
> <summary>read the caption</summary>
> Table 1: We demonstrate how generative perplexity is an imperfect metric requiring calibration with entropy.
> </details>





### In-depth insights


#### UniDisc: Diffuse All
The name 'UniDisc: Diffuse All', though not explicitly present in the paper, suggests a central methodology: **unified diffusion across modalities**. This implies a framework where diverse data types (text, images) are processed through a shared diffusion process, unlike methods with modality-specific handling. The core idea revolves around **corrupting data with discrete noise** (masking tokens) and learning to reverse this corruption. This unified approach likely enables seamless cross-modal generation and manipulation (inpainting), control, and efficient trade-offs between quality and speed. UniDisc's strength lies in its potential to **capture interdependencies** between modalities more effectively than autoregressive models or continuous diffusion models.

#### AR: Slow Inpaint
**AR models**, while powerful for generative tasks, can be **slow for inpainting** due to their sequential nature. Inpainting requires filling in missing parts of an image, which for **AR models** means iteratively generating tokens to replace the missing areas. This is inefficient because AR models were optimized for sequential generation and have difficulties with the insertion task.  Also, it leads to many forward passes, which increase compute time. **Diffusion models**, on the other hand, can be more efficient for inpainting because they fill-in missing areas.

#### Discrete Diffusion
Discrete diffusion models present a compelling alternative to autoregressive models, particularly **beneficial for addressing multimodality**. Unlike continuous diffusion, they operate on discrete data, avoiding the issues associated with adding continuous noise to inherently discrete entities like text. This approach allows for **more efficient training** in certain domains and enables **greater control** over generated outputs. The use of masking as a form of discrete noise provides a natural way to handle inpainting and editing tasks, offering a more intuitive framework for joint multimodal manipulation. Different noise schedules, loss functions, and transition kernels further enhance the flexibility and adaptability of discrete diffusion models, making them well-suited for unifying various modalities under a single generative framework, as explored in this paper. They offer faster inference, high controllability and quality, easily trade-off quality vs. compute.

#### Fast Gen. Tradeoffs
Faster generation often entails tradeoffs in quality or diversity. Methods to accelerate generation, such as reducing denoising steps in diffusion models or employing more efficient architectures, can lead to **lower-quality samples** or a **loss of fine-grained detail**. Balancing computational efficiency with desired output characteristics is key. Techniques like **classifier-free guidance** can improve sample quality but may still require careful tuning to avoid artifacts or biases. The optimal approach depends on the specific application and acceptable levels of compromise between speed and output fidelity. Exploring novel methods for distillation or approximation of complex generative processes could unlock new pathways for faster and higher-quality generation in the future.

#### CFG Key to Gen
**Classifier-Free Guidance (CFG)** emerges as a pivotal element for enhancing generative model performance, especially in scenarios involving intricate conditional generation. The core idea revolves around leveraging both conditional and unconditional predictions to guide the model's output. UniDisc extracts more discriminating signal from CFG compared to AR models.  UniDisc’s architecture, characterized by its flexibility in decoding tokens based on confidence, outshines AR models, which are constrained by a rigid left-to-right decoding order, resulting in a more efficient and nuanced generation process. Findings suggest that CFG is most effective in the initial stages of decoding, setting the foundation for high-quality results. Optimizing CFG’s application, particularly focusing on early decoding stages, unlocks substantial gains in generative models. By understanding and strategically implementing CFG, we can significantly improve the performance of generative models, achieving a balance between visual quality and prompt adherence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20853/x2.png)

> 🔼 UniDisc, a unified multimodal discrete diffusion model, processes and generates both text and images.  The model first converts text and images into sequences of discrete tokens.  Then, it uses a denoising process, where masked tokens ([MASK]) are iteratively replaced with predicted tokens using a weighted cross-entropy loss function applied jointly to the text and image tokens. The resulting model can understand and generate both modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2: UniDisc is a unified multimodal discrete diffusion model that can jointly process and generate text and images. Each modality is converted into a sequence of discrete tokens and we jointly denoise, supervising with a weighted cross-entropy loss. At inference time we begin with a set of [MASK] tokens and iteratively unmask tokens.
> </details>



![](https://arxiv.org/html/2503.20853/x6.png)

> 🔼 This figure presents a scaling analysis comparing autoregressive (AR) and Unified Multimodal Discrete Diffusion (UniDisc) models. The left panel shows isoflop curves for UniDisc, illustrating how model size changes for a constant FLOP budget.  The right panel displays the estimated optimal parameter size for each budget using fitted parabolas, visualizing the scaling laws for both AR and UniDisc models. The key finding is that UniDisc demands 13.2 times more computational resources than AR to achieve a comparable overall loss.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling Analysis for AR and UniDisc models: (Left) IsoFLOP curves for UniDisc, plotting varying model size for a fixed FLOP budget. (Right) Estimating optimal parameter size for each budget - minima of fitted parabola, we plot scaling laws for both AR and UniDisc. We find 13.2x more compute is required for UniDisc to achieve the same overall loss as AR.
> </details>



![](https://arxiv.org/html/2503.20853/x7.png)

> 🔼 Figure 4 presents the results of a conditional image generation experiment comparing the performance of autoregressive (AR) models and the UniDisc model. The experiment is conducted across various datasets (CC12M, DataComp-1B, Flickr30K, COCO-2014) and uses classifier-free guidance (CFG) at different scales. The figure shows FID and CLIP scores as metrics for evaluating the quality and diversity of the generated images. The results show that UniDisc outperforms AR models, specifically demonstrating a greater robustness to variations in the CFG weighting. The AR model's performance is shown to be more sensitive to the CFG value, with its optimal range being narrower compared to that of the UniDisc model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Conditional generation results for both FID and CLIP metrics, across a range of CFG values. We find that AR is more sensitive to the CFG weighting, with a narrower optimal range.
> </details>



![](https://arxiv.org/html/2503.20853/x10.png)

> 🔼 Figure 5 presents a comparison of UniDisc and an autoregressive (AR) baseline across multiple metrics related to inference efficiency.  Subfigure (a) shows the trade-off between generation time and the joint perplexity (a measure of model uncertainty) on the Chameleon dataset; UniDisc performs comparably to the best AR model. Subfigure (b) illustrates the relationship between perplexity and entropy (a measure of diversity). UniDisc achieves a lower perplexity score with higher entropy, suggesting better quality and diversity in generation compared to the AR model's lower diversity and higher perplexity. Subfigure (c) examines the impact of the number of forward evaluations (NFEs) on the Fréchet Inception Distance (FID), a measure of image generation quality. Image generation quality for UniDisc plateaus after around 32 NFEs. Finally, subfigure (d) shows how the number of NFEs affects text generation quality (measured by GPT2 generative perplexity); improved generation quality with UniDisc is observed with more NFEs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Inference Comparisons for UniDisc and AR baseline: (a) Chameleon Perplexity (Text+Image) vs. Time - we perform similar to best AR method, (b) Chameleon Perplexity vs. Entropy - UniDisc has high diversity and low perplexity, while AR has significantly lower diversity, (c) Image FID vs. NFE, showing image generation saturates quickly with NFE (≈32absent32\approx 32≈ 32), (d) GPT2 Generative Text Perplexity vs. NFE showing text generation benefits from more sampling steps (diminishing).
> </details>



![](https://arxiv.org/html/2503.20853/extracted/6312801/images/datacomp_joint_retrieval.png)

> 🔼 This figure demonstrates UniDisc's ability to generate diverse and coherent images and text, even when only masked text input is provided. The left panel shows the masked text input, while the right panel displays the generated images and text.  The language-conditioned segmentation model ensures that the generations are semantically consistent.  The results showcase UniDisc's capability to create uniformly distributed samples within the concept space, indicating a good balance between quality and diversity.  It highlights the model's strength in joint text and image generation, effectively handling the ambiguity of the masked input.
> <details>
> <summary>read the caption</summary>
> Figure 6: Uniform Concept Generation: We perform joint generation given only masked text input (left). We use a language conditioned segmentation model and find that UniDisc generates uniformly in concept space (right).
> </details>



![](https://arxiv.org/html/2503.20853/extracted/6312801/images/lm1b_finetune_v2.png)

> 🔼 This figure demonstrates UniDisc's ability to perform zero-shot image editing.  Given a mismatched or corrupted image-text pair (shown on the left), UniDisc processes both modalities jointly and generates a new, high-quality, and aligned image-text pair (shown on the right). The model uses its own internal likelihood scores to select the best possible output from multiple generated candidates.
> <details>
> <summary>read the caption</summary>
> Figure 8: Zero-shot Image Editing: UniDisc can take corrupted and mismatched image/text pairs (left) and produce an aligned, high-quality pair (right), using the model’s own likelihood as a scoring function.
> </details>



![](https://arxiv.org/html/2503.20853/extracted/6312801/images/large_scale_loss.png)

> 🔼 This figure displays the impact of classifier-free guidance (CFG) scaling on conditional image generation using both autoregressive (AR) and UniDisc models.  The FID (Fréchet Inception Distance) and CLIP (Contrastive Language-Image Pre-training) scores are plotted against different CFG scaling factors for both models. The results show that UniDisc is more robust to changes in CFG weighting, maintaining relatively consistent performance across a broader range of CFG values. In contrast, the AR model demonstrates higher sensitivity to CFG adjustments, with its optimal performance restricted to a much narrower range of CFG scaling factors. This highlights one key advantage of UniDisc over traditional AR models in controlling the trade-off between quality and diversity of generated samples.
> <details>
> <summary>read the caption</summary>
> Figure 9: Conditional generation results for both FID and CLIP metrics, across a range of CFG values. We find that AR is more sensitive to the CFG weighting, with a narrower optimal range.
> </details>



![](https://arxiv.org/html/2503.20853/x11.png)

> 🔼 This figure presents a comparison of unconditional multimodal generation performance between UniDisc and a comparable autoregressive (AR) model, both with 115 million parameters.  The results are presented across multiple metrics and datasets, demonstrating that while both models achieve similar overall performance in unconditional generation.
> <details>
> <summary>read the caption</summary>
> Figure 10: Unconditional multimodal generation results for UniDisc and AR baseline at 115M parameters - both models perform similarly.
> </details>



![](https://arxiv.org/html/2503.20853/x12.png)

> 🔼 This figure compares the performance of UniDisc and an autoregressive (AR) model on joint image-text inpainting.  The AR model was fine-tuned specifically for this task, while UniDisc was evaluated without any fine-tuning, demonstrating its zero-shot capability.  The comparison is performed using a subset of the DataComp1B dataset, allowing for a direct evaluation of the two models' inherent ability to handle joint inpainting across text and image modalities.
> <details>
> <summary>read the caption</summary>
> Figure 12: We compare UniDisc with an AR model fine-tuned for joint inpainting and evaluate on a subset of DataComp1B.
> </details>



![](https://arxiv.org/html/2503.20853/x13.png)

> 🔼 This figure compares the performance of UniDisc and an autoregressive (AR) model on a joint image-text retrieval task using the DataComp1B dataset.  The task involves identifying the correct image-text pair from a set of 16 possible pairs (one correct and 15 incorrect).  UniDisc's superior performance suggests that its unified approach leads to better learned representations, enabling it to more accurately retrieve the correct associations between images and texts.
> <details>
> <summary>read the caption</summary>
> Figure 13: Joint Retrieval Accuracy on DataComp1B. We outperform AR given the task of retrieving one correct image-text pair out of 16 possible pairs, implying better learnt representations.
> </details>



![](https://arxiv.org/html/2503.20853/x14.png)

> 🔼 This figure shows the results of fine-tuning a pre-trained 270M parameter autoregressive (AR) language model on the LM1B dataset using a discrete diffusion loss function.  It compares the training performance of this approach to two baselines: fine-tuning the same model with the standard AR loss and training a new model from scratch using the discrete diffusion loss. The plot displays the training loss over the number of tokens processed, demonstrating that adapting a pre-trained AR model with the discrete diffusion loss function leads to faster convergence and better training efficiency than training from scratch.
> <details>
> <summary>read the caption</summary>
> Figure 14: Fine-tuning a pre-trained 270M parameter AR model on LM1B.
> </details>



![](https://arxiv.org/html/2503.20853/x15.png)

> 🔼 This figure shows the training loss curve for the 1.4B parameter UniDisc model. The x-axis represents the number of tokens processed during training (in billions), and the y-axis represents the training loss (presumably cross-entropy loss). The curve visually depicts how the model's training loss decreases as it processes more data during training, indicating the model's learning progress.  Different colored lines might represent different aspects of the loss (e.g., text loss, image loss, combined loss), offering insights into the learning dynamics across different modalities.
> <details>
> <summary>read the caption</summary>
> Figure 15: Training Loss Curve vs. Tokens on our 1.4B model.
> </details>



![](https://arxiv.org/html/2503.20853/x16.png)

> 🔼 This ablation study investigates the impact of several design choices on a 115M parameter UniDisc model.  Specifically, it examines the effects of using Query-Key Normalization (QK Norm) instead of the standard LayerNorm, initializing linear layers with zeros, employing RMSNorm for normalization, handling invalid tokens by setting them to negative infinity (-∞) during both training and generation, and using Softmin SNR. The results quantify the effect of each of these choices on the model's performance, measured by perplexity on the DataComp1B validation set.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation w/115M parameter model of QK Norm, zero initialization of linear layers, RMSNorm, setting invalid tokens to −∞-\infty- ∞ during training and generation, and Softmin SNR.
> </details>



![](https://arxiv.org/html/2503.20853/x17.png)

> 🔼 This table presents ablation study results for a 115M parameter model. The study investigates the impact of different design choices on the model's performance, specifically focusing on the objective function level.  The design choices examined include the noising schedule (how noise is progressively added during the forward diffusion process), loss weighting (how different parts of the loss function contribute to the overall training loss), and whether to use discrete time (modeling time as discrete steps versus a continuous process).  By comparing model performance across various combinations of these design choices, the authors aim to understand their individual effects and their interactions, ultimately contributing to the design and optimization of the model.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation w/115M parameter model on different objective level decisions such as noising schedule, loss weighting and whether to use discrete time.
> </details>



![](https://arxiv.org/html/2503.20853/x18.png)

> 🔼 This figure showcases UniDisc's text-to-image generation capabilities.  It presents several example images generated from diverse and unseen text prompts, demonstrating the model's ability to create coherent and visually appealing images based on textual descriptions. The prompts cover a wide range of styles, objects, and scenes, highlighting the model's versatility and creativity in image synthesis.  Each image is accompanied by its corresponding text prompt, illustrating the direct relationship between textual input and visual output.
> <details>
> <summary>read the caption</summary>
> Figure 16: UniDisc’s ability to generate an image, given unseen text as input.
> </details>



![](https://arxiv.org/html/2503.20853/extracted/6312801/images/cfg_dist_vs_pct_tokens.png)

> 🔼 This figure demonstrates the UniDisc model's ability to generate captions for images it has never seen before.  It showcases the model's capacity to understand the content of an image and translate that understanding into a coherent and descriptive caption. Each image is presented alongside its automatically generated caption, highlighting the model's ability to capture various aspects of the visual scene, including objects, actions, and overall atmosphere.
> <details>
> <summary>read the caption</summary>
> Figure 17: UniDisc’s ability to generate text (captioning), given unseen image as input.
> </details>



![](https://arxiv.org/html/2503.20853/extracted/6312801/images/cfg_v1.png)

> 🔼 This figure demonstrates UniDisc's ability to perform zero-shot inpainting.  Four examples are shown where a masked region within an image is inpainted using only a textual prompt provided by the user.  The results show that the model is able to generate realistic and coherent inpaintings that match both the style and content of the surrounding image, showcasing its multimodal capabilities and ability to understand and generate from textual prompts.
> <details>
> <summary>read the caption</summary>
> Figure 18: Zero-shot text-conditioned inpainting. UniDisc inpaints a masked region given a user-provided text prompt.
> </details>



![](https://arxiv.org/html/2503.20853/x19.png)

> 🔼 This figure demonstrates UniDisc's ability to perform zero-shot multimodal inpainting.  In the example shown, masked regions in both the image and text are successfully inpainted using only the available context. This highlights the model's ability to understand and generate coherent multimodal outputs simultaneously, without any specific training for this inpainting task. The results showcases the model's unified nature and its capacity to leverage the inherent connections between the image and text modalities during the generation process.
> <details>
> <summary>read the caption</summary>
> Figure 19: Zero-shot multimodal inpainting. UniDisc jointly inpaints in both image and text spaces.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T2.4.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T2.4.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Parameters (M)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T2.4.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">n_layers</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T2.4.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">n_heads</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A3.T2.4.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">d_model</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T2.4.2.1">
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A3.T2.4.2.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">34</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A3.T2.4.2.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">11</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A3.T2.4.2.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T2.4.2.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">384</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.3.2">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.3.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">67</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.3.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">11</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.3.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">9</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.3.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">576</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.4.3">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.4.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">116</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.4.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.4.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.4.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">768</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.5.4">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.5.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">172</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.5.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">20</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.5.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.5.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">768</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.6.5">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.6.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">228</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.6.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">20</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.6.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">14</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.6.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">896</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.7.6">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.7.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">343</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.7.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">24</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.7.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">16</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.7.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1024</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.8.7">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.8.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">484</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.8.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">22</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.8.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">10</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.8.7.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1280</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.9.8">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.9.8.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">543</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.9.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">17</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.9.8.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.9.8.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1536</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.10.9">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.10.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">622</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.10.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">29</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.10.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">10</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.10.9.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1280</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.11.10">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.11.10.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">713</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.11.10.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">23</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.11.10.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.11.10.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1536</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.12.11">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.12.11.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">826</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.12.11.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">27</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.12.11.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">12</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.12.11.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1536</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.13.12">
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.13.12.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">1074</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.13.12.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">26</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A3.T2.4.13.12.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">14</td>
<td class="ltx_td ltx_align_right" id="A3.T2.4.13.12.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1792</td>
</tr>
<tr class="ltx_tr" id="A3.T2.4.14.13">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="A3.T2.4.14.13.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">1290</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="A3.T2.4.14.13.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">24</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="A3.T2.4.14.13.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">16</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T2.4.14.13.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">2048</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents different model variants used in the UniDisc experiments.  Each row represents a different model configuration, specifying the number of parameters (in millions), the number of layers, number of heads, and the model dimension (d_model). The feed-forward network (FFN) hidden size is consistently four times the d_model value.
> <details>
> <summary>read the caption</summary>
> Table 2: Model variants. The FFN hidden size is always 4x the overall d⁢_⁢modeld_model\operatorname{d\_model}roman_d _ roman_model
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A6.T4.2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T4.2.3.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A6.T4.2.3.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T4.2.3.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A6.T4.2.3.1.1.1.2.1">DataComp1B Validation PPL</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T4.2.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T4.2.3.1.2.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A6.T4.2.3.1.2.1.1.1">UniDisc</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T4.2.3.1.2.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">93.8</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T4.2.3.1.3.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       w/o QK Norm</th>
<td class="ltx_td ltx_align_center" id="A6.T4.2.3.1.3.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">92.7</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T4.2.3.1.4.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       w/ Zero-linear init</th>
<td class="ltx_td ltx_align_center" id="A6.T4.2.3.1.4.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">93.8</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T4.2.3.1.5.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       w/o RMSNorm</th>
<td class="ltx_td ltx_align_center" id="A6.T4.2.3.1.5.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">93.8</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T4.2.3.1.6.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       w/o -inf for invalid tokens</th>
<td class="ltx_td ltx_align_center" id="A6.T4.2.3.1.6.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">94.7</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T4.2.3.1.7.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       w/o Softmin SNR</th>
<td class="ltx_td ltx_align_center" id="A6.T4.2.3.1.7.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">109.6</td>
</tr>
<tr class="ltx_tr" id="A6.T4.2.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A6.T4.2.3.1.8.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">       None</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T4.2.3.1.8.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">111.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the UniDisc model on the GenEval benchmark, which assesses the model's ability to generate images that accurately reflect various attributes specified in text prompts.  The evaluation metrics include Singularity, Two Objects, Counting, Colors, Position, Color Attributes, and an overall score.  The table compares UniDisc's performance to other state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 5: We evaluate UniDisc on the GenEval Ghosh et al. (2023) benchmark.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20853/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20853/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}