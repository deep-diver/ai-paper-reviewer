---
title: "FlexIP: Dynamic Control of Preservation and Personality for Customized Image Generation"
summary: "FlexIP: Controllable image generation, balancing preservation and personalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tencent AI Lab",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07405 {{< /keyword >}}
{{< keyword icon="writer" >}} Linyan Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07405" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07405" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07405/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing image generation methods struggle to balance preserving subject identity with enabling diverse edits. They often treat these goals as conflicting, forcing trade-offs. Current zero-shot methods use alignment modules which are insufficient for capturing complex visual knowledge, leading to issues with identity preservation. This results in the inability to work harmoniously between identity preservation and editorial fidelity. 



To solve this, this paper introduces **FlexIP**, a framework with two components: a Personalization Adapter for stylistic manipulation and a Preservation Adapter for identity maintenance. Explicitly injecting both controls, FlexIP enables flexible control through dynamic weight tuning. The system is a dual-adapter architecture enabling each adapter to focus clearly on its specific task to improve complementary strengths and maximize efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FlexIP decouples identity preservation and personalized editing, allowing independent control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dynamic weight gating enables continuous adjustment between preservation and personalization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The dual-adapter architecture enhances edit fidelity and eliminates feature competition. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a plug-and-play framework **FlexIP**, offering unprecedented control over image generation. This research advances personalized image creation, balancing identity and creativity, enabling new possibilities for digital art, design, and content creation. This opens avenues for exploring AI's role in customized visual content.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/preserve_analysis.jpg)

> 🔼 Figure 1 demonstrates FlexIP's capabilities in generating personalized images while maintaining the subject's identity.  The top part shows that, given a reference image, FlexIP can produce a range of edits based on various text prompts, while consistently preserving key features of the original image. The bottom part highlights FlexIP's smooth control over the balance between identity preservation and personalization through a dynamic weight gating mechanism, contrasting its performance with the abrupt shifts observed in the IP-Adapter method.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Top: FlexIP showcases versatility and precision in personalized image generation. Given a single reference image (left column), it vividly captures identity details while creatively following diverse text prompts, resulting in coherent yet highly varied edits. Bottom: FlexIP’s dynamic weight gating mechanism smoothly transitions between strong identity preservation and diverse personalization, significantly outperforming IP-Adapter, which suffers from abrupt identity shifts and rigid control. This reflects superior flexibility and user-friendly controllability.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.2.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.2.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.2.1">mRank</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.3.1">Personalization</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.4.1">Preservation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.5.1">Image Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_tt" colspan="2" id="S3.T1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.6.1">User Study (%)</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.1.1">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.2.1">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.3.1">DINO-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.4.1">CLIP-IQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.5.1">Aesthetic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.6.1">Flex</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.3.2.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.7.1">ID-Pres</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.4.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.4.1.1">BLIP-Diffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.2">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.3">0.166</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.4">0.681</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.5">0.374</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.6">0.486</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.4.1.7">5.234</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.8">—</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.4.1.9">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.5.2.1">ELITE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.2">6.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.3">0.269</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.4">0.793</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.5">0.657</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.6">0.522</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.2.7">5.437</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.8">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2.9">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.6.3.1">MoMA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.2">5.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.3">0.265</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.4">0.830</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.5">0.656</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.6">0.546</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.3.7">5.437</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.8">9.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3.9">7.26</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.7.4.1">SSR-Encoder <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.2">5.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.3">0.277</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.4">0.802</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.5">0.581</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.6">0.568</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.4.7">5.578</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.8">6.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.4.9">3.28</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.8.5.1">IP-Adapter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.2">4.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.3">0.209</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.8.5.4.1">0.855</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.5">0.728</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.6">0.581</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.5.7">5.594</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.8">4.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5.9">2.23</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.9.6.1">IP-Adapter-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.2">4.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.3">0.234</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.4">0.833</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.5">0.701</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.6">0.584</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.6.7">5.459</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.8">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.6.9">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.1">
<math alttext="\lambda" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">italic_λ</annotation></semantics></math>-Eclipse <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2">4.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.1">0.296</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4">0.747</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5">0.467</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.1.6.1">0.589</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7">5.597</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8">12.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9">6.97</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.10.7.1">DisEnVisoner <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.2">4.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.3">0.255</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.4">0.851</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.10.7.5.1">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.6">0.470</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.10.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.10.7.7.1">5.658</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.8">5.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.7.9">3.52</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.11.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.11.8.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.1.11.8.1.1">FlexIP (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.2.1">1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.11.8.3.1">0.284</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.4.1">0.873</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.5.1">0.739</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.6.1">0.598</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.11.8.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.7.1">6.039</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.8"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.8.1">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.11.8.9"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.8.9.1">76.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares various image generation methods across multiple metrics, categorized for clarity.  Controllability measures how easily the model can be adjusted for different outputs (assessed using CLIP-T and Image Reward scores).  Similarity assesses how well the generated image matches the reference image in terms of identity preservation (measured by CLIP-I and DINO-I scores). Image quality is evaluated using CLIP-IQA and Aesthetic scores.  The 'Flex' column indicates the model's flexibility and dynamic modification capabilities, while 'ID-Pres' shows its ability to maintain the original image's identity.  Bold values represent the best performance for each metric, while underlined values indicate the second-best.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different methods, reorganized by controllability (CLIP-T, Image Reward), similarity (CLIP-I, DINO-I), and image quality (CLIP-IQA, Aesthetic). ”Flex” denotes the model’s controllability, allowing for adjustable and dynamic modifications. ”ID-Pres” represents the model’s ability to preserve the identity of the reference image. Bold text indicates the best result, while underlined text denotes the second-best result.
> </details>





### In-depth insights


#### Decoupled Adapters
The concept of "Decoupled Adapters" suggests a modular approach to neural network design, especially relevant in areas like transfer learning or continual learning. **Decoupling adapters aims to isolate specific functionalities** (e.g., style transfer, domain adaptation) into separate adapter modules, rather than embedding them within the core network parameters. This offers several advantages. **First, it enhances parameter efficiency**: only the adapter's weights need updating for new tasks, preserving the pre-trained knowledge in the main network. **Second, it improves modularity and interpretability**, making it easier to understand and modify individual components. **Third, it allows for dynamic composition**: adapters can be selectively activated or combined to achieve different effects. This architecture can be thought of as a design that elegantly balances identity preservation and diverse personalization. It also allows continuous modulation between distinct processes. By **creating distinct pathways for personalization and preservation**, the model avoids the common pitfalls of abrupt transitions, offering superior control and flexibility.

#### Dynamic Weighting
**Dynamic weighting** seems to provide a flexible mechanism for balancing different objectives in a model, for example trading off between identity preservation and creative expressiveness. The main idea is to use a learnable or adaptive weight to combine the outputs of two or more modules, where each module is designed to achieve a specific goal. This approach could be particularly useful in scenarios where the optimal balance between competing objectives may vary depending on the input data or task requirements. In these situations, a fixed weighting scheme may not be sufficient, and a dynamic weighting approach could lead to better overall performance.

#### Image vs. Video
**Image data often captures a static scene, providing rich detail but lacking temporal information.** This can lead to copy-paste artifacts in generative models, as the model overfits to rigid spatial correlations. **Video data, on the other hand, inherently contains temporal coherence**, showcasing pose variations, lighting changes, and motion. Training generative models on video enables more flexible feature disentanglement, facilitating better adaptation to diverse styles and edits. **However, video data may compromise identity preservation due to its dynamic nature.** Explicitly addressing the trade-offs between image and video training is crucial for creating robust and controllable image generation models. It is key to leverage image data for maximizing preservation, ensuring that the essential features of the image are retained, while suppressing it in order to enhance the stylization capabilities.

#### Explicit Control
**Explicit control** in image generation allows users to precisely manipulate the output. This is crucial for applications requiring specific attributes. Traditional methods often lack fine-grained control, leading to unpredictable results. Recent advancements focus on disentangling latent spaces, enabling independent control over factors like style and content. **Dynamic adjustment of weights** between different modules offers a pathway to more fluid explicit control, balancing preservation and personalization. The ultimate goal is to create a system where users can intuitively and predictably guide the image generation process, paving the way for personalized creativity and tailored image synthesis.

#### Visual Grounding
**Visual grounding** is a crucial area that bridges computer vision and natural language processing. It aims to **localize and link specific objects or regions within an image to corresponding words or phrases in a textual description**. Effective visual grounding facilitates more meaningful interactions between humans and machines, enabling tasks such as image captioning, question answering, and visual dialog. Challenges include handling ambiguity in language, dealing with complex scenes with multiple objects, and achieving robustness to variations in image quality and viewpoint. **Recent advances** leverage attention mechanisms, graph neural networks, and transformer architectures to improve grounding accuracy and efficiency, promising more sophisticated AI systems that can truly 'see' and understand the world around them.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/pipeline.png)

> 🔼 Figure 2 presents a comparison of FlexIP against several state-of-the-art methods across two key metrics: image preservation (the extent to which the model retains the identity of the original image) and text fidelity (how well the generated image matches the given text description). The graph shows that FlexIP outperforms the other methods by achieving a superior balance between both metrics.  This superior performance highlights FlexIP's ability to preserve identity while generating diverse and relevant edits, unlike other methods which typically show a trade-off between these two qualities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison with other methods on two indicators, image preservation and text fidelity, demonstrates that our approach surpasses previous methods in both aspects.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/comp-main.jpg)

> 🔼 FlexIP's architecture consists of three main components: a preservation adapter, a personalization adapter, and a dynamic weight gating mechanism. The preservation adapter uses both high-level (CLIP CLS embeddings) and low-level (learnable query embeddings from DINO Patch Embeddings) features to maintain the subject's identity.  The personalization adapter leverages text embeddings and the CLIP CLS embeddings to integrate textual instructions with the subject's visual identity, enabling coherent edits. The dynamic weight gating mechanism allows for continuous control over the balance between identity preservation and personalization by dynamically adjusting the weights of the two adapters.  This approach addresses the common trade-off between these two objectives in image generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall pipeline of FlexIP. It introduces three key improvements to the model: the preservation adapter, the personalization adapter, and dynamic weight gating. First, the preservation adapter combines high-level and low-level features to ensure preservation. The personalization adapter interacts with text and visual CLS tokens to absorb meaningful visual cues, grounding textual modifications within a coherent visual context. Finally, dynamic weight gating navigates the trade-off between personalization and preservation more effectively through independent adapters controlled by a dynamic weight gating mechanism.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/comp-var.jpg)

> 🔼 Figure 4 presents a qualitative comparison of image generation results from FlexIP and several other state-of-the-art methods.  Each row shows the same subject (e.g., a kitten, a horse, a penguin) subjected to various text prompts to illustrate the diverse outputs.  FlexIP's results demonstrate a high degree of identity preservation, even when the style and context of the generated image change significantly. The comparison aims to showcase FlexIP's superior ability to maintain identity fidelity while producing a greater variety of creative and personalized edits compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison with other methods. Our approach surpasses alternative methods in its exceptional ability to preserve identity while generating a wide range of diverse and personalized outputs.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/comp-style.jpg)

> 🔼 Figure 5 demonstrates how FlexIP's dynamic weight gating mechanism allows for smooth transitions between identity preservation and personalization.  By adjusting the weight parameter γ(x), users can control the balance between these two aspects.  γ(x) = 0.7 prioritizes preservation, retaining fine details of the original image.  As γ(x) decreases (0.5 and 0.3), personalization increases, resulting in more stylized and diverse outputs while still maintaining a degree of identity preservation. This highlights the flexibility of FlexIP in generating images that meet various needs.
> <details>
> <summary>read the caption</summary>
> Figure 5: The effectiveness of the dynamic weight gating mechanism.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/attnmaps.png)

> 🔼 Figure 6 shows a comparison of FlexIP against other methods on style transfer tasks.  It visually demonstrates the ability of each method to successfully apply various artistic styles to an image while maintaining the original image content.  The figure likely showcases the differences in style transfer capabilities, focusing on how well each method preserves the original image's key features and avoids artifacts or distortions while adding the new style.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison with other methods on style transfer tasks.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/supp-comp-animals.jpg)

> 🔼 Figure 7 visualizes attention maps from different modules of the FlexIP model, highlighting how each module focuses on specific aspects of image generation.  The learnable query module emphasizes fine details of the subject, while the CLIP CLS embeddings concentrate on the subject's overall structure and appearance. This complementary approach ensures both high-level semantic understanding and low-level detail preservation.  The personalization module, using text embeddings, focuses primarily on the surrounding environment and context while still retaining some awareness of identity-preserving features. The figure supports the paper's design choice to separate identity preservation and personalization into distinct modules.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of attention maps across different modules.In the image, the white areas of the attention map indicate activation values—the whiter the color, the higher the activation value. It is evident that the two preservation modules function differently: the learnable query module concentrates more on the subject’s details, while the CLIP CLS Embeds focus more on the subject’s global aspects. Consequently, high-level and low-level information complement each other. For the personalization module, the text embeds pay more attention to the surrounding environment and some identity preservation details. This observation supports our decision to decouple preservation and personalization.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/supp-comp-human.jpg)

> 🔼 Figure 8 presents a qualitative comparison of image generation results across different methods, focusing on animal subjects.  The figure showcases how well each method can maintain the subject's identity while producing diverse and personalized images based on text prompts.  Each row shows the reference image followed by the results from FlexIP and several other state-of-the-art methods.  The visual comparison aims to highlight FlexIP's superior performance in preserving the original subject's identity while offering more creative and varied results than other techniques.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparison with other methods in animal domain. Our approach surpasses alternative methods in its exceptional ability to preserve identity while generating a wide range of diverse and personalized outputs.
> </details>



![](https://arxiv.org/html/2504.07405/extracted/6349914/assets/pics/exps/supp-comp-objects.jpg)

> 🔼 Figure 9 presents a qualitative comparison of FlexIP against several state-of-the-art methods for image generation, focusing on human subjects.  It showcases how FlexIP excels at maintaining the subject's identity while creating diverse and personalized outputs based on various text prompts.  The figure highlights the differences in identity preservation and the variety of generated images across different models, demonstrating FlexIP's superior performance in balancing identity preservation with creative edits.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative comparison with other methods in human domain. Our approach surpasses alternative methods in its exceptional ability to preserve identity while generating a wide range of diverse and personalized outputs.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.2.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.2.1.2">I-T Match</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.2.1.3">Detail</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.2.1.4">Semantic</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.1">
<math alttext="\lambda" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">italic_λ</annotation></semantics></math>-Eclipse</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2">83.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4">38.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.1.1">DisEnVisioner</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.1.2">66.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.1.3">56.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.1.4">38.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.2.1">SSR-Encoder</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.2">83.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.3">56.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.4">38.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.3.1">IP-Adapter</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.2">40.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.3">58.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.4">37.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.6.4.1">MoMA</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.4.2">78.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.4.3">56.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.4.4">38.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.7.5.1">FlexIP</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.7.5.2.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.7.5.3.1">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.7.5.4.1">40.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different image generation methods across three key aspects of image quality: image-text matching (I-T Match), object detail preservation (Detail), and semantic understanding (Semantic).  I-T Match assesses how well the generated image aligns with the input text prompt. Detail evaluates the level of detail and fidelity in the generated image, focusing on object representation. Semantic understanding measures the overall coherence and accuracy of the generated image in conveying the intended meaning of the text prompt. The results demonstrate that FlexIP outperforms other methods in all three aspects, signifying its superior ability to generate images that accurately reflect both the textual instructions and the visual details of the subject matter.
> <details>
> <summary>read the caption</summary>
> Table 2: The evaluation metrics among different methods. Among these dimensions, I-T Match stands for image-text matching, Detail represents object detail satisfaction, and Semantic refers to semantic understanding. FlexIP surpasses previous methods across all three complementary indicators.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.1.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.5.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.1.2.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.1.3.1">Instances</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.5.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.1.4.1">Quality</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T3.5.2.2.1">
<span class="ltx_text ltx_font_bold" id="A1.T3.5.2.2.1.1">Invariant Datasets</span> (11.1M)</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.3.3.1" rowspan="2"><span class="ltx_text" id="A1.T3.5.3.3.1.1">Image</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.3.3.2">SAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.3.3.3">9.0M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.3.3.4">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.4.4">
<td class="ltx_td ltx_align_left" id="A1.T3.5.4.4.1">BrushData <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.4.4.2">2.1M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.4.4.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T3.5.5.5.1">
<span class="ltx_text ltx_font_bold" id="A1.T3.5.5.5.1.1">Variant Datasets</span> (1.23M)</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.6.6.1" rowspan="8"><span class="ltx_text" id="A1.T3.5.6.6.1.1">Multi-View</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.6.6.2">MVImageNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.6.6.3">177495</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.6.6.4">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.7.7">
<td class="ltx_td ltx_align_left" id="A1.T3.5.7.7.1">MVHumanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.7.7.2">28893</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.7.7.3">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.8.8">
<td class="ltx_td ltx_align_left" id="A1.T3.5.8.8.1">co3d <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.8.8.2">26687</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.8.8.3">Low</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.9.9">
<td class="ltx_td ltx_align_left" id="A1.T3.5.9.9.1">PanoHead <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.9.9.2">5000</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.9.9.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.10.10">
<td class="ltx_td ltx_align_left" id="A1.T3.5.10.10.1">CelebA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.10.10.2">10133</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.10.10.3">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.11.11">
<td class="ltx_td ltx_align_left" id="A1.T3.5.11.11.1">MeGlass <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.11.11.2">1710</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.11.11.3">Low</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.12.12">
<td class="ltx_td ltx_align_left" id="A1.T3.5.12.12.1">VITON-HD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.12.12.2">11647</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.12.12.3">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.13.13">
<td class="ltx_td ltx_align_left" id="A1.T3.5.13.13.1">DressCode <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.13.13.2">53792</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.13.13.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T3.5.14.14.1" rowspan="5"><span class="ltx_text" id="A1.T3.5.14.14.1.1">Video</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.14.14.2">SAM2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.14.14.3">51000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.14.14.4">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.15.15">
<td class="ltx_td ltx_align_left" id="A1.T3.5.15.15.1">CelebV-HQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.15.15.2">35666</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.15.15.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.16.16">
<td class="ltx_td ltx_align_left" id="A1.T3.5.16.16.1">VFHQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.16.16.2">15204</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.16.16.3">Medium</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.17.17">
<td class="ltx_td ltx_align_left" id="A1.T3.5.17.17.1">Pexel</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.17.17.2">181038</td>
<td class="ltx_td ltx_align_center" id="A1.T3.5.17.17.3">High</td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.18.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.5.18.18.1">OpenVid1M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07405v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.5.18.18.2">633885</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.5.18.18.3">High</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used for training the FlexIP model. It lists the dataset name, the number of instances (images or videos) in the dataset, and an indication of image quality.  The datasets are categorized into invariant datasets (those with images of the same subject consistently), and variant datasets (those with images representing various poses, viewpoints, and conditions for the same subject).  This information is crucial to understanding the model's training regime and how it handles identity preservation and personalization during image generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Data Information used for training. Quality specifically refers to the image resolution.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07405/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07405/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}