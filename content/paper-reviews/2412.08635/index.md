---
title: "Multimodal Latent Language Modeling with Next-Token Diffusion"
summary: "LatentLM: a novel multimodal model unifying discrete & continuous data via next-token diffusion, surpassing existing methods in performance & scalability across various tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Microsoft Research",]
showSummary: true
date: 2024-12-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.08635 {{< /keyword >}}
{{< keyword icon="writer" >}} Yutao Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.08635" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.08635" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/multimodal-latent-language-modeling-with-next" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.08635/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multimodal generative models struggle with integrating discrete (text, code) and continuous (image, audio) data, often relying on separate modules leading to information loss and suboptimal performance.  Previous attempts to unify these data types either suffered from lossy quantization or compromised the performance of discrete data.  

LatentLM addresses these shortcomings by using a variational autoencoder (VAE) to represent continuous data as latent vectors, which are then autoregressively generated using a novel 'next-token diffusion' method. The use of causal transformers further enhances performance.  Experiments demonstrate LatentLM's effectiveness across image generation, multimodal LLMs, and text-to-speech, significantly outperforming existing state-of-the-art approaches in various metrics, while also being more scalable.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LatentLM effectively integrates discrete and continuous data using causal transformers and next-token diffusion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LatentLM demonstrates superior performance and scalability compared to existing methods in image generation, text-to-speech synthesis, and multimodal LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} σ-VAE, a novel VAE variant, is proposed to address the variance collapse issue crucial for autoregressive modeling in LatentLM. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in multimodal learning because it introduces a **scalable and efficient approach** for handling both discrete and continuous data within a unified framework.  The **unified interface** offered by LatentLM allows for seamless integration of various modalities, paving the way for more sophisticated and versatile multimodal AI systems. Its success in image generation, text-to-speech, and multimodal LLMs demonstrates its broad applicability and potential to accelerate progress in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2412.08635/x1.png)

> 🔼 The figure illustrates the architecture of Latent Language Modeling (LatentLM).  LatentLM uses causal transformers to process both continuous data (like images, audio, and video) and discrete data (such as text and code). Continuous data is encoded into latent vectors using a variational autoencoder (VAE).  The core innovation is the use of 'next-token diffusion.'  This process autoregressively generates the latent vectors representing the continuous data, one token at a time. This is in contrast to traditional methods which often treat continuous and discrete data separately. The combined approach provides a unified framework for multimodal generation and understanding, enabling seamless integration of various data types within a single model.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latent Language Modeling (LatentLM) seamlessly handles continuous (e.g., image, audio, video) and discrete (e.g., text and code) data using causal Transformers. We introduce next-token diffusion to autoregressively generate the latent vectors one by one. The proposed method provides a general-purpose interface that unifies multimodal generation and understanding.
> </details>





{{< table-caption >}}
| Type | Model | #Params | #Epochs | FID↓ | IS↑ |
|---|---|---|---|---|---| 
| *Non-Causal-Masking Generation* |  |  |  |  |  |
| Diffusion | LDM-4 [53] | 400M | — | 3.60 | 247.7 |
|  | DiT-XL/2 [51] | 675M | 400 | 2.27 | 278.2 |
|  | U-ViT-H/2 [4] | 501M | 400 | 2.29 | 263.9 |
| Masked Generative | MaskGIT [13] | 227M | 300 | 4.02 | 355.6 |
|  | MAR-L [43] | 479M | 800 | 1.78 | 296.0 |
| *Causal-Masking Generation* |  |  |  |  |  |
| Causal-Discrete | VQGAN [18] | 1.4B | 240 | 5.20 | 280.3 |
|  | ViT-VQGAN [79] | 1.7B | 240 | 3.04 | 227.4 |
|  | LlamaGen-XL [66] | 775M | 300 | 2.62 | 244.1 |
|  | LlamaGen-XXL [66] | 1.4B | 300 | 2.34 | 253.9 |
| Causal-Continuous | GIVT-Causal-L+A [70] | 1.67B | 500 | 2.59 | — |
|  | LatentLM-L (This Work) | 479M | 400 | 2.24 | 253.8 |{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of image generation performance on the ImageNet dataset between LatentLM and other state-of-the-art models.  It evaluates both FID (Fréchet Inception Distance) and IS (Inception Score), commonly used metrics for assessing the quality of generated images. The results highlight LatentLM's competitive performance, particularly in comparison to other models using the causal masking generation approach.
> <details>
> <summary>read the caption</summary>
> Table 1: Image generation results on ImageNet [15]. We evaluate FID [27] and IS [62]. LatentLM achieves competitive performance, especially compared with other causal-masking image generation models.
> </details>





### In-depth insights


#### Multimodal Fusion
Multimodal fusion, in the context of this research paper, likely refers to the method of combining information from multiple modalities such as text, images, audio, and video to create a unified representation and understanding.  **The core idea is to leverage the strengths of each modality to compensate for the limitations of others**, improving overall performance in tasks like generation and understanding.  The paper likely explores various fusion strategies, discussing their advantages and disadvantages in detail.  **Success hinges on effective model architecture and training techniques capable of handling the diverse nature of the input data**.  A key aspect would likely involve how the model learns to relate and associate information across modalities.  **The effectiveness of fusion depends heavily on the chosen representation for each modality** and how well these representations are integrated within the model.  The paper may also delve into the computational cost and scalability of different fusion methods, ultimately aiming to improve the efficiency and quality of multimodal processing.  **Evaluation might involve comparisons against unimodal baselines and other multimodal methods**, demonstrating superior performance in tasks benefiting from the integrated information.

#### Diffusion Modeling
Diffusion models are a powerful class of generative models that have achieved state-of-the-art results in various domains, including image generation.  They work by gradually adding noise to data until it becomes pure noise, and then learning to reverse this process, which enables the generation of new data samples.  **The key advantage of diffusion models is their ability to generate high-quality samples with a high degree of diversity.**  However, they often require significant computational resources and training time, making them less accessible for practical applications.  **Recent advancements have focused on improving the efficiency and scalability of diffusion models, such as through the use of more efficient architectures and training techniques.** There is also ongoing research to better understand and control the generation process, allowing users to guide the model towards specific desired outputs, rather than relying solely on random sampling. **Another area of active research involves applying diffusion models to multimodal data, enabling the generation of more complex and realistic data samples that incorporate different types of information.** This opens up exciting possibilities for future applications, such as in generating realistic video, 3D models, or even interactive simulations.

#### σ-VAE Encoding
The concept of "σ-VAE Encoding" suggests a modification to the standard Variational Autoencoder (VAE) framework.  Standard VAEs learn a posterior distribution q(z|x) to represent the input data x in a latent space z, aiming to minimize the reconstruction error and the Kullback-Leibler (KL) divergence between q(z|x) and a prior distribution, typically a standard normal. However, **VAEs can suffer from variance collapse**, where the learned posterior collapses to a low-variance distribution, hindering effective autoregressive generation.  The proposed "σ-VAE" likely addresses this by introducing a fixed variance parameter σ, sampled from a specified distribution (e.g. Normal), for the latent space. This fixed variance prevents the posterior from collapsing, thus **ensuring sufficient variability in the latent representations**.  This is crucial for autoregressive models, which progressively generate the latent variables one by one, as sufficient variance supports the model's ability to capture diversity and avoid the generation of repetitive samples. The use of a fixed variance introduces an additional regularization term in the VAE objective function, striking a balance between reconstruction quality and maintaining the desired variance in the latent space. The choice of the distribution for σ and its hyperparameters are crucial for the effectiveness of this modification, dictating the trade-off between reconstruction accuracy and the level of diversity in latent representations. The success of σ-VAE hinges upon striking this balance effectively, resulting in robust latent representations suitable for autoregressive generation in multimodal contexts.

#### Scalability Analysis
A thorough scalability analysis of a multimodal large language model (MLLM) would involve investigating its performance and resource consumption as the model size, training data volume, and input sequence length increase.  **Crucial aspects would include evaluating inference speed, memory usage, and computational cost.**  The analysis should explore how different architectural choices, like the number of layers, attention heads, and hidden dimensions, affect scalability.  **The impact of various optimization techniques, including quantization and pruning, should be assessed to determine their effectiveness in reducing resource requirements without compromising performance.**  Furthermore, a detailed comparison with state-of-the-art MLLMs would benchmark the model's scalability, highlighting relative strengths and weaknesses.  **Benchmarking should cover various tasks like image generation, text-to-speech, and multimodal understanding to provide a holistic picture of the model's capabilities at different scales.**  Finally, the analysis must quantify the trade-offs between scalability, accuracy, and resource efficiency to guide efficient deployment and scaling strategies for real-world applications.

#### Future Research
Future research directions for multimodal latent language models like LatentLM should prioritize several key areas.  **Improving the efficiency and scalability of the diffusion process** is crucial.  Current methods, while effective, can be computationally expensive, especially for high-resolution data like video.  Exploring more efficient diffusion architectures or sampling techniques is vital.  Furthermore, **expanding the range of modalities** supported by the model is essential. While the paper demonstrates success with text, image, and audio, integrating other modalities such as 3D data, tactile data, and sensor readings is key to true multimodal understanding.  **Addressing the issue of bias and fairness in multimodal generation** is another critical area. LatentLM, like other large language models, is susceptible to biases present in the training data.  Developing methods to mitigate these biases and ensure fair and equitable generation across different modalities is needed. Finally, **research into the theoretical underpinnings of multimodal latent representations** is crucial. While the paper showcases the effectiveness of LatentLM, a deeper theoretical understanding of how these latent spaces capture the relationships between different modalities will allow for better model design and improved performance.  This understanding will pave the way for more robust and reliable multimodal AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.08635/x2.png)

> 🔼 LatentLM unifies the handling of both continuous and discrete data by using a causal Transformer.  Continuous data is first encoded into latent vectors using a σ-VAE (sigma-Variational Autoencoder). Then, the model employs next-token diffusion: a process where a diffusion head autoregressively generates these latent vectors, one at a time, conditioned on the Transformer's previous output states. Finally, a decoder reconstructs the original continuous data from the predicted latent vectors.  Discrete data is processed directly by the Transformer using standard next-token prediction techniques.
> <details>
> <summary>read the caption</summary>
> Figure 2: LatentLM unifies the modeling of continuous and discrete data. We introduce σ𝜎\sigmaitalic_σ-VAE (Section 2.3) to represent continuous data as latent vectors. We perform next-token diffusion (Section 2.1) to autoregressively predict the latent vectors one by one. The diffusion head generates vectors by conditioning on the output states of Transformer. The predicted vectors can be decoded to produce the final outputs.
> </details>



![](https://arxiv.org/html/2412.08635/x3.png)

> 🔼 Figure 3 illustrates the architecture of the proposed σ-VAE, comparing it to the standard VAE.  In contrast to the VAE, which learns the variance of the latent space, σ-VAE uses a fixed variance. This fixed variance, denoted as σ, is sampled from a normal distribution with a mean of 0 and a variance controlled by the hyperparameter Cσ. This modification is crucial for preventing variance collapse, a common issue in VAEs, and helps maintain the stability of the latent space, especially important during the autoregressive generation process within LatentLM. By ensuring a consistent variance, the model becomes less susceptible to exposure bias which negatively impacts the quality of autoregressive generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Compared to variational autoencoder (VAE), σ𝜎\sigmaitalic_σ-VAE uses a fixed variance for the latent space. It avoids variance collapse and makes LatentLM more robust to exposure bias during autoregressive generation. In our method, σ𝜎\sigmaitalic_σ is a scalar that is sampled from 𝒩⁢(0,Cσ)𝒩0subscript𝐶𝜎\mathcal{N}(0,C_{\sigma})caligraphic_N ( 0 , italic_C start_POSTSUBSCRIPT italic_σ end_POSTSUBSCRIPT ) for each example.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/scaling_curve.png)

> 🔼 Figure 4 illustrates the scalability of both Diffusion Transformer (DiT) and LatentLM models by comparing their Fréchet Inception Distance (FID) scores across different model sizes.  The FID score, a metric evaluating the quality of generated images, consistently decreases (improving) as the model size increases for both architectures.  However, LatentLM demonstrates a more substantial reduction in FID with increasing model size compared to DiT, suggesting improved scaling efficiency and overall image generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Scaling curves of DiT and LatentLM. FID [27] consistently becomes better with larger model size.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/fid_combined.png)

> 🔼 This figure displays sample images generated by the LatentLM model after training on the ImageNet dataset.  The images showcase the model's ability to generate high-resolution (384x384 pixels) images.  The specific model architecture and training details are described in Section 3.1.2 of the paper.  The variety of images demonstrates the model's capacity to generate diverse and visually appealing results across different ImageNet categories.
> <details>
> <summary>read the caption</summary>
> Figure 5: Samples of LatentLM trained on ImageNet. The resolution is 384×\times×384. The image is generated by models described in Section 3.1.2.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_bsz128.png)

> 🔼 Figure 6 presents a comparative analysis of image generation performance between Diffusion Transformer (DiT) and LatentLM on the ImageNet dataset.  The key focus is on how different tokenizer variances and classifier-free guidance (CFG) scales affect the FID scores (a lower FID score indicates better image quality). The results reveal that LatentLM significantly benefits from tokenizers with larger variance, unlike DiT.  The figure also highlights the ineffectiveness of tokenizers optimized for previous image diffusion models when used with LatentLM, emphasizing the unique characteristics of LatentLM's architecture.
> <details>
> <summary>read the caption</summary>
> Figure 6: Image generation results of Diffusion Transformer (DiT) [51] and LatentLM on ImageNet. We report FID [27] scores (lower is better) in the settings of different tokenizer variance and CFG [28] scale. The “stars” represent the tokenizers tuned for previous image-level diffusion models [53], which are ineffective for LatentLM. The results indicate that LatentLM favors tokenizers with larger variances.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_XL.png)

> 🔼 This figure compares the inference throughput of Diffusion Transformer (DiT) and LatentLM models with varying model sizes.  It shows that LatentLM's throughput scales more favorably with increasing model size than DiT, demonstrating significant improvements particularly for larger models, which is attributed to LatentLM's more efficient use of computational resources.
> <details>
> <summary>read the caption</summary>
> (a) Throughput with increasing model sizes.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/mllm_fid.png)

> 🔼 This figure shows the inference throughput of the Diffusion Transformer (DiT) and LatentLM models with varying batch sizes.  The throughput is measured on a single H100 GPU, using 20 diffusion inference steps.  The results demonstrate how the throughput of LatentLM scales favorably with increasing batch size, showcasing the model's efficient use of resources compared to DiT.  The graph also includes results for LatentLM with group-query attention (GQA) demonstrating further improvements in throughput.
> <details>
> <summary>read the caption</summary>
> (b) Throughput with increasing batch sizes.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/mllm_ppl.png)

> 🔼 This figure compares the inference throughput (speed of generating outputs) of two different models, Diffusion Transformer (DiT) and LatentLM, under varying conditions.  It shows how the throughput changes with different model sizes (smaller to larger) and different batch sizes (number of inputs processed simultaneously).  The results demonstrate LatentLM's efficiency and scalability, particularly when using larger models and batch sizes. The inclusion of 'GQA' (group-query attention) further enhances LatentLM's performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: We compare the inference throughput of Diffusion Transformer (DiT) [51] and LatentLM in the settings of different model size and batch size. “GQA” stands for group-query attention [2].
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/text-to-image/mountain.png)

> 🔼 Figure 8(a) presents a graph showing the FID (Fréchet Inception Distance) scores for text-to-image generation as the number of training tokens increases.  The lower FID score indicates better image quality. The graph compares the performance of LatentLM against VQ-MLLM (a model using vector quantization for images) and Transfusion (a model combining language modeling and diffusion).  The x-axis represents the number of training tokens (in billions), and the y-axis represents the FID score. This graph demonstrates LatentLM's scalability and superior performance compared to other approaches, showcasing improved image generation with larger datasets.
> <details>
> <summary>read the caption</summary>
> (a) Text-to-image FID [27].
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/text-to-image/city.png)

> 🔼 This figure shows how the perplexity of image-to-text generation changes as the number of training tokens increases.  Perplexity is a measure of how well a language model predicts a sequence; lower perplexity indicates better performance. The graph allows for comparison across different models, revealing trends and relative performance differences in handling image-to-text tasks as training data scales.
> <details>
> <summary>read the caption</summary>
> (b) Image-to-text validation perplexity.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/text-to-image/lake.png)

> 🔼 Figure 8 presents a scalability analysis of multimodal large language models, focusing on the impact of increasing the number of training tokens.  The experiment compares LatentLM's performance against two other methods: vector quantized models (VQ-MLLM) and the Transfusion model.  The evaluation metrics used are FID (Fréchet Inception Distance) scores for text-to-image generation, and perplexity for image-to-text generation, with the MS-COCO dataset serving as the benchmark.  The results visually demonstrate that as the quantity of training tokens increases, LatentLM consistently achieves lower FID scores and perplexity than both VQ-MLLM and Transfusion, highlighting its superior scalability and performance in multimodal generation and understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: We scale up the number of training tokens for multimodal large language models. LatentLM outperforms vector quantized models (VQ-MLLM) and Transfusion [82] for both text-to-image and image-to-text generation. The FID scores are evaluated on MS-COCO [40].
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/text-to-image/house.png)

> 🔼 A photograph depicting a majestic mountain range completely covered in a blanket of pristine, white snow. The image likely showcases a vast, expansive landscape, possibly in a mountainous region known for its snow-covered peaks.  The snow appears undisturbed and fresh, highlighting the beauty and serenity of the natural scene. The image is sharp and detailed, likely taken with professional equipment in good weather conditions.
> <details>
> <summary>read the caption</summary>
> (c) A majestic mountain range covered in snow.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/tts_cfg_scale.png)

> 🔼 The image shows a city street at night, brightly lit by various light sources.  The scene is likely urban, given the presence of buildings and streetlights. The illumination suggests an active, bustling atmosphere, even though no people are visible in the specific image shown.
> <details>
> <summary>read the caption</summary>
> (d) A city street illuminated by lights.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/tts_sampling_steps.png)

> 🔼 An image depicting a serene crystal-clear lake nestled amidst a vibrant autumnal forest. The trees surrounding the lake showcase a rich palette of fall colors, reflecting the tranquility of the scene. The overall mood is peaceful and picturesque, showcasing the beauty of nature during the autumn season.
> <details>
> <summary>read the caption</summary>
> (e) A crystal lake surrounded by autumn trees.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_Large.png)

> 🔼 The image shows a small house, seemingly made of wood, situated in a setting bathed in the warm, golden light of sunset.  The scene is peaceful and evokes a sense of tranquility.
> <details>
> <summary>read the caption</summary>
> (f) A small house in a wooden at sunset.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_3B.png)

> 🔼 Figure 9 presents four examples of images generated by the LatentLM model using text prompts.  Each image showcases the model's ability to generate realistic and detailed visuals based on diverse and concise textual descriptions.  The captions illustrate the range of concepts and styles that LatentLM can effectively translate into visual representations, highlighting its versatility in the text-to-image task.
> <details>
> <summary>read the caption</summary>
> Figure 9: Text-to-image examples of LatentLM.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_7B.png)

> 🔼 This figure shows ablation study results on the effect of classifier-free guidance (CFG) scale on the performance of zero-shot speech synthesis.  The x-axis represents different CFG scales, and the y-axis shows the metrics of SIM (speaker similarity), WER-C (word error rate using Conformer-Transducer), and WER-H (word error rate using HuBERT-Large).  The plot illustrates how varying the CFG scale impacts the quality and accuracy of the generated speech.
> <details>
> <summary>read the caption</summary>
> (a) Results using different CFG scales.
> </details>



![](https://arxiv.org/html/2412.08635/extracted/6062822/figure/inference_13B.png)

> 🔼 This figure shows the effects of varying the number of sampling steps during the inference phase of a diffusion model used for zero-shot speech synthesis.  The x-axis represents the number of sampling steps, while the y-axis displays the resulting values for the speaker similarity (SIM) metric and the word error rate (WER-C).  The results demonstrate how the model's performance changes as the number of inference steps increases.  The plot helps to determine an optimal number of sampling steps that balances performance and computational efficiency.
> <details>
> <summary>read the caption</summary>
> (b) Results using different sampling steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Resolution | FID-50k ↓ | 
|---|---| 
| 256 × 256 | 3.19 | 
| 384 × 384 | **2.51** | {{< /table-caption >}}
> 🔼 This table presents the Fréchet Inception Distance (FID) scores, a metric used to evaluate the quality of generated images, for different image resolutions.  Specifically, it shows how the FID score changes when scaling up the resolution of generated images from 256x256 pixels to 384x384 pixels. A lower FID score indicates better image quality.
> <details>
> <summary>read the caption</summary>
> Table 2: FID [27] of scaling up image resolution.
> </details>

{{< table-caption >}}
| Model | Text Valid PPL ↓ | Text-to-Image FID ↓ | Text-to-Image CLIP ↑ | Image-to-Text MS-COCO ↑ | Image-to-Text VQAv2 ↑ |
|---|---|---|---|---|---| 
| VQ-MLLM | 2.79 | 16.92 | **29.33** | 37.4 | 30.19 |
| Transfusion | 2.74 | 16.10 | 28.66 | 43.4 | 35.36 |
| LatentLM | **2.73** | **14.54** | 28.75 | **54.5** | **38.72** |{{< /table-caption >}}
> 🔼 This table presents a comparison of different multimodal large language models on three key tasks: text language modeling, image-to-text generation, and text-to-image generation.  The models compared include the proposed LatentLM, Transfusion (a state-of-the-art baseline), and VQ-MLLM (which uses vector quantization for image representation).  The evaluation metrics used provide a comprehensive assessment across all three tasks, using perplexity for text modeling, CLIP score for similarity between text and images, CIDEr score for image caption quality (MS-COCO dataset), and accuracy for visual question answering (VQAv2 dataset). This allows for a thorough comparison of the models' performance in handling both discrete and continuous data.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of multimodal large language models on text language modeling, image-to-text, and text-to-image generation. We compare with Transfusion [82] and vector quantized models (VQ-MLLM; i.e., using discrete code to represent images). “PPL” is perplexity. CLIP [54] score measures the similarity. We report CIDEr [76] score for MS-COCO [40] and accuracy for VQAv2 [21].
> </details>

{{< table-caption >}}
| System | Frame Rate (Length/s) ↓ |  | Ref Utterance as Prompt | SIM ↑ | WER-C ↓ | WER-H ↓ | 3s Prefix as Prompt | SIM ↑ | WER-C ↓ | WER-H ↓ |
|---|---|---|---|---|---|---|---|---|---|---|
| Ground Truth | - |  |  | 0.779 | 1.6 | 2.2 |  | 0.668 | 1.6 | 2.2 |
| VALL-E 2 [10] | 75 |  |  | 0.643 | 1.5 | 2.4 |  | 0.504 | 1.6 | 2.3 |
| Voicebox [44] | 100 |  |  | 0.662 | - | 1.9 |  | 0.593 | - | 2.0 |
| MELLE [48] | 62 |  |  | 0.625 | 1.5 | 2.1 |  | 0.508 | 1.5 | 2.0 |
| LatentLM | 15 |  |  | 0.697 | 1.2 | 1.8 |  | 0.571 | 1.4 | 2.0 |
| LatentLM | 7.5 |  |  | 0.656 | 1.2 | 1.7 |  | 0.532 | 1.6 | 2.3 |
| LatentLM | 3.75 |  |  | 0.598 | 1.7 | 2.3 |  | 0.467 | 3.1 | 4.5 |{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of LatentLM's performance against other state-of-the-art models on zero-shot speech synthesis.  The evaluation considers two scenarios: using the entire reference utterance as a prompt, and using only the first 3 seconds of the utterance as a prompt.  The metrics used include Speech Similarity (SIM), Word Error Rate using the Conformer-Transducer model (WER-C), and Word Error Rate using the HuBERT-Large model (WER-H).  The table highlights that LatentLM achieves better results in terms of SIM, WER-C, and WER-H compared to previous systems. A key advantage of LatentLM is its significantly reduced number of decoding steps, leading to much faster inference speed. The results are based on the LibriSpeech test-clean dataset.
> <details>
> <summary>read the caption</summary>
> Table 4: LatentLM outperforms previous systems on zero-shot speech synthesis in both settings. Moreover, the number of decoding steps is much less than others, achieving faster inference speed. The results are reported on LibriSpeech test-clean set. The WER-H and SIM results of VALL-E 2 using 3s prefix as prompt are from [48].
> </details>

{{< table-caption >}}
| Tokenizer | N<sub>q</sub> ↓ | Frame ↓ | Comp. ↑ | Mel Dist. ↓ | PESQ ↑ | STOI ↑ | VISQOL ↑ | UTMOS ↑ |
|---|---|---|---|---|---|---|---|---|
| *Tokenizers with lower compression ratio* |
| Encodec [14] | 32 | 75 | 10 | 0.823 | 3.591 | 0.962 | 4.536 | 3.195 |
| DAC [34] | 32 | 75 | 10 | **0.355** | **4.424** | **0.987** | **4.914** | **3.469** |
| Encodec [14] | 8 | 75 | 40 | 0.987 | 2.687 | 0.925 | 4.258 | 2.656 |
| DAC [34] | 8 | 75 | 40 | 0.707 | 3.329 | 0.941 | 4.485 | 3.133 |
| DAC<sub>low</sub> [59] | 4 | 75 | 80 | 0.753 | 3.107 | 0.938 | 4.391 | 3.453 |
| DAC<sub>low</sub> [59] | 2 | 75 | 160 | 0.916 | 2.269 | 0.896 | 3.981 | 3.297 |
| Mimi [17] | 8 | 12.5 | 240 | 0.987 | 3.217 | 0.946 | 4.332 | 3.375 |
| *Tokenizers with higher compression ratio* |
| WavTokenizer [31] | 1 | 75 | 320 | 0.871 | 2.266 | 0.891 | 4.120 | 3.432 |
| Mimi [17] | 4 | 12.5 | 480 | 1.458 | 1.568 | 0.826 | 3.390 | 2.652 |
| WavTokenizer [31] | 1 | 40 | 600 | 1.037 | 1.670 | 0.834 | 3.782 | 3.053 |
| σ-VAE<sub>32</sub> | 1 | 15 | 1600 | 0.813 | 2.724 | 0.926 | 4.268 | 3.491 |
| σ-VAE<sub>64</sub> | 1 | 7.5 | 3200 | **0.798** | **2.756** | **0.929** | **4.289** | **3.505** |
| σ-VAE<sub>128</sub> | 1 | 3.75 | 6400 | 0.852 | 2.533 | 0.916 | 4.165 | 3.460 |{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of various audio codec models, focusing on their compression ratios, reconstruction quality, and other relevant metrics.  The models are evaluated on the LibriTTS test-other dataset.  The table highlights the performance of the σ-VAE tokenizer, demonstrating its ability to achieve high compression ratios while maintaining good reconstruction quality.  The compression ratio is calculated by dividing the audio sample rate by the number of quantizers (Nq) and the frame rate.  The latent dimension of the tokenizer is also specified (e.g., σ-VAE32 indicates a latent dimension of 32).
> <details>
> <summary>read the caption</summary>
> Table 5: The σ𝜎\sigmaitalic_σ-VAE tokenizers obtain competitive reconstruction quality while having high compression ratio. We report results on the LibriTTS test-other set. “Nqsubscript𝑁𝑞N_{q}italic_N start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT” represents the number of quantizers. We define the compression ratio as the audio sample rate divided by Nqsubscript𝑁𝑞N_{q}italic_N start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT and the frame rate. “σ𝜎\sigmaitalic_σ-VAE32” denotes that the latent dimension of the tokenizer is 32.
> </details>

{{< table-caption >}}
| Frame | Rate |
|---|---|{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different compression ratios and latent dimensions within the σ-VAE (sigma-Variational Autoencoder) component of the LatentLM model on both the quality of the tokenizer's reconstruction of speech data and the performance of zero-shot speech synthesis.  It shows how changes in these hyperparameters affect various metrics like Mel-cepstral distance, speaker similarity (SIM), and word error rate (WER), providing insights into the trade-offs between compression efficiency and speech generation quality.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation results of different σ𝜎\sigmaitalic_σ-VAE compression ratios and latent dimensions. We report tokenizer reconstruction quality and zero-shot speech synthesis.
> </details>

{{< table-caption >}}
| Comp. | Ratio |
|---|---|{{< /table-caption >}}
> 🔼 This table details the model architecture configurations used in the scalability experiments of Section 3.1.2.  It lists the model size (in parameters), the hidden dimension of the Transformer layers, the number of layers, the number of attention heads in each layer, and the learning rate used during training.  These different configurations allowed the authors to assess how the performance of their model scales with increasing size and complexity.
> <details>
> <summary>read the caption</summary>
> Table 7: Model size and hyperparameters used for the scaling experiments in Section 3.1.2.
> </details>

{{< table-caption >}}
| Mel | Dist. |
|---|---|{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used to train the multimodal large language models described in Section 3.2 of the paper.  It includes the number of layers, hidden size, feedforward network (FFN) size, vocabulary size, number of attention heads, Adam optimizer beta parameters, learning rate, batch size, warmup steps, weight decay, and number of head layers.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparameters used for multimodal large language models in Section 3.2.
> </details>

{{< table-caption >}}
| Compression Ratio | Frame Rate | Latent Dimension |  σ-VAE Reconstruction  |  | Zero-Shot TTS | | 
|---|---|---|---|---|---|---|---|---|
| **640 ×** | 37.5 | 16  |  | Mel Dist. ↓ | SIM ↑ | WER-C ↓ |  |  |
| **1600 ×** | 15 | 16 |  | 0.929 | 0.866 | 1.9 |  | 0.655 | 1.4 |
| **1600 ×** | 15 | 16 |  | 1.080 | 0.700 | 2.7 |  | 0.545 | 1.6 |
| **1600 ×** | 15 | 32 |  | 0.950 | 0.870 | 1.9 |  | 0.661 | 1.5 |{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the training of the text-to-speech synthesis model described in Section 3.3 of the paper.  It includes specifications for the number of layers, hidden layer size, feed-forward network (FFN) size, number of attention heads, Adam optimizer parameters (beta1 and beta2), learning rate, learning rate scheduling method, batch size, number of warmup steps during training, weight decay, and the number of layers in the diffusion head.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyperparameters used for text-to-speech synthesis in Section 3.3.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.08635/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.08635/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}