---
title: "Tokenize Image as a Set"
summary: "TokenSet: Tokenizing images as unordered sets for dynamic capacity allocation and robust generation, breaking from fixed-position latent codes."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16425 {{< /keyword >}}
{{< keyword icon="writer" >}} Zigang Geng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16425" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16425" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16425/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Contemporary visual generation faces challenges with fixed compression ratios, leading to inefficient coding, especially in regions with varying semantic complexity.** Current tokenization methods generate serialized codes with fixed positional correspondence, allocating the same number of codes to both simplistic and semantically dense regions. This raises a fundamental question of whether visually simplistic regions should receive the same representational capacity as semantically rich areas. 



This paper introduces **TokenSet**, a fundamentally new paradigm for image generation through set-based tokenization and distribution modeling. It proposes to tokenize images into unordered sets to enable dynamic attention allocation based on regional semantic complexity. The dual transformation mechanism converts sets into fixed-length integer sequences with summation constraints. Fixed-Sum Discrete Diffusion addresses the challenge of modeling discrete sets and enables effective set distribution modeling.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces TokenSet, a novel image generation paradigm using set-based tokenization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a dual transformation mechanism for modeling discrete sets as fixed-length sequences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes Fixed-Sum Discrete Diffusion for effective set distribution modeling with summation invariance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel image generation framework, **TokenSet**, offering dynamic token allocation and enhanced robustness. This work can inspire more research to explore the non-serialized visual representation and generative model.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16425/x1.png)

> 🔼 This figure illustrates the pipeline of the proposed Tokenize Image as a Set method.  It begins with an image encoder that transforms image patches into an unordered set of tokens (TokenSet). A dual transformation mechanism converts this set into a fixed-length integer sequence with a summation constraint. This sequence is then processed by a novel Fixed-Sum Discrete Diffusion model, which ensures the model respects the summation constraint throughout the diffusion process. Finally, an image decoder reconstructs the image from the resulting sequence.
> <details>
> <summary>read the caption</summary>
> Figure 1: Pipeline of our method.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T1.6.7.1.1" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.1.1" style="font-size:90%;">Order</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.7.1.2" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.2.1" style="font-size:90%;">Original</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.7.1.3" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.3.1" style="font-size:90%;">Reversed</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.7.1.4" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.4.1" style="font-size:90%;">Shuffled</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.7.1.5" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.5.1" style="font-size:90%;">Ascending</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.7.1.6" style="padding:0.65pt 3.2pt;"><span class="ltx_text" id="S4.T1.6.7.1.6.1" style="font-size:90%;">Descending</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.1.1" style="padding:0.65pt 3.2pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2" style="padding:0.65pt 3.2pt;"><math alttext="3.62" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mn id="S4.T1.2.2.2.m1.1.1" mathsize="90%" xref="S4.T1.2.2.2.m1.1.1.cmml">3.62</mn><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><cn id="S4.T1.2.2.2.m1.1.1.cmml" type="float" xref="S4.T1.2.2.2.m1.1.1">3.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">3.62</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">3.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding:0.65pt 3.2pt;"><math alttext="3.62" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mn id="S4.T1.3.3.3.m1.1.1" mathsize="90%" xref="S4.T1.3.3.3.m1.1.1.cmml">3.62</mn><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><cn id="S4.T1.3.3.3.m1.1.1.cmml" type="float" xref="S4.T1.3.3.3.m1.1.1">3.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">3.62</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">3.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4" style="padding:0.65pt 3.2pt;"><math alttext="3.62" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mn id="S4.T1.4.4.4.m1.1.1" mathsize="90%" xref="S4.T1.4.4.4.m1.1.1.cmml">3.62</mn><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><cn id="S4.T1.4.4.4.m1.1.1.cmml" type="float" xref="S4.T1.4.4.4.m1.1.1">3.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">3.62</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">3.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5" style="padding:0.65pt 3.2pt;"><math alttext="3.62" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mn id="S4.T1.5.5.5.m1.1.1" mathsize="90%" xref="S4.T1.5.5.5.m1.1.1.cmml">3.62</mn><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><cn id="S4.T1.5.5.5.m1.1.1.cmml" type="float" xref="S4.T1.5.5.5.m1.1.1">3.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">3.62</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">3.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding:0.65pt 3.2pt;"><math alttext="3.62" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mn id="S4.T1.6.6.6.m1.1.1" mathsize="90%" xref="S4.T1.6.6.6.m1.1.1.cmml">3.62</mn><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><cn id="S4.T1.6.6.6.m1.1.1.cmml" type="float" xref="S4.T1.6.6.6.m1.1.1">3.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">3.62</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">3.62</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Fréchet Inception Distance (FID) scores for reconstructed images using different decoding orders of the tokens.  The consistent FID scores across all orders demonstrate that the image reconstruction is invariant to the order of tokens used. This validates the permutation-invariance property claimed for the proposed tokenizer, ensuring that the model is robust against the order of tokens during inference.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of reconstructed images using tokens in different decoding orders. The identical rFID across all orders confirms the permutation-invariance property of our tokenizer.
> </details>





### In-depth insights


#### Set-based Tokens
Set-based tokens offer a new perspective on image representation by treating images as unordered collections of visual elements. This approach contrasts sharply with traditional methods that serialize images into fixed-position latent codes. **The key advantage lies in dynamically allocating coding capacity based on regional semantic complexity.** Instead of uniformly compressing the entire image, set-based tokens enable the model to focus on semantically rich areas, allocating more tokens where needed. This leads to better global context aggregation, as the model can prioritize important regions and reduce redundancy in simpler areas. **Moreover, set-based tokens exhibit improved robustness to local perturbations**, since the absence of fixed positional correspondence makes the model less sensitive to noise and minor variations in the input image. The permutation invariance is also an important feature. 

#### Fixed-Sum Models
The 'Fixed-Sum' models likely address a key challenge in set-based representation learning: ensuring the sum of token counts remains constant. This constraint is crucial when dealing with discrete data, like codebook indices, where the total number of tokens represents a fixed budget. Standard diffusion models or autoregressive models may not inherently enforce this constraint, leading to instability or suboptimal results. The 'Fixed-Sum' approach probably involves a novel training or inference strategy that explicitly incorporates this constraint, perhaps through a modified loss function or a projection step. This could lead to more stable training and improved generation quality, as the model is guided to explore solutions that adhere to the fixed-sum prior. **Enforcing the Fixed-Sum Constraint is Crucial**. **Benefits include more stable training and better results**

#### Dual Transform
The dual transformation mechanism is a pivotal component, addressing the challenge of modeling set-structured data.  **Traditional sequential models struggle with permutation invariance**, a key characteristic of sets. This transformation cleverly converts the unordered set into a structured sequence while preserving critical information. By counting the occurrences of each unique token index, the method creates a fixed-length vector (**count vector**) where each element represents the frequency of a particular codebook item. **The transformation ensures a bijective mapping**, maintaining all original data while enabling the use of sequential modeling techniques. The resulting sequence possesses three crucial structural priors: a fixed length (equal to the codebook size), discrete count values representing token frequencies, and a fixed-sum constraint, where the total count equals the number of tokens. These priors effectively guide the subsequent modeling process, transforming a complex set modeling problem into a more tractable sequence modeling task.

#### Robust Semantics
The concept of "Robust Semantics" in the context of image processing and generation, as it relates to the paper's focus, is intriguing. It likely refers to the ability of the system to **maintain a consistent and meaningful representation of an image's content even when faced with variations or perturbations**. This could encompass resilience to noise, occlusions, changes in lighting, or even slight alterations in object pose or appearance. A system with robust semantics would not only be able to recognize the objects and scenes depicted but also understand their relationships and context in a way that is stable and reliable. Achieving this requires a representation that is **less sensitive to pixel-level variations and more attuned to the underlying semantic structure** of the image. In essence, the system should focus on the 'what' and 'how' of the image content rather than the specific 'where' of each pixel. The paper aims to accomplish robust semantics using a novel technique. **TokenSet dynamically allocate capacity based on semantics complexity** to give superior robustness to local perturbations.

#### Beyond Sequences
The research paper introduces a paradigm shift, moving away from traditional sequence-based image processing. **TokenSet** introduces an unordered set of tokens dynamically allocating coding capacity, which deviates significantly from conventional methods that rely on fixed-position latent codes and uniform compression ratios. By representing images as sets, the model achieves enhanced global context aggregation and greater robustness to local perturbations. This set-based tokenization, along with **fixed-sum discrete diffusion**, facilitates semantic-aware representation and generation quality. The key innovation lies in transforming the complex problem of modeling unordered data into a manageable sequence modeling task through a dual transformation mechanism. The framework's ability to simultaneously handle discrete values, fixed sequence length, and summation invariance enables more effective set distribution modeling, surpassing the limitations of existing sequence-based approaches and paving the way for new generative model architectures.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16425/x2.png)

> 🔼 The figure illustrates the process of converting an image into an unordered set of tokens.  The input image is processed by an encoder, which combines image patches and learnable latent tokens. The encoder outputs continuous representations which are then discretized using a VQ-VAE codebook. This results in a 1D sequence of tokens which then has the positional information removed by randomly shuffling the order of the tokens before feeding to the decoder.  The decoder reconstructs the image from the unordered set of tokens, demonstrating the method's permutation invariance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of our set tokenizer.
> </details>



![](https://arxiv.org/html/2503.16425/x3.png)

> 🔼 This figure illustrates the Fixed-Sum Discrete Diffusion process, a key component of the proposed image generation method. It shows how a sample from a noisy distribution (at noise level t=0.6) is generated by combining the initial clean image distribution and a fully noisy distribution.  The process also incorporates a greedy adjustment step to enforce the fixed-sum constraint, ensuring the summation of all elements in the sample remains constant. This constraint is crucial for maintaining the bijection between sets and sequences. Samples that were removed during the adjustment phase to satisfy this constraint are marked with dashed lines. The process visually demonstrates how the algorithm iteratively approaches a clean image representation whilst adhering to the defined constraint.
> <details>
> <summary>read the caption</summary>
> Figure 3: Fixed-Sum Diffusion Process. Sample Xtsubscript𝑋𝑡X_{t}italic_X start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT at noise level t=0.6𝑡0.6t=0.6italic_t = 0.6 is first sampled from the mixed gaussian distribution of X0subscript𝑋0X_{0}italic_X start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT and X1subscript𝑋1X_{1}italic_X start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT, and then adjusted through greedy adjustment. Samples dropped during greedy adjustment are marked with dashed line.
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/ori3.png)

> 🔼 This figure demonstrates the permutation invariance of the proposed set-based tokenizer.  It shows the reconstruction of an image from its encoded tokens arranged in different orders: (a) the original image; (b) tokens in the original order; (c) tokens in reversed order; (d) randomly shuffled tokens; (e) tokens sorted in ascending order; (f) tokens sorted in descending order. The visual similarity between all six reconstructed images confirms the permutation invariance—the reconstruction is insensitive to token ordering.
> <details>
> <summary>read the caption</summary>
> (a) Original image
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/1order2.png)

> 🔼 This image shows the reconstruction of an image from its encoded tokens in their original order.  This is part of an experiment to demonstrate the permutation invariance of the proposed set-based tokenization method. The image quality should be identical to reconstructions from other token orderings (reversed, shuffled, sorted ascending, sorted descending), highlighting that the method is not sensitive to the sequence of tokens.
> <details>
> <summary>read the caption</summary>
> (b) Original order
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/2order2.png)

> 🔼 This image shows a reconstruction of an image from its encoded tokens, where the order of the tokens has been reversed.  This demonstrates the permutation invariance of the image set tokenizer. The visual appearance is identical to the original image, highlighting that the reconstruction is not sensitive to the ordering of the tokens.
> <details>
> <summary>read the caption</summary>
> (c) Reversed order
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/3order2.png)

> 🔼 This image shows the reconstruction of an image from its encoded tokens, but with the order of those tokens randomly shuffled.  Despite the random order, the reconstructed image remains identical to the reconstructions from other token orders (original, reversed, ascending, descending), visually demonstrating the permutation invariance achieved by the set-based tokenization method. This property means the model's performance is unaffected by the order of the input tokens, a key advantage of the set-based approach.
> <details>
> <summary>read the caption</summary>
> (d) Random shuffle
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/4order2.png)

> 🔼 This image shows the reconstruction of an image from its encoded tokens, which are sorted in ascending order.  This demonstrates the permutation invariance of the set-based tokenizer. Even though the order of tokens has been changed, the reconstructed image remains the same as the original. This highlights the model's ability to reconstruct images regardless of the order of encoded tokens, proving the effectiveness of representing images as an unordered set of tokens rather than a sequence.
> <details>
> <summary>read the caption</summary>
> (e) Sorted ascending
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/setimages/5order2.png)

> 🔼 This figure shows the reconstruction results of an image using tokens in a sorted descending order.  This demonstrates that the set-based tokenizer in the proposed method is permutation-invariant.  The identical results in this image compared to the other images (a-e) in the figure highlight that changing the token order during decoding does not impact the final image reconstruction.  The images are identical because the model learns to treat tokens as a set, ignoring their position.
> <details>
> <summary>read the caption</summary>
> (f) Sorted descending
> </details>



![](https://arxiv.org/html/2503.16425/extracted/6297212/figs/globalv4.png)

> 🔼 This figure shows six reconstructed images from the same encoded tokens, but with different ordering. The first image uses the original order of tokens, followed by the reversed order, a random shuffle, and then ascending and descending sorted orders. Despite the different arrangements of input tokens, all six resulting images are identical. This demonstrates the permutation invariance of the set-based image tokenizer, proving that the order of tokens does not affect the final reconstructed image.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visual comparison of the reconstructed images from various order permutations of the encoded tokens. All reconstructed images are identical, demonstrating the set-based tokenizer is permutation-invariance.
> </details>



![](https://arxiv.org/html/2503.16425/x4.png)

> 🔼 Figure 5 visualizes the receptive fields of individual tokens generated by the proposed method and compares them to those of previous methods like VQGAN. Each column displays the receptive field for the same token.  Previous methods, such as VQGAN, show tokens that strictly correspond to specific spatial image locations. In contrast, the proposed method shows that many tokens have receptive fields that span across a significant portion of the image, demonstrating a global contextual awareness.
> <details>
> <summary>read the caption</summary>
> Figure 5: The receptive fields of individual tokens. Each column represents the receptive field corresponding to the same token. Previous methods such as VQGAN [10] encoded tokens strictly correspond to specific positions. In contrast, our approach demonstrates a unique property that many tokens possess global receptive fields.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.2" rowspan="2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.1" rowspan="2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;"><math alttext="\#" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T2.1.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">#</annotation></semantics></math>Tokens</span></th>
<td class="ltx_td ltx_align_center" colspan="5" id="S4.T2.1.1.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.1.3.1" style="font-size:90%;">Signal-to-Noise Ratio (dB)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.2.1.1.1" style="font-size:90%;">40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.2.1.2.1" style="font-size:90%;">30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.2.1.3.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.2.1.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.2.1.5.1" style="font-size:90%;">1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.3.2.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T2.1.3.2.1.1" style="font-size:90%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S4.T2.1.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.3.2.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.2.1" style="font-size:90%;">256</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.3.1" style="font-size:90%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.4.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.5.1" style="font-size:90%;">10.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.6.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.3.2.7.1" style="font-size:90%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.4.3.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T2.1.4.3.1.1" style="font-size:90%;">TiTok </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T2.1.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.4.3.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.2.1" style="font-size:90%;">128</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.3.1" style="font-size:90%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.4.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.5.1" style="font-size:90%;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.6.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.4.3.7.1" style="font-size:90%;">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.5.4.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T2.1.5.4.1.1" style="font-size:90%;">TiTok </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.5.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T2.1.5.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.5.4.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.2.1" style="font-size:90%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.3.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.4.1" style="font-size:90%;">44.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.5.1" style="font-size:90%;">13.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.6.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.5.4.7.1" style="font-size:90%;">0.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.6.5.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.1.1" style="font-size:90%;">TokenSet †</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.6.5.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.2.1" style="font-size:90%;">128</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.3.1" style="font-size:90%;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.4.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.5.1" style="font-size:90%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.6.1" style="font-size:90%;">12.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.6.5.7.1" style="font-size:90%;">6.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.7.6.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.1.1" style="font-size:90%;">TokenSet †</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.7.6.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.2.1" style="font-size:90%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.3.1" style="font-size:90%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.4.1" style="font-size:90%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.5.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.6.1" style="font-size:90%;">9.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.7.6.7.1" style="font-size:90%;">4.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.8.7.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.8.7.1.1" style="font-size:90%;">TokenSet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.8.7.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.8.7.2.1" style="font-size:90%;">128</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.3.1" style="font-size:90%;">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.4.1" style="font-size:90%;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.5.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.6.1" style="font-size:90%;">13.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.8.7.7.1" style="font-size:90%;">7.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.9.8.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.1.1" style="font-size:90%;">TokenSet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.9.8.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.2.1" style="font-size:90%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.3.1" style="font-size:90%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.4.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.5" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.5.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.6" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.6.1" style="font-size:90%;">10.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.7" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T2.1.9.8.7.1" style="font-size:90%;">5.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a robustness analysis comparing various image tokenization methods under different levels of Gaussian noise.  The results show the percentage of overlapping tokens between the tokens generated from original images and those generated from noisy versions of the same images.  This overlapping token percentage is used as a metric to quantify the robustness of the methods against noise.  The table includes results for both set-based and sequence-based tokenization methods, allowing for a fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Robustness analysis of different tokenizers under varying levels of Gaussian noise. We report the percentage (%) of overlapping tokens between those generated from the original images and the noise-altered images. Although our method is set-based, we additionally provide results obtained by treating token sets as sequences (marked by †) to ensure a fair comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.2.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.2.3.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.4" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.2.4.1" style="font-size:90%;">Encoder</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1" style="padding:0.45pt 5.5pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T3.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">Tokens</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.2" style="padding:0.45pt 5.5pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mi id="S4.T3.2.2.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T3.2.2.2.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">Codebook</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.2.5.1" style="font-size:90%;">Acc@1(%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.3.1.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.1.1" style="font-size:90%;color:#808080;">MAE†</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.3.1.2" rowspan="2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.2.1" style="font-size:90%;color:#808080;">ViT-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.1.3" rowspan="2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.3.1.4" rowspan="2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.1.5" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.5.1" style="font-size:90%;color:#808080;">64.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.4.2.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.4.2.1.1" style="font-size:90%;color:#808080;">MAE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.4.2.2.1" style="font-size:90%;color:#808080;">75.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.5.3.1" rowspan="8" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.1.1" style="font-size:90%;">TokenSet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.5.3.2" rowspan="8" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.2.1" style="font-size:90%;">ViT-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.5.3.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.3.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.5.3.4" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.4.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.5.3.5" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.5.1" style="font-size:90%;">44.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6.4">
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.4.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.6.4.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.6.4.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.6.4.2.1" style="font-size:90%;">2048</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.4.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.6.4.3.1" style="font-size:90%;">43.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7.5">
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.5.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.7.5.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.7.5.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.7.5.2.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.5.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.7.5.3.1" style="font-size:90%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.8.6">
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.6.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.8.6.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.8.6.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.8.6.2.1" style="font-size:90%;">8192</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.6.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.8.6.3.1" style="font-size:90%;">61.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.9.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.9.7.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.9.7.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.9.7.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.9.7.2.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.9.7.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.9.7.3.1" style="font-size:90%;">66.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.10.8">
<td class="ltx_td ltx_align_center" id="S4.T3.2.10.8.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.10.8.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.10.8.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.10.8.2.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.10.8.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.10.8.3.1" style="font-size:90%;">64.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.11.9">
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.9.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.11.9.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.11.9.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.11.9.2.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.9.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.11.9.3.1" style="font-size:90%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.12.10">
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.10.1" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.12.10.1.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.12.10.2" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.12.10.2.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.10.3" style="padding:0.45pt 5.5pt;"><span class="ltx_text" id="S4.T3.2.12.10.3.1" style="font-size:90%;">47.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of linear probing experiments conducted on the ImageNet validation set.  Linear probing assesses the quality of learned representations by evaluating the performance of a linear classifier trained on top of them. The table compares the top-1 accuracy achieved by different methods on this benchmark task.  Specifically, it shows the performance of the proposed 'TokenSet' approach with varying configurations (using different vision transformer backbones and codebook sizes), and includes a comparison to a strong self-supervised learning baseline, MAE [13]. The '†' symbol indicates that the MAE model was trained for the same number of epochs (200) as the proposed method's encoder for a fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 3: Linear probing results on ImageNet validation set. We list the reported results of a strong self-supervised method MAE [13] for reference. † denotes MAE trained for the same 200 epochs as our set tokenizer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.3.4.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T4.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">Tokens</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mi id="S4.T4.2.2.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T4.2.2.2.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:90%;">Codebook</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:90%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.4.1.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.4.1.1.1" style="font-size:90%;">Taming-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S4.T4.3.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.4.1.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.4.1.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.4.1.3.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.4.1.4.1" style="font-size:90%;">7.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.5.2.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.5.2.1.1" style="font-size:90%;">Taming-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S4.T4.3.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.5.2.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.5.2.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.5.2.3.1" style="font-size:90%;">16384</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.5.2.4.1" style="font-size:90%;">4.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.6.3.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.6.3.1.1" style="font-size:90%;">RQVAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.6.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T4.3.6.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.6.3.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.6.3.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.6.3.3.1" style="font-size:90%;">16384</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.6.3.4.1" style="font-size:90%;">3.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.7.4.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.7.4.1.1" style="font-size:90%;">MaskGit-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.7.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T4.3.7.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.7.4.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.7.4.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.7.4.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.7.4.3.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.7.4.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.7.4.4.1" style="font-size:90%;">2.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.8.5.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.8.5.1.1" style="font-size:90%;">ViT-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.8.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S4.T4.3.8.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.8.5.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.8.5.2.1" style="font-size:90%;">1028</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.8.5.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.8.5.3.1" style="font-size:90%;">8192</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.8.5.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.8.5.4.1" style="font-size:90%;">1.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.9.6.1" style="padding-top:0.65pt;padding-bottom:0.65pt;">
<span class="ltx_text" id="S4.T4.3.9.6.1.1" style="font-size:90%;">TiTok </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.9.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T4.3.9.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.9.6.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.9.6.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.9.6.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.9.6.3.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.9.6.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.9.6.4.1" style="font-size:90%;">1.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.10.7.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.10.7.1.1" style="font-size:90%;">TokenSet</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.10.7.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.10.7.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.10.7.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.10.7.3.1" style="font-size:90%;">2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.10.7.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.10.7.4.1" style="font-size:90%;">3.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.11.8.1" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.11.8.1.1" style="font-size:90%;">TokenSet</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.11.8.2" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.11.8.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.11.8.3" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.11.8.3.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.11.8.4" style="padding-top:0.65pt;padding-bottom:0.65pt;"><span class="ltx_text" id="S4.T4.3.11.8.4.1" style="font-size:90%;">2.74</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different image tokenization methods on the ImageNet dataset.  The comparison is based on the Fréchet Inception Distance (FID) score, a metric that evaluates the quality of generated images by comparing them to real images.  Lower FID scores indicate better reconstruction quality. The table shows the FID scores achieved by several methods, including VQGAN, RQVAE, MaskGIT-VQGAN, VIT-VQGAN, TiTok, and the proposed TokenSet method. The results are presented for different configurations in terms of the number of tokens and the size of the codebook used.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of the reconstruction results of different tokenizers on the ImageNet benchmark at a resolution of 256×256256256256\times 256256 × 256.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T5.1.1.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.1.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.1.3.1" style="font-size:90%;">Set</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.1.4" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.1.4.1" style="font-size:90%;">Discrete</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T5.1.1.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.1.5.1" style="font-size:90%;">Fixed-sum</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.1.1" style="padding:0.65pt 5.5pt;">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.2.1.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.2.1.1.1" style="font-size:90%;">AR-order1</span></th>
<td class="ltx_td ltx_border_t" id="S4.T5.1.2.1.2" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.2.1.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T5.1.2.1.4" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.2.1.5.1" style="font-size:90%;">6.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.3.2.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.3.2.1.1" style="font-size:90%;">AR-order2</span></th>
<td class="ltx_td" id="S4.T5.1.3.2.2" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.3.2.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T5.1.3.2.4" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.3.2.5.1" style="font-size:90%;">6.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.4.3.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.4.3.1.1" style="font-size:90%;">AR-random</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.4.3.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.4.3.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T5.1.4.3.4" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.4.3.5.1" style="font-size:90%;">8.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.5.4.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.5.4.1.1" style="font-size:90%;">SetAR</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.5.4.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.5.4.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T5.1.5.4.4" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.5.4.5.1" style="font-size:90%;">6.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.6.5.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.6.5.1.1" style="font-size:90%;">Discrete Diffusion</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.6.5.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.6.5.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T5.1.6.5.4" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.6.5.5.1" style="font-size:90%;">6.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.7.6.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.7.6.1.1" style="font-size:90%;">Continuous Diffusion</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.6.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.7.6.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S4.T5.1.7.6.3" style="padding:0.65pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.1.7.6.4" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.7.6.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.6.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.7.6.5.1" style="font-size:90%;">75.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.8.7.1" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.8.7.1.1" style="font-size:90%;">FSDD</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.8.7.2" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.8.7.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.8.7.3" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.8.7.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.1.8.7.4" style="padding:0.65pt 5.5pt;"><span class="ltx_text" id="S4.T5.1.8.7.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.8.7.5" style="padding:0.65pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.8.7.5.1" style="font-size:90%;">5.56</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different image generation modeling methods.  The key is to analyze how the performance changes when incorporating three crucial properties from the proposed TokenSet method: set-based representation (unordered sets), discrete value representation (integer counts), and fixed-summation constraint (sum of counts equals total tokens).  Each method is evaluated on its ability to satisfy these constraints and its resulting performance (measured by the gFID metric). This allows for assessing the individual and combined contributions of these properties to the overall model effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on different modeling methods. Our tokenizer exhibits three important priors: set, discreteness, and fixed-sum constraint. We present different modeling methods, indicating which priors they satisfy and their corresponding performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.1.1.1" style="padding:0.45pt 12.0pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T6.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.m1.1a"><mi id="S4.T6.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T6.1.1.1.1" style="font-size:90%;">Tokens</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.2.2" style="padding:0.45pt 12.0pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T6.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.m1.1a"><mi id="S4.T6.2.2.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.2.2.2.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T6.2.2.2.1" style="font-size:90%;">Codebook</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.3" style="padding:0.45pt 12.0pt;">
<span class="ltx_text" id="S4.T6.3.3.3.1" style="font-size:90%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.m1.1a"><mo id="S4.T6.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.m1.1b"><ci id="S4.T6.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.4.4" style="padding:0.45pt 12.0pt;">
<span class="ltx_text" id="S4.T6.4.4.4.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.m1.1"><semantics id="S4.T6.4.4.4.m1.1a"><mo id="S4.T6.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.m1.1b"><ci id="S4.T6.4.4.4.m1.1.1.cmml" xref="S4.T6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.4.5.1.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.5.1.1.1" style="font-size:90%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.4.5.1.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.5.1.2.1" style="font-size:90%;">1024</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.1.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.5.1.3.1" style="font-size:90%;">6.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.1.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.5.1.4.1" style="font-size:90%;">9.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.6.2.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.6.2.1.1" style="font-size:90%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.6.2.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.6.2.2.1" style="font-size:90%;">2048</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.2.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.6.2.3.1" style="font-size:90%;">3.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.2.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.6.2.4.1" style="font-size:90%;">7.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.7.3.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.7.3.1.1" style="font-size:90%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.7.3.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.7.3.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.3.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.7.3.3.1" style="font-size:90%;">2.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.3.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.7.3.4.1" style="font-size:90%;">5.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.8.4.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.8.4.1.1" style="font-size:90%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.8.4.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.8.4.2.1" style="font-size:90%;">8192</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.8.4.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.8.4.3.1" style="font-size:90%;">2.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.8.4.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.8.4.4.1" style="font-size:90%;">8.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.4.9.5.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.9.5.1.1" style="font-size:90%;">32</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.4.9.5.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.9.5.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.9.5.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.9.5.3.1" style="font-size:90%;">5.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.9.5.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.9.5.4.1" style="font-size:90%;">6.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.10.6.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.10.6.1.1" style="font-size:90%;">64</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.10.6.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.10.6.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.10.6.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.10.6.3.1" style="font-size:90%;">3.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.10.6.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.10.6.4.1" style="font-size:90%;">6.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.11.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.11.7.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.11.7.1.1" style="font-size:90%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.11.7.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.11.7.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.11.7.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.11.7.3.1" style="font-size:90%;">2.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.11.7.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.11.7.4.1" style="font-size:90%;">5.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.12.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.12.8.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.12.8.1.1" style="font-size:90%;">256</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.12.8.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.12.8.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.12.8.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.12.8.3.1" style="font-size:90%;">2.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.12.8.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.12.8.4.1" style="font-size:90%;">7.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.13.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.13.9.1" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.13.9.1.1" style="font-size:90%;">512</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.4.13.9.2" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.13.9.2.1" style="font-size:90%;">4096</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.4.13.9.3" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.13.9.3.1" style="font-size:90%;">2.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.13.9.4" style="padding:0.45pt 12.0pt;"><span class="ltx_text" id="S4.T6.4.13.9.4.1" style="font-size:90%;">9.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the number of tokens and codebook sizes on both the reconstruction and generation performance of the proposed model.  It shows how FID and gFID scores change as these hyperparameters are adjusted, providing insights into the optimal configuration for balancing reconstruction quality and generative capacity.
> <details>
> <summary>read the caption</summary>
> Table 6: Impact of token numbers and codebook sizes on reconstruction and generation performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.4.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.4.5.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.1" style="padding:0.65pt 3.0pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T7.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.m1.1a"><mi id="S4.T7.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T7.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T7.1.1.1.1" style="font-size:90%;">Tokens</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.2.2" style="padding:0.65pt 3.0pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T7.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.m1.1a"><mi id="S4.T7.2.2.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T7.2.2.2.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T7.2.2.2.1" style="font-size:90%;">Codebook</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.3.3.3" style="padding:0.65pt 3.0pt;">
<math alttext="\#" class="ltx_Math" display="inline" id="S4.T7.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.m1.1a"><mi id="S4.T7.3.3.3.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T7.3.3.3.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.m1.1d">#</annotation></semantics></math><span class="ltx_text" id="S4.T7.3.3.3.1" style="font-size:90%;">Params</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.4.4.1" style="font-size:90%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T7.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.4.5.1.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.5.1.1.1" style="font-size:90%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.5.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S4.T7.4.5.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.5.1.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.4.5.1.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.5.1.3.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.4.5.1.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.5.1.4.1" style="font-size:90%;">1.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.5.1.5.1" style="font-size:90%;">15.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.6.2.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.6.2.1.1" style="font-size:90%;">VQ-Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.6.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S4.T7.4.6.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.6.2.2.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.6.2.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.6.2.3.1" style="font-size:90%;">2886</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.6.2.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.6.2.4.1" style="font-size:90%;">370M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.6.2.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.6.2.5.1" style="font-size:90%;">11.89</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.7.3.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.7.3.1.1" style="font-size:90%;">MaskGiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.7.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T7.4.7.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.7.3.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.7.3.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.7.3.3.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.7.3.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.7.3.4.1" style="font-size:90%;">227M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.7.3.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.7.3.5.1" style="font-size:90%;">6.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.8.4.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.8.4.1.1" style="font-size:90%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.8.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T7.4.8.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.8.4.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.8.4.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.8.4.3.1" style="font-size:90%;">16384</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.8.4.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.8.4.4.1" style="font-size:90%;">111M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.8.4.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.8.4.5.1" style="font-size:90%;">5.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.9.5.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.9.5.1.1" style="font-size:90%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.9.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T7.4.9.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.9.5.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.9.5.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.9.5.3.1" style="font-size:90%;">16384</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.9.5.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.9.5.4.1" style="font-size:90%;">3.1B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.9.5.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.9.5.5.1" style="font-size:90%;">2.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.10.6.1" style="padding:0.65pt 3.0pt;">
<span class="ltx_text" id="S4.T7.4.10.6.1.1" style="font-size:90%;">TiTok </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.10.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16425v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T7.4.10.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.10.6.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.10.6.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.10.6.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.10.6.3.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.10.6.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.10.6.4.1" style="font-size:90%;">287M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.10.6.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.10.6.5.1" style="font-size:90%;">1.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.4.11.7.1" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.11.7.1.1" style="font-size:90%;">TokenSet-S</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.11.7.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.11.7.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.4.11.7.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.11.7.3.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.4.11.7.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.11.7.4.1" style="font-size:90%;">36M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.11.7.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.11.7.5.1" style="font-size:90%;">5.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.12.8.1" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.12.8.1.1" style="font-size:90%;">TokenSet-B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.12.8.2" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.12.8.2.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.12.8.3" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.12.8.3.1" style="font-size:90%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.12.8.4" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.12.8.4.1" style="font-size:90%;">137M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.12.8.5" style="padding:0.65pt 3.0pt;"><span class="ltx_text" id="S4.T7.4.12.8.5.1" style="font-size:90%;">5.09</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various image generation models on the ImageNet dataset.  The models are evaluated at a resolution of 256x256 pixels using the FID and KID metrics, which assess the quality of generated images. The table allows for a quantitative comparison of different approaches in terms of their image generation capabilities.
> <details>
> <summary>read the caption</summary>
> Table 7: Modeling performance comparison on the ImageNet benchmark at 256×256256256256\times 256256 × 256 resolution.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16425/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16425/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}