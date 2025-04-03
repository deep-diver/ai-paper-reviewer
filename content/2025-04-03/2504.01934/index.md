---
title: "ILLUME+: Illuminating Unified MLLM with Dual Visual Tokenization and Diffusion Refinement"
summary: "ILLUME+ improves MLLMs with dual visual tokenization and diffusion refinement, enabling high-fidelity image generation and deep semantic understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Huawei Noah's Ark Lab",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01934 {{< /keyword >}}
{{< keyword icon="writer" >}} Runhui Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01934" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01934" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01934/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing unified models struggle to handle understanding, generation, and editing simultaneously. Models using VQGAN lack deep semantic interaction, while those with semantic encoders struggle with image editing due to poor texture preservation. Janus series limits abilities to handle interleaved image-text tasks. To address these issues, ILLUME+ introduces DualViTok to preserves textures and semantics while enabling a coarse-to-fine image representation. 



ILLUME+ employs a diffusion model for enhanced generation quality and efficient super-resolution. It follows a continuous-input, discrete-output scheme and adopts a progressive training procedure for dynamic resolution. This design allows flexible image editing and generation. Experiments show that ILLUME+ exhibits competitive performance across multimodal tasks, enhances visual understanding, and enables detailed image synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dual visual tokenization preserves both fine-grained textures and text-aligned semantics, enabling coarse-to-fine image representation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Diffusion model enhances generation quality and enables efficient super-resolution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ILLUME+ achieves competitive performance against existing unified MLLMs and specialized models across understanding, generation, and editing benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents **ILLUME+**, which significantly contributes to the development of more capable and versatile MLLMs. It is important for researchers by improving image understanding, generation, and editing and providing a scalable solution for future multimodal applications.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01934/x1.png)

> 🔼 ILLUME+ is an enhanced version of ILLUME that uses dual visual tokenization and a diffusion decoder to improve both deep semantic understanding and high-fidelity image generation.  Figure 1 showcases this by demonstrating ILLUME+'s ability to understand and generate images at various resolutions, highlighting the improved texture preservation during image editing tasks when compared to its predecessor, ILLUME.  Several example images and editing tasks are presented to illustrate these advancements.
> <details>
> <summary>read the caption</summary>
> Figure 1: ILLUME+ can understand and generate images at any resolution. Compared to our previous work, ILLUME wang2024illume , it demonstrates improved texture preservation in image editing tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F5.3.1">
<tr class="ltx_tr" id="S3.F5.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.F5.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.F5.3.1.1.1.1" style="font-size:50%;">Stage</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.F5.3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.1.2.1">
<span class="ltx_p" id="S3.F5.3.1.1.2.1.1" style="width:119.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F5.3.1.1.2.1.1.1" style="font-size:50%;">Dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.3.1.2.1"><span class="ltx_text" id="S3.F5.3.1.2.1.1" style="font-size:50%;">Tokenizer &amp; Diffusion</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.F5.3.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.2.2.1">
<span class="ltx_p" id="S3.F5.3.1.2.2.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.2.2.1.1.1" style="font-size:50%;">COYO </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">kakaobrain2022coyo-700m</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.2.2.1.1.4" style="font-size:50%;">, EMOVA, in-house aesthetics data</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.3.1.3.1" rowspan="5"><span class="ltx_text" id="S3.F5.3.1.3.1.1" style="font-size:50%;">MLLM Pre-training</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.F5.3.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.3.2.1">
<span class="ltx_p" id="S3.F5.3.1.3.2.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.3.2.1.1.1" style="font-size:50%;">COYO, Wukong </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">gu2022wukong</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.3.2.1.1.4" style="font-size:50%;">, EMOVA-Pretrain </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">chen2024emova</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.3.2.1.1.7" style="font-size:50%;">,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.4.1.1">
<span class="ltx_p" id="S3.F5.3.1.4.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.4.1.1.1.1" style="font-size:50%;">LLAVA-SFT </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">liu2024visual</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.4.1.1.1.4" style="font-size:50%;">, in-house aesthetics data,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.5.1.1">
<span class="ltx_p" id="S3.F5.3.1.5.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.5.1.1.1.1" style="font-size:50%;">UltraEdit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">zhao2024ultraedit</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.5.1.1.1.4" style="font-size:50%;">, SEED-Edit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">ge2024seed</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.5.1.1.1.7" style="font-size:50%;">, AnyEdit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">yu2024anyedit</span> </a></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.6.1.1">
<span class="ltx_p" id="S3.F5.3.1.6.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.6.1.1.1.1" style="font-size:50%;">Magpie </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">xu2024magpie</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.6.1.1.1.4" style="font-size:50%;">, OpenOrca </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">OpenOrca</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.6.1.1.1.7" style="font-size:50%;">, SCP-116K </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">lu2025scp</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.6.1.1.1.10" style="font-size:50%;">,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.7.1.1">
<span class="ltx_p" id="S3.F5.3.1.7.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.7.1.1.1.1" style="font-size:50%;">OpenHermes </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">OpenHermes2.5</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.7.1.1.1.4" style="font-size:50%;">, OPC-SFT-Stage1 </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">Huang2024OpenCoderTO</span> </a></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.F5.3.1.8.1" rowspan="5"><span class="ltx_text" id="S3.F5.3.1.8.1.1" style="font-size:50%;">MLLM SFT</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.F5.3.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.8.2.1">
<span class="ltx_p" id="S3.F5.3.1.8.2.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.8.2.1.1.1" style="font-size:50%;">EMOVA-SFT, Pixmo </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">deitke2024molmo</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.8.2.1.1.4" style="font-size:50%;">, M4-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">liu2024improved</span> </a></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.9.1.1">
<span class="ltx_p" id="S3.F5.3.1.9.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.9.1.1.1.1" style="font-size:50%;">COYO, in-house aesthetics data,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.10.1.1">
<span class="ltx_p" id="S3.F5.3.1.10.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.10.1.1.1.1" style="font-size:50%;">OmniEdit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">wei2024omniedit</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.10.1.1.1.4" style="font-size:50%;">, AnyEdit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">yu2024anyedit</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.10.1.1.1.7" style="font-size:50%;">, UltraEdit </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">zhao2024ultraedit</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.10.1.1.1.10" style="font-size:50%;">,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.F5.3.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.11.1.1">
<span class="ltx_p" id="S3.F5.3.1.11.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.11.1.1.1.1" style="font-size:50%;">Instruct-Pix2Pix </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">brooks2023instructpix2pix</span> </a></cite><span class="ltx_text" id="S3.F5.3.1.11.1.1.1.4" style="font-size:50%;">,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F5.3.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S3.F5.3.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F5.3.1.12.1.1">
<span class="ltx_p" id="S3.F5.3.1.12.1.1.1" style="width:119.5pt;"><span class="ltx_text" id="S3.F5.3.1.12.1.1.1.1" style="font-size:50%;">Magpie </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">xu2024magpie</span> </a></cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters used during the training process of the ILLUME+ model.  It breaks down the specific settings for each of the three training stages (Visual Embedding Initialization, Unified Image-Text Alignment, and Supervised Fine-tuning) along with the learning rate, batch size, training steps, and image resolution used for each stage. This information helps in understanding and reproducing the model training.
> <details>
> <summary>read the caption</summary>
> Table 1: Training hyperpparameters of experiments.
> </details>





### In-depth insights


#### Dual Tokenization
**Dual tokenization** seems to be a key trend for enhancing MLLMs. It likely involves using **two separate tokenization schemes** for visual inputs. One scheme probably focuses on capturing **high-level semantic information**, enabling better understanding and reasoning. The other likely emphasizes **low-level details and textures**, improving image generation and editing. The goal is to create a **richer, more complete representation** of the image than a single tokenization method could achieve. The challenge is in **effectively fusing information from both token streams** within the MLLM architecture.

#### Diffusion Refinement
**Diffusion refinement** emerges as a pivotal technique for enhancing generative models. By incorporating diffusion models, the generative process gains the ability to refine initial outputs, leading to improved fidelity and realism. This approach often involves using diffusion models to either directly generate high-resolution details or to correct artifacts introduced by other generative stages, such as VQGANs. **The core benefit lies in the diffusion model's capacity to learn intricate data distributions**, enabling it to fill in missing information or smooth out imperfections.  Moreover, the diffusion process can be conditioned on various inputs, allowing for guided refinement based on text prompts or semantic features, thus ensuring more contextually accurate results. **Efficient super-resolution is another advantage**, where diffusion models upscale images while preserving or enhancing details. **Balancing computational cost and generation quality remains a key consideration**, with ongoing research focused on optimizing diffusion models for faster and more efficient refinement pipelines. Overall, diffusion refinement signifies a promising direction for achieving high-quality and controllable generative outcomes.

#### MLLM Unification
**MLLM unification** aims to create a single model capable of both visual understanding and generation, moving beyond specialized models. Challenges include balancing texture preservation and semantic accuracy, achieving unified image-text representation, and designing an architecture that allows flexibility and efficiency. Early methods struggled to balance diverse requirements, later models incorporating semantic encoders improved alignment but compromised texture. ILLUME+ tackled these issues by a novel dual visual tokenizer (DualViTok) that captures both deep semantics and fine-grained textures, combined with diffusion refinement for enhanced generation.

#### Image Editing +
**Image editing** refers to manipulating or modifying a digital image using software tools. This can encompass a wide range of operations, from basic adjustments like brightness and contrast to more complex transformations such as removing objects, adding elements, or altering textures. The goal of image editing varies, ranging from enhancing the visual appeal of an image to creating entirely new and imaginative visuals. **Advanced techniques** now utilize AI, enabling tasks like seamless object removal and style transfer with minimal effort. It is becoming increasingly important in content creation, marketing, and artistic expression. Ethical considerations are also vital, addressing the potential for manipulation and misrepresentation.

#### Flexible Input
**Flexible Input** in the context of multimodal models, particularly MLLMs, is a critical feature. It suggests the ability of the model to process images or other visual inputs of varying sizes and aspect ratios without requiring extensive preprocessing or resizing. **This is particularly important** because real-world images come in diverse formats. Models that can handle flexible input avoid information loss during resizing, preserving details important for downstream tasks. Furthermore, models that support flexible input often employ techniques to handle variable-length sequences of visual tokens, potentially through adaptive attention mechanisms or hierarchical tokenization strategies. **This capability directly impacts** the model's versatility and real-world applicability, as it can seamlessly process diverse data sources without extensive data curation or format standardization. Ultimately, **the benefits includes** improved performance, reduced data preparation overhead, and enhanced generalization capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01934/x2.png)

> 🔼 Figure 2 compares various unified multimodal models based on their visual understanding, generation, and editing capabilities.  Early models using VQGAN for image discretization show poor performance in understanding and context-aware generation due to limited semantic alignment.  Later models improve alignment by using semantic encoders, but they sacrifice texture preservation necessary for detailed editing. In contrast, ILLUME+ integrates these three capabilities seamlessly within a unified architecture, allowing for more flexible and intelligent interactions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Characteristics comparison among existing unified models. Existing methods explore distinct paradigms to balance visual understanding, generation, and editing capabilities. Early approaches using VQGAN discretization struggle in understanding and context-aware generation tasks due to limited semantic alignment. Later frameworks incorporate semantic encoders, achieving better alignment but compromising texture preservation essential for fine-grained editing. ILLUME+ deep-integrates image understanding, generation, and editing into a single, unified architecture, enabling more intelligent and flexible interactions and task execution.
> </details>



![](https://arxiv.org/html/2504.01934/x3.png)

> 🔼 Figure 3 provides a detailed illustration of the ILLUME+ architecture, breaking down its four core components: (a) Dual Vision Tokenizer, which uniquely preserves both semantic and textural information from images; (b) Diffusion Refiner, responsible for decoding discrete tokens into high-quality images, especially enhancing image resolution; (c) Unified Multimodal Large Language Model (MLLM), which facilitates deep semantic interactions and context-aware image generation; and (d) a novel, unambiguous image representation method using a chain-of-thought approach. This method prioritizes semantic tokens and subsequently incorporates pixel tokens for more effective image generation.  The figure effectively visualizes the interplay between these components in generating and processing images, showcasing the model's ability to handle high-resolution and detail-rich output.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of ILLUME+. (a) The dual vision tokenizer preserves both semantic and texture information. (b) The diffusion refiner decodes discrete tokens into high-quality images. (c) The unified MLLM enables deep semantic interactions and context-aware image generation. (d) We introduce an unambiguous image representation of discrete tokens in a chain-of-thought pattern (semantic tokens first, followed by pixel tokens), resulting in improved generation performance.
> </details>



![](https://arxiv.org/html/2504.01934/x4.png)

> 🔼 Figure 4 illustrates the three-stage progressive training process for ILLUME+.  The first stage pre-trains the dual-tokenizer system by reconstructing semantic and pixel information from images, ensuring a robust representation for the subsequent stages. The second stage fine-tunes a diffusion model to serve as a high-quality image decoder, enhancing the fidelity of image generation.  The third stage focuses on training the Multimodal Large Language Model (MLLM) in three progressive steps, each incrementally increasing the complexity of the tasks and the resolution of the images. This gradual approach enhances the model's ability to handle diverse tasks and resolutions efficiently.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of our progressive training pipeline. We first pre-train the dual-tokenizer system by reconstruction of the semantic and pixel information. We then fine-tune the diffusion model as a high-quality image decoder. The MLLM training consists of three main stages that gradually increase task resolution and complexity.
> </details>



![](https://arxiv.org/html/2504.01934/x6.png)

> 🔼 Figure 5 shows the composition of the training dataset used in each stage of the ILLUME+ model training. The training process consists of three stages, and each stage uses a different mix of datasets to train various parts of the model. Stage 1 focuses primarily on datasets that help initialize the visual embedding and includes image reconstruction and image captioning data. Stage 2 focuses on image-text alignment using multimodal datasets. This stage is further broken into two sub-stages, each with a different resolution of images to gradually increase the model's capability. Stage 3 incorporates various datasets representing diverse downstream tasks, including visual understanding, image generation and editing. The figure shows the percentage of each dataset in each stage, along with the image resolution for the specific datasets involved.  The purpose is to illustrate the progressive increase in data diversity and task complexity during the training process, allowing for a more robust and adaptable multimodal model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Summary of the data mixture in each stage. Our training data gradually covers a wide range of tasks and various image resoluton.
> </details>



![](https://arxiv.org/html/2504.01934/x7.png)

> 🔼 This table compares the performance of ILLUME+'s DualViTok visual tokenizer against other state-of-the-art visual tokenizers on the ImageNet 50k validation set.  The comparison considers various image resolutions, evaluating each tokenizer's ability to reconstruct images based on semantic and texture information. Metrics such as rFID (Fréchet Inception Distance), PSNR (Peak Signal-to-Noise Ratio), and SSIM (Structural Similarity Index) are used to assess the quality of the reconstructed images.  The table allows for a quantitative comparison of how effectively different tokenizers handle various image sizes and complexities.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons with other visual tokenizers. The evaluations are on ImageNet 50k validation set under different image resolution.
> </details>



![](https://arxiv.org/html/2504.01934/x8.png)

> 🔼 Table 5 presents a quantitative comparison of different models' performance on image editing benchmarks. The table likely shows metrics such as FID (Fréchet Inception Distance), PSNR (Peak Signal-to-Noise Ratio), and SSIM (Structural Similarity Index) to evaluate the quality and similarity of edited images compared to ground truth.  The top-1 and top-2 values for each metric are highlighted for each model, indicating the best-performing models and the consistency of their results.  This allows for a direct comparison of the effectiveness of various models in performing image editing tasks. The benchmarks themselves likely involve diverse image editing tasks to assess model robustness and generalizability.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative results on image editing benchmarks.  The performance with top-1 and top-2 value are denoted in bold and underline.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.1">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.1" style="padding:0.8pt 2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.2" rowspan="2" style="padding:0.8pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.2.1" style="font-size:80%;">DualViTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.3" rowspan="2" style="padding:0.8pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.3.1" style="font-size:80%;">Diffusion Decoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.2.1.1.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.4.1" style="font-size:80%;">MLLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.2.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.2.1.1" style="font-size:80%;">Settings</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.2.2.1" style="font-size:80%;">Stage 1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.2.3.1" style="font-size:80%;">Stage 2-1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.2.4.1" style="font-size:80%;">Stage 2-2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.2.5.1" style="font-size:80%;">SFT</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.3.1" rowspan="2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.1.1" style="font-size:80%;">Learning Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.3.2" rowspan="2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.2.1" style="font-size:80%;">1e-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.3.3" rowspan="2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.3.1" style="font-size:80%;">2e-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.3.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.4.1" style="font-size:80%;">Vis. Adapter 1e-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.2.1.3.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.5.1" style="font-size:80%;">Vis. Adapter 5e-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.3.6" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.3.6.1" style="font-size:80%;">Vis. Adapter 2e-5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.4.1.1" style="font-size:80%;">Vis. Embed. &amp; Head 2e-4</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T1.2.1.4.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.4.2.1" style="font-size:80%;">LLM 5e-5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.4.3.1" style="font-size:80%;">LLM 2e-5, ViT 2e-6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.5.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.1.1" style="font-size:80%;">Batch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.3.1" style="font-size:80%;">128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.4.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.5.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.6" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.6.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.7" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.5.7.1" style="font-size:80%;">256</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.6.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.1.1" style="font-size:80%;">Training Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.6.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.2.1" style="font-size:80%;">270k/50k/78k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.6.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.3.1" style="font-size:80%;">265k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.4.1" style="font-size:80%;">5k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.5.1" style="font-size:80%;">98k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.6.1" style="font-size:80%;">40k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.7" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.6.7.1" style="font-size:80%;">40k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.7.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.1.1" style="font-size:80%;">Image Res. Mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.7.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.2.1" style="font-size:80%;">Fix/Fix/Anyres</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.7.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.3.1" style="font-size:80%;">Multi-ratio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.4.1" style="font-size:80%;">Fix</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.5.1" style="font-size:80%;">Fix</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.6.1" style="font-size:80%;">Fix</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.7.7.1" style="font-size:80%;">Anyres</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.1.8.1" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.1.1" style="font-size:80%;">Image Main/Max Res.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.8.2" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.2.1" style="font-size:80%;">256/512/512</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.8.3" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.3.1" style="font-size:80%;">512/1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.8.4" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.4.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.8.5" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.5.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.8.6" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.6.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.8.7" style="padding:0.8pt 2.5pt;"><span class="ltx_text" id="S4.T1.2.1.8.7.1" style="font-size:80%;">1024</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of various models on visual understanding benchmarks.  The benchmarks assess the ability of models to understand and respond to visual information. Models are categorized into two groups: those focused solely on understanding and those with unified capabilities (understanding, generation, and editing).  The results show ILLUME+'s performance relative to these different types of models.  The top-1 and top-2 performance scores for each benchmark are highlighted for easy comparison.  This allows for a comprehensive evaluation of ILLUME+'s capabilities compared to state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on visual understanding benchmarks. Our performance is close to and even outperforms both understanding only and unified models. The performance with top-1 and top-2 value are denoted in bold and underline respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.2.1">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.2.1.1.1" style="padding:1.45pt 3.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.2" style="padding:1.45pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S4.T2.2.1.1.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.3.1" style="font-size:144%;">General</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.2.1.1.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.4.1" style="font-size:144%;">Doc</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.2.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.2.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.1" style="font-size:144%;">LLM.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.3.1" style="font-size:144%;">POPE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.4.1" style="font-size:144%;">MMBench</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.5.1" style="font-size:144%;">SEED</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.6.1" style="font-size:144%;">MME-P</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.7.1" style="font-size:144%;">MM-Vet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.8.1" style="font-size:144%;">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.2.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.9.1" style="font-size:144%;">AI2D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.10.1" style="font-size:144%;">VQA-text</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.11.1" style="font-size:144%;">ChartQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.12.1" style="font-size:144%;">DocVQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.13.1" style="font-size:144%;">InfoVQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.2.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.14.1" style="font-size:144%;">OCRBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T2.2.1.3.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.1.3.1.1" style="font-size:144%;">Understanding Only</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.4.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.4.1.1" style="font-size:144%;">InstructBLIP </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">instructblip</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.1.4.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.4.1" style="font-size:144%;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.5.1" style="font-size:144%;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.7.1" style="font-size:144%;">26.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.8.1" style="font-size:144%;">30.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.4.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.9.1" style="font-size:144%;">33.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.10.1" style="font-size:144%;">50.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.11.1" style="font-size:144%;">12.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.12.1" style="font-size:144%;">13.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.4.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.14.1" style="font-size:144%;">276</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.5.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.5.1.1" style="font-size:144%;">Qwen-VL-Chat </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">bai2023qwen</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.5.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.1" style="font-size:144%;">Qwen-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.4.1" style="font-size:144%;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.5.1" style="font-size:144%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.6.1" style="font-size:144%;">1487.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.8.1" style="font-size:144%;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.5.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.9.1" style="font-size:144%;">45.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.10.1" style="font-size:144%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.11.1" style="font-size:144%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.12.1" style="font-size:144%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.14.1" style="font-size:144%;">488</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.6.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.6.1.1" style="font-size:144%;">LLaVA-1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">liu2024improved</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.6.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.1" style="font-size:144%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.4.1" style="font-size:144%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.5.1" style="font-size:144%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.6.1" style="font-size:144%;">1510.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.7.1" style="font-size:144%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.8.1" style="font-size:144%;">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.6.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.9.1" style="font-size:144%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.10.1" style="font-size:144%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.11.1" style="font-size:144%;">18.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.12.1" style="font-size:144%;">28.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.13.1" style="font-size:144%;">25.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.14.1" style="font-size:144%;">318</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.7.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.7.1.1" style="font-size:144%;">ShareGPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">chen2023sharegpt4v</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.7.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.1" style="font-size:144%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.5.1" style="font-size:144%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.6.1" style="font-size:144%;">1567.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.7.1" style="font-size:144%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.8.1" style="font-size:144%;">37.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.7.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.9.1" style="font-size:144%;">58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.10.1" style="font-size:144%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.11.1" style="font-size:144%;">21.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.14.1" style="font-size:144%;">371</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.8.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.8.1.1" style="font-size:144%;">LLaVA-NeXT </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">liu2024llava</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.8.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.3.1" style="font-size:144%;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.4.1" style="font-size:144%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.1" style="font-size:144%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.6.1" style="font-size:144%;">1519</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.7.1" style="font-size:144%;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.8.1" style="font-size:144%;">35.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.8.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.9.1" style="font-size:144%;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.10.1" style="font-size:144%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.11.1" style="font-size:144%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.12.1" style="font-size:144%;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.13.1" style="font-size:144%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.14.1" style="font-size:144%;">532</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.9.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.9.1.1" style="font-size:144%;">Emu3-Chat </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">wang2024emu3</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.9.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.2.1" style="font-size:144%;">8B from scratch</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.3.1" style="font-size:144%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.4.1" style="font-size:144%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.5.1" style="font-size:144%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.7.1" style="font-size:144%;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.8.1" style="font-size:144%;">31.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.9.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.9.1" style="font-size:144%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.10.1" style="font-size:144%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.9.11.1" style="font-size:144%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.9.12.1" style="font-size:144%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.13.1" style="font-size:144%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.9.14.1" style="font-size:144%;">687</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T2.2.1.10.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.1.10.1.1" style="font-size:144%;">Unify Understanding and Generation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.11.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.11.1.1" style="font-size:144%;">Unified-IO 2 </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">lu2024unified</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.1.11.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.2.1" style="font-size:144%;">6.8B from scratch</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.11.3.1" style="font-size:144%;">87.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.5.1" style="font-size:144%;">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.11.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.11.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.11.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.12">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.12.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.12.1.1" style="font-size:144%;">Chameleon </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">team2024chameleon</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.12.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.2.1" style="font-size:144%;">7B from scratch</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.7.1" style="font-size:144%;">8.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.8.1" style="font-size:144%;">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.12.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.12.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.13">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.13.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.13.1.1" style="font-size:144%;">LWM </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">liu2024world</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.13.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.2.1" style="font-size:144%;">LLaMA-2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.3.1" style="font-size:144%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.7.1" style="font-size:144%;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.13.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.10.1" style="font-size:144%;">18.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.13.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.14">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.14.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.14.1.1" style="font-size:144%;">Show-o </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">xie2024show</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.14.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.2.1" style="font-size:144%;">Phi-1.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.3.1" style="font-size:144%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.6.1" style="font-size:144%;">948.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.8.1" style="font-size:144%;">25.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.14.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.14.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.15">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.15.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.15.1.1" style="font-size:144%;">VILA-U (256) </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">wu2024vila</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.15.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.2.1" style="font-size:144%;">LLaMA-2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.3.1" style="font-size:144%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.5.1" style="font-size:144%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.6.1" style="font-size:144%;">1336.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.7.1" style="font-size:144%;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.15.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.10.1" style="font-size:144%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.15.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.16">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.16.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.16.1.1" style="font-size:144%;">VILA-U (384) </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">wu2024vila</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.16.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.2.1" style="font-size:144%;">LLaMA-2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.3.1" style="font-size:144%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.5.1" style="font-size:144%;">59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.6.1" style="font-size:144%;">1401.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.7.1" style="font-size:144%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.16.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.10.1" style="font-size:144%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.16.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.16.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.17">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.17.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.17.1.1" style="font-size:144%;">Janus </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">wu2024janus</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.17.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.2.1" style="font-size:144%;">DeepSeek-LLM-1.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.3.1" style="font-size:144%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.4.1" style="font-size:144%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.5.1" style="font-size:144%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.6.1" style="font-size:144%;">1338.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.7.1" style="font-size:144%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.8.1" style="font-size:144%;">30.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.17.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.17.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.17.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.18">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.18.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.18.1.1" style="font-size:144%;">Janus-Pro-1B </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">wu2024janus</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.18.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.2.1" style="font-size:144%;">DeepSeek-LLM-1.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.3.1" style="font-size:144%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.4.1" style="font-size:144%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.5.1" style="font-size:144%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.6.1" style="font-size:144%;">1444.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.7.1" style="font-size:144%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.8.1" style="font-size:144%;">36.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.18.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.18.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.18.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.19">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.19.1" style="padding:1.45pt 3.0pt;">
<span class="ltx_text" id="S4.T2.2.1.19.1.1" style="font-size:144%;">Janus-Pro-7B </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">wu2024janus</span> </a></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.1.19.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.2.1" style="font-size:144%;">DeepSeek-LLM-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.3.1" style="font-size:144%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.19.4.1" style="font-size:144%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.19.5.1" style="font-size:144%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.19.6.1" style="font-size:144%;">1567.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.19.7.1" style="font-size:144%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.19.8.1" style="font-size:144%;">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.19.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.19.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.19.14.1" style="font-size:144%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.20.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.1.1" style="font-size:144%;">ILLUME</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.1.20.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.20.3.1" style="font-size:144%;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.4.1" style="font-size:144%;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.5.1" style="font-size:144%;">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.20.6.1" style="font-size:144%;">1445.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.7.1" style="font-size:144%;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.8.1" style="font-size:144%;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.20.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.20.9.1" style="font-size:144%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.20.10.1" style="font-size:144%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.11.1" style="font-size:144%;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.12.1" style="font-size:144%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.20.13.1" style="font-size:144%;">45.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.20.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.20.14.1" style="font-size:144%;">669</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.21" style="background-color:#E8F2FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.2.1.21.1" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.21.1.1" style="font-size:144%;background-color:#E8F2FF;">ILLUME+</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.2.1.21.2" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.21.2.1" style="font-size:144%;background-color:#E8F2FF;">Qwen-2.5-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.3" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.21.3.1" style="font-size:144%;background-color:#E8F2FF;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.4" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.4.1" style="font-size:144%;background-color:#E8F2FF;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.5" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.5.1" style="font-size:144%;background-color:#E8F2FF;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.6" style="padding:1.45pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.21.6.1" style="font-size:144%;background-color:#E8F2FF;">1414.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.7" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.21.7.1" style="font-size:144%;background-color:#E8F2FF;">40.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.8" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.8.1" style="font-size:144%;background-color:#E8F2FF;">44.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.1.21.9" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.9.1" style="font-size:144%;background-color:#E8F2FF;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.10" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.21.10.1" style="font-size:144%;background-color:#E8F2FF;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.11" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.11.1" style="font-size:144%;background-color:#E8F2FF;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.12" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.12.1" style="font-size:144%;background-color:#E8F2FF;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.13" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.1.21.13.1" style="font-size:144%;background-color:#E8F2FF;">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.21.14" style="padding:1.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.21.14.1" style="font-size:144%;background-color:#E8F2FF;">672</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of various models' performance on text-to-image generation benchmarks.  It compares ILLUME+ against both specialized text-to-image models (designed primarily for image generation) and unified Multimodal Large Language Models (MLLMs, which aim to handle various modalities like text and images).  The metrics used assess different aspects of image quality and generation capabilities. The table highlights that ILLUME+, despite being a unified model, achieves results comparable to the specialist models.  Top-1 and Top-2 performance values are emphasized for clarity and to show the model's robustness.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results on text-to-image generation benchmarks. ILLUME+ achieves comparable results with specialist models and unified MLLMs. The performance with top-1 and top-2 value are denoted in bold and underline respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.21.21">
<tr class="ltx_tr" id="S4.T3.21.21.22">
<td class="ltx_td ltx_border_tt" id="S4.T3.21.21.22.1" style="padding:0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.21.21.22.2" style="padding:0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T3.21.21.22.3" style="padding:0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.21.21.22.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.21.21.22.4.1" style="font-size:173%;">MJHQ30k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.21.21.22.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.21.21.22.5.1" style="font-size:173%;">GenAI-bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S4.T3.21.21.22.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.21.21.22.6.1" style="font-size:173%;">GenEval</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.23">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.23.1" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.1.1" style="font-size:173%;">Method</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.2.1" style="font-size:173%;">Params.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.23.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.3.1" style="font-size:173%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.23.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.4.1" style="font-size:173%;">FID</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.5.1" style="font-size:173%;">Basic</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.23.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.6.1" style="font-size:173%;">Advanced</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.7.1" style="font-size:173%;">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.8.1" style="font-size:173%;">Single Obj</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.9.1" style="font-size:173%;">Two Obj.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.10.1" style="font-size:173%;">Counting</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.11.1" style="font-size:173%;">Colors</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.12.1" style="font-size:173%;">Position</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.23.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.23.13.1" style="font-size:173%;">Color Attri.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.24">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T3.21.21.24.1" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.21.21.24.1.1" style="font-size:173%;">Generation Only</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.21.21.25.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.25.1.1" style="font-size:173%;">SDv1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">rombach2022high</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.2.1" style="font-size:173%;">0.9B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.25.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.3.1" style="font-size:173%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.25.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.4.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.5.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.25.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.7.1" style="font-size:173%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.8.1" style="font-size:173%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.9.1" style="font-size:173%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.10.1" style="font-size:173%;">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.11.1" style="font-size:173%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.12.1" style="font-size:173%;">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.25.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.25.13.1" style="font-size:173%;">0.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.1.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1.1" style="font-size:173%;">PixArt-</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.m1.1.1" mathsize="173%" xref="S4.T3.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S4.T3.1.1.1.1.2" style="font-size:173%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">chen2023pixart</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.2.1" style="font-size:173%;">0.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.1.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.3.1" style="font-size:173%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.1.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.1.4.1" style="font-size:173%;">6.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.5.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.1.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.7.1" style="font-size:173%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.8.1" style="font-size:173%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.9.1" style="font-size:173%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.10.1" style="font-size:173%;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.11.1" style="font-size:173%;">0.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.12.1" style="font-size:173%;">0.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.13.1" style="font-size:173%;">0.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.26">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.26.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.26.1.1" style="font-size:173%;">SDXL </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">podell2023sdxl</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.2.1" style="font-size:173%;">2.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.26.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.3.1" style="font-size:173%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.26.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.4.1" style="font-size:173%;">9.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.26.5.1" style="font-size:173%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.26.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.6.1" style="font-size:173%;">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.7.1" style="font-size:173%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.8.1" style="font-size:173%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.9.1" style="font-size:173%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.10.1" style="font-size:173%;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.11.1" style="font-size:173%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.12.1" style="font-size:173%;">0.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.26.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.26.13.1" style="font-size:173%;">0.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.27">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.27.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.27.1.1" style="font-size:173%;">Emu3-Gen </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">wang2024emu3</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.2.1" style="font-size:173%;">8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.27.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.3.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.27.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.4.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.5.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.27.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.7.1" style="font-size:173%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.8.1" style="font-size:173%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.9.1" style="font-size:173%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.10.1" style="font-size:173%;">0.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.11.1" style="font-size:173%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.12.1" style="font-size:173%;">0.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.27.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.27.13.1" style="font-size:173%;">0.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.28">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T3.21.21.28.1" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.21.21.28.1.1" style="font-size:173%;">Unify Understanding and Generation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.29">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.21.21.29.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.29.1.1" style="font-size:173%;">Chameleon </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">team2024chameleon</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.2.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.29.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.3.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.29.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.4.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.5.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.29.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.7.1" style="font-size:173%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.8.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.9.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.10.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.11.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.12.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.29.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.29.13.1" style="font-size:173%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.30">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.30.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.30.1.1" style="font-size:173%;">LWM </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">liu2024world</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.2.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.30.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.3.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.30.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.4.1" style="font-size:173%;">17.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.5.1" style="font-size:173%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.30.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.6.1" style="font-size:173%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.7.1" style="font-size:173%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.8.1" style="font-size:173%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.9.1" style="font-size:173%;">0.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.10.1" style="font-size:173%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.11.1" style="font-size:173%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.12.1" style="font-size:173%;">0.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.30.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.30.13.1" style="font-size:173%;">0.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.31">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.31.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.31.1.1" style="font-size:173%;">Show-o </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">xie2024show</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.2.1" style="font-size:173%;">1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.31.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.3.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.31.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.4.1" style="font-size:173%;">15.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.5.1" style="font-size:173%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.31.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.6.1" style="font-size:173%;">0.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.7.1" style="font-size:173%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.8.1" style="font-size:173%;">0.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.9.1" style="font-size:173%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.10.1" style="font-size:173%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.11.1" style="font-size:173%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.12.1" style="font-size:173%;">0.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.31.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.31.13.1" style="font-size:173%;">0.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.8.8" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.8.8.8.8.1" style="font-size:173%;">VILA-U(256) </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">wu2024vila</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.9.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.8.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.10.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.8.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.11.1" style="font-size:173%;">12.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.8.12.1" style="font-size:173%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.8.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.8.13.1" style="font-size:173%;">0.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.1" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" mathsize="173%" xref="S4.T3.2.2.2.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><minus id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.2" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.m1.1"><semantics id="S4.T3.3.3.3.2.m1.1a"><mo id="S4.T3.3.3.3.2.m1.1.1" mathsize="173%" xref="S4.T3.3.3.3.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.m1.1b"><minus id="S4.T3.3.3.3.2.m1.1.1.cmml" xref="S4.T3.3.3.3.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.3" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.4.4.4.3.m1.1"><semantics id="S4.T3.4.4.4.3.m1.1a"><mo id="S4.T3.4.4.4.3.m1.1.1" mathsize="173%" xref="S4.T3.4.4.4.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.3.m1.1b"><minus id="S4.T3.4.4.4.3.m1.1.1.cmml" xref="S4.T3.4.4.4.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.4" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.5.5.5.4.m1.1"><semantics id="S4.T3.5.5.5.4.m1.1a"><mo id="S4.T3.5.5.5.4.m1.1.1" mathsize="173%" xref="S4.T3.5.5.5.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.4.m1.1b"><minus id="S4.T3.5.5.5.4.m1.1.1.cmml" xref="S4.T3.5.5.5.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.5" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.6.6.6.5.m1.1"><semantics id="S4.T3.6.6.6.5.m1.1a"><mo id="S4.T3.6.6.6.5.m1.1.1" mathsize="173%" xref="S4.T3.6.6.6.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.5.m1.1b"><minus id="S4.T3.6.6.6.5.m1.1.1.cmml" xref="S4.T3.6.6.6.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.6" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.7.7.7.6.m1.1"><semantics id="S4.T3.7.7.7.6.m1.1a"><mo id="S4.T3.7.7.7.6.m1.1.1" mathsize="173%" xref="S4.T3.7.7.7.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.6.m1.1b"><minus id="S4.T3.7.7.7.6.m1.1.1.cmml" xref="S4.T3.7.7.7.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.6.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.7" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.8.8.8.7.m1.1"><semantics id="S4.T3.8.8.8.7.m1.1a"><mo id="S4.T3.8.8.8.7.m1.1.1" mathsize="173%" xref="S4.T3.8.8.8.7.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.7.m1.1b"><minus id="S4.T3.8.8.8.7.m1.1.1.cmml" xref="S4.T3.8.8.8.7.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.7.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.7.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.15.15">
<td class="ltx_td ltx_align_left" id="S4.T3.15.15.15.8" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.15.15.15.8.1" style="font-size:173%;">VILA-U(384) </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">wu2024vila</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.9.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.10.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.11.1" style="font-size:173%;">7.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.12.1" style="font-size:173%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.13.1" style="font-size:173%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.1" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mo id="S4.T3.9.9.9.1.m1.1.1" mathsize="173%" xref="S4.T3.9.9.9.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><minus id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.2" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.m1.1"><semantics id="S4.T3.10.10.10.2.m1.1a"><mo id="S4.T3.10.10.10.2.m1.1.1" mathsize="173%" xref="S4.T3.10.10.10.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.m1.1b"><minus id="S4.T3.10.10.10.2.m1.1.1.cmml" xref="S4.T3.10.10.10.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.3" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.11.11.11.3.m1.1"><semantics id="S4.T3.11.11.11.3.m1.1a"><mo id="S4.T3.11.11.11.3.m1.1.1" mathsize="173%" xref="S4.T3.11.11.11.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.3.m1.1b"><minus id="S4.T3.11.11.11.3.m1.1.1.cmml" xref="S4.T3.11.11.11.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.4" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.12.12.12.4.m1.1"><semantics id="S4.T3.12.12.12.4.m1.1a"><mo id="S4.T3.12.12.12.4.m1.1.1" mathsize="173%" xref="S4.T3.12.12.12.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.4.m1.1b"><minus id="S4.T3.12.12.12.4.m1.1.1.cmml" xref="S4.T3.12.12.12.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.13.5" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.13.13.13.5.m1.1"><semantics id="S4.T3.13.13.13.5.m1.1a"><mo id="S4.T3.13.13.13.5.m1.1.1" mathsize="173%" xref="S4.T3.13.13.13.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.5.m1.1b"><minus id="S4.T3.13.13.13.5.m1.1.1.cmml" xref="S4.T3.13.13.13.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.6" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.14.14.14.6.m1.1"><semantics id="S4.T3.14.14.14.6.m1.1a"><mo id="S4.T3.14.14.14.6.m1.1.1" mathsize="173%" xref="S4.T3.14.14.14.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.6.m1.1b"><minus id="S4.T3.14.14.14.6.m1.1.1.cmml" xref="S4.T3.14.14.14.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.6.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.7" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.15.15.15.7.m1.1"><semantics id="S4.T3.15.15.15.7.m1.1a"><mo id="S4.T3.15.15.15.7.m1.1.1" mathsize="173%" xref="S4.T3.15.15.15.7.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.7.m1.1b"><minus id="S4.T3.15.15.15.7.m1.1.1.cmml" xref="S4.T3.15.15.15.7.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.7.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.7.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.17.17.17">
<td class="ltx_td ltx_align_left" id="S4.T3.17.17.17.3" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.17.17.17.3.1" style="font-size:173%;">Janus </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">wu2024janus</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.4.1" style="font-size:173%;">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.5.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.6.1" style="font-size:173%;">10.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.1" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.16.16.16.1.m1.1"><semantics id="S4.T3.16.16.16.1.m1.1a"><mo id="S4.T3.16.16.16.1.m1.1.1" mathsize="173%" xref="S4.T3.16.16.16.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.1.m1.1b"><minus id="S4.T3.16.16.16.1.m1.1.1.cmml" xref="S4.T3.16.16.16.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.2" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.17.17.17.2.m1.1"><semantics id="S4.T3.17.17.17.2.m1.1a"><mo id="S4.T3.17.17.17.2.m1.1.1" mathsize="173%" xref="S4.T3.17.17.17.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.2.m1.1b"><minus id="S4.T3.17.17.17.2.m1.1.1.cmml" xref="S4.T3.17.17.17.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.7.1" style="font-size:173%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.8.1" style="font-size:173%;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.9.1" style="font-size:173%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.10.1" style="font-size:173%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.11.1" style="font-size:173%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.12.1" style="font-size:173%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.13.1" style="font-size:173%;">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.19.19.19">
<td class="ltx_td ltx_align_left" id="S4.T3.19.19.19.3" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.19.19.19.3.1" style="font-size:173%;">Janus-Pro-1B </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">chen2025janus_pro</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.4.1" style="font-size:173%;">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.19.19.19.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.5.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.19.19.19.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.1" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.18.18.18.1.m1.1"><semantics id="S4.T3.18.18.18.1.m1.1a"><mo id="S4.T3.18.18.18.1.m1.1.1" mathsize="173%" xref="S4.T3.18.18.18.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.1.m1.1b"><minus id="S4.T3.18.18.18.1.m1.1.1.cmml" xref="S4.T3.18.18.18.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.19.19.19.2" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.19.19.19.2.m1.1"><semantics id="S4.T3.19.19.19.2.m1.1a"><mo id="S4.T3.19.19.19.2.m1.1.1" mathsize="173%" xref="S4.T3.19.19.19.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.19.2.m1.1b"><minus id="S4.T3.19.19.19.2.m1.1.1.cmml" xref="S4.T3.19.19.19.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.19.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.19.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.19.19.19.7.1" style="font-size:173%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.8.1" style="font-size:173%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.9.1" style="font-size:173%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.10.1" style="font-size:173%;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.19.19.19.11.1" style="font-size:173%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.19.19.19.12.1" style="font-size:173%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.19.19.19.13.1" style="font-size:173%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.21">
<td class="ltx_td ltx_align_left" id="S4.T3.21.21.21.3" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.21.3.1" style="font-size:173%;">Janus-Pro-7B </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">chen2025janus_pro</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.21.4.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.21.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.21.5.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.21.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.21.6.1" style="font-size:173%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.20.20.20.1" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.20.20.20.1.m1.1"><semantics id="S4.T3.20.20.20.1.m1.1a"><mo id="S4.T3.20.20.20.1.m1.1.1" mathsize="173%" xref="S4.T3.20.20.20.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.20.1.m1.1b"><minus id="S4.T3.20.20.20.1.m1.1.1.cmml" xref="S4.T3.20.20.20.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.20.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.20.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.21.21.21.2" style="padding:0.85pt 3.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S4.T3.21.21.21.2.m1.1"><semantics id="S4.T3.21.21.21.2.m1.1a"><mo id="S4.T3.21.21.21.2.m1.1.1" mathsize="173%" xref="S4.T3.21.21.21.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.21.2.m1.1b"><minus id="S4.T3.21.21.21.2.m1.1.1.cmml" xref="S4.T3.21.21.21.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.21.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.21.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.7.1" style="font-size:173%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.8.1" style="font-size:173%;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.9.1" style="font-size:173%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.21.21.21.10.1" style="font-size:173%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.11.1" style="font-size:173%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.12.1" style="font-size:173%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.21.13.1" style="font-size:173%;">0.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.32">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.21.21.32.1" style="padding:0.85pt 3.0pt;">
<span class="ltx_text" id="S4.T3.21.21.32.1.1" style="font-size:173%;">ILLUME </span><cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2504.01934v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">wang2024illume</span> </a></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.2.1" style="font-size:173%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.32.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.3.1" style="font-size:173%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.32.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.4.1" style="font-size:173%;">7.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.5.1" style="font-size:173%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.21.21.32.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.6.1" style="font-size:173%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.7.1" style="font-size:173%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.32.8.1" style="font-size:173%;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.9.1" style="font-size:173%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.10.1" style="font-size:173%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.11.1" style="font-size:173%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.12.1" style="font-size:173%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.21.21.32.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.32.13.1" style="font-size:173%;">0.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.33" style="background-color:#E8F2FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.21.21.33.1" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.1.1" style="font-size:173%;background-color:#E8F2FF;">ILLUME+</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.2" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.2.1" style="font-size:173%;background-color:#E8F2FF;">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.21.21.33.3" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.3.1" style="font-size:173%;background-color:#E8F2FF;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.21.21.33.4" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.33.4.1" style="font-size:173%;background-color:#E8F2FF;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.5" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.5.1" style="font-size:173%;background-color:#E8F2FF;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.21.21.33.6" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.33.6.1" style="font-size:173%;background-color:#E8F2FF;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.7" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.7.1" style="font-size:173%;background-color:#E8F2FF;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.8" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.33.8.1" style="font-size:173%;background-color:#E8F2FF;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.9" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.21.21.33.9.1" style="font-size:173%;background-color:#E8F2FF;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.10" style="padding:0.85pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.21.21.33.10.1" style="font-size:173%;background-color:#E8F2FF;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.11" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.11.1" style="font-size:173%;background-color:#E8F2FF;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.12" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.12.1" style="font-size:173%;background-color:#E8F2FF;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.21.21.33.13" style="padding:0.85pt 3.0pt;"><span class="ltx_text" id="S4.T3.21.21.33.13.1" style="font-size:173%;background-color:#E8F2FF;">0.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the DualViTok, a dual vision tokenizer, evaluating its impact on both image reconstruction and generation.  The study compares different configurations of the tokenizer to determine their effects on key metrics. Image reconstruction performance is assessed using rFID, PSNR, and SSIM, evaluated on the ImageNet 50k validation set.  Image generation quality is evaluated using gFID on the MJHQ30k dataset. The table highlights the main experimental setup in gray, contrasting it with other variations tested to isolate the effects of individual components.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study of visual tokenizer on image reconstruction and image generation. The rFID, PSNR and SSIM are evaluated on ImageNet 50k validation set. The gFID is evaluated on MJHQ30k. The setting of the main experiments are marked in gray.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01934/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01934/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}