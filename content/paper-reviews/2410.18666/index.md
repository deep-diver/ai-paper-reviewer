---
title: "DreamClear: High-Capacity Real-World Image Restoration with Privacy-Safe Dataset Curation"
summary: "DreamClear: a high-capacity image restoration model, uses a dual-prompt learning pipeline to create a large-scale dataset and achieves photorealistic restoration of real-world low-quality images."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-29"]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18666 {{< /keyword >}}

### TL;DR


{{< lead >}}

Real-world image restoration (IR) faces challenges due to the **lack of high-capacity models and comprehensive datasets**. Existing datasets are limited in size and diversity, hindering the development of robust models.  Furthermore, collecting real-world paired data for training is laborious and raises copyright and privacy concerns. Web scraping, a common data acquisition method, often involves copyright infringement and privacy violations. 

This paper introduces a dual strategy to address these issues.  First, it presents GenIR, a privacy-safe data curation pipeline. GenIR uses text-to-image (T2I) diffusion models and large language models (LLMs) to create high-quality, privacy-safe images and their corresponding text descriptions. This is followed by a dual-prompt learning stage to fine-tune the model for IR and filtering the generated data based on quality and compliance.  The resulting dataset comprises one million high-quality images. Second, a new high-capacity model called DreamClear is presented which utilizes the generative priors of T2I models and multimodal LLMs for superior image restoration results. It outperforms state-of-the-art methods on various benchmarks.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18666" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18666" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in image restoration and computer vision due to its **novel dual strategy** addressing data scarcity and model limitations. The **privacy-safe dataset creation method** and the **high-capacity, robust restoration model** offer significant advancements, impacting various downstream tasks and prompting further exploration of large-scale synthetic data in IR.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GenIR, a novel privacy-safe dataset curation pipeline, overcomes existing dataset limitations by creating a large-scale dataset of one million high-quality images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DreamClear, a high-capacity image restoration model based on Diffusion Transformers, uses a dual-branch architecture and a Mixture of Adaptive Modulator (MoAM) to handle diverse real-world degradations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DreamClear achieves state-of-the-art performance on both synthetic and real-world image restoration benchmarks, demonstrating its effectiveness and generalizability. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18666/figures_1_0.png)

> 🔼 Figure 1 shows the image restoration results of DreamClear on real-world samples and with diverse degradations, demonstrating its superior performance compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>





![](https://ai-paper-reviewer.com/2410.18666/charts_8_0.png)

> 🔼 The chart displays the results of a user study comparing different image restoration models, showing that DreamClear is highly preferred for image quality.
> <details>
> <summary>read the caption</summary>
> Figure 5: User study. Vote percentage denotes average user preference per model. The Top-K ratio indicates the proportion of images preferred by top K users. Our model is highly preferred, with most images being rated as top quality by the majority.
> </details>





{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Metrics</td><td>GT</td><td>Zoomed LQ</td><td>BSRGAN</td><td>Real- ESRGAN</td><td>SwinIR- GAN</td><td>DASR</td><td>StableSR</td><td>DiffBIR</td><td>ResShift</td><td>SinSR</td><td>SeeSR</td><td>SUPIR</td><td>DreamClear</td></tr><tr><td>Object Detection (APb)</td><td>49.0</td><td>7.4</td><td>11.0</td><td>12.8</td><td>11.8</td><td>10.5</td><td>16.9</td><td>18.7</td><td>15.6</td><td>13.8</td><td>18.2</td><td>16.6</td><td>19.3</td></tr><tr><td>Object Detection (AP㊿)</td><td>70.6</td><td>12.0</td><td>17.6</td><td>20.7</td><td>18.9</td><td>17.0</td><td>26.7</td><td>29.9</td><td>25.0</td><td>22.3</td><td>29.1</td><td>27.2</td><td>30.8</td></tr><tr><td>Object Detection (AP%)</td><td>53.8</td><td>7.5</td><td>11.4</td><td>13.1</td><td>12.1</td><td>10.7</td><td>17.6</td><td>19.4</td><td>15.9</td><td>14.2</td><td>18.9</td><td>17.0</td><td>19.8</td></tr><tr><td>Instance Segmentation (APm)</td><td>43.9</td><td>6.4</td><td>9.6</td><td>11.3</td><td>10.2</td><td>9.3</td><td>14.6</td><td>16.2</td><td>13.6</td><td>12.0</td><td>15.9</td><td>14.1</td><td>16.7</td></tr><tr><td>Instance Segmentation (APm)</td><td>67.7</td><td>11.2</td><td>16.4</td><td>19.3</td><td>17.5</td><td>15.9</td><td>24.6</td><td>27.5</td><td>23.3</td><td>20.6</td><td>26.6</td><td>24.5</td><td>28.2</td></tr><tr><td>Instance Segmentation (AP7%)</td><td>47.3</td><td>6.3</td><td>9.7</td><td>11.5</td><td>10.2</td><td>9.4</td><td>14.9</td><td>16.6</td><td>13.7</td><td>12.1</td><td>16.1</td><td>14.0</td><td>16.8</td></tr><tr><td>Semantic Segmentation (mloU)</td><td>50.4</td><td>11.5</td><td>18.6</td><td>17.3</td><td>14.3</td><td>30.4</td><td>19.6</td><td>23.6</td><td>29.7</td><td>19.6</td><td>26.9</td><td>27.7</td><td>31.9</td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 presents quantitative results of object detection, instance segmentation, and semantic segmentation on COCO val2017 and ADE20K benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation on COCO val2017 (object detection & instance segmentation) and ADE20K (semantic segmentation).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18666/figures_4_0.png)

> 🔼 Figure 2 illustrates the three-stage GenIR pipeline for privacy-safe dataset curation, encompassing image-text pair construction, dual-prompt fine-tuning, and data generation and filtering.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of the three-stage GenIR pipeline, which includes (a) Image-Text Pairs Construction, (b) Dual-Prompt Based Fine-Tuning, and (c) Data Generation & Filtering.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_6_0.png)

> 🔼 The figure illustrates the architecture of the DreamClear model, highlighting its dual-branch structure with LQ and reference branches, adaptive modulator, and mixture of experts for handling diverse real-world degradations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of the proposed DreamClear. DreamClear adopts a dual-branch structure, using Mixture of Adaptive Modulator to merge LQ features and Reference features. We utilize MLLM to generate detailed text prompt as the guidance for T2I model.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_8_0.png)

> 🔼 Figure 1 presents a comparison of image restoration results from DreamClear and several state-of-the-art methods on real-world low-quality images with diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_9_0.png)

> 🔼 DreamClear's architecture uses a dual-branch structure with a Mixture of Adaptive Modulators to combine low-quality and reference features, guided by detailed text prompts from a large language model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of the proposed DreamClear. DreamClear adopts a dual-branch structure, using Mixture of Adaptive Modulator to merge LQ features and Reference features. We utilize MLLM to generate detailed text prompt as the guidance for T2I model.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_0.png)

> 🔼 Figure 1 shows examples of image restoration results using DreamClear on real-world low-quality images, demonstrating its superior performance compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_1.png)

> 🔼 Figure 1 shows the visual results of DreamClear on real-world low-quality images compared with other state-of-the-art image restoration models.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_2.png)

> 🔼 Figure 1 shows visual comparisons of DreamClear's image restoration performance on real-world low-quality images against other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_3.png)

> 🔼 Figure 1 shows a comparison of image restoration results using DreamClear and other state-of-the-art methods on real-world low-quality images with diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_4.png)

> 🔼 Figure 1 shows the visual comparison results of DreamClear with other state-of-the-art image restoration methods on real-world low-quality images with diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_5.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to produce photorealistic restorations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_6.png)

> 🔼 Figure 1 shows image restoration results of DreamClear on several real-world low-quality images compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_16_7.png)

> 🔼 Figure 1 shows the qualitative results of DreamClear on real-world low-quality images compared to other state-of-the-art image restoration models.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_0.png)

> 🔼 Figure 1 shows the results of DreamClear on real-world low-quality images compared to other state-of-the-art models, demonstrating its superior performance in image restoration across various degradation levels.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_1.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to achieve photorealistic restoration.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_2.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to produce photorealistic restorations compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_3.png)

> 🔼 Figure 1 shows the image restoration results of DreamClear on real-world samples and with diverse degradations, outperforming state-of-the-art diffusion-based models.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_4.png)

> 🔼 Figure 1 presents a comparison of image restoration results using different models, demonstrating DreamClear's superiority in restoring real-world low-quality images to photorealistic quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_17_5.png)

> 🔼 Figure 1 shows the visual comparisons of DreamClear's image restoration results on real-world low-quality images with diverse degradations against other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_18_0.png)

> 🔼 The figure visually compares images generated by a pre-trained text-to-image diffusion model and the GenIR pipeline, showcasing GenIR's improvement in texture and realism.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visual comparison of images generated using the pre-trained T2I model and GenIR. Our proposed GenIR produces images with enhanced texture and more realistic details, exhibiting less blurring and distortion. This makes it better suited for training real-world IR models.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_0.png)

> 🔼 Figure 1 shows visual comparisons of DreamClear's image restoration results on real-world low-quality images with various degradation types against several state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_1.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to produce photorealistic restorations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_2.png)

> 🔼 Figure 1 presents qualitative comparisons of DreamClear's image restoration results on real-world low-quality images against several state-of-the-art methods, showcasing its superior performance in handling diverse degradations and producing photorealistic outputs.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_3.png)

> 🔼 Figure 1 shows example results of image restoration using DreamClear on real-world low-quality images, demonstrating its ability to outperform state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_4.png)

> 🔼 Figure 1 shows a comparison of image restoration results on real-world samples using various state-of-the-art methods, highlighting DreamClear's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_5.png)

> 🔼 Figure 1 shows image restoration results of DreamClear on real-world samples with various degradations, demonstrating its superior performance compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_6.png)

> 🔼 Figure 1 shows the visual comparisons of DreamClear with other state-of-the-art image restoration models on real-world low-quality images with diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_7.png)

> 🔼 Figure 1 shows examples of real-world low-quality images and their corresponding photorealistic restorations produced by the DreamClear model, highlighting its superior performance compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_8.png)

> 🔼 Figure 1 presents a qualitative comparison of DreamClear with other state-of-the-art image restoration models on real-world low-quality (LQ) images, showcasing its superior performance in various degradation scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_9.png)

> 🔼 Figure 1 shows the visual comparison of the image restoration results of DreamClear with other state-of-the-art methods on real-world low-quality images with diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_10.png)

> 🔼 Figure 1 shows the performance of DreamClear on real-world low-quality images compared to other state-of-the-art image restoration models.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_19_11.png)

> 🔼 Figure 1 shows image restoration results of DreamClear compared with other state-of-the-art methods on both real-world samples and diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_0.png)

> 🔼 Figure 1 shows examples of real-world low-quality images and their corresponding photorealistic restorations produced by the DreamClear model, highlighting its superior performance compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_1.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to produce photorealistic restorations that outperform state-of-the-art diffusion-based methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_2.png)

> 🔼 Figure 1 shows the visual comparison of DreamClear's image restoration results on real-world low-quality images with those of other state-of-the-art methods, demonstrating its superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_3.png)

> 🔼 Figure 1 shows the qualitative results of DreamClear on real-world low-quality images compared to other state-of-the-art methods, highlighting its superior performance in handling diverse degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_4.png)

> 🔼 Figure 1 shows visual comparisons of image restoration results using DreamClear and other state-of-the-art methods on both real-world samples and images with various degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_5.png)

> 🔼 Figure 1 shows example results of image restoration on real-world samples with diverse degradations, comparing DreamClear's output to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_6.png)

> 🔼 Figure 11 presents a visual comparison of real-world image restoration results from several state-of-the-art methods, including the proposed DreamClear model.
> <details>
> <summary>read the caption</summary>
> Figure 11: Visual comparisons on real-world benchmarks (1/3). Please zoom in for a better view.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_7.png)

> 🔼 Figure 1 shows a comparison of image restoration results using various methods on real-world low-quality (LQ) images, highlighting the superior performance of the proposed DreamClear model.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_8.png)

> 🔼 Figure 1 presents qualitative comparisons of DreamClear's image restoration capabilities on real-world low-quality images against other state-of-the-art methods, showcasing its superior performance in handling various degradations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_9.png)

> 🔼 Figure 1 shows example results of image restoration on real-world samples and with diverse degradations, demonstrating DreamClear's superior performance over other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_10.png)

> 🔼 Figure 1 shows examples of real-world low-quality images restored using DreamClear, demonstrating its ability to handle various degradations and achieve photorealistic results.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



![](https://ai-paper-reviewer.com/2410.18666/figures_21_11.png)

> 🔼 Figure 1 shows example results of DreamClear on real-world low-quality images, demonstrating its ability to produce photorealistic restorations.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present DreamClear, a high-capacity image restoration model that delivers photorealistic restoration of real-world LQ images, outperforming SOTA diffusion-based models in handling diverse degradations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td></td><td>LPIPS ↓</td><td>DISTS ↓</td><td>FID ↓ I</td><td>MANIQA ↑</td><td>MUSIQ ↑</td><td>CLIPIQA ↑</td><td>APb</td><td>APm</td><td>mloU</td></tr><tr><td>Mixture of AM</td><td>0.3657</td><td>0.1637</td><td>20.61</td><td>0.4320</td><td>68.44</td><td>0.6963</td><td>19.3</td><td>16.7</td><td>31.9</td></tr><tr><td>AM</td><td>0.3981</td><td>0.1843</td><td>25.75</td><td>0.4067</td><td>66.18</td><td>0.6646</td><td>18.0</td><td>15.6</td><td>28.6</td></tr><tr><td>Cross-Attention</td><td>0.4177</td><td>0.2016</td><td>29.74</td><td>0.3785</td><td>63.21</td><td>0.6497</td><td>17.2</td><td>15.1</td><td>26.3</td></tr><tr><td>Zero-Linear</td><td>0.4082</td><td>0.1976</td><td>29.89</td><td>0.4122</td><td>66.11</td><td>0.6673</td><td>17.6</td><td>15.3</td><td>27.2</td></tr><tr><td>Dual-Branch</td><td>0.3657</td><td>0.1637</td><td>20.61</td><td>0.4320</td><td>68.44</td><td>0.6963</td><td>19.3</td><td>16.7</td><td>31.9</td></tr><tr><td>w/o Reference Branch</td><td>0.4207</td><td>0.2033</td><td>30.91</td><td>0.3985</td><td>64.04</td><td>0.6582</td><td>15.9</td><td>14.0</td><td>24.7</td></tr><tr><td>Detailed Text Prompt</td><td>0.3657</td><td>0.1637</td><td>20.61</td><td>0.4320</td><td>68.44</td><td>0.6963</td><td>19.3</td><td>16.7</td><td>31.9</td></tr><tr><td>Null Prompt</td><td>0.3521</td><td>0.1607</td><td>20.47</td><td>0.4230</td><td>67.26</td><td>0.6812</td><td>18.8</td><td>16.2</td><td>29.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the ablation study results of DreamClear model on DIV2K-Val, COCO val2017, and ADE20K datasets, showing the effect of different components on the performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation results on DIV2K-Val, COCO val2017 and ADE20K for DreamClear.
> </details>

{{< table-caption >}}
<table id='16' style='font-size:16px'><tr><td>Training Data</td><td>LPIPS ↓</td><td>DISTS ↓</td><td>FID ↓ I</td><td>MANIQA ↑</td><td>MUSIQ ↑</td><td>CLIPIQA ↑</td></tr><tr><td>Pre-trained T2I Model (3450images)</td><td>0.4819</td><td>0.2790</td><td>60.12</td><td>0.3271</td><td>61.94</td><td>0.5423</td></tr><tr><td>Ours GenIR (3450images)</td><td>0.4578</td><td>0.2435</td><td>51.29</td><td>0.3691</td><td>63.12</td><td>0.5647</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a quantitative comparison of image restoration metrics on the LSDIR-Val dataset using SwinIR-GAN trained with different datasets, including the pre-trained T2I model and the proposed GenIR.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations for GenIR on LSDIR-Val using SwinIR-GAN.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18666/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18666/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}