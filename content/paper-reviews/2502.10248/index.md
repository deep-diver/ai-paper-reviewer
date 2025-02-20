---
title: "Step-Video-T2V Technical Report: The Practice, Challenges, and Future of Video Foundation Model"
summary: "Step-Video-T2V: A 30B parameter text-to-video model generating high-quality videos up to 204 frames, pushing the boundaries of video foundation models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Step-Video Team",]
showSummary: true
date: 2025-02-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.10248 {{< /keyword >}}
{{< keyword icon="writer" >}} Guoqing Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.10248" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.10248" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.10248/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-to-video generation models struggle with complex actions, adherence to physical laws, and generating videos with multiple concepts.  Diffusion-based models, while effective, lack explicit causal modeling.  There is also a need for more efficient training and inference strategies.

This paper introduces Step-Video-T2V, a 30B parameter model addressing these challenges.  It utilizes a deep compression VAE for efficient video representation, bilingual text encoders, and a DiT with 3D full attention for improved video generation.  A novel Video-DPO approach enhances visual quality, and a new benchmark dataset, Step-Video-T2V-Eval, enables fair comparisons with other models. The model and dataset are open-sourced, advancing the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Step-Video-T2V achieves state-of-the-art performance in text-to-video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper identifies key challenges and limitations of current diffusion-based video models, highlighting the need for improved causal modeling and physical realism. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Step-Video-T2V and its evaluation benchmark are open-sourced, facilitating further research and innovation in video foundation models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in video generation and foundation models.  It introduces **Step-Video-T2V**, a state-of-the-art model, and shares key insights and challenges in developing video foundation models. The open-sourcing of the model and benchmark dataset accelerates innovation and empowers creators, making it highly relevant to current research trends and opening avenues for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.10248/extracted/6204622/figure/model_architecture.png)

> 🔼 Step-Video-T2V's architecture uses a high-compression Video-VAE to reduce computational costs while preserving video quality.  This VAE achieves 16x16 spatial and 8x temporal compression. User prompts in English or Chinese are processed by two bilingual text encoders. A Diffusion Transformer (DiT) with 3D full attention, trained using Flow Matching, denoises the encoded prompts to generate latent video frames.  Video-based Direct Preference Optimization (Video-DPO) refines the results, reducing artifacts and improving realism and smoothness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Architecture overview of Step-Video-T2V. Videos are represented by a high-compression Video-VAE, achieving 16x16 spatial and 8x temporal compression ratios. User prompts are encoded using two bilingual pre-trained text encoders to handle both English and Chinese. A DiT with 3D full attention is trained using Flow Matching and is employed to denoise input noise into latent frames, with text embeddings and timesteps serving as conditioning factors. To further enhance the visual quality of the generated videos, a video-based DPO approach is applied, which effectively reduces artifacts and ensures smoother, more realistic video outputs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.1">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Layers</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Attention Heads</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Head Dim</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">FFN Dim</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Cross-Attn Dim</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Activation Function</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Normalization</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">48</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">48</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">128</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">24,576</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">(6,144, 1,024)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S4.T1.2.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">GELU-approx</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_tt" id="S4.T1.2.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">RMSNorm</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters used in the Step-Video-T2V model architecture.  It specifies the number of layers, attention heads, dimensions of the hidden layers, feed-forward network (FFN), cross-attention, and the activation and normalization functions used within each layer.
> <details>
> <summary>read the caption</summary>
> Table 1: Hyper-parameters used in Step-Video-T2V.
> </details>





### In-depth insights


#### Video-T2V Practice
The heading 'Video-T2V Practice' suggests a discussion on the practical implementation and application of a text-to-video model.  A thoughtful analysis would delve into the model's training process, highlighting the **challenges in handling large-scale video datasets** and the **optimization techniques** employed to mitigate computational costs.  Crucially, it should examine the model's performance on various benchmarks and its ability to generate high-quality, diverse videos, with an emphasis on **assessing visual quality, motion smoothness, and adherence to user prompts.**  It's important to also discuss limitations, such as the model's capacity to handle complex action sequences or scenarios that require understanding physics, and the **need for better methods to evaluate video quality**, potentially going beyond simple metrics and incorporating human perception. Finally, a section on 'practice' should address real-world deployment and any considerations for optimizing its use in specific applications, potentially mentioning areas of successful implementation and ongoing research.

#### Compression VAE
A compression Variational Autoencoder (VAE) is a crucial component for efficient video generation, particularly when dealing with high-resolution videos and long sequences.  The core idea is to **reduce the dimensionality of the video data** while preserving essential information. This is achieved by encoding the video into a lower-dimensional latent space and then decoding it back.  A well-designed compression VAE significantly reduces computational complexity, enabling training and inference of large-scale video models that would otherwise be infeasible.  The compression ratios achieved are often expressed in terms of spatial and temporal reductions; higher ratios indicate greater compression but potentially more information loss.  Therefore, a major challenge is to **achieve high compression ratios while maintaining high reconstruction quality**. This requires careful design of the encoder and decoder architectures and potentially the use of advanced techniques such as attention mechanisms or specialized convolutional layers. The effectiveness of a compression VAE is usually evaluated by quantitative metrics like PSNR, SSIM, and perceptual metrics like LPIPS or Fréchet Inception Distance (FID), all of which assess the similarity between the original video and the reconstructed one.  The choice of architecture and optimization strategies is crucial in balancing compression and reconstruction quality, impacting both computational efficiency and the overall quality of generated videos. A good compression VAE is a critical enabler for efficient and high-quality video generation, forming a foundation for more advanced models.

#### DPO for Video
Direct Preference Optimization (DPO) presents a compelling approach for enhancing video generation models by incorporating human feedback.  **Instead of relying solely on automated metrics, DPO leverages human preferences to guide the model's learning process.** This allows for a more nuanced and accurate refinement of generated video quality. The process typically involves generating multiple videos for the same prompt and having human annotators rate their preference. This feedback is then used to adjust the model's parameters to favor the generation of preferred videos.  **A key advantage of DPO is its relatively simple implementation**, making it a more accessible method compared to other reinforcement learning techniques. However, **challenges remain in efficiently collecting and utilizing human feedback**, particularly for high-resolution or long-duration videos.  **The scalability of DPO for large-scale video datasets also needs to be carefully considered.** Further research is needed to refine DPO methods, perhaps exploring ways to reduce human annotation requirements, or incorporating more sophisticated reward models to learn effectively from limited feedback.  Ultimately, DPO techniques hold significant promise for improving the overall quality and user satisfaction of video generation models.

#### Future Directions
Future research directions in video foundation models should prioritize several key areas.  **Improving the understanding of causal relationships within videos** is crucial, moving beyond simple mappings between text and video to models that explicitly represent temporal dependencies and physical laws. This will likely involve exploring autoregressive models or hybrid approaches combining autoregressive and diffusion methods.  **Addressing the limitations of current diffusion-based models** such as difficulty with complex action sequences or adherence to physics is another critical direction.  **Developing more effective methods for incorporating human feedback** is vital, ideally reducing reliance on time-consuming and expensive manual annotation.  Reinforcement learning methods offer a promising avenue here. Finally, **efficient training and inference strategies** are essential, considering the massive computational resources required for these models, focusing on innovative compression techniques and optimized architectures.  Advancements in these areas will be instrumental in developing truly versatile and powerful video foundation models capable of handling a wide range of complex tasks.

#### Model Limitations
This research paper does not include a section explicitly titled 'Model Limitations'. However, based on the content of the provided text, several limitations of the Step-Video-T2V model can be inferred.  **The model's performance is heavily reliant on high-quality training data.** Generating high-quality videos requires substantial resources and specialized expertise for data curation and labeling.  The model exhibits difficulties generating videos requiring complex action sequences or adherence to the laws of physics, a limitation inherent to current diffusion-based models.  Further, the model's handling of multiple concepts within a single video remains imperfect, sometimes leading to incomplete or inaccurate results. Finally, current implementations show constraints in handling longer duration videos and generating high-resolution outputs.  **Addressing these limitations would require improvements in data curation, the model architecture, and potentially novel training strategies.** Future work could focus on incorporating more complex causal models into the architecture, utilizing improved data representation techniques, or exploring different training paradigms to enhance performance in specific aspects such as action generation and physical plausibility. These improvements will be crucial in developing a truly comprehensive and versatile video foundation model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.10248/x1.png)

> 🔼 This figure provides a detailed illustration of the Video-VAE architecture, a crucial component of the Step-Video-T2V model. It showcases the encoder and decoder pathways, highlighting the dual-path architecture employed for efficient compression and reconstruction of video data.  Specific components such as convolutional modules, Res3DModules, and downsampling/upsampling operations are clearly depicted, allowing for a comprehensive understanding of the Video-VAE's mechanisms for compressing videos into latent space representations and reconstructing them back into their original format.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture overview of Video-VAE.
> </details>



![](https://arxiv.org/html/2502.10248/extracted/6204622/figure/dit-arch.png)

> 🔼 This figure details the architecture of the Step-Video-T2V model's text encoder and the Diffusion Transformer (DiT) with 3D attention.  The text encoder is bilingual, processing both English and Chinese prompts using Hunyuan-CLIP and Step-LLM.  The DiT incorporates a cross-attention layer to integrate text embeddings with visual features, utilizes 3D full attention for efficient spatial and temporal modeling, and employs adaptive layer normalization (AdaLN) with optimized computation and ROPE-3D positional encoding.
> <details>
> <summary>read the caption</summary>
> Figure 3: The model architecture of our bilingual text encoder and DiT with 3D Attention.
> </details>



![](https://arxiv.org/html/2502.10248/x2.png)

> 🔼 This figure illustrates the process of integrating human feedback into the Step-Video-T2V model to improve the visual quality of generated videos.  It shows the pipeline, beginning with a pool of prompts that are used to generate videos. These videos are then rated by human annotators using a reward model, providing feedback on which videos are preferred and which are not. This feedback is then used to fine-tune the Step-Video-T2V model, resulting in higher quality video outputs. The reward model is trained using labeled data consisting of both positive and negative example videos for various prompts.  The final output is a refined Step-Video-T2V model that generates improved videos based on human preferences.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overall pipeline of incorporating human feedback.
> </details>



![](https://arxiv.org/html/2502.10248/x3.png)

> 🔼 This figure shows two examples of video generation results from the Step-Video-T2V model using the same prompt: 'A ballet dancer practicing in the dance studio'.  Image (a) represents a non-preferred generation, highlighting common issues like artifacts or inconsistencies in the dancer's movements and pose. Image (b) shows a preferred generation, demonstrating improved realism, fluidity of motion, and overall visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 5: We generate different samples with same prompt ('A ballet dancer practicing in the dance studio' in this case), and annotate these samples as non-preferred (a) or preferred (b).
> </details>



![](https://arxiv.org/html/2502.10248/x10.png)

> 🔼 This figure showcases sample video frames generated using the Step-Video-T2V Turbo model.  The key point highlighted is that these high-quality videos were generated with only 10 noise-to-image diffusion steps (NFE). This demonstrates the effectiveness of the model's distillation process for improving computational efficiency during inference while maintaining visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Generated samples with Step-Video-T2V Turbo with 10 NFE.
> </details>



![](https://arxiv.org/html/2502.10248/x11.png)

> 🔼 This figure illustrates the Step-Video-T2V training system's workflow, which involves offline and online stages. The offline stage uses a training emulator to determine the optimal resource allocation and training parallelism strategy.  This plan is then used in the online stage where the training job is deployed across two clusters: training clusters (for the video DiT) and inference clusters (for VAE and Text Encoder). StepRPC, a high-performance RPC framework, ensures efficient communication between these clusters.  StepTelemetry provides multi-dimensional system monitoring and analysis capabilities, which are crucial for identifying potential bottlenecks and failures. The workflow is designed to improve training efficiency and robustness.
> <details>
> <summary>read the caption</summary>
> Figure 7: The workflow of Step-Video-T2V training system.
> </details>



![](https://arxiv.org/html/2502.10248/x12.png)

> 🔼 This figure illustrates the Step-Video-T2V system's hybrid approach to load balancing during training.  The system addresses computational imbalances caused by training on videos and images with varying resolutions. A two-stage process is used: 1) Coarse-grained balancing: Batch sizes are adjusted for different resolutions to achieve rough FLOP (floating point operations) parity across batches. 2) Fine-grained balancing: Image padding is dynamically added to batches to compensate for any residual FLOP differences, ensuring optimal GPU utilization.
> <details>
> <summary>read the caption</summary>
> Figure 8: Load balancing with hybrid granularity.
> </details>



![](https://arxiv.org/html/2502.10248/extracted/6204622/figure/v2_training_loss.png)

> 🔼 This figure details the comprehensive data processing pipeline used to prepare the Step-Video-T2V dataset.  The pipeline consists of several crucial stages:  First, raw video data is segmented into individual clips using scene detection and video splitting techniques. Then, the quality of each clip is assessed using a series of metrics, including aesthetic score, NSFW detection, watermark detection, saturation, blur, black borders, and motion analysis.  Video content is further analyzed for the presence of subtitles, and video-text alignment is checked using CLIP similarity scores. Finally, video clips are organized into clusters based on concepts and filtered to ensure data quality and balance. This rigorous procedure ensures a high-quality dataset for training Step-Video-T2V. 
> <details>
> <summary>read the caption</summary>
> Figure 9: The pipeline of Step-Video-T2V data process.
> </details>



![](https://arxiv.org/html/2502.10248/x13.png)

> 🔼 The figure shows the training loss curves for different stages of the Step-Video-T2V model training process.  Each curve represents a specific stage and uses a different dataset (denoted as s<sub>i</sub>). The x-axis shows the number of training iterations, while the y-axis represents the training loss.  The plot helps visualize how the model's performance improves across various stages and datasets, indicating the effectiveness of the training strategy.
> <details>
> <summary>read the caption</summary>
> Figure 10: Training curve of different training stages, where sisubscript𝑠𝑖s_{i}italic_s start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT denotes the it⁢hsuperscript𝑖𝑡ℎi^{th}italic_i start_POSTSUPERSCRIPT italic_t italic_h end_POSTSUPERSCRIPT dataset used in the corresponding stage.
> </details>



![](https://arxiv.org/html/2502.10248/x14.png)

> 🔼 This figure illustrates the multi-stage data filtering process employed for both the pre-training and post-training phases of the Step-Video-T2V model.  Each stage uses various filters to remove low-quality or unsuitable data. Filters include evaluating aesthetic appeal, blurriness, motion quality, saturation, the presence of watermarks and subtitles, video resolution, and ensuring a balance of concepts.  The final post-training dataset is also refined via manual review. The diagram visually demonstrates how the dataset size decreases at each filtering stage, highlighting the impact of each filter on data quality.
> <details>
> <summary>read the caption</summary>
> Figure 11: Hierarchical data filtering for pre-training and post-training.
> </details>



![](https://arxiv.org/html/2502.10248/x20.png)

> 🔼 The figure displays four frames from a video generated by the Step-Video-T2V model.  The video depicts a Chinese girl in a traditional outfit, smiling confidently. She holds a sign reading 'we will open source.' The background is an ancient, elegant setting, enhancing the scene's overall realistic style and coherence with the prompt. The image showcases the model's ability to generate videos with clear visuals, detailed elements, and accurate text rendering.
> <details>
> <summary>read the caption</summary>
> Figure 12: Four frames sampled from the video generated based on the prompt 'In the video, a Chinese girl is dressed in an exquisite traditional outfit, smiling with a confident and graceful expression. She holds a piece of paper with the words 'we will open source' clearly written on it. The background features an ancient and elegant setting, complementing the girl’s demeanor. The entire scene is clear and has a realistic style.'.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T2.2">
<tr class="ltx_tr" id="S6.T2.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.1.1">TP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.2.1">CP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.3.1">PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.4.1">VPP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.5.1">Checkpointing (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.1.6.1">MFU</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.2.1.1">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.2.2.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">93.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">35.90</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.3">
<td class="ltx_td ltx_align_center" id="S6.T2.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.3.2" style="padding-top:1pt;padding-bottom:1pt;">24</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.3.3" style="padding-top:1pt;padding-bottom:1pt;">93.75</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.3.4" style="padding-top:1pt;padding-bottom:1pt;">35.71</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.2.4.1" rowspan="7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.4.1.1">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.4.2.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.3" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.4" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.5" style="padding-top:1pt;padding-bottom:1pt;">83.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T2.2.4.6.1">35.59</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.5">
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.1" style="padding-top:1pt;padding-bottom:1pt;">2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.2" style="padding-top:1pt;padding-bottom:1pt;">24</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.3" style="padding-top:1pt;padding-bottom:1pt;">72.91</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.4" style="padding-top:1pt;padding-bottom:1pt;">36.06</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.6">
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.1" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.3" style="padding-top:1pt;padding-bottom:1pt;">72.91</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.4" style="padding-top:1pt;padding-bottom:1pt;">35.76</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.7.1.1">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.3" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.4" style="padding-top:1pt;padding-bottom:1pt;">62.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.5" style="padding-top:1pt;padding-bottom:1pt;">31.79</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.8">
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.1" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.3" style="padding-top:1pt;padding-bottom:1pt;">31.25</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.4" style="padding-top:1pt;padding-bottom:1pt;">35.11</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.2.9.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S6.T2.2.9.1.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.9.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.9.3" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.9.4" style="padding-top:1pt;padding-bottom:1pt;">31.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.9.5" style="padding-top:1pt;padding-bottom:1pt;">33.41</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.10.1" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.10.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.10.3" style="padding-top:1pt;padding-bottom:1pt;">11.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.10.4.1">36.47</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of simulations performed using the Step Emulator (SEMU) to estimate the model FLOPS utilization (MFU) under various parallel training strategies.  The simulations were conducted for the 540P video pre-training stage. The table shows the MFU achieved with different combinations of tensor parallelism (TP), context parallelism (CP), pipeline parallelism (PP), virtual pipeline parallelism (VPP), and checkpointing. It helps in identifying the optimal combination for maximum training efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Estimated MFU from SEMU of different parallelism strategies under 540P video pre-training stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.7">
<tr class="ltx_tr" id="S6.T3.7.8">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T3.7.8.1" style="padding-top:1pt;padding-bottom:1pt;">Resolution (F, H, W)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T3.7.8.2" style="padding-top:1pt;padding-bottom:1pt;">TFLOPs per sample</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1">
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="204\times 256\times 256" class="ltx_Math" display="inline" id="S6.T3.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.m1.1a"><mrow id="S6.T3.1.1.1.m1.1.1" xref="S6.T3.1.1.1.m1.1.1.cmml"><mn id="S6.T3.1.1.1.m1.1.1.2" xref="S6.T3.1.1.1.m1.1.1.2.cmml">204</mn><mo id="S6.T3.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.1.1.1.m1.1.1.3" xref="S6.T3.1.1.1.m1.1.1.3.cmml">256</mn><mo id="S6.T3.1.1.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.1.1.1.m1.1.1.4" xref="S6.T3.1.1.1.m1.1.1.4.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.m1.1b"><apply id="S6.T3.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1"><times id="S6.T3.1.1.1.m1.1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1.1"></times><cn id="S6.T3.1.1.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.1.1.1.m1.1.1.2">204</cn><cn id="S6.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.1.1.1.m1.1.1.3">256</cn><cn id="S6.T3.1.1.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.1.1.1.m1.1.1.4">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.m1.1c">204\times 256\times 256</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.m1.1d">204 × 256 × 256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">1,717.20</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.2">
<td class="ltx_td ltx_align_right" id="S6.T3.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="204\times 192\times 320" class="ltx_Math" display="inline" id="S6.T3.2.2.1.m1.1"><semantics id="S6.T3.2.2.1.m1.1a"><mrow id="S6.T3.2.2.1.m1.1.1" xref="S6.T3.2.2.1.m1.1.1.cmml"><mn id="S6.T3.2.2.1.m1.1.1.2" xref="S6.T3.2.2.1.m1.1.1.2.cmml">204</mn><mo id="S6.T3.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.2.2.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.2.2.1.m1.1.1.3" xref="S6.T3.2.2.1.m1.1.1.3.cmml">192</mn><mo id="S6.T3.2.2.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.2.2.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.2.2.1.m1.1.1.4" xref="S6.T3.2.2.1.m1.1.1.4.cmml">320</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.1.m1.1b"><apply id="S6.T3.2.2.1.m1.1.1.cmml" xref="S6.T3.2.2.1.m1.1.1"><times id="S6.T3.2.2.1.m1.1.1.1.cmml" xref="S6.T3.2.2.1.m1.1.1.1"></times><cn id="S6.T3.2.2.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.2.2.1.m1.1.1.2">204</cn><cn id="S6.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.2.2.1.m1.1.1.3">192</cn><cn id="S6.T3.2.2.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.2.2.1.m1.1.1.4">320</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.1.m1.1c">204\times 192\times 320</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.1.m1.1d">204 × 192 × 320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">1,592.61</td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3">
<td class="ltx_td ltx_align_right" id="S6.T3.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="136\times 256\times 256" class="ltx_Math" display="inline" id="S6.T3.3.3.1.m1.1"><semantics id="S6.T3.3.3.1.m1.1a"><mrow id="S6.T3.3.3.1.m1.1.1" xref="S6.T3.3.3.1.m1.1.1.cmml"><mn id="S6.T3.3.3.1.m1.1.1.2" xref="S6.T3.3.3.1.m1.1.1.2.cmml">136</mn><mo id="S6.T3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.3.3.1.m1.1.1.3" xref="S6.T3.3.3.1.m1.1.1.3.cmml">256</mn><mo id="S6.T3.3.3.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.3.3.1.m1.1.1.4" xref="S6.T3.3.3.1.m1.1.1.4.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.1.m1.1b"><apply id="S6.T3.3.3.1.m1.1.1.cmml" xref="S6.T3.3.3.1.m1.1.1"><times id="S6.T3.3.3.1.m1.1.1.1.cmml" xref="S6.T3.3.3.1.m1.1.1.1"></times><cn id="S6.T3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.3.3.1.m1.1.1.2">136</cn><cn id="S6.T3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.3.3.1.m1.1.1.3">256</cn><cn id="S6.T3.3.3.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.3.3.1.m1.1.1.4">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.1.m1.1c">136\times 256\times 256</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.1.m1.1d">136 × 256 × 256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S6.T3.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">1,079.85</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4">
<td class="ltx_td ltx_align_right" id="S6.T3.4.4.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="136\times 192\times 320" class="ltx_Math" display="inline" id="S6.T3.4.4.1.m1.1"><semantics id="S6.T3.4.4.1.m1.1a"><mrow id="S6.T3.4.4.1.m1.1.1" xref="S6.T3.4.4.1.m1.1.1.cmml"><mn id="S6.T3.4.4.1.m1.1.1.2" xref="S6.T3.4.4.1.m1.1.1.2.cmml">136</mn><mo id="S6.T3.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.4.4.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.4.4.1.m1.1.1.3" xref="S6.T3.4.4.1.m1.1.1.3.cmml">192</mn><mo id="S6.T3.4.4.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.4.4.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.4.4.1.m1.1.1.4" xref="S6.T3.4.4.1.m1.1.1.4.cmml">320</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.1.m1.1b"><apply id="S6.T3.4.4.1.m1.1.1.cmml" xref="S6.T3.4.4.1.m1.1.1"><times id="S6.T3.4.4.1.m1.1.1.1.cmml" xref="S6.T3.4.4.1.m1.1.1.1"></times><cn id="S6.T3.4.4.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.4.4.1.m1.1.1.2">136</cn><cn id="S6.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.4.4.1.m1.1.1.3">192</cn><cn id="S6.T3.4.4.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.4.4.1.m1.1.1.4">320</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.1.m1.1c">136\times 192\times 320</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.1.m1.1d">136 × 192 × 320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S6.T3.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">1,004.89</td>
</tr>
<tr class="ltx_tr" id="S6.T3.5.5">
<td class="ltx_td ltx_align_right" id="S6.T3.5.5.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="68\times 256\times 256" class="ltx_Math" display="inline" id="S6.T3.5.5.1.m1.1"><semantics id="S6.T3.5.5.1.m1.1a"><mrow id="S6.T3.5.5.1.m1.1.1" xref="S6.T3.5.5.1.m1.1.1.cmml"><mn id="S6.T3.5.5.1.m1.1.1.2" xref="S6.T3.5.5.1.m1.1.1.2.cmml">68</mn><mo id="S6.T3.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.5.5.1.m1.1.1.3" xref="S6.T3.5.5.1.m1.1.1.3.cmml">256</mn><mo id="S6.T3.5.5.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.5.5.1.m1.1.1.4" xref="S6.T3.5.5.1.m1.1.1.4.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.5.5.1.m1.1b"><apply id="S6.T3.5.5.1.m1.1.1.cmml" xref="S6.T3.5.5.1.m1.1.1"><times id="S6.T3.5.5.1.m1.1.1.1.cmml" xref="S6.T3.5.5.1.m1.1.1.1"></times><cn id="S6.T3.5.5.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.5.5.1.m1.1.1.2">68</cn><cn id="S6.T3.5.5.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.5.5.1.m1.1.1.3">256</cn><cn id="S6.T3.5.5.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.5.5.1.m1.1.1.4">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.5.5.1.m1.1c">68\times 256\times 256</annotation><annotation encoding="application/x-llamapun" id="S6.T3.5.5.1.m1.1d">68 × 256 × 256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S6.T3.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">509.31</td>
</tr>
<tr class="ltx_tr" id="S6.T3.6.6">
<td class="ltx_td ltx_align_right" id="S6.T3.6.6.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="68\times 192\times 320" class="ltx_Math" display="inline" id="S6.T3.6.6.1.m1.1"><semantics id="S6.T3.6.6.1.m1.1a"><mrow id="S6.T3.6.6.1.m1.1.1" xref="S6.T3.6.6.1.m1.1.1.cmml"><mn id="S6.T3.6.6.1.m1.1.1.2" xref="S6.T3.6.6.1.m1.1.1.2.cmml">68</mn><mo id="S6.T3.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.6.6.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.6.6.1.m1.1.1.3" xref="S6.T3.6.6.1.m1.1.1.3.cmml">192</mn><mo id="S6.T3.6.6.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.6.6.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.6.6.1.m1.1.1.4" xref="S6.T3.6.6.1.m1.1.1.4.cmml">320</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.6.6.1.m1.1b"><apply id="S6.T3.6.6.1.m1.1.1.cmml" xref="S6.T3.6.6.1.m1.1.1"><times id="S6.T3.6.6.1.m1.1.1.1.cmml" xref="S6.T3.6.6.1.m1.1.1.1"></times><cn id="S6.T3.6.6.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.6.6.1.m1.1.1.2">68</cn><cn id="S6.T3.6.6.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.6.6.1.m1.1.1.3">192</cn><cn id="S6.T3.6.6.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.6.6.1.m1.1.1.4">320</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.6.6.1.m1.1c">68\times 192\times 320</annotation><annotation encoding="application/x-llamapun" id="S6.T3.6.6.1.m1.1d">68 × 192 × 320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S6.T3.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">475.87</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.7">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T3.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="1\times 256\times 256" class="ltx_Math" display="inline" id="S6.T3.7.7.1.m1.1"><semantics id="S6.T3.7.7.1.m1.1a"><mrow id="S6.T3.7.7.1.m1.1.1" xref="S6.T3.7.7.1.m1.1.1.cmml"><mn id="S6.T3.7.7.1.m1.1.1.2" xref="S6.T3.7.7.1.m1.1.1.2.cmml">1</mn><mo id="S6.T3.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T3.7.7.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.7.7.1.m1.1.1.3" xref="S6.T3.7.7.1.m1.1.1.3.cmml">256</mn><mo id="S6.T3.7.7.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S6.T3.7.7.1.m1.1.1.1.cmml">×</mo><mn id="S6.T3.7.7.1.m1.1.1.4" xref="S6.T3.7.7.1.m1.1.1.4.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.7.7.1.m1.1b"><apply id="S6.T3.7.7.1.m1.1.1.cmml" xref="S6.T3.7.7.1.m1.1.1"><times id="S6.T3.7.7.1.m1.1.1.1.cmml" xref="S6.T3.7.7.1.m1.1.1.1"></times><cn id="S6.T3.7.7.1.m1.1.1.2.cmml" type="integer" xref="S6.T3.7.7.1.m1.1.1.2">1</cn><cn id="S6.T3.7.7.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.7.7.1.m1.1.1.3">256</cn><cn id="S6.T3.7.7.1.m1.1.1.4.cmml" type="integer" xref="S6.T3.7.7.1.m1.1.1.4">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.7.7.1.m1.1c">1\times 256\times 256</annotation><annotation encoding="application/x-llamapun" id="S6.T3.7.7.1.m1.1d">1 × 256 × 256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T3.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">44.99</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the computational cost, measured in FLOPs (floating-point operations), for processing video samples of different resolutions.  The resolution is given as a tuple (frames, height, width).  The table is useful for understanding the computational burden associated with different video resolutions when training or generating videos with the Step-Video-T2V model, and highlights the need for efficient processing techniques to handle high-resolution video data.
> <details>
> <summary>read the caption</summary>
> Table 3: FLOPs per sample of different resolutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.2">
<tr class="ltx_tr" id="S6.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1">Fault</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.1.2.1">
<span class="ltx_p" id="S6.T4.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.2.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.1.3.1">
<span class="ltx_p" id="S6.T4.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.3.1.1.1">Count</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">GPU_DBE_ERROR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.2.2.1">
<span class="ltx_p" id="S6.T4.2.2.2.1.1">GPU</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.2.3.1">
<span class="ltx_p" id="S6.T4.2.2.3.1.1">3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.3">
<td class="ltx_td ltx_align_left" id="S6.T4.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">GPU_LOCKED</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.3.2.1">
<span class="ltx_p" id="S6.T4.2.3.2.1.1">GPU</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.3.3.1">
<span class="ltx_p" id="S6.T4.2.3.3.1.1">1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.4">
<td class="ltx_td ltx_align_left" id="S6.T4.2.4.1" style="padding-top:1pt;padding-bottom:1pt;">LINK_DOWN</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.4.2.1">
<span class="ltx_p" id="S6.T4.2.4.2.1.1">Network</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.4.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.4.3.1">
<span class="ltx_p" id="S6.T4.2.4.3.1.1">1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.5">
<td class="ltx_td ltx_align_left" id="S6.T4.2.5.1" style="padding-top:1pt;padding-bottom:1pt;">NODE_SHUTDOWN</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.5.2.1">
<span class="ltx_p" id="S6.T4.2.5.2.1.1">Host</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.5.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.5.3.1">
<span class="ltx_p" id="S6.T4.2.5.3.1.1">2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.6">
<td class="ltx_td ltx_align_left" id="S6.T4.2.6.1" style="padding-top:1pt;padding-bottom:1pt;">SOFTWARE_FAULT</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.6.2.1">
<span class="ltx_p" id="S6.T4.2.6.2.1.1">Software</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.6.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.6.3.1">
<span class="ltx_p" id="S6.T4.2.6.3.1.1">11</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.7">
<td class="ltx_td ltx_align_left" id="S6.T4.2.7.1" style="padding-top:1pt;padding-bottom:1pt;">CUDA_OOM</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.7.2.1">
<span class="ltx_p" id="S6.T4.2.7.2.1.1">Software</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.7.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.7.3.1">
<span class="ltx_p" id="S6.T4.2.7.3.1.1">7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.2.8.1" style="padding-top:1pt;padding-bottom:1pt;">NON_FATAL</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.8.2.1">
<span class="ltx_p" id="S6.T4.2.8.2.1.1">Hardware</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.8.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.8.3.1">
<span class="ltx_p" id="S6.T4.2.8.3.1.1">4</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the types and frequency of hardware failures that occurred during a month-long Step-Video-T2V training run.  It highlights the low number of fatal failures, emphasizing the system's reliability and resilience.  The categories of failures include GPU-related issues, network problems, and host or software malfunctions. The count for each failure type is presented, showing a relatively low overall number of incidents.
> <details>
> <summary>read the caption</summary>
> Table 4: Over a month of Step-Video-T2V training, fatal hardware failures occurred only 7 times.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.2">
<tr class="ltx_tr" id="S6.T5.2.1">
<td class="ltx_td ltx_border_r ltx_border_t" id="S6.T5.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S6.T5.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Step-Video-T2V</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T5.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">LLaMA3.1</td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Cause of Restart</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.2.2.1">
<span class="ltx_p" id="S6.T5.2.2.2.1.1">Hardware</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.2.3.1">
<span class="ltx_p" id="S6.T5.2.2.3.1.1">Total Unexpected</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.2.4.1">
<span class="ltx_p" id="S6.T5.2.2.4.1.1">Hardware</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.2.5.1">
<span class="ltx_p" id="S6.T5.2.2.5.1.1">Total Unexpected</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.3">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">Avg Daily Restarts/1k GPUs</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.2.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.3.2.1">
<span class="ltx_p" id="S6.T5.2.3.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.2.3.2.1.1.1">0.037</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.2.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.3.3.1">
<span class="ltx_p" id="S6.T5.2.3.3.1.1">0.095</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.2.3.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.3.4.1">
<span class="ltx_p" id="S6.T5.2.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.2.3.4.1.1.1">0.422</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T5.2.3.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.2.3.5.1">
<span class="ltx_p" id="S6.T5.2.3.5.1.1">0.485</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the restart count statistics between Step-Video-T2V and LLaMA3.1 during their respective training periods.  It shows the average daily number of restarts per 1,000 GPUs due to hardware issues and the overall percentage of effective training time achieved. This data highlights the improved system stability and reliability of Step-Video-T2V's training infrastructure compared to LLaMA3.1.
> <details>
> <summary>read the caption</summary>
> Table 5: Restart count statistics during training for Step-Video-T2V and LLaMA3.1 .
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T6.8.8">
<tr class="ltx_tr" id="S8.T6.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.1" style="padding-top:1pt;padding-bottom:1pt;">training stage</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.2" style="padding-top:1pt;padding-bottom:1pt;">dataset</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.3" style="padding-top:1pt;padding-bottom:1pt;">bs/node</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.4" style="padding-top:1pt;padding-bottom:1pt;">learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.5" style="padding-top:1pt;padding-bottom:1pt;">#iters</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.9.6" style="padding-top:1pt;padding-bottom:1pt;">#seen samples</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S8.T6.1.1.1.2.1">Step-1: T2I Pre-training (256px)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(1)\mathrm{B}" class="ltx_Math" display="inline" id="S8.T6.1.1.1.1.m1.1"><semantics id="S8.T6.1.1.1.1.m1.1a"><mrow id="S8.T6.1.1.1.1.m1.1.2" xref="S8.T6.1.1.1.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.1.1.1.1.m1.1.2.2" xref="S8.T6.1.1.1.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.1.1.1.1.m1.1.2.1" xref="S8.T6.1.1.1.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.1.1.1.1.m1.1.2.3.2" xref="S8.T6.1.1.1.1.m1.1.2.cmml"><mo id="S8.T6.1.1.1.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.1.1.1.1.m1.1.2.cmml">(</mo><mn id="S8.T6.1.1.1.1.m1.1.1" xref="S8.T6.1.1.1.1.m1.1.1.cmml">1</mn><mo id="S8.T6.1.1.1.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.1.1.1.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.1.1.1.1.m1.1.2.1a" xref="S8.T6.1.1.1.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.1.1.1.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.1.1.1.1.m1.1.2.4.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.1.1.1.1.m1.1b"><apply id="S8.T6.1.1.1.1.m1.1.2.cmml" xref="S8.T6.1.1.1.1.m1.1.2"><times id="S8.T6.1.1.1.1.m1.1.2.1.cmml" xref="S8.T6.1.1.1.1.m1.1.2.1"></times><ci id="S8.T6.1.1.1.1.m1.1.2.2.cmml" xref="S8.T6.1.1.1.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.1.1.1.1.m1.1.1.cmml" type="integer" xref="S8.T6.1.1.1.1.m1.1.1">1</cn><ci id="S8.T6.1.1.1.1.m1.1.2.4.cmml" xref="S8.T6.1.1.1.1.m1.1.2.4">B</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.1.1.1.1.m1.1c">\mathcal{O}(1)\mathrm{B}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.1.1.1.1.m1.1d">caligraphic_O ( 1 ) roman_B</annotation></semantics></math> images</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">40</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">53k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">0.8B</td>
</tr>
<tr class="ltx_tr" id="S8.T6.2.2.2">
<td class="ltx_td ltx_align_center" id="S8.T6.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(1)\mathrm{B}" class="ltx_Math" display="inline" id="S8.T6.2.2.2.1.m1.1"><semantics id="S8.T6.2.2.2.1.m1.1a"><mrow id="S8.T6.2.2.2.1.m1.1.2" xref="S8.T6.2.2.2.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.2.2.2.1.m1.1.2.2" xref="S8.T6.2.2.2.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.2.2.2.1.m1.1.2.1" xref="S8.T6.2.2.2.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.2.2.2.1.m1.1.2.3.2" xref="S8.T6.2.2.2.1.m1.1.2.cmml"><mo id="S8.T6.2.2.2.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.2.2.2.1.m1.1.2.cmml">(</mo><mn id="S8.T6.2.2.2.1.m1.1.1" xref="S8.T6.2.2.2.1.m1.1.1.cmml">1</mn><mo id="S8.T6.2.2.2.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.2.2.2.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.2.2.2.1.m1.1.2.1a" xref="S8.T6.2.2.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.2.2.2.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.2.2.2.1.m1.1.2.4.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.2.2.2.1.m1.1b"><apply id="S8.T6.2.2.2.1.m1.1.2.cmml" xref="S8.T6.2.2.2.1.m1.1.2"><times id="S8.T6.2.2.2.1.m1.1.2.1.cmml" xref="S8.T6.2.2.2.1.m1.1.2.1"></times><ci id="S8.T6.2.2.2.1.m1.1.2.2.cmml" xref="S8.T6.2.2.2.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.2.2.2.1.m1.1.1.cmml" type="integer" xref="S8.T6.2.2.2.1.m1.1.1">1</cn><ci id="S8.T6.2.2.2.1.m1.1.2.4.cmml" xref="S8.T6.2.2.2.1.m1.1.2.4">B</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.2.2.2.1.m1.1c">\mathcal{O}(1)\mathrm{B}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.2.2.2.1.m1.1d">caligraphic_O ( 1 ) roman_B</annotation></semantics></math> images</td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">40</td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">1e-4</td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">200k</td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">3B</td>
</tr>
<tr class="ltx_tr" id="S8.T6.8.8.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.10.1.1">Total</span></td>
<td class="ltx_td ltx_border_t" id="S8.T6.8.8.10.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.8.8.10.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.10.4.1">253k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.10.5.1">3.8B</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.2" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S8.T6.3.3.3.2.1">Step-2: T2VI Pre-training (192px)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(1)\mathrm{B}" class="ltx_Math" display="inline" id="S8.T6.3.3.3.1.m1.1"><semantics id="S8.T6.3.3.3.1.m1.1a"><mrow id="S8.T6.3.3.3.1.m1.1.2" xref="S8.T6.3.3.3.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.3.3.3.1.m1.1.2.2" xref="S8.T6.3.3.3.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.3.3.3.1.m1.1.2.1" xref="S8.T6.3.3.3.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.3.3.3.1.m1.1.2.3.2" xref="S8.T6.3.3.3.1.m1.1.2.cmml"><mo id="S8.T6.3.3.3.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.3.3.3.1.m1.1.2.cmml">(</mo><mn id="S8.T6.3.3.3.1.m1.1.1" xref="S8.T6.3.3.3.1.m1.1.1.cmml">1</mn><mo id="S8.T6.3.3.3.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.3.3.3.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.3.3.3.1.m1.1.2.1a" xref="S8.T6.3.3.3.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.3.3.3.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.3.3.3.1.m1.1.2.4.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.3.3.3.1.m1.1b"><apply id="S8.T6.3.3.3.1.m1.1.2.cmml" xref="S8.T6.3.3.3.1.m1.1.2"><times id="S8.T6.3.3.3.1.m1.1.2.1.cmml" xref="S8.T6.3.3.3.1.m1.1.2.1"></times><ci id="S8.T6.3.3.3.1.m1.1.2.2.cmml" xref="S8.T6.3.3.3.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.3.3.3.1.m1.1.1.cmml" type="integer" xref="S8.T6.3.3.3.1.m1.1.1">1</cn><ci id="S8.T6.3.3.3.1.m1.1.2.4.cmml" xref="S8.T6.3.3.3.1.m1.1.2.4">B</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.3.3.3.1.m1.1c">\mathcal{O}(1)\mathrm{B}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.3.3.3.1.m1.1d">caligraphic_O ( 1 ) roman_B</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">6e-5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">171k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.6" style="padding-top:1pt;padding-bottom:1pt;">256M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.4.4.4">
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(100)\mathrm{M}" class="ltx_Math" display="inline" id="S8.T6.4.4.4.1.m1.1"><semantics id="S8.T6.4.4.4.1.m1.1a"><mrow id="S8.T6.4.4.4.1.m1.1.2" xref="S8.T6.4.4.4.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.4.4.4.1.m1.1.2.2" xref="S8.T6.4.4.4.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.4.4.4.1.m1.1.2.1" xref="S8.T6.4.4.4.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.4.4.4.1.m1.1.2.3.2" xref="S8.T6.4.4.4.1.m1.1.2.cmml"><mo id="S8.T6.4.4.4.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.4.4.4.1.m1.1.2.cmml">(</mo><mn id="S8.T6.4.4.4.1.m1.1.1" xref="S8.T6.4.4.4.1.m1.1.1.cmml">100</mn><mo id="S8.T6.4.4.4.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.4.4.4.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.4.4.4.1.m1.1.2.1a" xref="S8.T6.4.4.4.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.4.4.4.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.4.4.4.1.m1.1.2.4.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.4.4.4.1.m1.1b"><apply id="S8.T6.4.4.4.1.m1.1.2.cmml" xref="S8.T6.4.4.4.1.m1.1.2"><times id="S8.T6.4.4.4.1.m1.1.2.1.cmml" xref="S8.T6.4.4.4.1.m1.1.2.1"></times><ci id="S8.T6.4.4.4.1.m1.1.2.2.cmml" xref="S8.T6.4.4.4.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.4.4.4.1.m1.1.1.cmml" type="integer" xref="S8.T6.4.4.4.1.m1.1.1">100</cn><ci id="S8.T6.4.4.4.1.m1.1.2.4.cmml" xref="S8.T6.4.4.4.1.m1.1.2.4">M</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.4.4.4.1.m1.1c">\mathcal{O}(100)\mathrm{M}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.4.4.4.1.m1.1d">caligraphic_O ( 100 ) roman_M</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">6e-5</td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">101k</td>
<td class="ltx_td ltx_align_center" id="S8.T6.4.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">151M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.5.5.5">
<td class="ltx_td ltx_align_center" id="S8.T6.5.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(100)\mathrm{M}" class="ltx_Math" display="inline" id="S8.T6.5.5.5.1.m1.1"><semantics id="S8.T6.5.5.5.1.m1.1a"><mrow id="S8.T6.5.5.5.1.m1.1.2" xref="S8.T6.5.5.5.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.5.5.5.1.m1.1.2.2" xref="S8.T6.5.5.5.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.5.5.5.1.m1.1.2.1" xref="S8.T6.5.5.5.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.5.5.5.1.m1.1.2.3.2" xref="S8.T6.5.5.5.1.m1.1.2.cmml"><mo id="S8.T6.5.5.5.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.5.5.5.1.m1.1.2.cmml">(</mo><mn id="S8.T6.5.5.5.1.m1.1.1" xref="S8.T6.5.5.5.1.m1.1.1.cmml">100</mn><mo id="S8.T6.5.5.5.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.5.5.5.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.5.5.5.1.m1.1.2.1a" xref="S8.T6.5.5.5.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.5.5.5.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.5.5.5.1.m1.1.2.4.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.5.5.5.1.m1.1b"><apply id="S8.T6.5.5.5.1.m1.1.2.cmml" xref="S8.T6.5.5.5.1.m1.1.2"><times id="S8.T6.5.5.5.1.m1.1.2.1.cmml" xref="S8.T6.5.5.5.1.m1.1.2.1"></times><ci id="S8.T6.5.5.5.1.m1.1.2.2.cmml" xref="S8.T6.5.5.5.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.5.5.5.1.m1.1.1.cmml" type="integer" xref="S8.T6.5.5.5.1.m1.1.1">100</cn><ci id="S8.T6.5.5.5.1.m1.1.2.4.cmml" xref="S8.T6.5.5.5.1.m1.1.2.4">M</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.5.5.5.1.m1.1c">\mathcal{O}(100)\mathrm{M}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.5.5.5.1.m1.1d">caligraphic_O ( 100 ) roman_M</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center" id="S8.T6.5.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center" id="S8.T6.5.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">6e-5</td>
<td class="ltx_td ltx_align_center" id="S8.T6.5.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">158k</td>
<td class="ltx_td ltx_align_center" id="S8.T6.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">237M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.8.8.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.11.1.1">Total</span></td>
<td class="ltx_td ltx_border_t" id="S8.T6.8.8.11.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S8.T6.8.8.11.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.11.4.1">430k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.8.8.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.11.5.1">644M</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_tt" id="S8.T6.6.6.6.2" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S8.T6.6.6.6.2.1">Step-2: T2VI Pre-training (540px)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.6.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(100)\mathrm{M}" class="ltx_Math" display="inline" id="S8.T6.6.6.6.1.m1.1"><semantics id="S8.T6.6.6.6.1.m1.1a"><mrow id="S8.T6.6.6.6.1.m1.1.2" xref="S8.T6.6.6.6.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.6.6.6.1.m1.1.2.2" xref="S8.T6.6.6.6.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.6.6.6.1.m1.1.2.1" xref="S8.T6.6.6.6.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.6.6.6.1.m1.1.2.3.2" xref="S8.T6.6.6.6.1.m1.1.2.cmml"><mo id="S8.T6.6.6.6.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.6.6.6.1.m1.1.2.cmml">(</mo><mn id="S8.T6.6.6.6.1.m1.1.1" xref="S8.T6.6.6.6.1.m1.1.1.cmml">100</mn><mo id="S8.T6.6.6.6.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.6.6.6.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.6.6.6.1.m1.1.2.1a" xref="S8.T6.6.6.6.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.6.6.6.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.6.6.6.1.m1.1.2.4.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.6.6.6.1.m1.1b"><apply id="S8.T6.6.6.6.1.m1.1.2.cmml" xref="S8.T6.6.6.6.1.m1.1.2"><times id="S8.T6.6.6.6.1.m1.1.2.1.cmml" xref="S8.T6.6.6.6.1.m1.1.2.1"></times><ci id="S8.T6.6.6.6.1.m1.1.2.2.cmml" xref="S8.T6.6.6.6.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.6.6.6.1.m1.1.1.cmml" type="integer" xref="S8.T6.6.6.6.1.m1.1.1">100</cn><ci id="S8.T6.6.6.6.1.m1.1.2.4.cmml" xref="S8.T6.6.6.6.1.m1.1.2.4">M</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.6.6.6.1.m1.1c">\mathcal{O}(100)\mathrm{M}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.6.6.6.1.m1.1d">caligraphic_O ( 100 ) roman_M</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.6.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.6.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">2e-5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.6.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">23k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">17.3M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.7.7.7">
<td class="ltx_td ltx_align_center" id="S8.T6.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(10)\mathrm{M}" class="ltx_Math" display="inline" id="S8.T6.7.7.7.1.m1.1"><semantics id="S8.T6.7.7.7.1.m1.1a"><mrow id="S8.T6.7.7.7.1.m1.1.2" xref="S8.T6.7.7.7.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.7.7.7.1.m1.1.2.2" xref="S8.T6.7.7.7.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.7.7.7.1.m1.1.2.1" xref="S8.T6.7.7.7.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.7.7.7.1.m1.1.2.3.2" xref="S8.T6.7.7.7.1.m1.1.2.cmml"><mo id="S8.T6.7.7.7.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.7.7.7.1.m1.1.2.cmml">(</mo><mn id="S8.T6.7.7.7.1.m1.1.1" xref="S8.T6.7.7.7.1.m1.1.1.cmml">10</mn><mo id="S8.T6.7.7.7.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.7.7.7.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.7.7.7.1.m1.1.2.1a" xref="S8.T6.7.7.7.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.7.7.7.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.7.7.7.1.m1.1.2.4.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.7.7.7.1.m1.1b"><apply id="S8.T6.7.7.7.1.m1.1.2.cmml" xref="S8.T6.7.7.7.1.m1.1.2"><times id="S8.T6.7.7.7.1.m1.1.2.1.cmml" xref="S8.T6.7.7.7.1.m1.1.2.1"></times><ci id="S8.T6.7.7.7.1.m1.1.2.2.cmml" xref="S8.T6.7.7.7.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.7.7.7.1.m1.1.1.cmml" type="integer" xref="S8.T6.7.7.7.1.m1.1.1">10</cn><ci id="S8.T6.7.7.7.1.m1.1.2.4.cmml" xref="S8.T6.7.7.7.1.m1.1.2.4">M</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.7.7.7.1.m1.1c">\mathcal{O}(10)\mathrm{M}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.7.7.7.1.m1.1d">caligraphic_O ( 10 ) roman_M</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center" id="S8.T6.7.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">2</td>
<td class="ltx_td ltx_align_center" id="S8.T6.7.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">1e-5</td>
<td class="ltx_td ltx_align_center" id="S8.T6.7.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">17k</td>
<td class="ltx_td ltx_align_center" id="S8.T6.7.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">8.5M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.8.8.8">
<td class="ltx_td ltx_align_center" id="S8.T6.8.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="\mathcal{O}(1)\mathrm{M}" class="ltx_Math" display="inline" id="S8.T6.8.8.8.1.m1.1"><semantics id="S8.T6.8.8.8.1.m1.1a"><mrow id="S8.T6.8.8.8.1.m1.1.2" xref="S8.T6.8.8.8.1.m1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S8.T6.8.8.8.1.m1.1.2.2" xref="S8.T6.8.8.8.1.m1.1.2.2.cmml">𝒪</mi><mo id="S8.T6.8.8.8.1.m1.1.2.1" xref="S8.T6.8.8.8.1.m1.1.2.1.cmml">⁢</mo><mrow id="S8.T6.8.8.8.1.m1.1.2.3.2" xref="S8.T6.8.8.8.1.m1.1.2.cmml"><mo id="S8.T6.8.8.8.1.m1.1.2.3.2.1" stretchy="false" xref="S8.T6.8.8.8.1.m1.1.2.cmml">(</mo><mn id="S8.T6.8.8.8.1.m1.1.1" xref="S8.T6.8.8.8.1.m1.1.1.cmml">1</mn><mo id="S8.T6.8.8.8.1.m1.1.2.3.2.2" stretchy="false" xref="S8.T6.8.8.8.1.m1.1.2.cmml">)</mo></mrow><mo id="S8.T6.8.8.8.1.m1.1.2.1a" xref="S8.T6.8.8.8.1.m1.1.2.1.cmml">⁢</mo><mi id="S8.T6.8.8.8.1.m1.1.2.4" mathvariant="normal" xref="S8.T6.8.8.8.1.m1.1.2.4.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.8.8.8.1.m1.1b"><apply id="S8.T6.8.8.8.1.m1.1.2.cmml" xref="S8.T6.8.8.8.1.m1.1.2"><times id="S8.T6.8.8.8.1.m1.1.2.1.cmml" xref="S8.T6.8.8.8.1.m1.1.2.1"></times><ci id="S8.T6.8.8.8.1.m1.1.2.2.cmml" xref="S8.T6.8.8.8.1.m1.1.2.2">𝒪</ci><cn id="S8.T6.8.8.8.1.m1.1.1.cmml" type="integer" xref="S8.T6.8.8.8.1.m1.1.1">1</cn><ci id="S8.T6.8.8.8.1.m1.1.2.4.cmml" xref="S8.T6.8.8.8.1.m1.1.2.4">M</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.8.8.8.1.m1.1c">\mathcal{O}(1)\mathrm{M}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.8.8.8.1.m1.1d">caligraphic_O ( 1 ) roman_M</annotation></semantics></math> video clips</td>
<td class="ltx_td ltx_align_center" id="S8.T6.8.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center" id="S8.T6.8.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">1e-5</td>
<td class="ltx_td ltx_align_center" id="S8.T6.8.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">6k</td>
<td class="ltx_td ltx_align_center" id="S8.T6.8.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">1.5M</td>
</tr>
<tr class="ltx_tr" id="S8.T6.8.8.12">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S8.T6.8.8.12.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.12.1.1">Total</span></td>
<td class="ltx_td ltx_border_b ltx_border_t" id="S8.T6.8.8.12.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_b ltx_border_t" id="S8.T6.8.8.12.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S8.T6.8.8.12.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.12.4.1">46k</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S8.T6.8.8.12.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.8.8.12.5.1">27.3M</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters and training data used in the three pre-training stages of the Step-Video-T2V model.  It shows the resolution of the images and videos used, the batch size per node, the learning rate, the number of iterations, and the total number of samples seen during each stage.  The three stages are: Text-to-Image (T2I) pre-training at 256x256 resolution, Text-to-Video/Image (T2VI) pre-training at 192x320 and 544x992 resolutions, and another T2VI pre-training at 540p (544x992).
> <details>
> <summary>read the caption</summary>
> Table 6: Pre-training details of Step-Video-T2V. 256px, 192px, and 540px denote resolutions of 256x256, 192x320, and 544x992, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S9.T7.2">
<tr class="ltx_tr" id="S9.T7.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.1.1.1" style="font-size:70%;">Step-Video-T2V vs. HunyuanVideo (Win-Tie-Loss)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.1.2.1" style="font-size:70%;">Annotator-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.1.3.1" style="font-size:70%;">Annotator-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.1.4.1" style="font-size:70%;">Annotator-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.2.1.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.2.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.2.2.1" style="font-size:70%;background-color:#CCFFCC;">59-22-47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.2.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.2.3.1" style="font-size:70%;background-color:#CCFFCC;">46-47-35</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T7.2.2.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.2.4.1" style="font-size:70%;background-color:#CCFFCC;">54-41-33</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.3.1.1" style="font-size:70%;">Sports</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.3.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.3.2.1" style="font-size:70%;background-color:#CCFFCC;">6-3-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T7.2.3.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.3.3.1" style="font-size:70%;background-color:#CCFFCC;">5-5-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T7.2.3.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.3.4.1" style="font-size:70%;background-color:#CCFFCC;">6-6-0</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.4.1.1" style="font-size:70%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.4.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.4.2.1" style="font-size:70%;background-color:#CCFFCC;">5-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.4.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.4.3.1" style="font-size:70%;background-color:#CCFFCC;">5-4-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.4.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.4.4.1" style="font-size:70%;">3-7-1</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.5.1.1" style="font-size:70%;">Scenery</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.5.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.5.2.1" style="font-size:70%;background-color:#CCFFCC;">5-3-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.5.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.5.3.1" style="font-size:70%;">2-9-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.5.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.5.4.1" style="font-size:70%;background-color:#CCFFCC;">7-1-4</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.6.1.1" style="font-size:70%;">Animals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.6.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.6.2.1" style="font-size:70%;background-color:#FFFFCC;">6-0-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.6.3" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.6.3.1" style="font-size:70%;background-color:#FFFFCC;">3-6-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.6.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.6.4.1" style="font-size:70%;">2-7-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.7.1.1" style="font-size:70%;">Festivals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.7.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.7.2.1" style="font-size:70%;background-color:#CCFFCC;">4-4-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.7.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.7.3.1" style="font-size:70%;background-color:#CCFFCC;">5-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.7.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.7.4.1" style="font-size:70%;background-color:#CCFFCC;">4-5-2</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.8.1.1" style="font-size:70%;">Combined Concepts</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.8.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.8.2.1" style="font-size:70%;background-color:#FFFFCC;">5-2-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.8.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.8.3.1" style="font-size:70%;background-color:#CCFFCC;">6-3-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.8.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.8.4.1" style="font-size:70%;background-color:#CCFFCC;">8-1-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.9.1.1" style="font-size:70%;">Surreal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.9.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.9.2.1" style="font-size:70%;">4-2-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.9.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.9.3.1" style="font-size:70%;background-color:#CCFFCC;">5-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.9.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.9.4.1" style="font-size:70%;background-color:#CCFFCC;">6-2-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.10.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.10.1.1" style="font-size:70%;">People</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.10.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.10.2.1" style="font-size:70%;background-color:#CCFFCC;">6-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.10.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.10.3.1" style="font-size:70%;">3-4-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.10.4" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.10.4.1" style="font-size:70%;background-color:#FFFFCC;">5-2-5</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.11.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.11.1.1" style="font-size:70%;">3D Animation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.11.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.11.2.1" style="font-size:70%;background-color:#CCFFCC;">7-1-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.11.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.11.3.1" style="font-size:70%;background-color:#CCFFCC;">4-5-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.11.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.11.4.1" style="font-size:70%;background-color:#CCFFCC;">6-3-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.12.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.12.1.1" style="font-size:70%;">Cinematography</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.12.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.12.2.1" style="font-size:70%;background-color:#FFFFCC;">5-1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T7.2.12.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.12.3.1" style="font-size:70%;">2-5-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T7.2.12.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.12.4.1" style="font-size:70%;">1-4-6</span></td>
</tr>
<tr class="ltx_tr" id="S9.T7.2.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T7.2.13.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.13.1.1" style="font-size:70%;">Style</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T7.2.13.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.13.2.1" style="font-size:70%;background-color:#CCFFCC;">6-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T7.2.13.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.13.3.1" style="font-size:70%;background-color:#CCFFCC;">6-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T7.2.13.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T7.2.13.4.1" style="font-size:70%;background-color:#CCFFCC;">6-3-3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Step-Video-T2V against HunyuanVideo using Metric-1. Metric-1 involves human annotators comparing video pairs generated by each model for the same prompt, labeling each pair as a win for Step-Video-T2V, a tie, or a loss.  The table shows the win-tie-loss counts for each model across different video categories from the Step-Video-T2V-Eval benchmark.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison with HunyuanVideo using Metric-1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T8.2.1">
<tr class="ltx_tr" id="S9.T8.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.1.1.1" style="font-size:70%;">Step-Video-T2V vs. HunyuanVideo</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.1.2.1" style="font-size:70%;">Instruction Following</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.1.3.1" style="font-size:70%;">Motion Smoothness</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.1.4.1" style="font-size:70%;">Physical Plausibility</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.1.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.1.5.1" style="font-size:70%;">Aesthetic Appeal</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.2.1.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.2.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.2.2.1" style="font-size:70%;background-color:#CCFFCC;">1,273-1,221</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.2.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.2.3.1" style="font-size:70%;background-color:#CCFFCC;">1,407-1,327</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.2.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.2.4.1" style="font-size:70%;background-color:#CCFFCC;">1,417-1,238</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.2.1.2.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.2.5.1" style="font-size:70%;background-color:#CCFFCC;">1,312-1,238</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.3.1.1" style="font-size:70%;">Sports</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.3.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.3.2.1" style="font-size:70%;background-color:#CCFFCC;">130-111</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.3.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.3.3.1" style="font-size:70%;background-color:#CCFFCC;">120-104</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T8.2.1.3.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.3.4.1" style="font-size:70%;background-color:#CCFFCC;">113-99</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.2.1.3.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.3.5.1" style="font-size:70%;background-color:#CCFFCC;">110-98</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.4.1.1" style="font-size:70%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.4.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.4.2.1" style="font-size:70%;">85-92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.4.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.4.3.1" style="font-size:70%;background-color:#CCFFCC;">110-97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.4.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.4.4.1" style="font-size:70%;background-color:#CCFFCC;">107-93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.4.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.4.5.1" style="font-size:70%;background-color:#CCFFCC;">111-90</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.5.1.1" style="font-size:70%;">Scenery</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.5.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.5.2.1" style="font-size:70%;background-color:#CCFFCC;">130-129</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.5.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.5.3.1" style="font-size:70%;background-color:#CCFFCC;">139-126</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.5.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.5.4.1" style="font-size:70%;background-color:#CCFFCC;">134-120</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.5.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.5.5.1" style="font-size:70%;background-color:#CCFFCC;">125-122</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.6.1.1" style="font-size:70%;">Animals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.6.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.6.2.1" style="font-size:70%;">104-106</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.6.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.6.3.1" style="font-size:70%;background-color:#CCFFCC;">123-114</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.6.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.6.4.1" style="font-size:70%;background-color:#CCFFCC;">110-107</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.6.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.6.5.1" style="font-size:70%;">99-108</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.7.1.1" style="font-size:70%;">Festivals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.7.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.7.2.1" style="font-size:70%;background-color:#CCFFCC;">102-91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.7.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.7.3.1" style="font-size:70%;background-color:#CCFFCC;">110-102</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.7.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.7.4.1" style="font-size:70%;background-color:#CCFFCC;">97-90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.7.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.7.5.1" style="font-size:70%;background-color:#CCFFCC;">103-94</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.8.1.1" style="font-size:70%;">Combined Concepts</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.8.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.8.2.1" style="font-size:70%;background-color:#CCFFCC;">132-115</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.8.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.8.3.1" style="font-size:70%;background-color:#CCFFCC;">139-136</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.8.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.8.4.1" style="font-size:70%;background-color:#CCFFCC;">139-135</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.8.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.8.5.1" style="font-size:70%;background-color:#CCFFCC;">118-115</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.9.1.1" style="font-size:70%;">Surreal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.9.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.9.2.1" style="font-size:70%;">99-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.9.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.9.3.1" style="font-size:70%;">138-139</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.9.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.9.4.1" style="font-size:70%;background-color:#CCFFCC;">135-134</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.9.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.9.5.1" style="font-size:70%;">125-126</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.10.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.10.1.1" style="font-size:70%;">People</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.10.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.10.2.1" style="font-size:70%;">115-117</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.10.3" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.10.3.1" style="font-size:70%;background-color:#FFFFCC;">129-129</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.10.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.10.4.1" style="font-size:70%;">148-150</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.10.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.10.5.1" style="font-size:70%;background-color:#CCFFCC;">115-112</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.11.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.11.1.1" style="font-size:70%;">3D Animation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.11.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.11.2.1" style="font-size:70%;background-color:#CCFFCC;">113-109</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.11.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.11.3.1" style="font-size:70%;background-color:#CCFFCC;">137-133</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.11.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.11.4.1" style="font-size:70%;background-color:#CCFFCC;">149-146</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.11.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.11.5.1" style="font-size:70%;background-color:#CCFFCC;">139-135</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.12.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.12.1.1" style="font-size:70%;">Cinematography</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.12.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.12.2.1" style="font-size:70%;background-color:#CCFFCC;">121-117</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.12.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.12.3.1" style="font-size:70%;">121-122</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T8.2.1.12.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.12.4.1" style="font-size:70%;">132-133</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.2.1.12.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.12.5.1" style="font-size:70%;background-color:#CCFFCC;">116-115</span></td>
</tr>
<tr class="ltx_tr" id="S9.T8.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T8.2.1.13.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.13.1.1" style="font-size:70%;">Style</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T8.2.1.13.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.13.2.1" style="font-size:70%;background-color:#CCFFCC;">142-133</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T8.2.1.13.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.13.3.1" style="font-size:70%;background-color:#CCFFCC;">141-125</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T8.2.1.13.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.13.4.1" style="font-size:70%;background-color:#CCFFCC;">153-134</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T8.2.1.13.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T8.2.1.13.5.1" style="font-size:70%;background-color:#CCFFCC;">151-123</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Step-Video-T2V and HunyuanVideo using Metric 2.  Metric 2 involves human evaluation across four dimensions: Instruction Following, Motion Smoothness, Physical Plausibility, and Aesthetic Appeal. Three annotators evaluated each video generated by both models for each prompt in the Step-Video-T2V-Eval benchmark.  For each category within the benchmark, the table shows the aggregated scores from all annotators across all prompts for each dimension, providing a detailed comparison of model performance across multiple aspects of video generation quality.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison with HunyuanVideo using Metric-2. We invited three human annotators to evaluate each video. For each category and evaluation dimension, we aggregated the scores given by all annotators across all prompts within the category for that dimension.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S9.T9.2">
<tr class="ltx_tr" id="S9.T9.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.1.1.1" style="font-size:70%;">Step-Video-T2V vs. T2VTopA (Win-Tie-Loss)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.1.2.1" style="font-size:70%;">Annotator-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.1.3.1" style="font-size:70%;">Annotator-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.1.4.1" style="font-size:70%;">Annotator-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.2.1.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.2.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.2.2.1" style="font-size:70%;">44-13-69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.2.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.2.3.1" style="font-size:70%;">41-13-72</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T9.2.2.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.2.4.1" style="font-size:70%;">46-25-55</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.3.1.1" style="font-size:70%;">Sports</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.3.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.3.2.1" style="font-size:70%;background-color:#CCFFCC;">6-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T9.2.3.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.3.3.1" style="font-size:70%;background-color:#CCFFCC;">7-0-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T9.2.3.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.3.4.1" style="font-size:70%;background-color:#CCFFCC;">7-3-2</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.4.1.1" style="font-size:70%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.4.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.4.2.1" style="font-size:70%;background-color:#CCFFCC;">5-2-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.4.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.4.3.1" style="font-size:70%;background-color:#CCFFCC;">6-1-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.4.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.4.4.1" style="font-size:70%;">4-2-5</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.5.1.1" style="font-size:70%;">Scenery</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.5.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.5.2.1" style="font-size:70%;">1-0-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.5.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.5.3.1" style="font-size:70%;">4-0-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.5.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.5.4.1" style="font-size:70%;">1-2-8</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.6.1.1" style="font-size:70%;">Animals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.6.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.6.2.1" style="font-size:70%;">1-3-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.6.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.6.3.1" style="font-size:70%;">1-3-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.6.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.6.4.1" style="font-size:70%;">3-1-8</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.7.1.1" style="font-size:70%;">Festivals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.7.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.7.2.1" style="font-size:70%;background-color:#CCFFCC;">6-2-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.7.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.7.3.1" style="font-size:70%;background-color:#CCFFCC;">7-2-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.7.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.7.4.1" style="font-size:70%;background-color:#CCFFCC;">5-3-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.8.1.1" style="font-size:70%;">Combined Concepts</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.8.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.8.2.1" style="font-size:70%;">2-0-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.8.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.8.3.1" style="font-size:70%;">1-3-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.8.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.8.4.1" style="font-size:70%;background-color:#CCFFCC;">8-0-4</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.9.1.1" style="font-size:70%;">Surreal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.9.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.9.2.1" style="font-size:70%;">4-1-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.9.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.9.3.1" style="font-size:70%;">3-2-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.9.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.9.4.1" style="font-size:70%;">4-2-5</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.10.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.10.1.1" style="font-size:70%;">People</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.10.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.10.2.1" style="font-size:70%;">2-1-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.10.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.10.3.1" style="font-size:70%;">2-1-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.10.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.10.4.1" style="font-size:70%;background-color:#CCFFCC;">6-1-4</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.11.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.11.1.1" style="font-size:70%;">3D Animation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.11.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.11.2.1" style="font-size:70%;background-color:#FFFFCC;">6-0-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.11.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.11.3.1" style="font-size:70%;">3-0-9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.11.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.11.4.1" style="font-size:70%;background-color:#CCFFCC;">5-3-4</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.12.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.12.1.1" style="font-size:70%;">Cinematography</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.12.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.12.2.1" style="font-size:70%;background-color:#FFFFCC;">5-1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.2.12.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.12.3.1" style="font-size:70%;">4-1-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.2.12.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.12.4.1" style="font-size:70%;">1-3-7</span></td>
</tr>
<tr class="ltx_tr" id="S9.T9.2.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T9.2.13.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.13.1.1" style="font-size:70%;">Style</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T9.2.13.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.13.2.1" style="font-size:70%;background-color:#CCFFCC;">6-1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T9.2.13.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.13.3.1" style="font-size:70%;">3-0-9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T9.2.13.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T9.2.13.4.1" style="font-size:70%;">2-5-5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Step-Video-T2V against the commercial text-to-video generation engine T2VTopA using Metric 1.  Metric 1 involves human evaluation where annotators compare video pairs generated by each model for the same prompt and determine which model produced better quality, resulting in a Win, Tie, or Loss for each comparison.  The table shows the Win/Tie/Loss counts across multiple annotators for each of the 11 categories used in the Step-Video-T2V-Eval benchmark, as well as an overall comparison. Two prompts were excluded from the analysis because T2VTopA failed to generate videos for them.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison with T2VTopA using Metric-1. A total of 126 prompts were evaluated, rather than 128, as T2VTopA rejected 2 prompts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S9.T10.2">
<tr class="ltx_tr" id="S9.T10.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.1.1.1" style="font-size:70%;">Step-Video-T2V vs. T2VTopB (Win-Tie-Loss)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.1.2.1" style="font-size:70%;">Annotator-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.1.3.1" style="font-size:70%;">Annotator-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.1.4.1" style="font-size:70%;">Annotator-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.2.1.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.2.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.2.2.1" style="font-size:70%;">36-35-51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.2.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.2.3.1" style="font-size:70%;background-color:#CCFFCC;">67-10-45</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T10.2.2.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.2.4.1" style="font-size:70%;background-color:#CCFFCC;">55-22-45</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.3.1.1" style="font-size:70%;">Sports</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.3.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.3.2.1" style="font-size:70%;background-color:#CCFFCC;">8-2-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.2.3.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.3.3.1" style="font-size:70%;background-color:#CCFFCC;">10-1-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T10.2.3.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.3.4.1" style="font-size:70%;background-color:#CCFFCC;">8-2-2</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.4.1.1" style="font-size:70%;">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.4.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.4.2.1" style="font-size:70%;">3-4-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.4.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.4.3.1" style="font-size:70%;background-color:#CCFFCC;">7-1-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.4.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.4.4.1" style="font-size:70%;background-color:#CCFFCC;">7-2-1</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.5.1.1" style="font-size:70%;">Scenery</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.5.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.5.2.1" style="font-size:70%;">2-6-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.5.3" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.5.3.1" style="font-size:70%;background-color:#FFFFCC;">5-2-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.5.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.5.4.1" style="font-size:70%;background-color:#CCFFCC;">5-4-3</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.6.1.1" style="font-size:70%;">Animals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.6.2" style="background-color:#FFFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.6.2.1" style="font-size:70%;background-color:#FFFFCC;">5-1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.6.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.6.3.1" style="font-size:70%;">3-1-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.6.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.6.4.1" style="font-size:70%;">2-2-7</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.7.1.1" style="font-size:70%;">Festivals</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.7.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.7.2.1" style="font-size:70%;background-color:#CCFFCC;">6-1-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.7.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.7.3.1" style="font-size:70%;background-color:#CCFFCC;">6-0-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.7.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.7.4.1" style="font-size:70%;">2-4-5</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.8.1.1" style="font-size:70%;">Combined Concepts</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.8.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.8.2.1" style="font-size:70%;">1-4-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.8.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.8.3.1" style="font-size:70%;background-color:#CCFFCC;">6-1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.8.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.8.4.1" style="font-size:70%;">4-2-6</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.9.1.1" style="font-size:70%;">Surreal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.9.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.9.2.1" style="font-size:70%;">2-0-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.9.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.9.3.1" style="font-size:70%;">3-0-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.9.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.9.4.1" style="font-size:70%;">2-1-5</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.10.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.10.1.1" style="font-size:70%;">People</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.10.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.10.2.1" style="font-size:70%;">1-3-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.10.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.10.3.1" style="font-size:70%;">4-1-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.10.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.10.4.1" style="font-size:70%;">3-1-7</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.11.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.11.1.1" style="font-size:70%;">3D Animation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.11.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.11.2.1" style="font-size:70%;background-color:#CCFFCC;">5-3-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.11.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.11.3.1" style="font-size:70%;background-color:#CCFFCC;">11-0-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.11.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.11.4.1" style="font-size:70%;background-color:#CCFFCC;">11-0-1</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.12.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.12.1.1" style="font-size:70%;">Cinematography</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.12.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.12.2.1" style="font-size:70%;">3-3-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.2.12.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.12.3.1" style="font-size:70%;">4-2-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.2.12.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.12.4.1" style="font-size:70%;">3-1-7</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.2.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T10.2.13.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.13.1.1" style="font-size:70%;">Style</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T10.2.13.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.13.2.1" style="font-size:70%;">0-8-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T10.2.13.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.13.3.1" style="font-size:70%;background-color:#CCFFCC;">8-1-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T10.2.13.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T10.2.13.4.1" style="font-size:70%;background-color:#CCFFCC;">8-3-1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Step-Video-T2V's performance against T2VTopB, using Metric-1 which involves human evaluation.  Three annotators independently compared video outputs from both models for 122 prompts (6 prompts were excluded because T2VTopB failed to generate results for them). The results indicate, for each prompt, whether Step-Video-T2V performed better (Win), worse (Loss), or similarly (Tie) to T2VTopB. The overall results are summarized, along with a breakdown for each of the eleven categories evaluated.
> <details>
> <summary>read the caption</summary>
> Table 10: Comparison with T2VTopB using Metric-1. A total of 122 prompts were evaluated, rather than 128, as T2VTopB rejected 6 prompts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T11.2.1">
<tr class="ltx_tr" id="S9.T11.2.1.1">
<td class="ltx_td ltx_border_r ltx_border_t" id="S9.T11.2.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T11.2.1.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.1.2.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T11.2.1.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.1.3.1" style="font-size:70%;">Instruction Following</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T11.2.1.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.1.4.1" style="font-size:70%;">Motion Smoothness</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T11.2.1.1.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.1.5.1" style="font-size:70%;">Physical Plausibility</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T11.2.1.1.6" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.1.6.1" style="font-size:70%;">Aesthetic Appeal</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.2.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.1.1" style="font-size:70%;">Annotator-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.2.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.2.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.3.1" style="font-size:70%;">204</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.2.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.4.1" style="font-size:70%;background-color:#CCFFCC;">210</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.2.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.5.1" style="font-size:70%;background-color:#CCFFCC;">203</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.2.6" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.2.6.1" style="font-size:70%;">187</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.3.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.3.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.3.2.1" style="font-size:70%;background-color:#CCFFCC;">211</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.3.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.3.3.1" style="font-size:70%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.3.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.3.4.1" style="font-size:70%;">198</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.3.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.3.5.1" style="font-size:70%;background-color:#CCFFCC;">196</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.4.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.4.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.4.2.1" style="font-size:70%;">185</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.4.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.4.3.1" style="font-size:70%;">184</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.4.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.4.4.1" style="font-size:70%;">178</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.4.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.4.5.1" style="font-size:70%;">175</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.5.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.1.1" style="font-size:70%;">Annotator-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.5.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.5.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.3.1" style="font-size:70%;">211</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.5.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.4.1" style="font-size:70%;background-color:#CCFFCC;">243</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.5.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.5.1" style="font-size:70%;background-color:#CCFFCC;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.5.6" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.5.6.1" style="font-size:70%;">217</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.6.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.6.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.6.2.1" style="font-size:70%;background-color:#CCFFCC;">241</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.6.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.6.3.1" style="font-size:70%;background-color:#CCFFCC;">243</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.6.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.6.4.1" style="font-size:70%;">242</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.6.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.6.5.1" style="font-size:70%;background-color:#CCFFCC;">228</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.7.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.7.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.7.2.1" style="font-size:70%;">234</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.7.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.7.3.1" style="font-size:70%;">236</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.7.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.7.4.1" style="font-size:70%;">229</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.7.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.7.5.1" style="font-size:70%;">204</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.8.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.1.1" style="font-size:70%;">Annotator-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.8.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.8.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.3.1" style="font-size:70%;">170</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.8.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.4.1" style="font-size:70%;background-color:#CCFFCC;">197</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.8.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.5.1" style="font-size:70%;background-color:#CCFFCC;">172</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.8.6" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.8.6.1" style="font-size:70%;background-color:#CCFFCC;">178</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.9.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.9.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.9.2.1" style="font-size:70%;background-color:#CCFFCC;">177</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.9.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.9.3.1" style="font-size:70%;">177</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.9.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.9.4.1" style="font-size:70%;">153</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.9.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.9.5.1" style="font-size:70%;">171</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.10.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.10.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.10.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.10.2.1" style="font-size:70%;">164</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.10.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.10.3.1" style="font-size:70%;">163</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.10.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.10.4.1" style="font-size:70%;">139</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.10.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.10.5.1" style="font-size:70%;">148</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.11.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.1.1" style="font-size:70%;">Annotator-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.11.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.11.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.3.1" style="font-size:70%;">199</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.11.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.4.1" style="font-size:70%;background-color:#CCFFCC;">232</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.11.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.5.1" style="font-size:70%;background-color:#CCFFCC;">230</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.11.6" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.11.6.1" style="font-size:70%;background-color:#CCFFCC;">225</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.12.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.12.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.12.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.12.2.1" style="font-size:70%;background-color:#CCFFCC;">217</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.12.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.12.3.1" style="font-size:70%;">221</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.12.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.12.4.1" style="font-size:70%;">201</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.12.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.12.5.1" style="font-size:70%;">199</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.13.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.13.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.13.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.13.2.1" style="font-size:70%;">194</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.13.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.13.3.1" style="font-size:70%;">219</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.13.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.13.4.1" style="font-size:70%;">194</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.13.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.13.5.1" style="font-size:70%;">194</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.14">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.14.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.1.1" style="font-size:70%;">Annotator-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.14.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.14.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.3.1" style="font-size:70%;">218</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.14.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.4.1" style="font-size:70%;background-color:#CCFFCC;">225</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.14.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.5.1" style="font-size:70%;background-color:#CCFFCC;">213</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.14.6" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.14.6.1" style="font-size:70%;">211</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.15.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.15.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.15.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.15.2.1" style="font-size:70%;background-color:#CCFFCC;">221</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.15.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.15.3.1" style="font-size:70%;">220</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.15.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.15.4.1" style="font-size:70%;background-color:#CCFFCC;">213</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.15.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.15.5.1" style="font-size:70%;background-color:#CCFFCC;">212</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.16.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.16.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.16.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.16.2.1" style="font-size:70%;">209</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.16.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.16.3.1" style="font-size:70%;">217</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.16.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.16.4.1" style="font-size:70%;">202</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.16.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.16.5.1" style="font-size:70%;">196</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.17">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S9.T11.2.1.17.1" rowspan="3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.1.1" style="font-size:70%;">Annotator-6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.17.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.2.1" style="font-size:70%;">Step-Video-T2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.17.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.3.1" style="font-size:70%;">187</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.17.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.4.1" style="font-size:70%;">213</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T11.2.1.17.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.5.1" style="font-size:70%;">251</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.2.1.17.6" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.17.6.1" style="font-size:70%;">211</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.18.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.18.1.1" style="font-size:70%;">T2VTopA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.18.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.18.2.1" style="font-size:70%;">193</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.18.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.18.3.1" style="font-size:70%;">201</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T11.2.1.18.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.18.4.1" style="font-size:70%;">259</span></td>
<td class="ltx_td ltx_align_center" id="S9.T11.2.1.18.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.18.5.1" style="font-size:70%;">197</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.2.1.19">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S9.T11.2.1.19.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.19.1.1" style="font-size:70%;">T2VTopB</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S9.T11.2.1.19.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.19.2.1" style="font-size:70%;background-color:#CCFFCC;">201</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S9.T11.2.1.19.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.19.3.1" style="font-size:70%;background-color:#CCFFCC;">224</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S9.T11.2.1.19.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.19.4.1" style="font-size:70%;background-color:#CCFFCC;">271</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T11.2.1.19.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T11.2.1.19.5.1" style="font-size:70%;background-color:#CCFFCC;">227</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Step-Video-T2V against two leading commercial text-to-video models in China (T2VTopA and T2VTopB) using Metric 2.  Metric 2 assesses video quality across four dimensions: Instruction Following, Motion Smoothness, Physical Plausibility, and Aesthetic Appeal. Six human annotators evaluated each video, assigning a score (1-5) for each dimension. The table shows the aggregated average scores for each model across all prompts (excluding prompts rejected by any model).  This provides a quantitative comparison of the models' performance on various qualitative aspects of video generation.
> <details>
> <summary>read the caption</summary>
> Table 11: Comparison with T2VTopA and T2VTopB using Metric-2. We invited six human annotators to evaluate each video. For each evaluation dimension, we aggregated the scores given by each annotator across all prompts for that dimension. Prompts that were rejected by any model were excluded from the analysis for all models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T12.2.1">
<tr class="ltx_tr" id="S9.T12.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.1.1.1" style="font-size:70%;">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.1.2" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T12.2.1.1.2.1"></span><span class="ltx_text" id="S9.T12.2.1.1.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="S9.T12.2.1.1.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T12.2.1.1.2.3.1">
<span class="ltx_tr" id="S9.T12.2.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T12.2.1.1.2.3.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">Step-Video-T2V vs. Movie Gen Video</span></span>
<span class="ltx_tr" id="S9.T12.2.1.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T12.2.1.1.2.3.1.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">(Win-Tie-Loss)</span></span>
</span></span><span class="ltx_text" id="S9.T12.2.1.1.2.4"></span><span class="ltx_text" id="S9.T12.2.1.1.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.1.3" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T12.2.1.1.3.1"></span><span class="ltx_text" id="S9.T12.2.1.1.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="S9.T12.2.1.1.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T12.2.1.1.3.3.1">
<span class="ltx_tr" id="S9.T12.2.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T12.2.1.1.3.3.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">Step-Video-T2V vs. HunyuanVideo</span></span>
<span class="ltx_tr" id="S9.T12.2.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T12.2.1.1.3.3.1.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">(Win-Tie-Loss)</span></span>
</span></span><span class="ltx_text" id="S9.T12.2.1.1.3.4"></span><span class="ltx_text" id="S9.T12.2.1.1.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.1.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.1.4.1" style="font-size:70%;"># of Prompts</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.2.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.2.1.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.2.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.2.2.1" style="font-size:70%;">485-315-489</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.2.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.2.3.1" style="font-size:70%;background-color:#CCFFCC;">615-313-361</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T12.2.1.2.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.2.4.1" style="font-size:70%;">1,289</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.3.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.3.1.1" style="font-size:70%;">human</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.3.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.3.2.1" style="font-size:70%;">123-58-160</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T12.2.1.3.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.3.3.1" style="font-size:70%;background-color:#CCFFCC;">181-64-96</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T12.2.1.3.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.3.4.1" style="font-size:70%;">341</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.4.1.1" style="font-size:70%;">physics</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.4.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.4.2.1" style="font-size:70%;">61-54-64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.4.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.4.3.1" style="font-size:70%;background-color:#CCFFCC;">87-47-45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.4.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.4.4.1" style="font-size:70%;">179</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.5.1.1" style="font-size:70%;">unusual activity &amp; subject</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.5.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.5.2.1" style="font-size:70%;background-color:#CCFFCC;">110-74-108</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.5.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.5.3.1" style="font-size:70%;background-color:#CCFFCC;">136-75-81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.5.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.5.4.1" style="font-size:70%;">292</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.6.1.1" style="font-size:70%;">animal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.6.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.6.2.1" style="font-size:70%;">39-37-42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.6.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.6.3.1" style="font-size:70%;background-color:#CCFFCC;">47-30-41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.6.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.6.4.1" style="font-size:70%;">118</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.7.1.1" style="font-size:70%;">scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.7.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.7.2.1" style="font-size:70%;background-color:#CCFFCC;">84-53-63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.7.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.7.3.1" style="font-size:70%;background-color:#CCFFCC;">91-58-51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.7.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.7.4.1" style="font-size:70%;">200</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.8.1.1" style="font-size:70%;">sequential motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.8.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.8.2.1" style="font-size:70%;background-color:#CCFFCC;">9-2-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T12.2.1.8.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.8.3.1" style="font-size:70%;background-color:#CCFFCC;">6-2-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T12.2.1.8.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.8.4.1" style="font-size:70%;">13</span></td>
</tr>
<tr class="ltx_tr" id="S9.T12.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T12.2.1.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.9.1.1" style="font-size:70%;">camera motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T12.2.1.9.2" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.9.2.1" style="font-size:70%;background-color:#CCFFCC;">59-37-50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T12.2.1.9.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.9.3.1" style="font-size:70%;background-color:#CCFFCC;">67-37-42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T12.2.1.9.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T12.2.1.9.4.1" style="font-size:70%;">146</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents a comparison of the performance of Step-Video-T2V against MovieGen Video and HunyuanVideo, using the MovieGen Video benchmark dataset.  The benchmark contains 1003 prompts, but the total number of evaluations is 1289 because some prompts encompass multiple categories. Six human annotators assessed the video generations, providing judgments on several aspects of video quality.  The results show wins, ties, and losses for each model across various categories of prompts (Overall, Human, Physics, Unusual Activity & Subject, Animal, Scene, Sequential Motion, and Camera Motion).
> <details>
> <summary>read the caption</summary>
> Table 12: Comparison of Movie Gen Video and HunyuanVideo using the Movie Gen Video Bench. The total number of evaluations (1,289) is greater than 1,003 due to some prompts having multiple category tags. This evaluation involved six human annotators.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S9.T13.3">
<tr class="ltx_tr" id="S9.T13.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S9.T13.3.3.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text ltx_font_bold" id="S9.T13.3.3.4.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T13.3.3.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text ltx_font_bold" id="S9.T13.3.3.5.1" style="font-size:70%;">Downsample Factor</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T13.1.1.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text ltx_font_bold" id="S9.T13.1.1.1.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S9.T13.1.1.1.1.m1.1"><semantics id="S9.T13.1.1.1.1.m1.1a"><mo id="S9.T13.1.1.1.1.m1.1.1" stretchy="false" xref="S9.T13.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S9.T13.1.1.1.1.m1.1b"><ci id="S9.T13.1.1.1.1.m1.1.1.cmml" xref="S9.T13.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T13.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S9.T13.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T13.2.2.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text ltx_font_bold" id="S9.T13.2.2.2.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S9.T13.2.2.2.1.m1.1"><semantics id="S9.T13.2.2.2.1.m1.1a"><mo id="S9.T13.2.2.2.1.m1.1.1" stretchy="false" xref="S9.T13.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S9.T13.2.2.2.1.m1.1b"><ci id="S9.T13.2.2.2.1.m1.1.1.cmml" xref="S9.T13.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T13.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S9.T13.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T13.3.3.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text ltx_font_bold" id="S9.T13.3.3.3.1" style="font-size:70%;">rFVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S9.T13.3.3.3.1.m1.1"><semantics id="S9.T13.3.3.3.1.m1.1a"><mo id="S9.T13.3.3.3.1.m1.1.1" stretchy="false" xref="S9.T13.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S9.T13.3.3.3.1.m1.1b"><ci id="S9.T13.3.3.3.1.m1.1.1.cmml" xref="S9.T13.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T13.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S9.T13.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S9.T13.3.4.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T13.3.4.1.1" style="font-size:70%;">OpenSora-1.2 (</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" style="font-size:90%;">Zheng et al.</span> <span class="ltx_text" id="S9.T13.3.4.1.2.1.1.1" style="font-size:70%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2502.10248v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S9.T13.3.4.1.3.2.2.1" style="font-size:70%;">)</span></cite><span class="ltx_text" id="S9.T13.3.4.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.4.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.4.2.1" style="font-size:70%;">4 × 8 × 8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.4.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.4.3.1" style="font-size:70%;">0.9126</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.4.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.4.4.1" style="font-size:70%;">31.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.4.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.4.5.1" style="font-size:70%;">20.42</span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.5">
<td class="ltx_td ltx_align_left" id="S9.T13.3.5.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T13.3.5.1.1" style="font-size:70%;">CogvideoX-1.5 (</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" style="font-size:90%;">Yang et al.</span> <span class="ltx_text" id="S9.T13.3.5.1.2.1.1.1" style="font-size:70%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2502.10248v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S9.T13.3.5.1.3.2.2.1" style="font-size:70%;">)</span></cite><span class="ltx_text" id="S9.T13.3.5.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.5.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.5.2.1" style="font-size:70%;">4 × 8 × 8</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.5.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.5.3.1" style="font-size:70%;">0.9373</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.5.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.5.4.1" style="font-size:70%;">38.10</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.5.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.5.5.1" style="font-size:70%;">16.33</span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.6">
<td class="ltx_td ltx_align_left" id="S9.T13.3.6.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T13.3.6.1.1" style="font-size:70%;">HunyuanVideo (</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" style="font-size:90%;">Kong et al.</span> <span class="ltx_text" id="S9.T13.3.6.1.2.1.1.1" style="font-size:70%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2502.10248v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">2025</span></a><span class="ltx_text" id="S9.T13.3.6.1.3.2.2.1" style="font-size:70%;">)</span></cite><span class="ltx_text" id="S9.T13.3.6.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.6.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.6.2.1" style="font-size:70%;">4 × 8 × 8</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.6.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.6.3.1" style="font-size:70%;">0.9710</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.6.4" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.6.4.1" style="font-size:70%;background-color:#CCFFCC;">39.56</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.6.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.6.5.1" style="font-size:70%;">4.17</span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.7">
<td class="ltx_td ltx_align_left" id="S9.T13.3.7.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T13.3.7.1.1" style="font-size:70%;">Cosmos-VAE (</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" style="font-size:90%;">Nvidia</span> <span class="ltx_text" id="S9.T13.3.7.1.2.1.1.1" style="font-size:70%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2502.10248v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">2025</span></a><span class="ltx_text" id="S9.T13.3.7.1.3.2.2.1" style="font-size:70%;">)</span></cite><span class="ltx_text" id="S9.T13.3.7.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.7.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.7.2.1" style="font-size:70%;">4 × 8 × 8</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.7.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.7.3.1" style="font-size:70%;">0.9315</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.7.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.7.4.1" style="font-size:70%;">37.66</span></td>
<td class="ltx_td ltx_align_center" id="S9.T13.3.7.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.7.5.1" style="font-size:70%;">9.10</span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S9.T13.3.8.1" style="padding-top:0.7pt;padding-bottom:0.7pt;">
<span class="ltx_text" id="S9.T13.3.8.1.1" style="font-size:70%;">Cosmos-VAE (</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" style="font-size:90%;">Nvidia</span> <span class="ltx_text" id="S9.T13.3.8.1.2.1.1.1" style="font-size:70%;">(</span><a class="ltx_ref" href="https://arxiv.org/html/2502.10248v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">2025</span></a><span class="ltx_text" id="S9.T13.3.8.1.3.2.2.1" style="font-size:70%;">)</span></cite><span class="ltx_text" id="S9.T13.3.8.1.4" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.8.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.8.2.1" style="font-size:70%;">8 × 16 × 16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.8.3" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.8.3.1" style="font-size:70%;">0.8862</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.8.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.8.4.1" style="font-size:70%;">34.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T13.3.8.5" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.8.5.1" style="font-size:70%;">40.33</span></td>
</tr>
<tr class="ltx_tr" id="S9.T13.3.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S9.T13.3.9.1" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.9.1.1" style="font-size:70%;">Video-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T13.3.9.2" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.9.2.1" style="font-size:70%;">8 × 16 × 16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T13.3.9.3" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.9.3.1" style="font-size:70%;background-color:#CCFFCC;">0.9776</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T13.3.9.4" style="padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.9.4.1" style="font-size:70%;">39.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T13.3.9.5" style="background-color:#CCFFCC;padding-top:0.7pt;padding-bottom:0.7pt;"><span class="ltx_text" id="S9.T13.3.9.5.1" style="font-size:70%;background-color:#CCFFCC;">3.61</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the video reconstruction quality of the proposed Video-VAE model with several existing open-source models using three metrics: SSIM (Structural Similarity Index), PSNR (Peak Signal-to-Noise Ratio), and rFVD (reduced Fréchet Video Distance).  The comparison uses 1000 test videos, and the results demonstrate the ability of Video-VAE to achieve state-of-the-art reconstruction quality even with a significantly higher compression ratio compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table 13: Comparison of reconstruction metrics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.10248/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10248/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}