---
title: "VARGPT-v1.1: Improve Visual Autoregressive Large Unified Model via Iterative Instruction Tuning and Reinforcement Learning"
summary: "VARGPT-v1.1 improves visual autoregressive models via iterative instruction tuning and reinforcement learning for enhanced multimodal AI."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02949 {{< /keyword >}}
{{< keyword icon="writer" >}} Xianwei Zhuang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02949" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02949" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02949/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing multimodal AI models face representation conflicts between understanding and generation tasks.  Unified frameworks often struggle to achieve optimal performance in both areas simultaneously. VARGPT, a visual autoregressive model, supports mixed-modal input/output, but prior versions had limitations in instruction-following for image generation and domain coverage. This work aims to addresses the limitations of previous unified models, striving for better instruction following and more comprehensive generation.



This paper presents VARGPT-v1.1, **an improved version of VARGPT, that enhances both generative and comprehension capabilities**. It incorporates iterative visual instruction tuning with reinforcement learning, expands the training corpus to 8.3M visual-generative pairs, upgrades the language model backbone to Qwen2, enhances image generation resolution, and introduces emergent image editing capabilities without architectural changes. These enhancements allow VARGPT-v1.1 to achieve state-of-the-art performance in multimodal tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VARGPT-v1.1 integrates iterative visual instruction tuning with reinforcement learning using Direct Preference Optimization (DPO). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model expands the training corpus with 8.3M visual-generative instruction pairs and uses an upgraded language model backbone with Qwen2. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VARGPT-v1.1 achieves state-of-the-art performance in multimodal understanding and text-to-image tasks, showing notable improvements in comprehension and generation metrics. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it **advances multimodal AI by unifying visual understanding, generation, and editing** within a single autoregressive model. This work offers valuable insights into flexible training strategies from LLMs, thus opening avenues for creating more versatile and efficient models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02949/x1.png)

> 🔼 This figure presents a comparative analysis of various multimodal large language models (MLLMs) on several visual comprehension benchmarks.  The benchmarks include a mix of standard visual question answering (VQA) datasets and more recent multi-modal comprehension benchmarks. The results clearly show that the VARGPT-v1.1 model significantly outperforms other models across all the comprehension tasks evaluated.
> <details>
> <summary>read the caption</summary>
> Figure 1: A comparative analysis of various MLLMs across multiple visual comprehension benchmarks is presented. The remaining metrics are derived from standard visual question-answering benchmarks and multi-modal comprehension benchmarks. Notably, our VARGPT-v1.1 model demonstrates significant superiority over the compared baselines across all comprehension benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.6">
<tr class="ltx_tr" id="S4.T1.6.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.6.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.1">Stage 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.3.1">Stage 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.6.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.4.1">Stage 3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.5.1">Stage e</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.1.1">SFT(256)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.1">DPO(256)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.1">SFT(512)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.4.1">DPO(512)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.6.3.1">batch size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.2">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.4">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.5">384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.7">384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.3.8">512</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.4.1">lr</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.2">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.3">5e-5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.4">5e-5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.5">1e-6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.6">5e-5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.7">1e-6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.8">5e-5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.5.1">lr schedule</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.2">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.3">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.6">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.7">Cosine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.8">Cosine</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.6.1">lr warmup ratio</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.2">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.3">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.4">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.5">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.7">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8">0.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.7.1">weight decay</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.2">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.3">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.4">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.5">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.6">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.7">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.8">0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.8.1">training step</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2">2k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.3">3.1k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.4">40k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.5">5k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.6">30k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.7">3k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8">2k</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.9.1">optimizer</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.4">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.5">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.6">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.7">AdamW</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.8">AdamW</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.6.10.1">DeepSpeed ZERO type</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.2">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.5">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.6">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.7">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.8">3</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters used during the training of the VARGPT-v1.1 model.  It breaks down the settings for each of the three training stages: Stage 1, Stage 2, and Stage 3.  Each stage employs different hyperparameters and training strategies, reflecting the iterative refinement of the model.  Noteworthy columns include 'batch size', 'learning rate', 'learning rate schedule', 'weight decay', 'training steps', and 'optimizer'.  The 'image generation resolution' clarifies that Stage 1 and 2 operate at 256x256 pixels, while Stage 3 upgrades to 512x512 pixels, demonstrating a progressive increase in image quality through the training process.  The table is crucial for understanding the precise methodology employed for the model's development and the impact of various hyperparameter choices on the final performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Main hyperparameters and training settings for training our VARGPT-v1.1 at various stages, where, (256) and (512) represent the image generation resolutions of 256×256256256256\times 256256 × 256 and 512×512512512512\times 512512 × 512, respectively
> </details>





### In-depth insights


#### Iterative Tuning
The research paper details an **iterative tuning strategy** that is likely a critical component of the VARGPT-v1.1 model. This approach likely involves a cyclical process of refining the model's parameters and performance through multiple stages of training and evaluation. The core idea likely revolves around progressively improving the model's ability to generate high-quality images. Iterative tuning likely allows for a more nuanced and adaptive training process, where the model's strengths are amplified and weaknesses are addressed.  This strategy could encompass various techniques, such as adjusting the learning rate, modifying the training data distribution, or refining the model architecture. The paper likely elaborates on the specific methods employed during each iteration, providing insights into how the model's performance evolves over time. The use of iterative tuning suggests a commitment to achieving optimal performance and a willingness to invest in a more computationally intensive training process.

#### VARGPT-v1.1
**VARGPT-v1.1** represents a significant advancement in visual autoregressive models, focusing on unified understanding and generation. The core idea is to improve visual autoregressive large unified model via iterative instruction tuning and reinforcement learning. VARGPT-v1.1 likely builds upon prior work (VARGPT), addressing limitations such as suboptimal instruction-following and constrained image generation domains. Key improvements probably encompass increased data scale, enhanced model architecture (e.g., Qwen2), and novel training strategies combining instruction tuning with reinforcement learning (e.g., DPO). It probably emphasizes on achieving state-of-the-art multimodal understanding and instruction-following performance. The model's ability to support mixed-modal input/output and enable image editing without architectural changes are probably highlighted as key innovations.

#### Multimodal Fusion
While the provided text lacks a section explicitly titled "Multimodal Fusion," the paper's core contribution lies in its exploration of this very concept. The VARGPT-v1.1 model aims to seamlessly integrate visual and textual information, moving beyond simple concatenation to a deeper, more nuanced understanding. **The model leverages visual encoders (ViT) alongside language models (Qwen2) to process both image and text data.** This is evident in how the architecture handles tasks like visual question answering, where understanding the image content is crucial for generating accurate text-based answers. **The training strategy, involving iterative instruction tuning and reinforcement learning, further strengthens the multimodal fusion process**, ensuring that the model effectively combines visual and textual cues to generate coherent and relevant outputs. **The ability to perform image editing based on textual instructions is another strong indicator of effective multimodal fusion** where model can edits images based on instructions.

#### RL from Preference
**Reinforcement Learning (RL) from Preferences** is a paradigm shift, moving away from hand-crafted reward functions towards learning directly from human feedback. Instead of explicitly defining what constitutes 'good' behavior, an agent learns by comparing pairs of trajectories or outcomes, discerning which one is preferred. This offers several advantages. **It simplifies reward design**, enabling application in complex scenarios where defining a reward is challenging. Preference-based RL is also more robust to misspecified rewards, as the agent learns a nuanced understanding from comparisons. Finally, this approach aligns well with human intuition, making it easier to provide informative feedback. Ultimately leading to better performance, especially in domains like robotics and AI assistants, where human-like behavior is desired.

#### Editing via SFT
The paper introduces a novel approach to image editing via SFT (**Supervised Fine-Tuning**), allowing the model to acquire visual editing capabilities without architectural modifications. By fine-tuning on constructed image-editing datasets, VARGPT-v1.1 demonstrates the ability to approximate edited image distributions. This method uniquely achieves architecture-preserving adaptation through parameter space optimization, and enables unified multimodal editing via joint text-image token prediction. The use of SFT facilitates editing fidelity while maintaining generation diversity, showcasing promising potential.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02949/x2.png)

> 🔼 Figure 3 illustrates various model architectures for multimodal tasks, categorized into comprehension-only, generation-only, and unified models.  The figure highlights the differences in how these models approach visual understanding and generation.  Specifically, it shows models that only perform understanding (e.g., using only an autoregressive language model), those only producing generation (e.g., using diffusion models), and those which attempt to unify both tasks into a single architecture. The figure also positions the authors' proposed models, VARGPT and VARGPT-v1.1, within this landscape, emphasizing their unique autoregressive approach that uses next-token prediction for understanding and next-scale prediction for generation.  This approach allows for a unified framework capable of both comprehension and visual generation, unlike many other methods which treat visual generation and understanding as separate processes.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different model architectures, where, ‘AR’ denotes autoregressive, while ‘VAR’ signifies visual autoregressive. We present a comparative analysis of architectures designed for comprehension-only tasks, generation-only tasks, and unified comprehension and generation, alongside our proposed VARGPT-v1.1 an VARGPT [14] model. Our VARGPT-v1.1 and VARGPT are conceptualized as purely autoregressive multimodel model, achieving visual comprehension through next-token prediction and visual generation through next-scale prediction paradigms.
> </details>



![](https://arxiv.org/html/2504.02949/x3.png)

> 🔼 VARGPT-v1.1 architecture diagram showing its two main components: a visual understanding module and a visual generation module. The visual understanding module consists of a large language model (LLM, specifically Qwen2-7B-Instruct), a visual encoder that processes image inputs, and an understanding projector that maps the visual and textual features into a shared embedding space.  The visual generation module consists of a visual decoder that generates images from the LLM outputs and two generation projectors that map the LLM and visual features to the image generation space. The diagram highlights that VARGPT-v1.1 uses causal attention in the LLM and block causal attention in the visual decoder for improved performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: The illustration of the proposed VARGPT-v1.1 framework similar to VARGPT [107], which consists of (1) an LLM (Qwen2-7B-Instruct [87, 2]), visual encoder and a understanding projector for visual understanding; (2) a visual decoder and dual generation projectors for visual generation. VARGPT-v1.1 employs causal attention in the LLM backbone while utilizing block causal attention in the visual decoder.
> </details>



![](https://arxiv.org/html/2504.02949/x4.png)

> 🔼 This figure illustrates the three-stage training process of the VARGPT model. Stage 1 is pretraining, where the model learns general visual and textual representations. Stage 2 is visual instruction tuning, where the model is fine-tuned using image-text pairs, focusing on improving visual understanding. Stage 3 is iterative training, which involves refining the model's visual generation abilities through multiple rounds of training, gradually increasing the image resolution and combining instruction tuning with reinforcement learning.
> <details>
> <summary>read the caption</summary>
> Figure 4: The three training stages of the VARGPT, including stage-1 pretraining, stage-2 visual instruction tuning and stage-3 iterative training.
> </details>



![](https://arxiv.org/html/2504.02949/x5.png)

> 🔼 This figure illustrates the iterative training process used in the third stage of VARGPT-v1.1's training. It shows how the model's image generation resolution is progressively increased from 256x256 to 512x512.  At each resolution, visual instruction fine-tuning (SFT) is performed, followed by reinforcement learning with Direct Preference Optimization (DPO).  This iterative process enhances the model's ability to generate images that accurately reflect user instructions.  The final step involves using an instruction-following dataset for image editing to further improve the model's visual editing capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: The proposed iterative training strategy for the third stage gradually increases the resolution of the image, while using instruction fine-tuning and reinforcement learning iterative training. Finally, we use the instruction-follow dataset for image editing to stimulate the model’s visual editing ability.
> </details>



![](https://arxiv.org/html/2504.02949/x6.png)

> 🔼 Figure 6 shows the data distribution used in the three training stages of the VARGPT-v1.1 model.  Stage 1 uses a large dataset of 8.3 million image-text pairs sourced from LAION-COCO and Midjourney, a mix of real and synthetic data. Stage 2 uses a smaller composite dataset of 1.2 million image-text pairs derived from the LLaVA-1.5 and LLaVA-OneVision datasets. Stage 3 utilizes the same large dataset as Stage 1 (8.3 million samples) but also includes 11,000 samples from StyleBooth for image editing instruction fine-tuning. The figure visually represents the proportion of data from each source for each training stage, highlighting the increase in data scale for visual instruction tuning and the incorporation of image editing data in the later stages.
> <details>
> <summary>read the caption</summary>
> Figure 6: We present the data distribution we construct and collect, encompassing the proportional breakdown of data across the three training stages. Our composite dataset for stage-2 training is derived from LLaVA-1.5, LLaVA-OneVision.
> </details>



![](https://arxiv.org/html/2504.02949/x7.png)

> 🔼 This figure showcases various examples of 512x512 images generated by the VARGPT-v1.1 model.  Each image is accompanied by a short text prompt given to the model as input.  The figure highlights the model's capability to process both text and image-based instructions simultaneously, generating outputs that integrate text and images in a unified manner.  This demonstrates the model's advanced multimodal capabilities, bridging visual understanding and generation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Some generated 512×\times×512 samples by VARGPT-v1.1. Our VARGPT-v1.1 supports text-and-image instructions from user and outputs both text-and-image mixed modal data simultaneously.
> </details>



![](https://arxiv.org/html/2504.02949/x8.png)

> 🔼 This figure showcases the image editing capabilities of the VARGPT-v1.1 model.  It presents a series of example images, each originally generated by the model and then modified according to a specified instruction. All edited images share a resolution of 512x512 pixels. The figure demonstrates the model's ability to perform various edits, such as altering artistic style, adding or removing elements, and changing color palettes, all while maintaining image quality and coherence.
> <details>
> <summary>read the caption</summary>
> Figure 8: Some visual display of image editing results from VARGPT-v1.1, with all images having a resolution of 512×\times×512.
> </details>



![](https://arxiv.org/html/2504.02949/x9.png)

> 🔼 Figure 9 showcases various image samples generated by the VARGPT-v1.1 model, each with a resolution of 512x512 pixels.  These examples demonstrate the model's ability to produce diverse and high-quality images from both text-based and image-based user prompts.  The model's unique capability is in its simultaneous generation of both textual and visual outputs, allowing for multimodal interaction and output.
> <details>
> <summary>read the caption</summary>
> Figure 9: Some generated 512×\times×512 samples by VARGPT-v1.1. Our VARGPT-v1.1 supports text-and-image instructions from user and outputs both text-and-image mixed modal data simultaneously.
> </details>



![](https://arxiv.org/html/2504.02949/x10.png)

> 🔼 Figure 10 shows examples of image editing capabilities of the VARGPT-v1.1 model.  Each image in the figure is 512x512 pixels.  The examples demonstrate the model's ability to modify images according to text instructions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Some visual display of image editing results from VARGPT-v1.1, with all images having a resolution of 512×\times×512.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.15">
<tr class="ltx_tr" id="S5.T2.15.16">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.15.16.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.16.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.2.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.15.16.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.3.1">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.16.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.16.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.5.1">SEED</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.16.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.6.1">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.15.16.7"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.7.1">POPE (acc.)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.16.8" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.16.8.1">MME</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.17">
<td class="ltx_td ltx_align_center" id="S5.T2.15.17.1"><span class="ltx_text ltx_font_bold" id="S5.T2.15.17.1.1">adv</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.17.2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.17.2.1">pop</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.17.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.17.3.1">rand</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.2">Chameleon (7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3">from scratch</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.m1.1a"><mi id="S5.T2.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T2.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4">31.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.5">30.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.6">25.4</td>
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.9"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.10">170</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.2">SEEDLLaMA (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.2.2.1.m1.1"><semantics id="S5.T2.2.2.1.m1.1a"><mi id="S5.T2.2.2.1.m1.1.1" mathvariant="normal" xref="S5.T2.2.2.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.1.m1.1b"><ci id="S5.T2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.4">45.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5">51.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.3.3.2">Show-o (1.5B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.3">Phi-1.5-1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.3.3.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.3.3.1.m1.1"><semantics id="S5.T2.3.3.1.m1.1a"><mi id="S5.T2.3.3.1.m1.1.1" mathvariant="normal" xref="S5.T2.3.3.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.1.m1.1b"><ci id="S5.T2.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.6">25.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.10">948.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.4.2">VILA-U(7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.3">LLaMA-2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.4.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.4.4.1.m1.1"><semantics id="S5.T2.4.4.1.m1.1a"><mi id="S5.T2.4.4.1.m1.1.1" mathvariant="normal" xref="S5.T2.4.4.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.1.m1.1b"><ci id="S5.T2.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.5">59.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.10">1401.8</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.5.2">Liquid (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.3">Gemma-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.5.5.1.m1.1"><semantics id="S5.T2.5.5.1.m1.1a"><mi id="S5.T2.5.5.1.m1.1.1" mathvariant="normal" xref="S5.T2.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.1.m1.1b"><ci id="S5.T2.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.9">81.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.10">1119.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.2">Janus-Pro(7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.3">DeepSeek-LLM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.6.6.1.m1.1"><semantics id="S5.T2.6.6.1.m1.1a"><mo id="S5.T2.6.6.1.m1.1.1" xref="S5.T2.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.1.m1.1b"><times id="S5.T2.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.5">72.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6">41.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10">1567.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.7.7.2">MiniGPT-4 (7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.7.7.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.7.7.1.m1.1"><semantics id="S5.T2.7.7.1.m1.1a"><mo id="S5.T2.7.7.1.m1.1.1" xref="S5.T2.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.1.m1.1b"><times id="S5.T2.7.7.1.m1.1.1.cmml" xref="S5.T2.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.4">23.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.5">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.6" rowspan="6"><span class="ltx_text" id="S5.T2.7.7.6.1">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7">65.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.8">69.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.9">79.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.10">581.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.8.2">InstructBLIP (8B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.8.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.8.8.1.m1.1"><semantics id="S5.T2.8.8.1.m1.1a"><mo id="S5.T2.8.8.1.m1.1.1" xref="S5.T2.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.1.m1.1b"><times id="S5.T2.8.8.1.m1.1.1.cmml" xref="S5.T2.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.4">36.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.5">53.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.6">72.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.7">82.77</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8">88.57</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.9">1212.8</td>
</tr>
<tr class="ltx_tr" id="S5.T2.9.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.9.9.2">Qwen-VL (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.3">Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.9.9.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.9.9.1.m1.1"><semantics id="S5.T2.9.9.1.m1.1a"><mo id="S5.T2.9.9.1.m1.1.1" xref="S5.T2.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.1.m1.1b"><times id="S5.T2.9.9.1.m1.1.1.cmml" xref="S5.T2.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.4">38.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.10.10.2">Qwen-VL-Chat (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.3">Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.10.10.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.10.10.1.m1.1"><semantics id="S5.T2.10.10.1.m1.1a"><mo id="S5.T2.10.10.1.m1.1.1" xref="S5.T2.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.1.m1.1b"><times id="S5.T2.10.10.1.m1.1.1.cmml" xref="S5.T2.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.4">60.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.5">58.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.9">1487.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.11.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.11.11.2">LLaVA (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.11.11.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.11.11.1.m1.1"><semantics id="S5.T2.11.11.1.m1.1a"><mo id="S5.T2.11.11.1.m1.1.1" xref="S5.T2.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.1.m1.1b"><times id="S5.T2.11.11.1.m1.1.1.cmml" xref="S5.T2.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.4">36.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.5">33.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.6">49.70</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.7">49.87</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.8">50.37</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.9">502.8</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.2">mPLUG-Owl2 (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.3">LLaMA-2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.12.12.1.m1.1"><semantics id="S5.T2.12.12.1.m1.1a"><mo id="S5.T2.12.12.1.m1.1.1" xref="S5.T2.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.1.m1.1b"><times id="S5.T2.12.12.1.m1.1.1.cmml" xref="S5.T2.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.4">64.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.5">57.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.9">1450.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.13.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.13.13.2">LLaVA-1.5-hf (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.13.13.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.13.13.1.m1.1"><semantics id="S5.T2.13.13.1.m1.1a"><mo id="S5.T2.13.13.1.m1.1.1" xref="S5.T2.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.13.13.1.m1.1b"><times id="S5.T2.13.13.1.m1.1.1.cmml" xref="S5.T2.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.13.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.4">62.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.5">65.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.6">35.24</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.7">83.60</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.8">85.77</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.9">86.97</td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.10">1480.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.14" style="background-color:#F0F8FF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.14.14.2"><span class="ltx_text" id="S5.T2.14.14.2.1" style="background-color:#F0F8FF;">VARGPT(7B+2B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.3"><span class="ltx_text" id="S5.T2.14.14.3.1" style="background-color:#F0F8FF;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.14.14.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.14.14.1.m1.1" style="background-color:#F0F8FF;"><semantics id="S5.T2.14.14.1.m1.1a"><mi id="S5.T2.14.14.1.m1.1.1" mathbackground="#F0F8FF" mathvariant="normal" xref="S5.T2.14.14.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.14.14.1.m1.1b"><ci id="S5.T2.14.14.1.m1.1.1.cmml" xref="S5.T2.14.14.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.14.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.14.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.4"><span class="ltx_text" id="S5.T2.14.14.4.1" style="background-color:#F0F8FF;">67.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.5"><span class="ltx_text" id="S5.T2.14.14.5.1" style="background-color:#F0F8FF;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.6"><span class="ltx_text" id="S5.T2.14.14.6.1" style="background-color:#F0F8FF;">36.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.7"><span class="ltx_text" id="S5.T2.14.14.7.1" style="background-color:#F0F8FF;">84.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.8"><span class="ltx_text" id="S5.T2.14.14.8.1" style="background-color:#F0F8FF;">85.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.9"><span class="ltx_text" id="S5.T2.14.14.9.1" style="background-color:#F0F8FF;">87.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.14.10"><span class="ltx_text" id="S5.T2.14.14.10.1" style="background-color:#F0F8FF;">1488.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.15" style="background-color:#F0F8FF;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.15.15.2"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.2.1" style="background-color:#F0F8FF;">VARGPT-v1.1(7B+2B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.3.1" style="background-color:#F0F8FF;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.15.15.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.15.15.1.m1.1" style="background-color:#F0F8FF;"><semantics id="S5.T2.15.15.1.m1.1a"><mi id="S5.T2.15.15.1.m1.1.1" mathbackground="#F0F8FF" mathvariant="normal" xref="S5.T2.15.15.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.15.15.1.m1.1b"><ci id="S5.T2.15.15.1.m1.1.1.cmml" xref="S5.T2.15.15.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.15.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.15.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.4"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.4.1" style="background-color:#F0F8FF;">81.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.5"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.5.1" style="background-color:#F0F8FF;">76.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.6"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.6.1" style="background-color:#F0F8FF;">48.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.7"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.7.1" style="background-color:#F0F8FF;">84.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.8"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.8.1" style="background-color:#F0F8FF;">88.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.9"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.9.1" style="background-color:#F0F8FF;">89.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.15.10"><span class="ltx_text ltx_font_bold" id="S5.T2.15.15.10.1" style="background-color:#F0F8FF;">1684.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a zero-shot evaluation of various multimodal large language models (MLLMs) across multiple benchmark datasets, including MMMU, MME, MMBench, SEEDBench, and POPE.  Each benchmark assesses different aspects of multimodal understanding and generation capabilities.  The 'Gen' column indicates whether a model supports image generation.  The table shows that VARGPT-v1.1 outperforms all other models across all evaluation metrics, demonstrating its superior performance in multimodal comprehension and generation tasks, especially in the zero-shot setting where the models are not fine-tuned on specific datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot multi-modal evaluation on multi-modal benchmarks including MMMU, MME, MMBench, SEEDBench, and POPE (including different settings random, popular and adversarial ). The overall scores are reported for evaluation and we report test results for MMBench. Gen represents whether the method supports image generation capability. VARGPT-v1.1 achieves the best overall performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.8">
<tr class="ltx_tr" id="S5.T3.8.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.8.9.1"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.2"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.2.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.8.9.3"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.3.1">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.4"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.4.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.5"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.5.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.6"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.6.1">VQAv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.7"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.7.1">SciQA-img</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.8"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.8.1">OKVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.9.9"><span class="ltx_text ltx_font_bold" id="S5.T3.8.9.9.1">VizWizQA</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.2">MiniGPT-4 (7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><times id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4">43.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6">0.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.7">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.9">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.2.2">InstructBLIP (8B)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.2.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.2.2.1.m1.1"><semantics id="S5.T3.2.2.1.m1.1a"><mo id="S5.T3.2.2.1.m1.1.1" xref="S5.T3.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.1.m1.1b"><times id="S5.T3.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.4">49.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.7">60.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.9">34.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.3.2">Qwen-VL (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3">Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.3.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.3.3.1.m1.1"><semantics id="S5.T3.3.3.1.m1.1a"><mo id="S5.T3.3.3.1.m1.1.1" xref="S5.T3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.1.m1.1b"><times id="S5.T3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.4">59.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5">50.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.7">67.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.9">35.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.4.4.2">Qwen-VL-Chat (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.3">Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.4.4.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.4.4.1.m1.1"><semantics id="S5.T3.4.4.1.m1.1a"><mo id="S5.T3.4.4.1.m1.1.1" xref="S5.T3.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.1.m1.1b"><times id="S5.T3.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4">57.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.5">61.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6">78.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7">68.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8">56.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9">38.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.2">mPLUG-Owl2 (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.3">LLaMA-2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.5.5.1.m1.1"><semantics id="S5.T3.5.5.1.m1.1a"><mo id="S5.T3.5.5.1.m1.1.1" xref="S5.T3.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.1.m1.1b"><times id="S5.T3.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.4">56.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5">53.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7">68.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8">57.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9">54.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.2">LLaVA-1.5-hf (7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.6.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.6.6.1.m1.1"><semantics id="S5.T3.6.6.1.m1.1a"><mo id="S5.T3.6.6.1.m1.1.1" xref="S5.T3.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.1.m1.1b"><times id="S5.T3.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.4">61.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.5">48.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6">76.49</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.7">67.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.8">53.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9">53.53</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7" style="background-color:#F0F8FF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.7.7.2"><span class="ltx_text" id="S5.T3.7.7.2.1" style="background-color:#F0F8FF;">VARGPT(7B+2B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.3"><span class="ltx_text" id="S5.T3.7.7.3.1" style="background-color:#F0F8FF;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.7.7.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T3.7.7.1.m1.1" style="background-color:#F0F8FF;"><semantics id="S5.T3.7.7.1.m1.1a"><mi id="S5.T3.7.7.1.m1.1.1" mathbackground="#F0F8FF" mathvariant="normal" xref="S5.T3.7.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.1.m1.1b"><ci id="S5.T3.7.7.1.m1.1.1.cmml" xref="S5.T3.7.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.4"><span class="ltx_text" id="S5.T3.7.7.4.1" style="background-color:#F0F8FF;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.5"><span class="ltx_text" id="S5.T3.7.7.5.1" style="background-color:#F0F8FF;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.6"><span class="ltx_text" id="S5.T3.7.7.6.1" style="background-color:#F0F8FF;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7"><span class="ltx_text" id="S5.T3.7.7.7.1" style="background-color:#F0F8FF;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.8"><span class="ltx_text" id="S5.T3.7.7.8.1" style="background-color:#F0F8FF;">55.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9"><span class="ltx_text" id="S5.T3.7.7.9.1" style="background-color:#F0F8FF;">56.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8" style="background-color:#F0F8FF;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.8.8.2"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.2.1" style="background-color:#F0F8FF;">VARGPT-v1.1(7B+2B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.3"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.3.1" style="background-color:#F0F8FF;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.8.8.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T3.8.8.1.m1.1" style="background-color:#F0F8FF;"><semantics id="S5.T3.8.8.1.m1.1a"><mi id="S5.T3.8.8.1.m1.1.1" mathbackground="#F0F8FF" mathvariant="normal" xref="S5.T3.8.8.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.1.m1.1b"><ci id="S5.T3.8.8.1.m1.1.1.cmml" xref="S5.T3.8.8.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.4"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.4.1" style="background-color:#F0F8FF;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.5"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.5.1" style="background-color:#F0F8FF;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.6"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.6.1" style="background-color:#F0F8FF;">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.7"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.7.1" style="background-color:#F0F8FF;">91.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.8"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.8.1" style="background-color:#F0F8FF;">57.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.9"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.9.1" style="background-color:#F0F8FF;">65.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various Multimodal Large Language Models (MLLMs) on several visual question answering (VQA) benchmarks.  The benchmarks measure the models' ability to correctly answer questions based on provided images. Models that were trained on a specific benchmark are indicated by graying out the row.  The 'Gen' column indicates whether the model has image generation capabilities.  The results allow for a quantitative comparison of the models' visual understanding capabilities across different VQA tasks.
> <details>
> <summary>read the caption</summary>
> Table 3:  Performance comparison on visual question answering tasks. We gray out the model has trained on the dataset. Gen represents whether the method supports image generation capability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.5">
<tr class="ltx_tr" id="S5.T4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.4.5">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1">Global<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2">Entity<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3">Attribute<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6">Relation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.7">Other</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.5.6.1">SDv1.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.2">74.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.3">74.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.4">75.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.5">73.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.6">67.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.6.7">63.18</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5">
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.1">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T4.5.5.1.m1.1"><semantics id="S5.T4.5.5.1.m1.1a"><mi id="S5.T4.5.5.1.m1.1.1" xref="S5.T4.5.5.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.1.m1.1b"><ci id="S5.T4.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.1.m1.1d">italic_α</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.2">74.97</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.3">79.32</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.4">78.60</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5">82.57</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.6">76.96</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.7">71.11</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.7">
<td class="ltx_td ltx_align_left" id="S5.T4.5.7.1">Lumina-Next</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.2">82.82</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.3">88.65</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.4">86.44</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.5">80.53</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.6">81.82</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.7.7">74.63</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.8">
<td class="ltx_td ltx_align_left" id="S5.T4.5.8.1">SDXL</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.2">83.27</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.3">82.43</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.4">80.91</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.5">86.76</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.6">80.41</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.7">74.65</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.9">
<td class="ltx_td ltx_align_left" id="S5.T4.5.9.1">Playground v2.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.2">83.06</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.3">82.59</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.4">81.20</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.5">84.08</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.6">83.50</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.7">75.47</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.10" style="background-color:#F0F8FF;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S5.T4.5.10.1"><span class="ltx_text ltx_font_bold" id="S5.T4.5.10.1.1" style="background-color:#F0F8FF;">VARGPT-v1.1(7B+2B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.2"><span class="ltx_text" id="S5.T4.5.10.2.1" style="background-color:#F0F8FF;">84.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.3"><span class="ltx_text" id="S5.T4.5.10.3.1" style="background-color:#F0F8FF;">82.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.4"><span class="ltx_text" id="S5.T4.5.10.4.1" style="background-color:#F0F8FF;">84.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.5"><span class="ltx_text" id="S5.T4.5.10.5.1" style="background-color:#F0F8FF;">88.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.6"><span class="ltx_text" id="S5.T4.5.10.6.1" style="background-color:#F0F8FF;">87.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.5.10.7"><span class="ltx_text ltx_font_bold" id="S5.T4.5.10.7.1" style="background-color:#F0F8FF;">78.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different models' performance on the DPG-Bench benchmark. DPG-Bench is a benchmark specifically designed to evaluate the quality of image generation in various aspects. The table shows each model's scores across multiple metrics, including overall performance, entity recognition, attribute identification, relation extraction, other characteristics and global evaluation,  providing a comprehensive view of the models' strengths and weaknesses in image generation tasks.  This allows for a nuanced comparison of the effectiveness of various image generation models.
> <details>
> <summary>read the caption</summary>
> Table 4:  Performance comparison on the DPG-Bench benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.3">
<tr class="ltx_tr" id="S5.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.2">Type</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4">Single Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5">Two Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6">Counting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.7">Colors</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8">Position</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.9">Color Attr.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.4">
<td class="ltx_td ltx_border_t" id="S5.T5.3.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.3.4.2">LlamaGen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.3">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.4">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.5">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.6">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.7">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.8">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.4.9">0.32</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.5">
<td class="ltx_td" id="S5.T5.3.5.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.5.2">LDM</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.3">0.92</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.4">0.29</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.5">0.23</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.6">0.70</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.7">0.02</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.8">0.05</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.5.9">0.37</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.6">
<td class="ltx_td" id="S5.T5.3.6.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.6.2">SDv1.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.3">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.4">0.38</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.5">0.35</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.6">0.76</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.7">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.8">0.06</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.9">0.43</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<td class="ltx_td" id="S5.T5.2.2.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.2.2.1">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.2.2.1.m1.1"><semantics id="S5.T5.2.2.1.m1.1a"><mi id="S5.T5.2.2.1.m1.1.1" xref="S5.T5.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.1.m1.1b"><ci id="S5.T5.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.1.m1.1d">italic_α</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.3">0.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.4">0.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5">0.44</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.6">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.7">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.8">0.07</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.9">0.48</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.7">
<td class="ltx_td ltx_align_left" id="S5.T5.3.7.1">Gen. Only</td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.7.2">SDv2.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.3">0.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.4">0.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.5">0.44</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.6">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.7">0.07</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.8">0.17</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.7.9">0.50</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.8">
<td class="ltx_td" id="S5.T5.3.8.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.8.2">DALL-E 2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.3">0.94</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.4">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.5">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.6">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.7">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.8">0.19</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.8.9">0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3">
<td class="ltx_td ltx_border_t" id="S5.T5.3.3.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.3.3.1">SEED-X<sup class="ltx_sup" id="S5.T5.3.3.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.4">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.5">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.6">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.7">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.8">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.9">0.49</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.9">
<td class="ltx_td" id="S5.T5.3.9.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.9.2">Show-o</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.3">0.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.4">0.52</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.5">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.7">0.11</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.8">0.28</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.9.9"><span class="ltx_text ltx_font_bold" id="S5.T5.3.9.9.1">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.10">
<td class="ltx_td ltx_align_left" id="S5.T5.3.10.1">Und. and Gen.</td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.10.2">LWM</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.3">0.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.4">0.41</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.5">0.46</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.6">0.79</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.7">0.09</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.8">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.10.9">0.47</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.11">
<td class="ltx_td" id="S5.T5.3.11.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T5.3.11.2">Chameleon</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.11.9">0.39</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.12">
<td class="ltx_td ltx_border_bb" id="S5.T5.3.12.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.3.12.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.12.2.1" style="background-color:#F0F8FF;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.3"><span class="ltx_text" id="S5.T5.3.12.3.1" style="background-color:#F0F8FF;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.4"><span class="ltx_text" id="S5.T5.3.12.4.1" style="background-color:#F0F8FF;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.5"><span class="ltx_text" id="S5.T5.3.12.5.1" style="background-color:#F0F8FF;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.6"><span class="ltx_text" id="S5.T5.3.12.6.1" style="background-color:#F0F8FF;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.7"><span class="ltx_text" id="S5.T5.3.12.7.1" style="background-color:#F0F8FF;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.8"><span class="ltx_text" id="S5.T5.3.12.8.1" style="background-color:#F0F8FF;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.12.9"><span class="ltx_text ltx_font_bold" id="S5.T5.3.12.9.1" style="background-color:#F0F8FF;">0.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comprehensive comparison of different models' performance on the GenEval benchmark. GenEval is specifically designed to evaluate the capabilities of generative models in various visual tasks, including single-object, two-object, counting, color, positioning, color attributes, and overall generation. This table provides a detailed breakdown of each model's performance on these specific sub-tasks, enabling a precise comparison of their strengths and weaknesses. By presenting a range of models, including both purely generative models and those capable of both understanding and generation, the table offers a comprehensive overview of the current state-of-the-art in generative visual modeling and its ability to successfully complete challenging visual tasks.
> <details>
> <summary>read the caption</summary>
> Table 5:  Performance comparison on the GenEval benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.1.1.1.1">
<tr class="ltx_tr" id="S5.1.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.1.1.1.1.2.1.1">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S5.1.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.1.1.1.1.1.1.1">
<span class="ltx_p" id="S5.1.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="118" id="S5.1.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Exp/15_image.png" width="211"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.1.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.1.1.1.1.3.1">User</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.1.1.1.1.3.2.1">
<span class="ltx_p" id="S5.1.1.1.1.3.2.1.1" style="width:213.4pt;">Please explain the meme in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.1.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.1.1.1.1.4.1">LLaVA-v1.5-7B</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.1.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.1.1.1.1.4.2.1">
<span class="ltx_p" id="S5.1.1.1.1.4.2.1.1" style="width:213.4pt;">The image features a small brown dog lying on the floor, possibly on a wooden surface, with its head up and eyes open. The dog appears to be sleeping or resting, and it is positioned in a way that it seems to be looking up at the camera. The scene is set against a blue background, which adds a contrasting color to the image. The image is accompanied by a caption that reads "Just Monday…", suggesting that the dog is enjoying a lazy day at home. The caption is placed at the bottom of the image, with the dog taking up most of the frame.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.1.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.1.1.1.1.5.1">VARGPT-v1.1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.1.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.1.1.1.1.5.2.1">
<span class="ltx_p" id="S5.1.1.1.1.5.2.1.1" style="width:213.4pt;">The meme features a small dog lying on its back on a wooden surface, with the words "MONDAY" and "JUST…MONDAY" written above and below it, respectively. The text humorously implies that the dog is expressing a common sentiment of fatigue or disinterest associated with Mondays, a day often associated with the start of the workweek.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases VARGPT's ability to understand and interpret humor in visual content.  It likely presents examples of visual input (images or memes) along with the model's generated responses, demonstrating its capacity to go beyond literal understanding to grasp the intended comedic effect and provide insightful explanations. This capability highlights the model's advanced comprehension of nuances in visual and textual information, going beyond simple fact retrieval.
> <details>
> <summary>read the caption</summary>
> Table 6: VARGPT demonstrates the capability to comprehend and interpret humorous elements within visual content.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.1.1.1.1">
<tr class="ltx_tr" id="S8.1.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S8.1.1.1.1.2.1.1" style="font-size:144%;">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S8.1.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S8.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.1.1.1.1.1.1.1">
<span class="ltx_p" id="S8.1.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="138" id="S8.1.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Appendix/understanding/22_image.png" width="245"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.1.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S8.1.1.1.1.3.1"><span class="ltx_text" id="S8.1.1.1.1.3.1.1" style="font-size:144%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.1.1.1.1.3.2.1">
<span class="ltx_p" id="S8.1.1.1.1.3.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.1.1.1.1.3.2.1.1.1" style="font-size:144%;">What’s the personality of this character? Explain what elements or aspects of the character’s design may have contributed to its popularity.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.1.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.1.1.1.1.4.1"><span class="ltx_text" id="S8.1.1.1.1.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.1.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.1.1.1.1.4.2.1">
<span class="ltx_p" id="S8.1.1.1.1.4.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.1.1.1.1.4.2.1.1.1" style="font-size:144%;">The character in the image is a young boy with a distinctive appearance, wearing glasses, a bow tie, and a suit. This unique combination of elements, along with his smiling expression, suggests that the character is friendly, approachable, and confident. The character’s design, which includes the bow tie and glasses, adds a touch of sophistication and charm to his overall look. These elements may have contributed to the character’s popularity, as they make him stand out and create a memorable impression. The character’s personality and design have likely resonated with audiences, making him a beloved and recognizable figure in popular culture.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.1.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.1.1.1.1.5.1"><span class="ltx_text" id="S8.1.1.1.1.5.1.1" style="font-size:144%;">VARGPT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.1.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.1.1.1.1.5.2.1">
<span class="ltx_p" id="S8.1.1.1.1.5.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.1.1.1.1.5.2.1.1.1" style="font-size:144%;">The character’s personality seems to be confident, intelligent, and perhaps a bit mischievous, as suggested by the slight smirk and the way the eyes are directed slightly upwards and to the side, giving an impression of a playful or slightly rebellious attitude. The glasses and bow tie suggest a formal or professional setting, which could imply that the character is a well-educated individual. The design elements that may have contributed to its popularity include the expressive eyes, the confident stance, and the stylish yet formal attire.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.1.1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.1.1.1.1.6.1"><span class="ltx_text" id="S8.1.1.1.1.6.1.1" style="font-size:144%;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S8.1.1.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.1.1.1.1.6.2.1">
<span class="ltx_p" id="S8.1.1.1.1.6.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.1.1.1.1.6.2.1.1.1" style="font-size:144%;">The character’s personality appears to be that of a clever, observant detective, as suggested by the glasses and the serious expression. The large, expressive eyes and the confident smile could indicate a sense of intelligence and a quick wit. The character’s popularity might be attributed to its distinctive design, which includes the glasses and bow tie, making it easily recognizable and endearing to fans of the series.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases a qualitative comparison of VARGPT-v1.1's visual understanding capabilities against LLaVA-v1.5-7B.  It presents two examples where users provide visual inputs and questions, and then the responses from both models are shown.  The goal is to illustrate how VARGPT-v1.1 provides more accurate and nuanced answers, demonstrating improved performance in visual understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: The case of visual understanding in VARGPT-v1.1 shows that our VARGPT-v1.1 has achieved better understanding performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.2.1.1.1">
<tr class="ltx_tr" id="S8.2.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.2.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S8.2.1.1.1.2.1.1" style="font-size:144%;">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S8.2.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S8.2.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.2.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.2.1.1.1.1.1.1">
<span class="ltx_p" id="S8.2.1.1.1.1.1.1.1" style="width:227.6pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="79" id="S8.2.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Appendix/understanding/2_image.png" width="93"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.2.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S8.2.1.1.1.3.1"><span class="ltx_text" id="S8.2.1.1.1.3.1.1" style="font-size:144%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.2.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.2.1.1.1.3.2.1">
<span class="ltx_p" id="S8.2.1.1.1.3.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="S8.2.1.1.1.3.2.1.1.1" style="font-size:144%;">What are the possible reasons of the formation of this sight?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.2.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.2.1.1.1.4.1"><span class="ltx_text" id="S8.2.1.1.1.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.2.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.2.1.1.1.4.2.1">
<span class="ltx_p" id="S8.2.1.1.1.4.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="S8.2.1.1.1.4.2.1.1.1" style="font-size:144%;">The formation of the sight, which is a large, rocky mountain with a lush green hillside and a beach, can be attributed to several factors. Firstly, the mountain’s formation is likely due to tectonic forces, such as the collision or separation of tectonic plates, which have resulted in the formation of the mountain range. Secondly, the lush green hillside and the beach are the result of the local climate and geological processes. The presence of a beach suggests that the area is near a coastline, and the lush green hillside could be due to the presence of a water source, such as a river or a waterfall, which has created a fertile environment for plant growth. Additionally, the mountain’s unique shape and the presence of a road on its side could be the result of human intervention, such as the construction of roads and infrastructure to facilitate transportation and access to the area.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.2.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.2.1.1.1.5.1"><span class="ltx_text" id="S8.2.1.1.1.5.1.1" style="font-size:144%;">VARGPT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.2.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.2.1.1.1.5.2.1">
<span class="ltx_p" id="S8.2.1.1.1.5.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="S8.2.1.1.1.5.2.1.1.1" style="font-size:144%;">The sight of a large mountain with a road running through it and a beach nearby is a result of geological processes that have shaped the landscape over time. Some possible reasons for the formation of this sight include:1. Tectonic forces: The movement of the Earth’s crust can lead to the formation of mountains, valleys, and other geological features. The mountain could have been formed through tectonic forces such as the collision of two tectonic plates or the uplift of the Earth’s crust.2. Weathering and erosion: The mountain could have been shaped by the forces of weathering and erosion, which break down the rock and soil, leaving behind a rugged landscape. The road running through the mountain could be a result of human intervention to connect different areas or to facilitate transportation.3. Coastal erosion: The beach and the surrounding area could have been shaped by the forces of coastal erosion, which is the process of the sea wearing away the land. The beach could have been formed by the deposition of sediments from the sea, while the surrounding area could have been shaped by the erosion of rock and soil.4. Climate and weather patterns: The vegetation on the mountain and the surrounding area could be influenced by the local climate and weather patterns, which can affect the growth and distribution of plants and animals in the region.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.2.1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.2.1.1.1.6.1"><span class="ltx_text" id="S8.2.1.1.1.6.1.1" style="font-size:144%;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S8.2.1.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.2.1.1.1.6.2.1">
<span class="ltx_p" id="S8.2.1.1.1.6.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="S8.2.1.1.1.6.2.1.1.1" style="font-size:144%;">The sight in the image is a volcanic crater, which is formed by the eruption of a volcano. Volcanic eruptions can create craters of varying sizes and shapes, depending on the type of eruption and the materials involved. The crater in the image is likely the result of a past volcanic eruption that excavated a large cavity in the Earth’s surface. Over time, the crater may have been shaped by erosion and weathering processes, and it may now be surrounded by vegetation and other geological features. The presence of the road and buildings around the crater suggests that it is a location of interest, possibly a tourist attraction or a natural landmark.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples where VARGPT-v1.1 demonstrates improved performance in visual understanding tasks compared to the LLaVA-v1.5-7B model.  It presents user prompts alongside the model's responses, highlighting VARGPT-v1.1's ability to provide more comprehensive and accurate interpretations of the visual input.  The examples provided illustrate the nuanced understanding capabilities of the model, particularly in relation to complex concepts and the ability to correctly identify and describe the main features of the visual input.
> <details>
> <summary>read the caption</summary>
> Table 8: The case of visual understanding in VARGPT-v1.1 shows that our VARGPT-v1.1 has achieved better understanding performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.3.1.1.1">
<tr class="ltx_tr" id="S8.3.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.3.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S8.3.1.1.1.2.1.1" style="font-size:144%;">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S8.3.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S8.3.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.3.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.3.1.1.1.1.1.1">
<span class="ltx_p" id="S8.3.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="236" id="S8.3.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Appendix/understanding/10_image.png" width="236"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.3.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S8.3.1.1.1.3.1"><span class="ltx_text" id="S8.3.1.1.1.3.1.1" style="font-size:144%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.3.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.3.1.1.1.3.2.1">
<span class="ltx_p" id="S8.3.1.1.1.3.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.3.1.1.1.3.2.1.1.1" style="font-size:144%;">Discuss how this creative twist on a classic work of art might be interpreted differently by various audiences.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.3.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.3.1.1.1.4.1"><span class="ltx_text" id="S8.3.1.1.1.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.3.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.3.1.1.1.4.2.1">
<span class="ltx_p" id="S8.3.1.1.1.4.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.3.1.1.1.4.2.1.1.1" style="font-size:144%;">The creative twist on a classic work of art, featuring a dog wearing a Renaissance-style dress and a beret, can be interpreted differently by various audiences. Some might find it amusing and lighthearted, as it combines the seriousness of a historical painting with the playfulness of a dog dressed up in human attire. Others might view it as a commentary on the human-animal relationship, suggesting that dogs can be just as expressive and creative as humans. Additionally, some might perceive it as a critique of the traditional art world, as it challenges the norms of what is considered ärtb̈y incorporating a non-human subject and a more contemporary, humorous element. Overall, the interpretation of this creative twist on a classic work of art can vary greatly depending on the viewer’s perspective and personal experiences.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.3.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.3.1.1.1.5.1"><span class="ltx_text" id="S8.3.1.1.1.5.1.1" style="font-size:144%;">VARGPT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.3.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.3.1.1.1.5.2.1">
<span class="ltx_p" id="S8.3.1.1.1.5.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.3.1.1.1.5.2.1.1.1" style="font-size:144%;">This creative twist on a classic work of art, where a dog is dressed in a Mona Lisa-style outfit and painted in a similar style, could be interpreted in various ways by different audiences. Some might find it amusing and lighthearted, as it plays on the juxtaposition of a serious artwork with a playful, everyday subject. Others might appreciate the skillful use of artistic techniques to transform a simple image of a dog into a piece of art that can be appreciated on multiple levels. Some might even see it as a commentary on the universal appeal of art, which can be appreciated by both humans and animals. The interpretation would depend on the viewer’s personal experiences, artistic background, and sense of humor.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.3.1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.3.1.1.1.6.1"><span class="ltx_text" id="S8.3.1.1.1.6.1.1" style="font-size:144%;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S8.3.1.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.3.1.1.1.6.2.1">
<span class="ltx_p" id="S8.3.1.1.1.6.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.3.1.1.1.6.2.1.1.1" style="font-size:144%;">This creative twist on a classic work of art, featuring a dog with a human-like face, can be interpreted differently by various audiences. Some may find it humorous and entertaining, appreciating the cleverness of the artist in blending two distinct elements. Others might view it as a commentary on the nature of identity and the human-animal relationship, suggesting that even animals can possess human-like qualities or emotions. Some may also see it as a form of modern art, exploring the boundaries between different genres and challenging traditional notions of beauty and representation. Ultimately, the interpretation of this artwork will vary based on individual perspectives and cultural backgrounds.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a qualitative comparison of VARGPT-v1.1's performance against LLaVA-v1.5-7B in visual understanding tasks.  It showcases examples where users provide visual input and a question, illustrating the differences in the models' responses.  The comparison highlights how VARGPT-v1.1 provides more detailed, nuanced, and accurate answers, demonstrating an improvement in the model's comprehension capabilities.
> <details>
> <summary>read the caption</summary>
> Table 9: The case of visual understanding in VARGPT-v1.1 shows that our VARGPT-v1.1 has achieved better understanding performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.4.1.1.1">
<tr class="ltx_tr" id="S8.4.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.4.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S8.4.1.1.1.2.1.1" style="font-size:144%;">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S8.4.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S8.4.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.4.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.4.1.1.1.1.1.1">
<span class="ltx_p" id="S8.4.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="157" id="S8.4.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Appendix/understanding/24_image.png" width="236"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.4.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S8.4.1.1.1.3.1"><span class="ltx_text" id="S8.4.1.1.1.3.1.1" style="font-size:144%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.4.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.4.1.1.1.3.2.1">
<span class="ltx_p" id="S8.4.1.1.1.3.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.4.1.1.1.3.2.1.1.1" style="font-size:144%;">If you were a photographer looking to capture this location’s essence, what time of day and weather conditions would you choose? Describe the reasons behind your choice.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.4.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.4.1.1.1.4.1"><span class="ltx_text" id="S8.4.1.1.1.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.4.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.4.1.1.1.4.2.1">
<span class="ltx_p" id="S8.4.1.1.1.4.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.4.1.1.1.4.2.1.1.1" style="font-size:144%;">To capture the essence of this location, which features a pier extending over a lake with mountains in the background, I would choose to photograph during the golden hour, which is the time just after sunrise or before sunset. This time of day provides soft, warm light that enhances the natural beauty of the scene, creating a serene and picturesque atmosphere. Additionally, the golden hour often results in softer shadows and more dramatic lighting, which can accentuate the pier’s structure and the surrounding landscape.As for the weather conditions, I would prefer a clear day with a gentle breeze, as it would provide a pleasant and comfortable environment for both the photographer and the subjects. A clear day with good visibility would allow for better composition and capture the stunning mountain backdrop in its full glory. A gentle breeze would also add a touch of dynamism to the scene, making it more visually engaging and interesting.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.4.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.4.1.1.1.5.1"><span class="ltx_text" id="S8.4.1.1.1.5.1.1" style="font-size:144%;">VARGPT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.4.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.4.1.1.1.5.2.1">
<span class="ltx_p" id="S8.4.1.1.1.5.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.4.1.1.1.5.2.1.1.1" style="font-size:144%;">I would choose to capture this location’s essence during the early morning, specifically during the golden hour, which is the period shortly after sunrise or before sunset. This time of day is known for its soft, warm light and long shadows, which can enhance the tranquility and beauty of the scene. The weather conditions would be clear and calm, with a gentle breeze to create a sense of movement in the water and to soften the reflections on the water’s surface. The overcast sky would add a sense of depth and contrast to the scene, while the mist or fog would create a serene and ethereal atmosphere.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.4.1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.4.1.1.1.6.1"><span class="ltx_text" id="S8.4.1.1.1.6.1.1" style="font-size:144%;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S8.4.1.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.4.1.1.1.6.2.1">
<span class="ltx_p" id="S8.4.1.1.1.6.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.4.1.1.1.6.2.1.1.1" style="font-size:144%;">I would choose to capture this location during the early morning or late afternoon, when the light is soft and the sky is clear, to create a serene and tranquil atmosphere. The calm water would reflect the light beautifully, enhancing the overall composition of the image. The weather should be clear with minimal cloud cover to ensure the best visibility of the distant mountains and the lush greenery. This would allow for a crisp and vibrant representation of the landscape, with the wooden dock and the lake’s surface acting as natural elements that draw the viewer’s eye towards the distant scenery.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents two examples showcasing the improved visual understanding capabilities of VARGPT-v1.1 compared to LLaVA-v1.5-7B.  The examples highlight VARGPT-v1.1's superior ability to grasp the nuances of visual input and provide more detailed and accurate interpretations of the scenes depicted, leading to more comprehensive and insightful responses.
> <details>
> <summary>read the caption</summary>
> Table 10: The case of visual understanding in VARGPT-v1.1 shows that our VARGPT-v1.1 has achieved better understanding performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.5.1.1.1">
<tr class="ltx_tr" id="S8.5.1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.5.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S8.5.1.1.1.2.1.1" style="font-size:144%;">Visual input example:</span></td>
</tr>
<tr class="ltx_tr" id="S8.5.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S8.5.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.5.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.5.1.1.1.1.1.1">
<span class="ltx_p" id="S8.5.1.1.1.1.1.1.1" style="width:213.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="197" id="S8.5.1.1.1.1.1.1.1.g1" src="extracted/6334307/sec/Figure/Appendix/understanding/52_image.png" width="197"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.5.1.1.1.3">
<td class="ltx_td ltx_align_left" id="S8.5.1.1.1.3.1"><span class="ltx_text" id="S8.5.1.1.1.3.1.1" style="font-size:144%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.5.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.5.1.1.1.3.2.1">
<span class="ltx_p" id="S8.5.1.1.1.3.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.5.1.1.1.3.2.1.1.1" style="font-size:144%;">If someone were to recommend a new flavor or topping to the dish, describe the reason for this change and how it might alter the overall taste.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.5.1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.5.1.1.1.4.1"><span class="ltx_text" id="S8.5.1.1.1.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.5.1.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.5.1.1.1.4.2.1">
<span class="ltx_p" id="S8.5.1.1.1.4.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.5.1.1.1.4.2.1.1.1" style="font-size:144%;">If someone were to recommend a new flavor or topping to the dish, they might suggest adding a spicy element, such as chili flakes or crushed red pepper, to enhance the taste and make it more flavorful. The current dish consists of a bowl of noodles with chicken, vegetables, and sauce, which is already a delicious and hearty meal. However, adding a spicy component could elevate the dish by providing a contrasting flavor and a kick of heat, making it more exciting and satisfying for those who enjoy spicy foods. This change would alter the overall taste by introducing a new dimension of flavor and complexity to the dish, making it more enjoyable and memorable for the person trying it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.5.1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.5.1.1.1.5.1"><span class="ltx_text" id="S8.5.1.1.1.5.1.1" style="font-size:144%;">VARGPT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.5.1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.5.1.1.1.5.2.1">
<span class="ltx_p" id="S8.5.1.1.1.5.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.5.1.1.1.5.2.1.1.1" style="font-size:144%;">If someone were to recommend a new flavor or topping to the dish, it could be due to a desire to add a new taste dimension or to cater to personal preferences. For example, they might suggest adding a slice of avocado to the dish, which would introduce a creamy, buttery texture and a mild, nutty flavor that complements the richness of the noodles and the savory broth. This addition would alter the overall taste by providing a contrasting texture and a new layer of flavor complexity, enhancing the dish’s overall appeal and making it more satisfying to eat.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.5.1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.5.1.1.1.6.1"><span class="ltx_text" id="S8.5.1.1.1.6.1.1" style="font-size:144%;">VARGPT-v1.1</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S8.5.1.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.5.1.1.1.6.2.1">
<span class="ltx_p" id="S8.5.1.1.1.6.2.1.1" style="width:213.4pt;"><span class="ltx_text" id="S8.5.1.1.1.6.2.1.1.1" style="font-size:144%;">If someone were to recommend adding a new flavor or topping to the dish, it could be a type of meat, such as chicken or beef, to add more protein and depth to the broth. This would alter the overall taste by introducing a new flavor profile and texture, potentially making the dish more savory and satisfying.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a qualitative comparison of the visual understanding capabilities of VARGPT-v1.1 against LLaVA-v1.5-7B.  It showcases examples where users provide visual inputs and questions, and the models generate answers. The comparison highlights VARGPT-v1.1's improved ability to understand and respond to the nuanced aspects of the visual input and corresponding questions, demonstrating superior performance in visual understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 11: The case of visual understanding in VARGPT-v1.1 shows that our VARGPT-v1.1 has achieved better understanding performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02949/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02949/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}