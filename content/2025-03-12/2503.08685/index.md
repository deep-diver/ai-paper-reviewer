---
title: ""Principal Components" Enable A New Language of Images"
summary: "Images, now in a principal language! A novel tokenization unlocks efficient, interpretable image generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08685 {{< /keyword >}}
{{< keyword icon="writer" >}} Xin Wen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08685" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08685" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08685/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current visual tokenizers often lack structural properties in their latent space, hindering interpretability. This leads to semantic-spectrum coupling, where high and low-level features are entangled. Existing models also suffer from redundancy and struggle with compact representations. These shortcomings limit the potential for downstream tasks and efficient image generation.



To tackle these challenges, this paper presents a novel visual tokenization framework. The method embeds a PCA-like structure into the latent token space, ensuring mathematically guaranteed decreasing explained variance and contributing non-overlapping information to each successive token. **This structure enables decoding at any token count and facilitates a coarse-to-fine image reconstruction process.** A diffusion decoder further resolves semantic-spectrum coupling, resulting in improved performance and interpretability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a PCA-like structured visual tokenizer for improved interpretability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Addresses semantic-spectrum coupling for better disentanglement of image features. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art reconstruction performance with fewer tokens. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel visual tokenizer with PCA-like structure, offering improved interpretability and performance. It addresses key limitations in existing methods and opens avenues for efficient generative modeling, potentially impacting future research in visual representation learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08685/x1.png)

> 🔼 This figure demonstrates image reconstruction using a novel structured visual tokenization approach. Unlike traditional methods requiring a fixed number of tokens for decoding, this approach allows decoding with any number of tokens.  Each column displays reconstructions with an increasing number of tokens (1 to 256), illustrating how each added token incrementally refines the image. Early tokens capture the most prominent features, while later tokens add finer details. This showcases the method's flexibility and effectiveness in generating coherent images even from very limited token input.  For more examples, see Figure 17 in the Appendix.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Image reconstruction using our structured visual tokenization approach, which uniquely enables decoding at any token count. Each column shows reconstructions resulting from progressively increasing the number of tokens, from a single token to 256 tokens. Unlike conventional tokenizers that require a fixed number of tokens for meaningful decoding, our method ensures that each token incrementally refines the image, with earlier tokens capturing the most salient features and later ones adding finer details. This demonstrates the flexibility and effectiveness of our approach in producing coherent images even with very few tokens (view more in Fig. 17 in the Appendix).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T1.5.5.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.6.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.7.1" style="font-size:80%;">#Token</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.8.1" style="font-size:80%;">Dim.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.5.5.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.9.1" style="font-size:80%;">VQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:80%;">rFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.2" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.3.3.3" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.10.1" style="font-size:80%;">Gen. Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.11.1" style="font-size:80%;">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.12.1" style="font-size:80%;">#Token</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.5.5.13.1" style="font-size:80%;">#Step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.4.4.4" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:80%;">gFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.5" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:80%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.9.10.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.10.1.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.10.1.1.1" style="font-size:80%;">MaskBit </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.10.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T1.9.10.1.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.3.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.10.1.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.5.1" style="font-size:80%;">1.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.10.1.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.8.1" style="font-size:80%;">MaskBit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.9.1" style="font-size:80%;">Mask.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.11.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.12.1" style="font-size:80%;">1.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.10.1.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.10.1.13.1" style="font-size:80%;">328.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.11.2">
<td class="ltx_td ltx_align_left" id="S4.T1.9.11.2.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.11.2.1.1" style="font-size:80%;">RCG (cond.) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.11.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S4.T1.9.11.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.2.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.11.2.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.4.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.5.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.11.2.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.8.1" style="font-size:80%;">MAGE-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.9.1" style="font-size:80%;">Mask.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.10.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.11.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.12.1" style="font-size:80%;">3.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.11.2.13.1" style="font-size:80%;">215.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.12.3">
<td class="ltx_td ltx_align_left" id="S4.T1.9.12.3.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.12.3.1.1" style="font-size:80%;">MAR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.12.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S4.T1.9.12.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.3.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.12.3.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.4.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.5.1" style="font-size:80%;">1.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.12.3.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.8.1" style="font-size:80%;">MAR-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.9.1" style="font-size:80%;">Mask.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.11.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.12.1" style="font-size:80%;">1.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.12.3.13.1" style="font-size:80%;">296.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.13.4">
<td class="ltx_td ltx_align_left" id="S4.T1.9.13.4.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.13.4.1.1" style="font-size:80%;">TiTok-S-128 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.13.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T1.9.13.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.2.1" style="font-size:80%;">128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.3.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.13.4.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.5.1" style="font-size:80%;">1.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.13.4.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.8.1" style="font-size:80%;">MaskGIT-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.9.1" style="font-size:80%;">Mask.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.10.1" style="font-size:80%;">128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.11.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.12.1" style="font-size:80%;">1.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.13.4.13.1" style="font-size:80%;">281.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.14.5">
<td class="ltx_td ltx_align_left" id="S4.T1.9.14.5.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.14.5.1.1" style="font-size:80%;">TiTok-L-32 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.14.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T1.9.14.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.2.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.3.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.14.5.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.5.1" style="font-size:80%;">2.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.14.5.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.8.1" style="font-size:80%;">MaskGIT-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.9.1" style="font-size:80%;">Mask.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.10.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.11.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.12.1" style="font-size:80%;">2.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.14.5.13.1" style="font-size:80%;">194.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.15.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.15.6.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.15.6.1.1" style="font-size:80%;">VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.15.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S4.T1.9.15.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.3.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.15.6.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.5.1" style="font-size:80%;">7.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.15.6.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.8.1" style="font-size:80%;">Tam. Trans.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.11.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.12.1" style="font-size:80%;">5.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.15.6.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.15.6.13.1" style="font-size:80%;">280.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.16.7">
<td class="ltx_td ltx_align_left" id="S4.T1.9.16.7.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.16.7.1.1" style="font-size:80%;">ViT-VQGAN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.16.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T1.9.16.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.3.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.16.7.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.5.1" style="font-size:80%;">1.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.16.7.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.8.1" style="font-size:80%;">VIM-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.10.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.11.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.12.1" style="font-size:80%;">4.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.16.7.13.1" style="font-size:80%;">175.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.17.8">
<td class="ltx_td ltx_align_left" id="S4.T1.9.17.8.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.17.8.1.1" style="font-size:80%;">RQ-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.17.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T1.9.17.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.17.8.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.5.1" style="font-size:80%;">3.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.17.8.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.8.1" style="font-size:80%;">RQ-Trans.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.11.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.12.1" style="font-size:80%;">3.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.17.8.13.1" style="font-size:80%;">323.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_left" id="S4.T1.6.6.2" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.6.6.2.1" style="font-size:80%;">VAR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T1.6.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.3.1" style="font-size:80%;">680</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.8.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.6.6.1.1" style="font-size:80%;">VAR-</span><math alttext="d" class="ltx_Math" display="inline" id="S4.T1.6.6.1.m1.1"><semantics id="S4.T1.6.6.1.m1.1a"><mi id="S4.T1.6.6.1.m1.1.1" mathsize="80%" xref="S4.T1.6.6.1.m1.1.1.cmml">d</mi><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.1.m1.1b"><ci id="S4.T1.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.1.m1.1c">d</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.1.m1.1d">italic_d</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.9.1" style="font-size:80%;">VAR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.10.1" style="font-size:80%;">680</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.11.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.12.1" style="font-size:80%;">3.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.6.6.13.1" style="font-size:80%;">274.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7">
<td class="ltx_td ltx_align_left" id="S4.T1.7.7.2" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.7.7.2.1" style="font-size:80%;">ImageFolder </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S4.T1.7.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.3.1" style="font-size:80%;">286</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.6.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.8.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.7.7.1.1" style="font-size:80%;">VAR-</span><math alttext="d" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mi id="S4.T1.7.7.1.m1.1.1" mathsize="80%" xref="S4.T1.7.7.1.m1.1.1.cmml">d</mi><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><ci id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">d</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">italic_d</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.9.1" style="font-size:80%;">VAR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.10.1" style="font-size:80%;">286</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.11.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.12.1" style="font-size:80%;">2.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.7.7.13.1" style="font-size:80%;">295.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.18.9">
<td class="ltx_td ltx_align_left" id="S4.T1.9.18.9.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.18.9.1.1" style="font-size:80%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.18.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T1.9.18.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.3.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.18.9.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.5.1" style="font-size:80%;">2.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.6.1" style="font-size:80%;">20.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.18.9.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.7.1" style="font-size:80%;">0.675</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.8.1" style="font-size:80%;">LlamaGen-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.11.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.12.1" style="font-size:80%;">3.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.18.9.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.18.9.13.1" style="font-size:80%;">248.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.19.10">
<td class="ltx_td ltx_align_left" id="S4.T1.9.19.10.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.19.10.1.1" style="font-size:80%;">CRT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.19.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T1.9.19.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.3.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.19.10.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.5.1" style="font-size:80%;">2.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.19.10.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.8.1" style="font-size:80%;">LlamaGen-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.11.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.12.1" style="font-size:80%;">2.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.19.10.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.19.10.13.1" style="font-size:80%;">265.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.20.11">
<td class="ltx_td ltx_align_left" id="S4.T1.9.20.11.1" style="padding:0.2pt 5.5pt;">
<span class="ltx_text" id="S4.T1.9.20.11.1.1" style="font-size:80%;">Causal MAR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.20.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08685v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S4.T1.9.20.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.2" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.3.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.20.11.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.4.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.5.1" style="font-size:80%;">1.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.6.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.20.11.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.7.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.8.1" style="font-size:80%;">MAR-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.10.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.11.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.12.1" style="font-size:80%;">4.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.20.11.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.20.11.13.1" style="font-size:80%;">232.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.8.2" style="padding:0.2pt 5.5pt;">
<span class="ltx_text ltx_font_smallcaps" id="S4.T1.8.8.2.1" style="font-size:80%;">Semanticist</span><span class="ltx_text" id="S4.T1.8.8.2.2" style="font-size:80%;"> w/ DiT-L</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.8.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.6.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.7.1" style="font-size:80%;">21.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.8.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.8.1" style="font-size:80%;">0.626</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.1" style="padding:0.2pt 5.5pt;">
<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T1.8.8.1.m1.1"><semantics id="S4.T1.8.8.1.m1.1a"><mi id="S4.T1.8.8.1.m1.1.1" mathsize="80%" xref="S4.T1.8.8.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.1.m1.1b"><ci id="S4.T1.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.1.m1.1d">italic_ϵ</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.1.1" style="font-size:80%;">LlamaGen-L</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.10.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.11.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.12.1" style="font-size:80%;">2.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.8.8.13.1" style="font-size:80%;">260.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.2" style="padding:0.2pt 5.5pt;">
<span class="ltx_text ltx_font_smallcaps" id="S4.T1.9.9.2.1" style="font-size:80%;">Semanticist</span><span class="ltx_text" id="S4.T1.9.9.2.2" style="font-size:80%;"> w/ DiT-XL</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.3" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.4" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.5" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.6" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.6.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.7" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.7.1" style="font-size:80%;">21.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.8" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.8.1" style="font-size:80%;">0.613</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1" style="padding:0.2pt 5.5pt;">
<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mi id="S4.T1.9.9.1.m1.1.1" mathsize="80%" xref="S4.T1.9.9.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><ci id="S4.T1.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">italic_ϵ</annotation></semantics></math><span class="ltx_text" id="S4.T1.9.9.1.1" style="font-size:80%;">LlamaGen-L</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.9.1" style="font-size:80%;">AR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.10" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.10.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.11.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.12.1" style="font-size:80%;">2.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.13" style="padding:0.2pt 5.5pt;"><span class="ltx_text" id="S4.T1.9.9.13.1" style="font-size:80%;">254.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of SEMANTICIST's performance against other state-of-the-art image tokenizers and generative models on the ImageNet dataset.  The comparison focuses on reconstruction and generation quality.  For reconstruction, it shows the reconstruction fidelity (rFID), Peak Signal-to-Noise Ratio (PSNR), and Structural Similarity Index (SSIM).  For generation, it shows the Fréchet Inception Distance (gFID) and Inception Score (IS). Key metrics for each method are shown, including the number of tokens, token dimension, whether vector quantization was used, and the type and number of steps of the generative model used.  This allows for a comprehensive comparison of the effectiveness and efficiency of different approaches to image representation and generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Reconstruction and generation performance on ImageNet. “Dim.” denotes the dimension of the tokens, and “#Step” denotes the number of steps needed for generating the complete image. “#Token” stands for the number of tokens used for image reconstruction (left) and generation (right), respectively.
> </details>





### In-depth insights


#### PCA-like Tokens
The concept of “PCA-like Tokens” suggests a novel approach to image representation, drawing inspiration from Principal Component Analysis. It hints at a method where image tokens are organized hierarchically, similar to PCA's variance-explained structure. **Early tokens capture the most significant features**, akin to PCA's principal components, while subsequent tokens refine details, reflecting diminishing variance. This implies an **efficient, interpretable latent space**, facilitating tasks like image reconstruction and generation. The approach potentially addresses limitations of existing tokenizers by ensuring structural properties and may tackle the spectrum coupling effect as well. **This design choice could lead to improved image compression and semantic understanding**.

#### Semantic Spectrum
The concept of a 'Semantic Spectrum', though not explicitly defined in the context, evokes an interesting perspective on image representation. It suggests that images can be decomposed into a spectrum of information, ranging from high-level semantic content (**objects, scenes**) to low-level spectral details (**texture, color**). The key insight is that current methods often entangle these aspects, leading to inefficiencies and limitations. A truly effective representation would ideally separate the semantic meaning from the spectral details, allowing for independent control and manipulation. **This could enable more interpretable and controllable image generation**, where one could modify the semantic content without affecting the underlying texture or vice versa. Furthermore, decoupling the semantic spectrum could lead to more robust image analysis, where recognition is less susceptible to variations in lighting or other spectral factors. A visual system has global precedence effect, the semantic spectrum would mean the model first focus on the most important features.

#### 1D Causal Tokens
The concept of 1D causal tokens marks a shift in image representation, moving away from traditional 2D grid structures. This approach brings several potential advantages. Primarily, it enables the application of sequential modeling techniques, such as those used in natural language processing, to images. **The causal dependency** ensures that each token is generated based on the preceding ones, allowing autoregressive models to effectively capture the underlying structure of images. Moreover, 1D tokenization can potentially lead to more compact representations, reducing computational costs for image generation and processing. By enforcing a specific order, the model might learn to prioritize important features, leading to more efficient encoding. The challenge, however, lies in preserving spatial information and dependencies when mapping a 2D image to a 1D sequence. **Effective strategies** are needed to maintain image coherence and avoid artifacts. Furthermore, the specific ordering chosen for the 1D sequence can significantly impact the model's performance, requiring careful consideration and design.

#### Diffusion Decoder
Based on the context, a 'Diffusion Decoder' likely refers to a neural network module that reconstructs an image from a compressed latent representation using principles of diffusion models. **Diffusion models excel at generating high-quality samples by iteratively refining a noisy input,** this decoder would leverage this process to transform the latent code back into a visually coherent image. **The key advantage lies in its ability to capture complex dependencies and produce realistic details** often missed by simpler decoders. It might involve training the decoder to reverse a gradual diffusion process applied to the target image, conditioning the reverse process on the latent code. This allows for **incorporating information from the latent space in each step of the generation, guiding the formation of semantically meaningful features.** The use of diffusion could also help in resolving potential ambiguities in the latent representation and generate multiple plausible image reconstructions, offering a way to **model the inherent uncertainty in mapping a compressed code back to a full image.** The success would be dependent on the design of the diffusion process, the architecture of the neural network, and the quality of the latent representation.

#### Human Vision?
When exploring the theme of 'Human Vision' in a research paper, it's crucial to consider how the proposed methods align with or diverge from the mechanisms of human visual perception. **Ideally, the study would investigate the degree to which AI systems mimic the human visual system, particularly in tasks such as object recognition, scene understanding, and aesthetic evaluation.** This involves examining how AI models handle challenges like occlusion, lighting variations, and viewpoint changes, analogous to the human visual system's robust adaptability. Furthermore, studies could explore the hierarchical processing of visual information, mirroring the brain's initial capture of global scene layout followed by detailed analysis. **Key investigations might compare the model's attention mechanisms to human eye-tracking data or assess the interpretability of model features concerning known visual cortex functions.** Quantitative metrics such as structural similarity index (SSIM) or perceptual distance scores could be used to compare generated or reconstructed images with human perception. **Ultimately, a comprehensive exploration of 'Human Vision' in a research paper should not only validate the model's performance but also provide insights into the fundamental principles of visual intelligence, bridging the gap between artificial and biological vision systems.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08685/x2.png)

> 🔼 Figure 2(a) compares the frequency-power spectrum of images generated by three different visual tokenizers: VQ-VAE, TiTok, and Semanticist.  The spectrum shows the distribution of power across different frequencies, reflecting the balance between low-level details (high frequencies) and high-level semantic content (low frequencies).  In VQ-VAE, PCA is used to decompose the latent tokens, while in TiTok, all but the first k tokens are replaced by the mean token to analyze the spectrum. Semanticist shows the spectral profile consistently matches the ground truth image regardless of the number of tokens used. This demonstrates that Semanticist successfully decouples semantic and spectral information during tokenization, unlike other methods where semantic and spectral information are entangled.
> <details>
> <summary>read the caption</summary>
> (a)  Semantic-spectrum coupling. Comparison of the frequency-power spectra for different tokenizers. Here, we decompose the tokens from the tokenizers to demonstrate their contribution to the spectrum of the generated image. The VQ-VAE tokenizer [48] is decomposed by performing PCA in its latent token space, and the 1D TiTok [60] is decomposed by replacing all but the first k𝑘kitalic_k tokens with a mean token. For Semanticist, on the other hand, we can clearly see that with any number of tokens, the spectrum remains closely matched with the original image, demonstrating that Semanticist can decouple semantics and spectrum in its tokenization process.
> </details>



![](https://arxiv.org/html/2503.08685/x3.png)

> 🔼 This figure illustrates how the proposed tokenizer breaks down an image into a sequence of visual tokens.  It highlights the tokenizer's ability to capture the most important semantic information in the initial tokens, with subsequent tokens adding finer details. This 'coarse-to-fine' approach, mimicking the principle component analysis (PCA), allows for efficient and effective image representation using a relatively small number of tokens.  The PCA-like structure means the initial tokens represent the most significant aspects of the image, while later tokens add increasingly less significant details.
> <details>
> <summary>read the caption</summary>
> (b) Our tokenizer decomposes the image into visual concepts following a PCA-like coarse-to-fine structure where first few tokens capture most semantic information and the rest refine the details.
> </details>



![](https://arxiv.org/html/2503.08685/x4.png)

> 🔼 This figure compares the frequency-power spectra of different visual tokenizers to illustrate the concept of 'semantic-spectrum coupling' and to showcase the PCA-like structure of the proposed SEMANTICIST tokenizer.  Subfigure (a) displays the spectra for VQ-VAE (decomposed using PCA), TiTok (decomposed by replacing all but the first k tokens with a mean token), and SEMANTICIST. It highlights how SEMANTICIST uniquely maintains a consistent spectrum profile across various token counts, unlike others which show coupling between semantic content and low-level spectral details. Subfigure (b) visually demonstrates the SEMANTICIST tokenizer's coarse-to-fine tokenization process, illustrating how it decomposes an image into visual concepts, where initial tokens capture semantic information and subsequent tokens add finer details, mirroring the PCA-like structure.
> <details>
> <summary>read the caption</summary>
> Figure 2: Spectrum analysis and the PCA-like structure of our tokenizer.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/spectral_titok_ours.jpg)

> 🔼 The SEMANTICIST tokenizer uses a Vision Transformer (ViT) encoder to convert 2D image patches into a 1D sequence of concept tokens.  This 1D sequence is designed to have a PCA-like structure, meaning that the first few tokens capture the most important semantic information, while subsequent tokens add finer details. Nested classifier-free guidance (CFG) is applied to enforce this structure during training.  Finally, these concept tokens act as conditioning inputs for a Diffusion Transformer (DiT) decoder which reconstructs the original image. The figure illustrates the flow of information from the 2D image input through the encoder and decoder stages. The PCA-like structure of the output is a key feature of the SEMANTICIST design.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Semanticist tokenizer architecture. The ViT encoder resamples the 2D image patch tokens into a 1D causal sequence of concept tokens. These concept tokens are then used as conditions to the DiT decoder to reconstruct the original image. To induce a PCA-like structure in the concept tokens, we apply nested CFG.
> </details>



![](https://arxiv.org/html/2503.08685/x5.png)

> 🔼 This figure displays two line graphs, showcasing the relationship between the number of tokens and two key metrics: explained variance ratio and linear probing accuracy. The explained variance ratio, derived from Semanticist's PCA-like structure, demonstrates the decreasing proportion of variance explained by each subsequent token.  This indicates that the model prioritizes salient features in the initial tokens. The linear probing accuracy graph shows the classification accuracy achieved when using only a subset of the tokens as input features for a linear classifier. The downward trend suggests that while early tokens capture essential semantic information, later tokens contribute increasingly less to classification accuracy. The combined graphs illustrate Semanticist's ability to efficiently encode visual information using a structured and interpretable token representation.
> <details>
> <summary>read the caption</summary>
> Figure 4: The explained variance ratio from Semanticist’s PCA-like structure and the linear probing accuracy on the tokens.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/ar_examples.jpg)

> 🔼 This figure visually demonstrates the concept of 'semantic-spectrum coupling.'  It shows a series of reconstructed images generated using progressively more tokens from a visual tokenizer. Each image is accompanied by a power-frequency plot. The plot displays the power distribution in the frequency domain for the generated image (blue) overlaid on the plot of the ground-truth image (red). As more tokens are used (moving from left to right), the reconstructed image becomes more detailed and accurate, and the blue line on the power spectrum plot more closely matches the red line. This demonstrates how the model's earlier tokens capture high-level semantic information, while later tokens add finer details, highlighting the way semantic information (represented by the images themselves) and low-level spectral details are entangled in the tokens. The difference between the blue and red lines show how the model does not initially capture low-level information with only a few tokens, but as more tokens are provided, the reconstruction matches the original better.
> <details>
> <summary>read the caption</summary>
> Figure 5: Reconstructed images and their corresponding power-frequency plots, illustrating semantic-spectrum coupling. Each column shows reconstructions using only the first k𝑘kitalic_k tokens, increasing from left to right, alongside a plot of the reconstructed image’s frequency power (blue) overlaid on the ground-truth (red) image.
> </details>



![](https://arxiv.org/html/2503.08685/x6.png)

> 🔼 Figure 6 illustrates how the reconstruction quality of the model scales with different decoder sizes.  It shows that, as the size of the DiT decoder increases, the reconstruction fidelity (measured by rFID) improves, particularly with fewer tokens. This demonstrates the scaling behavior of the model and its ability to produce high-quality reconstructions even with compact representations and limited computation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scaling behavior of different sized DiT decoder (qualitative results can be found in Fig. 14 in the Appendix).
> </details>



![](https://arxiv.org/html/2503.08685/x7.png)

> 🔼 This figure displays a series of images demonstrating the iterative generation process of the LlamaGen-L model.  Specifically, it shows how the model progressively refines an image from a very basic initial representation to a final, detailed image. Each image in the sequence represents a step in this process, illustrating the gradual addition of details and fine-grained features as the model iterates.  These intermediate stages offer insight into the model's internal workings and the manner in which it constructs complex visual scenes from a sequence of tokens generated by the Semanticist tokenizer.  More examples are available in Figure 18.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of the intermediate generation results of ϵitalic-ϵ\epsilonitalic_ϵLlamaGen-L trained on Semanticist tokens (see more from Fig. 18).
> </details>



![](https://arxiv.org/html/2503.08685/x8.png)

> 🔼 A human perception test was conducted to evaluate Semanticist's ability to encode images effectively, similar to how human language encodes images. Participants were shown images reconstructed from either Semanticist or a distractor model with varying reveal times (100ms, 200ms, 300ms). They chose the image that best matched the original.  The results show that for all tested token dimensions, Semanticist consistently achieved preference scores close to 0.5, indicating its capacity to capture important image features comparable to human language models.
> <details>
> <summary>read the caption</summary>
> Figure 8: The preference score from the human perception test, all models and test configurations obtained a score close to 0.5, indicating Semanticist can encode image as effectively as how human language encodes the image.
> </details>



![](https://arxiv.org/html/2503.08685/x9.png)

> 🔼 This figure shows the zero-shot classification accuracy of a pre-trained CLIP model on images reconstructed using the SEMANTICIST tokenizer.  The x-axis represents the number of tokens used for reconstruction, while the y-axis shows the CLIP accuracy.  Different lines represent different token dimensions (e.g., d16x256, d64x64, etc.), indicating how the dimension of each token affects the reconstruction quality and subsequent classification performance. The results demonstrate that higher accuracy is achieved with more tokens and with higher dimensional tokens. A ground truth image is also included for reference.
> <details>
> <summary>read the caption</summary>
> Figure 9: CLIP zero-shot accuracy on reconstructed images.
> </details>



![](https://arxiv.org/html/2503.08685/x10.png)

> 🔼 This figure displays a frequency-power spectrum analysis of the TiTok tokenizer's latent space after Principal Component Analysis (PCA) decomposition.  Each sub-figure shows the power spectrum at different levels of feature decomposition. The key observation is that semantic information (high-level visual concepts) and spectral information (low-level details like texture and frequency patterns) are strongly coupled within the TiTok tokenization process.  This coupling indicates that TiTok's tokens don't effectively disentangle these different levels of image information, which can limit its interpretability and downstream performance.
> <details>
> <summary>read the caption</summary>
> Figure 10: Frequency-power spectra of Titok decomposed with PCA at feature dimensions. The learning of semantic contents and spectral information are coupled.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/recon_dim_comparison.jpg)

> 🔼 This ablation study investigates the impact of the REPA (Representation Alignment for Generation) regularization technique on the SEMANTICIST model's performance.  The experiment uses 64x64 dimensional concept tokens and a DiT-L/2 decoder.  The figure compares the reconstruction performance (measured by rFID score on ImageNet 50K validation set) with and without REPA regularization, showing different numbers of tokens used. The results demonstrate that REPA enhances the information density of the initial tokens, leading to better reconstruction quality, especially when fewer tokens are used.
> <details>
> <summary>read the caption</summary>
> Figure 11: Ablation on the use of REPA (with d64×\times×64 concept tokens, DiT-L/2 decoder, see qualitative results in Fig. 16). REPA improves the information density in preceding tokens.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/recon_16dim_scale.jpg)

> 🔼 This figure displays a comparison of reconstruction performance using different encoder configurations on the ImageNet validation set (50K images).  The x-axis represents the number of tokens used for reconstruction, while the y-axis shows the reconstruction performance, likely measured by a metric like FID (Fréchet Inception Distance) or PSNR (Peak Signal-to-Noise Ratio). Different curves represent different encoder configurations, varying the dimensionality of the tokens (e.g., 16, 32, 64, 256 dimensions). The key takeaway is that using a larger number of lower-dimensional tokens results in better reconstruction quality. This suggests that a strategy with more, less complex tokens is more effective for image reconstruction than fewer, highly complex tokens.
> <details>
> <summary>read the caption</summary>
> Figure 12: Reconstruction performance of different encoder configurations on ImageNet val 50K benchmark. A larger number of lower-dimensional tokens is more friendly for reconstruction tasks.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/recon_16dim_xl_cfg.jpg)

> 🔼 This figure displays a qualitative comparison of image reconstruction using different token dimensions within the SEMANTICIST model.  The results showcase how higher dimensional tokens can encode more visual information, leading to more detailed reconstructions. Conversely, lower dimensional tokens demonstrate improved semantic decoupling (separation of semantic content and lower-level details), resulting in cleaner and potentially more interpretable reconstructions, even with fewer tokens used in the reconstruction process.
> <details>
> <summary>read the caption</summary>
> Figure 13: Qualitative results of different token dimensions. Higher dimensional tokens encode more information, and lower dimensional tokens achieve clearer semantic decoupling and achieve better reconstruction.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/recon_64dim_repa.jpg)

> 🔼 This figure visualizes the impact of different DiT decoder scales (DiT-B/2, DiT-L/2, and DiT-XL/2) on image reconstruction quality using 16-dimensional tokens (d16x256).  Across various token counts (1, 2, 4, 8, 16, 32, 64, 128, 256),  it demonstrates how image quality improves as the decoder size increases.  Even with a small number of tokens, larger decoders generate more realistic and detailed images, highlighting the effectiveness of scaling up the decoder for improved reconstruction performance.
> <details>
> <summary>read the caption</summary>
> Figure 14: Qualitative results of different DiT decoder scales (DiT-B/2, DiT-L/2, and DiT-XL/2) with d16×\times×256 tokens. The quality of images generated with fewer tokens improves consistently as the decoder scales up.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/recon_16dim_xl_other.jpg)

> 🔼 This figure displays a comparison of image reconstruction results from a diffusion model's decoder, using varying classifier-free guidance (CFG) scales.  The results show that adjusting the CFG scale significantly affects the generated image's aesthetic qualities, demonstrating its effectiveness in controlling visual style and details.  Each row shows the progression of image generation with increasing numbers of tokens for a given CFG scale, allowing for a clear visual analysis of its impact. The results highlight how CFG influences the generation process, offering a technique for fine-tuning the visual style of the output images.
> <details>
> <summary>read the caption</summary>
> Figure 15: Qualitative results of different CFG guidance scales for DiT decoder, which clearly controls image aesthetics.
> </details>



![](https://arxiv.org/html/2503.08685/extracted/6266389/figs/ar_more.jpg)

> 🔼 This figure presents a qualitative comparison of image reconstruction results obtained with and without the REPA (Regularized Exponential Moving Average) technique.  Using d64x64 concept tokens, the images are reconstructed using varying numbers of tokens. The results show that while REPA doesn't significantly improve the final reconstruction quality (the final images on the rightmost columns look similar), it notably enhances the semantic fidelity of the intermediate results (images in the earlier columns). In other words, even when using a small number of tokens, the images generated with REPA better capture the essential semantic content of the scene, leading to more meaningful intermediate steps in the reconstruction process.
> <details>
> <summary>read the caption</summary>
> Figure 16: Qualitative results on effects of REPA (with d64×\times×64 concept tokens). Instead of improving final reconstruction much, the benefit of REPA is mainly attributed to more faithful semantics in intermediate results.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08685/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08685/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}