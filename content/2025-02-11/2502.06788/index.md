---
title: "EVEv2: Improved Baselines for Encoder-Free Vision-Language Models"
summary: "EVEv2.0: A novel encoder-free vision-language model outperforms existing approaches by using a divide-and-conquer architecture and a data-efficient training strategy, achieving strong vision-reasoning..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 DLUT",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06788 {{< /keyword >}}
{{< keyword icon="writer" >}} Haiwen Diao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06788" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06788" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06788/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current encoder-free vision-language models (VLMs) lag behind encoder-based counterparts in performance.  This is mainly due to challenges in learning visual perception from scratch and effectively managing the interplay between visual and language information within a unified model.  Existing solutions, such as visual supervision, incremental training, and Mixture-of-Expert (MoE) detachment, have shown limited success. 



The paper introduces EVEv2.0, a novel encoder-free VLM that addresses these issues.  **EVEv2.0 uses a divide-and-conquer architecture to effectively decompose and hierarchically associate vision and language components**, reducing interference.  **A well-designed training strategy further enhances optimization**. Extensive evaluations show EVEv2.0 significantly outperforms previous encoder-free VLMs, demonstrating improved data efficiency and superior vision-reasoning capabilities, thereby narrowing the performance gap with state-of-the-art encoder-based models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} EVEv2.0, a new encoder-free vision-language model, surpasses existing methods in performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A divide-and-conquer architecture effectively reduces interference between vision and language modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A well-designed training strategy enables efficient optimization for encoder-free VLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it significantly advances the field of encoder-free vision-language models, which are crucial for developing efficient and scalable multimodal AI systems.  The proposed EVEv2.0 model offers a superior training strategy, demonstrating improved data efficiency and strong vision-reasoning capabilities, paving the way for future research in this promising area. The findings also highlight the importance of carefully designed architectures and training procedures for effectively managing the interplay between visual and language modalities in unified models. This work opens up new avenues for research in monolithic VLM architectures, potentially leading to more effective and resource-efficient multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06788/x1.png)

> 🔼 This figure provides a comprehensive overview of vision-language models (VLMs).  Part (1) illustrates different methods used by existing VLMs to incorporate visual information. This includes using pre-trained vision encoders to extract visual features, which are then fed to large language models (LLMs); using cross-attention between vision encoders and LLMs at different layers; and more monolithic approaches that merge vision and language information directly within a single model. Part (2) explores various architecture designs for encoder-free VLMs, focusing on how to effectively construct visual perception within the LLM without relying on pre-trained vision encoders. These architectures range from simpler models with single visual layers to more complex designs that use re-parameterization techniques or a Mixture-of-Experts approach to manage vision-language interaction.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of (1) diverse vision construction inside existing VLMs and (2) potential architecture variants of Encoder-Free VLMs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.1">
<tr class="ltx_tr" id="S3.T1.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.1.1">Stage</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.1.2">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.1.3">#Num</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.1.4">Total</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T1.4.1.2.1.1">1 / 2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.2.2">Datacomp <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.2.3">44M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.4" rowspan="4"><span class="ltx_text" id="S3.T1.4.1.2.4.1">77M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.3.1">LAION <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.3.2">15M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.4.1">SA-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.4.2">11M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.5.1">OpenImages <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.1.5.2">7M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.6.1">2.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.6.2">Infinity-MM-GeneralQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.6.3">15M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.6.4">15M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.1.7.1" rowspan="2"><span class="ltx_text" id="S3.T1.4.1.7.1.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.7.2">LLaVA-onevision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.1.7.3">3.5M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.7.4" rowspan="2"><span class="ltx_text" id="S3.T1.4.1.7.4.1">7.3M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.4.1.8.1">Infinity-MM-instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.4.1.8.2">3.8M</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides details on the datasets used for training the EVEv2.0 model across its four stages.  It lists the dataset name, the number of samples in each dataset, and the total number of samples used in each training stage. Importantly, it highlights the use of DenseFusion++, a custom data augmentation method developed by the authors, to enhance the quality and quantity of the web-scale image-text data used for training.
> <details>
> <summary>read the caption</summary>
> Table 1: Details of training datasets across all stages. Note that we construct DenseFusion++ to re-caption web-scale image-text data.
> </details>





### In-depth insights


#### Encoder-Free VLMs
Encoder-free Vision-Language Models (VLMs) represent a significant shift in multimodal learning, aiming to **eliminate the reliance on pre-trained vision encoders**. This approach offers several advantages, including improved efficiency, enhanced flexibility, and reduced inductive biases.  By directly processing visual input within the language model, encoder-free VLMs potentially achieve better generalization across diverse visual domains.  However, building effective encoder-free VLMs presents challenges, particularly in **learning robust visual perception from scratch** and mitigating the interference between visual and linguistic information within a unified architecture.  **Innovative training strategies** and carefully designed model architectures are crucial to overcoming these limitations and achieving performance comparable to encoder-based counterparts.  The research on encoder-free VLMs is actively exploring efficient visual encoding techniques and strategies for minimizing modality interference, paving the way for simpler and more scalable multimodal systems.

#### EVEv2 Architecture
The EVEv2 architecture represents a significant advancement in encoder-free vision-language models (VLMs).  Its core innovation lies in the **Divide-and-Conquer design**, which meticulously separates visual and textual processing pathways within a unified decoder-only framework. This addresses the major challenge of cross-modal interference, which hampered previous models.  **Modality-specific weights** are assigned to key components like self-attention, feed-forward layers, and normalization, ensuring efficient and independent processing of visual and textual information.  This decoupling leads to enhanced scaling efficiency. Unlike previous approaches relying on re-parameterization or Mixture-of-Experts, EVEv2's architectural choices yield superior performance with increased data efficiency, and reduced training instability.  The architecture's ability to handle high-resolution inputs, through a customized patch embedding layer that bypasses pre-trained visual encoders, is another key strength, promoting the learning of native visual perception from scratch.  Furthermore, the architecture is designed for seamless adaptation with off-the-shelf LLMs, reducing the need for extensive LLM fine-tuning.  The overall design of EVEv2 points towards a future of simpler, more efficient, and scalable VLMs.

#### Training Strategies
Effective training strategies are crucial for the success of encoder-free vision-language models (VLMs).  The paper highlights a **multi-stage training process** that progressively builds visual perception capabilities.  Initially, the LLM is frozen, focusing on pre-training the patch embedding layer to align modalities. Then, vision layers are incrementally unfrozen, incorporating larger datasets at higher resolutions, allowing the VLM to learn progressively complex visual features. A **key innovation is the use of high-quality synthetic data**, generated by a custom captioning engine.  This significantly improves training efficiency and model capability compared to using noisy web-scraped captions. The paper also demonstrates the importance of balancing training data across different modalities and resolutions.  **A divide-and-conquer architectural design** further enhances the training process by reducing cross-modal interference.  This staged approach, combined with data-driven refinements, showcases a highly effective training methodology for encoder-free VLMs, leading to superior performance and demonstrating the significance of a thoughtful approach to VLM training.

#### Ablation Study
An ablation study systematically evaluates the contribution of individual components within a model by removing them and observing the impact on overall performance.  In the context of vision-language models (VLMs), this involves removing specific modules or layers (e.g., visual encoders, attention mechanisms, specific normalization layers) to understand their individual effects on downstream tasks such as image captioning, visual question answering, or visual reasoning. The goal is to identify **critical components** that significantly influence performance and to understand the **interplay between different modules**.  A well-designed ablation study provides insights into the model's architecture and helps guide future design improvements.  It's essential to interpret results carefully, considering potential interactions and ensuring that removals are done strategically, avoiding cascading negative effects.  **Quantifying the performance drop** for each ablation is crucial to draw meaningful conclusions.  Often, researchers use ablation studies to justify design choices, demonstrate the necessity of particular components, and identify areas for future optimization or simplification.

#### Future VLMs
Future vision-language models (VLMs) hold immense potential.  **Pushing beyond current limitations** requires addressing several key challenges.  Firstly, **improving data efficiency** is crucial; current models necessitate massive datasets, hindering accessibility and scalability.  Secondly, enhancing **generalization capabilities** is vital; models often struggle with unseen scenarios or nuanced tasks.  Developing more robust techniques for **multi-modal alignment and fusion** is another priority. This involves better integration of heterogeneous modalities and mitigating interference between them.  Finally, focusing on **resource efficiency** will ensure wider accessibility and practical deployment. This includes lowering computational costs and memory demands, as well as developing models that can effectively operate on edge devices.  Addressing these challenges will lead to VLMs that are not only more powerful and versatile but also practical and sustainable, leading to widespread real-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06788/x2.png)

> 🔼 This figure compares the scaling efficiency of different vision-language models (VLMs) during pre-training and fine-tuning.  Three types of VLMs are compared: those using vision encoders (VE), discrete tokenizers (DT), and encoder-free models (EVE).  The models use different image downsampling rates, but the resolutions are adjusted to maintain a relatively similar number of tokens per image for fair comparison. The figure shows how the performance of each model type changes as the amount of training data increases.  Weight changes between the LLMs and VLMs are quantified by averaging the absolute value of variations within specific layers.  The final performance is evaluated on four benchmark datasets (GQA, SEED, TextVQA, and SQA) that test the models' abilities across various domains, including general, open-domain, OCR-related, and text-related tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Preliminary analyses across various VLMs’ scaling efficiency during pre-training or fine-tuning (More details in Appendix A). Notably, VE / DT / EVE apply varying image downsampling rates (142 / 82 / 322). For fairness, we choose slightly different resolutions that yield relatively balanced token counts of 576 / 1024 / 625 tokens per image. Besides, we quantify weight changes between LLMs and VLMs by averaging absolute value variation within specific layer number or type. We report accuracy on GQA [30], SEED [26], TextVQA [60], and SQA [53] to examine VLMs’ capabilities across general in-domain, open-domain, OCR-related, and text-related knowledge tasks.
> </details>



![](https://arxiv.org/html/2502.06788/x3.png)

> 🔼 Figure 3 illustrates the architecture of EVEv2.0, a novel encoder-free vision-language model.  Unlike traditional methods that rely on pre-trained vision encoders, EVEv2.0 processes images directly using a lossless patch embedding layer.  This layer converts the image into a sequence of tokens, which are then combined with text tokens and fed into a unified decoder-only transformer.  A key innovation is the use of modality-specific weights for various components of the transformer, including self-attention, feed-forward layers, and layer normalization. This design helps to reduce interference between the vision and language modalities and improve the model's overall efficiency and performance. The figure visually details this process, showcasing the patch embedding layer, the concatenation of visual and text tokens, and the modality-specific components within the transformer.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of our proposed EVEv2.0 framework. We first adopt a patch embedding layer to encode images losslessly, and then concatenate visual and textual tokens into a unified decoder-only vision-language model. Here, it extends the standard autoregressive transformer by incorporating modality-specific weights for each multi-head self-attention layer, feed-forward layer, and layer normalization.
> </details>



![](https://arxiv.org/html/2502.06788/x4.png)

> 🔼 This figure illustrates the four-stage training process for the EVEv2.0 model. Stage 1 focuses on initial alignment of vision and language modalities by training only the patch embedding layer.  Stage 2 progressively enhances visual perception by selectively updating vision layers within the pre-trained language model (LLM), while keeping other layers frozen. Image resolution is gradually increased from 800x800 to 1600x1600 while maintaining the aspect ratio to further improve model's adaptability to different image sizes.  In Stage 3, the entire model is fine-tuned using multi-task datasets comprising question-answering and instruction-following data.  This stage aims to strengthen cross-modal correspondence and improve overall model understanding. The diagram visually represents each stage's training data, trainable modules, and maximum image resolution. 
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of training procedure. PEL/WEL denotes patch/word embedding layer. We begin by training the patch embedding layer to establish initial alignment across modalities. Afterward, we only update vision layers within the LLM to enhance visual perception progressively. Notably, we gradually increase the image resolutions from 800×\times×800 to 1600×\times×1600 and keep the original image aspect ratio. Finally, we train the entire model via QA and instruction data to strengthen cross-modality correspondence and complex understanding.
> </details>



![](https://arxiv.org/html/2502.06788/x7.png)

> 🔼 This figure displays the training loss curves and evaluation results for different variants of the EVE model during Stage 2 of the training process.  The EVE models are all based on the Qwen-2.5 (LLM) model as a baseline.  The training begins in Stage 1 by training only the patch embedding layer using the EVE-recap-10M dataset.  In Stage 2, the vision layers (excluding the LLM layers) are unfrozen, and training continues. The figure visually compares the performance of different model variants (EVEv1.0, EVEv1.2, EVEv1.5, and EVEv2.0) across various metrics, demonstrating the impact of different design choices on the model's ability to learn visual representations and generalize to downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training loss curve and evaluation results in Stage 2. We adopt various EVE variants based on Qwen-2.5 [70] as the baseline. We first train the patch embedding layer using EVE-recap-10M in Stage 1, and further unfreeze vision layers except LLM layers in Stage 2.
> </details>



![](https://arxiv.org/html/2502.06788/x8.png)

> 🔼 Figure 6 presents a comparative analysis of the performance of EVEv1.0 (a vision-language model) trained on different image caption datasets.  It compares the model's accuracy on various vision-language benchmarks (GQA, SEED-ALL, SQA-IMG, TextVQA) when trained using different captioning methods: noisy web image captions (*-raw), captions generated by LLaVA-1.5 and Emu2 (*-cap), and captions generated by the modified DenseFusion++ (*-recap).  The figure also includes results when training data is a mixture of LAION, OpenImages, and SAM datasets (*-LOS).  The x-axis represents the amount of training data used (in millions), and the y-axis shows the model's accuracy on each benchmark. This visual representation allows for a direct comparison of the impact of data source and caption quality on the performance of the EVEv1.0 model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Evaluation results of different data sources and caption engines. We utilize EVEv1.0 based on Vicuna-7B [16] as the baseline. Here ”*-raw“, ”*-cap“, or ”*-recap“ denote noisy web image captions, the samples annotated by both LLaVA-1.5 (13B) and Emu2 (17B), or modified DenseFusion++ (7B), respectively. Note that ”L.O.S.“ represents the mixture of LAION [59], OpenImages [35], and SAM [34].
> </details>



![](https://arxiv.org/html/2502.06788/x9.png)

> 🔼 This figure displays the performance of EVEv1.0 (an encoder-free vision-language model) trained on various ratios of synthesized data, language-only data, and web data. The model is validated using the Vicuna-7B language model.  The x-axis represents the training data composition (synthesized:language-only:web), and the y-axis shows the average accuracy across several benchmark datasets. The graph illustrates how different proportions of these data types impact the model's performance on tasks requiring understanding of vision and language.
> <details>
> <summary>read the caption</summary>
> Figure 7: Evaluation results of mixed data ratio. We adopt EVEv1.0 with Vicuna-7B [16] for validation. Note that x:y:z denote the proportion of synthesized data : language-only data : web data.
> </details>



![](https://arxiv.org/html/2502.06788/x10.png)

> 🔼 This figure displays the performance of EVEv1.0 (a vision-language model) on various vision-language benchmarks under different image input settings.  Four distinct image processing strategies are compared:  1. **AnyRatio_maxL:** Images are resized such that the longest edge is 800 pixels. 2. **AnyRatio_LD:** Images are resized to maintain a fixed area of 800x800 pixels, preserving aspect ratio. 3. **AnyRatio_HD:** Similar to AnyRatio_LD but with a larger fixed area of 1600x1600 pixels. 4. **AnyResolution:** Images are processed at their original, arbitrary resolutions. The results show how the model's performance varies with different image scaling and whether maintaining aspect ratio or using a fixed area is beneficial. The underlying language model used is Vicuna-7B.
> <details>
> <summary>read the caption</summary>
> Figure 8: Evaluation results of image settings. We use EVEv1.0 with Vicuna-7B [16]. “AnyRatio_maxL”: longest image edge as 800, “AnyRatio_LD”: fixed image area as 8002, “AnyRatio_HD”: fixed image area as 16002, “AnyResolution”: arbitrary resolution.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.9.3">
<tr class="ltx_tr" id="S3.T2.9.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.9.3.3.4" style="padding-left:2.1pt;padding-right:2.1pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.5" style="padding-left:2.1pt;padding-right:2.1pt;">#A-Param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.6" style="padding-left:2.1pt;padding-right:2.1pt;">#Data</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.9.3.3.7" style="padding-left:2.1pt;padding-right:2.1pt;">#Vtoken</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.8" style="padding-left:2.1pt;padding-right:2.1pt;">MMMU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.1.1.1" style="padding-left:2.1pt;padding-right:2.1pt;">MMB<math alttext="{}^{\text{en}}" class="ltx_Math" display="inline" id="S3.T2.7.1.1.1.m1.1"><semantics id="S3.T2.7.1.1.1.m1.1a"><msup id="S3.T2.7.1.1.1.m1.1.1" xref="S3.T2.7.1.1.1.m1.1.1.cmml"><mi id="S3.T2.7.1.1.1.m1.1.1a" xref="S3.T2.7.1.1.1.m1.1.1.cmml"></mi><mtext id="S3.T2.7.1.1.1.m1.1.1.1" xref="S3.T2.7.1.1.1.m1.1.1.1a.cmml">en</mtext></msup><annotation-xml encoding="MathML-Content" id="S3.T2.7.1.1.1.m1.1b"><apply id="S3.T2.7.1.1.1.m1.1.1.cmml" xref="S3.T2.7.1.1.1.m1.1.1"><ci id="S3.T2.7.1.1.1.m1.1.1.1a.cmml" xref="S3.T2.7.1.1.1.m1.1.1.1"><mtext id="S3.T2.7.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T2.7.1.1.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.1.1.1.m1.1c">{}^{\text{en}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.1.1.1.m1.1d">start_FLOATSUPERSCRIPT en end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.2.2.2" style="padding-left:2.1pt;padding-right:2.1pt;">SEED<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="S3.T2.8.2.2.2.m1.1"><semantics id="S3.T2.8.2.2.2.m1.1a"><msup id="S3.T2.8.2.2.2.m1.1.1" xref="S3.T2.8.2.2.2.m1.1.1.cmml"><mi id="S3.T2.8.2.2.2.m1.1.1a" xref="S3.T2.8.2.2.2.m1.1.1.cmml"></mi><mtext id="S3.T2.8.2.2.2.m1.1.1.1" xref="S3.T2.8.2.2.2.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="S3.T2.8.2.2.2.m1.1b"><apply id="S3.T2.8.2.2.2.m1.1.1.cmml" xref="S3.T2.8.2.2.2.m1.1.1"><ci id="S3.T2.8.2.2.2.m1.1.1.1a.cmml" xref="S3.T2.8.2.2.2.m1.1.1.1"><mtext id="S3.T2.8.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S3.T2.8.2.2.2.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.2.2.2.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.2.2.2.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.9" style="padding-left:2.1pt;padding-right:2.1pt;">MMV</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.10" style="padding-left:2.1pt;padding-right:2.1pt;">MME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.11" style="padding-left:2.1pt;padding-right:2.1pt;">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.12" style="padding-left:2.1pt;padding-right:2.1pt;">GQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.3" style="padding-left:2.1pt;padding-right:2.1pt;">SQA<math alttext="{}^{\text{I}}" class="ltx_Math" display="inline" id="S3.T2.9.3.3.3.m1.1"><semantics id="S3.T2.9.3.3.3.m1.1a"><msup id="S3.T2.9.3.3.3.m1.1.1" xref="S3.T2.9.3.3.3.m1.1.1.cmml"><mi id="S3.T2.9.3.3.3.m1.1.1a" xref="S3.T2.9.3.3.3.m1.1.1.cmml"></mi><mtext id="S3.T2.9.3.3.3.m1.1.1.1" xref="S3.T2.9.3.3.3.m1.1.1.1a.cmml">I</mtext></msup><annotation-xml encoding="MathML-Content" id="S3.T2.9.3.3.3.m1.1b"><apply id="S3.T2.9.3.3.3.m1.1.1.cmml" xref="S3.T2.9.3.3.3.m1.1.1"><ci id="S3.T2.9.3.3.3.m1.1.1.1a.cmml" xref="S3.T2.9.3.3.3.m1.1.1.1"><mtext id="S3.T2.9.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="S3.T2.9.3.3.3.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.3.3.3.m1.1c">{}^{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.3.3.3.m1.1d">start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.13" style="padding-left:2.1pt;padding-right:2.1pt;">TQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.14" style="padding-left:2.1pt;padding-right:2.1pt;">CQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.15" style="padding-left:2.1pt;padding-right:2.1pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.16" style="padding-left:2.1pt;padding-right:2.1pt;">RWQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.9.3.3.17" style="padding-left:2.1pt;padding-right:2.1pt;">OCRB</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.4" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" colspan="4" id="S3.T2.9.3.4.1" style="padding-left:2.1pt;padding-right:2.1pt;"><em class="ltx_emph ltx_font_italic" id="S3.T2.9.3.4.1.1" style="background-color:#E9E9E9;">Encoder-based Vision-Language Models:</em></td>
<td class="ltx_td ltx_border_t" colspan="13" id="S3.T2.9.3.4.2" style="padding-left:2.1pt;padding-right:2.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.5">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.5.1" style="padding-left:2.1pt;padding-right:2.1pt;">InternVL-1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.2" style="padding-left:2.1pt;padding-right:2.1pt;">2.2B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.5.4" style="padding-left:2.1pt;padding-right:2.1pt;">3328</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.5" style="padding-left:2.1pt;padding-right:2.1pt;">34.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.6" style="padding-left:2.1pt;padding-right:2.1pt;">70.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.7" style="padding-left:2.1pt;padding-right:2.1pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.8" style="padding-left:2.1pt;padding-right:2.1pt;">39.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.5.9.1">1902</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.5.10.1">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.11" style="padding-left:2.1pt;padding-right:2.1pt;">61.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.5.12.1">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.5.13.1">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.5.14.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.15" style="padding-left:2.1pt;padding-right:2.1pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.5.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.5.17.1">654</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.6">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.6.1" style="padding-left:2.1pt;padding-right:2.1pt;">QwenVL-Chat</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.3" style="padding-left:2.1pt;padding-right:2.1pt;">7.2B / 50M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.6.4" style="padding-left:2.1pt;padding-right:2.1pt;">256</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.5" style="padding-left:2.1pt;padding-right:2.1pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.6" style="padding-left:2.1pt;padding-right:2.1pt;">60.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.7" style="padding-left:2.1pt;padding-right:2.1pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.8" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.9" style="padding-left:2.1pt;padding-right:2.1pt;">1848</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.11" style="padding-left:2.1pt;padding-right:2.1pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.12" style="padding-left:2.1pt;padding-right:2.1pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.13" style="padding-left:2.1pt;padding-right:2.1pt;">61.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.14" style="padding-left:2.1pt;padding-right:2.1pt;">49.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.15" style="padding-left:2.1pt;padding-right:2.1pt;">45.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.16" style="padding-left:2.1pt;padding-right:2.1pt;">49.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.6.17" style="padding-left:2.1pt;padding-right:2.1pt;">488</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.7">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.7.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-1.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.4B+ / 665K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.7.4" style="padding-left:2.1pt;padding-right:2.1pt;">576</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.5" style="padding-left:2.1pt;padding-right:2.1pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.6" style="padding-left:2.1pt;padding-right:2.1pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.8" style="padding-left:2.1pt;padding-right:2.1pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.9" style="padding-left:2.1pt;padding-right:2.1pt;">1859</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.10" style="padding-left:2.1pt;padding-right:2.1pt;">85.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.11" style="padding-left:2.1pt;padding-right:2.1pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.12" style="padding-left:2.1pt;padding-right:2.1pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.13" style="padding-left:2.1pt;padding-right:2.1pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.14" style="padding-left:2.1pt;padding-right:2.1pt;">18.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.15" style="padding-left:2.1pt;padding-right:2.1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.16" style="padding-left:2.1pt;padding-right:2.1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.7.17" style="padding-left:2.1pt;padding-right:2.1pt;">318</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.8">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.8.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-1.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.4B+ / 760K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.8.4" style="padding-left:2.1pt;padding-right:2.1pt;">2880</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.5" style="padding-left:2.1pt;padding-right:2.1pt;">35.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.6" style="padding-left:2.1pt;padding-right:2.1pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.8.8.1">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.9" style="padding-left:2.1pt;padding-right:2.1pt;">1842</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.8.10.1">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.8.11.1">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.12" style="padding-left:2.1pt;padding-right:2.1pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.13" style="padding-left:2.1pt;padding-right:2.1pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.14" style="padding-left:2.1pt;padding-right:2.1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.15" style="padding-left:2.1pt;padding-right:2.1pt;">66.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.16" style="padding-left:2.1pt;padding-right:2.1pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.8.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.8.17.1">532</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.9">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.9.1" style="padding-left:2.1pt;padding-right:2.1pt;">Cambrian</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.3" style="padding-left:2.1pt;padding-right:2.1pt;">10B+ / 7M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.9.4" style="padding-left:2.1pt;padding-right:2.1pt;">576</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.9.5.1">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.9.6.1">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.9.7.1">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.8" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.9.11.1">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.12" style="padding-left:2.1pt;padding-right:2.1pt;">80.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.9.13.1">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.14" style="padding-left:2.1pt;padding-right:2.1pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.9.15.1">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.9.16.1">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.9.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.10">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.10.1" style="padding-left:2.1pt;padding-right:2.1pt;">LLaVA-OV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.3" style="padding-left:2.1pt;padding-right:2.1pt;">10B+ / 3.2M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.10.4" style="padding-left:2.1pt;padding-right:2.1pt;">7290</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.5.1">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.6.1">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.7.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.8.1">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.9.1">1998</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.12.1">96.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.13" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.14.1">78.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.15.1">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.10.16.1">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.10.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.11" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" colspan="4" id="S3.T2.9.3.11.1" style="padding-left:2.1pt;padding-right:2.1pt;"><em class="ltx_emph ltx_font_italic" id="S3.T2.9.3.11.1.1" style="background-color:#E9E9E9;">Encoder-free Vision-Language Models:</em></td>
<td class="ltx_td ltx_border_t" colspan="13" id="S3.T2.9.3.11.2" style="padding-left:2.1pt;padding-right:2.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.12">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.12.1" style="padding-left:2.1pt;padding-right:2.1pt;">Fuyu</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.12.4" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.5" style="padding-left:2.1pt;padding-right:2.1pt;">27.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.6" style="padding-left:2.1pt;padding-right:2.1pt;">10.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.7" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.8" style="padding-left:2.1pt;padding-right:2.1pt;">21.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.12" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.13" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.14" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.15" style="padding-left:2.1pt;padding-right:2.1pt;">64.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.12.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.13">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.13.1" style="padding-left:2.1pt;padding-right:2.1pt;">Chameleon</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.3" style="padding-left:2.1pt;padding-right:2.1pt;">1.4B+ / 1.8M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.13.4" style="padding-left:2.1pt;padding-right:2.1pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.5" style="padding-left:2.1pt;padding-right:2.1pt;">25.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.6" style="padding-left:2.1pt;padding-right:2.1pt;">31.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.7" style="padding-left:2.1pt;padding-right:2.1pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.8" style="padding-left:2.1pt;padding-right:2.1pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.9" style="padding-left:2.1pt;padding-right:2.1pt;">170</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.12" style="padding-left:2.1pt;padding-right:2.1pt;">47.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.13" style="padding-left:2.1pt;padding-right:2.1pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.14" style="padding-left:2.1pt;padding-right:2.1pt;">2.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.15" style="padding-left:2.1pt;padding-right:2.1pt;">46.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.13.17" style="padding-left:2.1pt;padding-right:2.1pt;">7.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.14">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.14.1" style="padding-left:2.1pt;padding-right:2.1pt;">EVE</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.3" style="padding-left:2.1pt;padding-right:2.1pt;">33M / 1.8M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.14.4" style="padding-left:2.1pt;padding-right:2.1pt;">2304</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.5" style="padding-left:2.1pt;padding-right:2.1pt;">32.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.6" style="padding-left:2.1pt;padding-right:2.1pt;">52.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.8" style="padding-left:2.1pt;padding-right:2.1pt;">25.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.9" style="padding-left:2.1pt;padding-right:2.1pt;">1628</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.10" style="padding-left:2.1pt;padding-right:2.1pt;">85.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.14.11.1">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.12" style="padding-left:2.1pt;padding-right:2.1pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.13" style="padding-left:2.1pt;padding-right:2.1pt;">56.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.14" style="padding-left:2.1pt;padding-right:2.1pt;">59.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.15" style="padding-left:2.1pt;padding-right:2.1pt;">61.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.14.17" style="padding-left:2.1pt;padding-right:2.1pt;">398</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.15">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.15.1" style="padding-left:2.1pt;padding-right:2.1pt;">SOLO</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.3" style="padding-left:2.1pt;padding-right:2.1pt;">43.7M / 2M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.15.4" style="padding-left:2.1pt;padding-right:2.1pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.5" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.6" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.7" style="padding-left:2.1pt;padding-right:2.1pt;">64.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.8" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.9" style="padding-left:2.1pt;padding-right:2.1pt;">1260</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.11" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.12" style="padding-left:2.1pt;padding-right:2.1pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.13" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.14" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.15" style="padding-left:2.1pt;padding-right:2.1pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.15.17" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.16">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.16.1" style="padding-left:2.1pt;padding-right:2.1pt;">Mono-InternVL</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.2" style="padding-left:2.1pt;padding-right:2.1pt;">1.8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.3" style="padding-left:2.1pt;padding-right:2.1pt;">1.3B / 7M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.16.4" style="padding-left:2.1pt;padding-right:2.1pt;">6400</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.16.5.1">33.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.16.6.1">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.7" style="padding-left:2.1pt;padding-right:2.1pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.16.8.1">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.16.9.1">1875</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.10" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.11" style="padding-left:2.1pt;padding-right:2.1pt;">59.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.16.12.1">93.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.16.13.1">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.16.14.1">73.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.15" style="padding-left:2.1pt;padding-right:2.1pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.16" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.16.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.16.17.1">767</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.17">
<td class="ltx_td ltx_align_left" id="S3.T2.9.3.17.1" style="padding-left:2.1pt;padding-right:2.1pt;">Emu3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.2" style="padding-left:2.1pt;padding-right:2.1pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.3" style="padding-left:2.1pt;padding-right:2.1pt;">– / –</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.3.17.4" style="padding-left:2.1pt;padding-right:2.1pt;">16K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.5" style="padding-left:2.1pt;padding-right:2.1pt;">31.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.6" style="padding-left:2.1pt;padding-right:2.1pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.17.7.1">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.8" style="padding-left:2.1pt;padding-right:2.1pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.9" style="padding-left:2.1pt;padding-right:2.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.17.10.1">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.11" style="padding-left:2.1pt;padding-right:2.1pt;">60.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.12" style="padding-left:2.1pt;padding-right:2.1pt;">89.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.13" style="padding-left:2.1pt;padding-right:2.1pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.14" style="padding-left:2.1pt;padding-right:2.1pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.17.15.1">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.17.16.1">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.3.17.17" style="padding-left:2.1pt;padding-right:2.1pt;">687</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.3.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.9.3.18.1" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.1.1">EVEv2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.2" style="padding-left:2.1pt;padding-right:2.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.3" style="padding-left:2.1pt;padding-right:2.1pt;">92M / 7.3M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.9.3.18.4" style="padding-left:2.1pt;padding-right:2.1pt;">2500</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.5.1">39.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.6.1">66.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.7" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.7.1">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.8" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.8.1">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.9" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.18.9.1">1709</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.10" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.10.1">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.11" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.11.1">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.12" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.12.1">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.13" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.18.13.1">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.14" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.14.1">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.15" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.15.1">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.16" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.9.3.18.16.1">62.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.3.18.17" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.3.18.17.1">702</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of EVEv2.0 against various state-of-the-art vision-language models across a range of benchmark datasets.  These datasets assess diverse capabilities, including multimodal understanding (MMMU, MMBench-EN), visual reasoning (SEEDBench-Img, MMVet, MME, POPE, ScienceQA-Img), visual question answering (TextVQA, GQA), chart and diagram understanding (ChartQA, AI2D), and real-world question answering (RealWorldQA).  The table details the number of activated parameters (#A-Param), the volume of pre-training/fine-tuning data (#Data), and the maximum number of image tokens (#Vtoken) used by each model.  For the MME benchmark, the perception and cognition scores are summed for a single score.  The top two performing models for each benchmark are highlighted in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with existing vision-language models on various vision-language benchmarks, including MMMU [94]; MMBenen{}^{\text{en}}start_FLOATSUPERSCRIPT en end_FLOATSUPERSCRIPT: MMBench-EN [50]; SEEDII{}^{\text{I}}start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT: SEEDBench-Img [37]; MMV: MMVet [93]; MME [23]; POPE [44]; GQA [30]; SQAII{}^{\text{I}}start_FLOATSUPERSCRIPT I end_FLOATSUPERSCRIPT: ScienceQA-Img [53]; TVQA: TextVQA [60]; CQA: ChartQA [55]; AI2D [32]; RWQA: RealWorldQA [84]; OCRB: OCRBench [51]. Note that #A-Param denotes the number of activated parameters; #Data represents the pre-training / fine-tuning data volume; #Vtoken indicates the maximum image patch tokens. For MME, we sum up the perception and cognition scores. The best two results are marked in bold and underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="p2.1.p1.1.1">
<tr class="ltx_tr" id="p2.1.p1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="p2.1.p1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.1.1">Exp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="p2.1.p1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="p2.1.p1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.3.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="p2.1.p1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.4.1">Stage 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="p2.1.p1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.5.1">Stage 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="p2.1.p1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.1.6.1">Stage 3</span></td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.2">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.1.1">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.2.2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.2.1">T.M.</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.3.1">Training Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.2.4"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.4.1">Trainable Module</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.2.5"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.5.1">Data</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.2.6"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.2.6.1">T.M.</span></td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="p2.1.p1.1.1.3.1">Fig.2 (i)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.3.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p2.1.p1.1.1.3.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.3.4">EVE-cap-16M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p2.1.p1.1.1.3.5">PEL</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="p2.1.p1.1.1.3.6">EVE-cap-33M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="p2.1.p1.1.1.3.7">PEL, LLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.3.8">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.3.9">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="p2.1.p1.1.1.4.1" rowspan="4">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.4.1.1">\hdashline</span><span class="ltx_text" id="p2.1.p1.1.1.4.1.2">Fig.5</span>
</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.4.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.4.3">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.4.4">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.4.5">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.4.6">EVE-recap-8/29M</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.4.7">PEL</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.4.8">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.4.9">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.5">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.5.1">EVEv1.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.5.2">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.5.3">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.5.4">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.5.5">EVE-recap-8/29M</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.5.6">PEL, VLayers</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.5.7">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.5.8">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.6">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.6.1">EVEv1.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.6.2">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.6.3">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.6.4">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.6.5">EVE-recap-8/29M</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.6.6">PEL, VLayers</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.6.7">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.6.8">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.7">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.7.1">EVEv2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.7.2">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.7.3">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.7.4">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.7.5">EVE-recap-8/29M</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.7.6">PEL, VLayers</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.7.7">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.7.8">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="p2.1.p1.1.1.8.1">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.8.1.1">\hdashline</span>Fig.6</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.8.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.8.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.8.4">10M varied data</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.8.5">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.8.6">8M same data from Stage 1</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.8.7">PEL, LLM</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.8.8">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.8.9">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="p2.1.p1.1.1.9.1">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.9.1.1">\hdashline</span>Fig.7</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.9.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.9.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.9.4">10M varied data</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.9.5">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.9.6">8M same data from Stage 1</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.9.7">PEL, LLM</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.9.8">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.9.9">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="p2.1.p1.1.1.10.1">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.10.1.1">\hdashline</span>Fig.8</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.10.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.10.3">Vicuna-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.10.4">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.10.5">PEL</td>
<td class="ltx_td ltx_align_center" colspan="2" id="p2.1.p1.1.1.10.6">EVE-recap-8/29M</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="p2.1.p1.1.1.10.7">PEL, LLM</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.10.8">LLaVA-mix-665k</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.10.9">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="p2.1.p1.1.1.11.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.1.1">Exp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="p2.1.p1.1.1.11.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="p2.1.p1.1.1.11.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.3.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="p2.1.p1.1.1.11.4"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.4.1">Stage 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="p2.1.p1.1.1.11.5"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.5.1">Stage 2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="p2.1.p1.1.1.11.6"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.6.1">Stage 2.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="p2.1.p1.1.1.11.7"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.11.7.1">Stage 3</span></td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.12">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.1"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.1.1">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.12.2"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.2.1">T.M.</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.3"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.3.1">Data</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.4"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.4.1">T.M.</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.5"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.5.1">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.12.6"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.6.1">T.M.</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.7"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.7.1">Data</span></td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.12.8"><span class="ltx_text ltx_font_bold" id="p2.1.p1.1.1.12.8.1">T.M.</span></td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="p2.1.p1.1.1.13.1" rowspan="2"><span class="ltx_text" id="p2.1.p1.1.1.13.1.1">Fig.2 (ii)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.2">EVEv1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p2.1.p1.1.1.13.3">Qwen2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.4">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p2.1.p1.1.1.13.5">PEL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.6">EVE-recap-29M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.7">PEL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.8">EVE-recap-48M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="p2.1.p1.1.1.13.9">PEL, LLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.10">Various SFT data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="p2.1.p1.1.1.13.11">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.14">
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.1">EVEv1.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.14.2">Qwen2-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.3">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.14.4">PEL</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.5">EVE-recap-29M</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.6">PEL, VLayers</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.7">EVE-recap-48M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.14.8">PEL, LLM</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.9">Various SFT data</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.14.10">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="p2.1.p1.1.1.15.1">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.15.1.1">\hdashline</span>Tab.2</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.2">EVEv2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.15.3">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.4">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.15.5">PEL</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.6">EVE-recap-77M</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.7">PEL, VLayers</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.8">EVE-multi-task-15M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="p2.1.p1.1.1.15.9">PEL, LLM</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.10">EVE-sft-7M</td>
<td class="ltx_td ltx_align_center" id="p2.1.p1.1.1.15.11">PEL, LLM</td>
</tr>
<tr class="ltx_tr" id="p2.1.p1.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="p2.1.p1.1.1.16.1">
<span class="ltx_ERROR undefined" id="p2.1.p1.1.1.16.1.1">\hdashline</span>Fig.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.2">EVEv2.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="p2.1.p1.1.1.16.3">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.4">EVE-recap-10M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="p2.1.p1.1.1.16.5">PEL</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.6">EVE-recap-77M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.7">PEL, VLayers</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.8">EVE-multi-task-15M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="p2.1.p1.1.1.16.9">PEL, LLM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.10">EVE-sft-7M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="p2.1.p1.1.1.16.11">PEL, LLM</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 details the experimental setup across three stages of training for various vision-language models.  It shows the model used (e.g., EVEv1.0, EVEv1.2), the large language model (LLM) employed (e.g., Vicuna-7B, Qwen2-5-7B), the training data used in each stage, which modules were trainable (T.M. - Trainable Module) and the specific data used for training those modules.  'PEL' represents the patch embedding layer, and 'VLayers' refers to newly added visual layers within the LLM. 'EVE-recap-8/29M' denotes a subset of the data used, indicating that only 8 million samples out of 29 million were employed in that specific training phase.  The table provides a clear overview of the model architectures and training procedures for different experiments.
> <details>
> <summary>read the caption</summary>
> Table 3: Experiment Details in the main body. Note that T.M. denotes a trainable module in each stage. PEL and VLayers represent patch embedding layers and newly added vision layers in the large language model. EVE-recap-8/29M indicates a subset 8M of 29M training data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A0.T4.4.1">
<tr class="ltx_tr" id="A0.T4.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A0.T4.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A0.T4.4.1.1.1.1">Stage</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A0.T4.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A0.T4.4.1.1.2.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A0.T4.4.1.1.3">#Data</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A0.T4.4.1.2.1" rowspan="5"><span class="ltx_text" id="A0.T4.4.1.2.1.1">2.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A0.T4.4.1.2.2">Cambrian-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite>,
Infinity-Instruct-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>,</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T4.4.1.2.3" rowspan="5"><span class="ltx_text" id="A0.T4.4.1.2.3.1">15M</span></td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.3.1">LVIS-Instruct-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>,
Sharegpt4v-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.4.1">ALLaVA-laion-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>,
ALLaVA-vflan-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.5.1">LLaVA-Pretrain-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>,
DocReason-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.6.1">DocDownstream-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>,
DocStruct4M-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>.</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A0.T4.4.1.7.1" rowspan="4"><span class="ltx_text" id="A0.T4.4.1.7.1.1">3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A0.T4.4.1.7.2">LLaVA-onevision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>,
Infinity-MM-Synthesis <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>,</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A0.T4.4.1.7.3" rowspan="4"><span class="ltx_text" id="A0.T4.4.1.7.3.1">7.3M</span></td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.8.1">Infinity-MM-Preference <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>,
Infinity-Instruct-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T4.4.1.9.1">DenseFusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>,
Cambrian-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite>,
Docmatix-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A0.T4.4.1.10.1">LVIS-Instruct-FL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>,
BLIP-OCR<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>,
LLaVA-mix <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06788v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 details the datasets used in stages 2.2 and 3 of the EVEv2.0 model training.  Stage 2.2 focuses on vision-text alignment, utilizing datasets like Cambrian-FL, Infinity-Instruct-FL, and LVIS-Instruct-FL, among others. These datasets contain diverse data types, encompassing general question-answering, instruction-following tasks, and more. Stage 3 is focused on supervised fine-tuning and uses datasets like LLaVA-onevision and Infinity-MM-Instruct, all designed to further improve the model's understanding of vision and language.  The 'FL' suffix indicates that these datasets have undergone a filtering process to enhance data quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Dataset details in Stage 2.2, and 3 for fine-tuning EVEv2.0. Note that ***-FL denotes the filtered training dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.16.16">
<tr class="ltx_tr" id="A1.T5.16.16.17">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.16.16.17.1">Configuration</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.16.16.17.2">Stage 1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.16.16.17.3">Stage 2.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.16.16.17.4">Stage 2.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.16.16.17.5">Stage 3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.4.4.4.5">Maximum Patch Token</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.1.1"><math alttext="625" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mn id="A1.T5.1.1.1.1.m1.1.1" xref="A1.T5.1.1.1.1.m1.1.1.cmml">625</mn><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><cn id="A1.T5.1.1.1.1.m1.1.1.cmml" type="integer" xref="A1.T5.1.1.1.1.m1.1.1">625</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">625</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">625</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.2"><math alttext="625-2500" class="ltx_Math" display="inline" id="A1.T5.2.2.2.2.m1.1"><semantics id="A1.T5.2.2.2.2.m1.1a"><mrow id="A1.T5.2.2.2.2.m1.1.1" xref="A1.T5.2.2.2.2.m1.1.1.cmml"><mn id="A1.T5.2.2.2.2.m1.1.1.2" xref="A1.T5.2.2.2.2.m1.1.1.2.cmml">625</mn><mo id="A1.T5.2.2.2.2.m1.1.1.1" xref="A1.T5.2.2.2.2.m1.1.1.1.cmml">−</mo><mn id="A1.T5.2.2.2.2.m1.1.1.3" xref="A1.T5.2.2.2.2.m1.1.1.3.cmml">2500</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.2.m1.1b"><apply id="A1.T5.2.2.2.2.m1.1.1.cmml" xref="A1.T5.2.2.2.2.m1.1.1"><minus id="A1.T5.2.2.2.2.m1.1.1.1.cmml" xref="A1.T5.2.2.2.2.m1.1.1.1"></minus><cn id="A1.T5.2.2.2.2.m1.1.1.2.cmml" type="integer" xref="A1.T5.2.2.2.2.m1.1.1.2">625</cn><cn id="A1.T5.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="A1.T5.2.2.2.2.m1.1.1.3">2500</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.2.m1.1c">625-2500</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.2.m1.1d">625 - 2500</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.3.3.3"><math alttext="2500" class="ltx_Math" display="inline" id="A1.T5.3.3.3.3.m1.1"><semantics id="A1.T5.3.3.3.3.m1.1a"><mn id="A1.T5.3.3.3.3.m1.1.1" xref="A1.T5.3.3.3.3.m1.1.1.cmml">2500</mn><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.3.m1.1b"><cn id="A1.T5.3.3.3.3.m1.1.1.cmml" type="integer" xref="A1.T5.3.3.3.3.m1.1.1">2500</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.3.m1.1c">2500</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.3.m1.1d">2500</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.4.4.4"><math alttext="2500" class="ltx_Math" display="inline" id="A1.T5.4.4.4.4.m1.1"><semantics id="A1.T5.4.4.4.4.m1.1a"><mn id="A1.T5.4.4.4.4.m1.1.1" xref="A1.T5.4.4.4.4.m1.1.1.cmml">2500</mn><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.4.m1.1b"><cn id="A1.T5.4.4.4.4.m1.1.1.cmml" type="integer" xref="A1.T5.4.4.4.4.m1.1.1">2500</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.4.m1.1c">2500</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.4.m1.1d">2500</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.16.16.18">
<td class="ltx_td ltx_align_left" id="A1.T5.16.16.18.1">Optimizer</td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T5.16.16.18.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.5">
<td class="ltx_td ltx_align_left" id="A1.T5.5.5.5.2">Hyperparameters</td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T5.5.5.5.1"><math alttext="\beta_{1}=0.9,\beta_{2}=0.999,eps=1e^{-8}" class="ltx_Math" display="inline" id="A1.T5.5.5.5.1.m1.2"><semantics id="A1.T5.5.5.5.1.m1.2a"><mrow id="A1.T5.5.5.5.1.m1.2.2.2" xref="A1.T5.5.5.5.1.m1.2.2.3.cmml"><mrow id="A1.T5.5.5.5.1.m1.1.1.1.1" xref="A1.T5.5.5.5.1.m1.1.1.1.1.cmml"><msub id="A1.T5.5.5.5.1.m1.1.1.1.1.2" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2.cmml"><mi id="A1.T5.5.5.5.1.m1.1.1.1.1.2.2" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2.2.cmml">β</mi><mn id="A1.T5.5.5.5.1.m1.1.1.1.1.2.3" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2.3.cmml">1</mn></msub><mo id="A1.T5.5.5.5.1.m1.1.1.1.1.1" xref="A1.T5.5.5.5.1.m1.1.1.1.1.1.cmml">=</mo><mn id="A1.T5.5.5.5.1.m1.1.1.1.1.3" xref="A1.T5.5.5.5.1.m1.1.1.1.1.3.cmml">0.9</mn></mrow><mo id="A1.T5.5.5.5.1.m1.2.2.2.3" xref="A1.T5.5.5.5.1.m1.2.2.3a.cmml">,</mo><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.3.cmml"><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.cmml"><msub id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.cmml"><mi id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.2.cmml">β</mi><mn id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.3.cmml">2</mn></msub><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.1" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.1.cmml">=</mo><mn id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.3.cmml">0.999</mn></mrow><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.3a.cmml">,</mo><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.cmml"><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.cmml"><mi id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.2.cmml">e</mi><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1.cmml">⁢</mo><mi id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.3.cmml">p</mi><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1a" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1.cmml">⁢</mo><mi id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.4" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.4.cmml">s</mi></mrow><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.1" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.1.cmml">=</mo><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.cmml"><mn id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.2.cmml">1</mn><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.1" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.1.cmml">⁢</mo><msup id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.cmml"><mi id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.2.cmml">e</mi><mrow id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.cmml"><mo id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3a" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.cmml">−</mo><mn id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.2" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.2.cmml">8</mn></mrow></msup></mrow></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.1.m1.2b"><apply id="A1.T5.5.5.5.1.m1.2.2.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.m1.2.2.3a.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.3">formulae-sequence</csymbol><apply id="A1.T5.5.5.5.1.m1.1.1.1.1.cmml" xref="A1.T5.5.5.5.1.m1.1.1.1.1"><eq id="A1.T5.5.5.5.1.m1.1.1.1.1.1.cmml" xref="A1.T5.5.5.5.1.m1.1.1.1.1.1"></eq><apply id="A1.T5.5.5.5.1.m1.1.1.1.1.2.cmml" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.m1.1.1.1.1.2.1.cmml" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2">subscript</csymbol><ci id="A1.T5.5.5.5.1.m1.1.1.1.1.2.2.cmml" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2.2">𝛽</ci><cn id="A1.T5.5.5.5.1.m1.1.1.1.1.2.3.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.1.1.1.1.2.3">1</cn></apply><cn id="A1.T5.5.5.5.1.m1.1.1.1.1.3.cmml" type="float" xref="A1.T5.5.5.5.1.m1.1.1.1.1.3">0.9</cn></apply><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.m1.2.2.2.2.3a.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.3">formulae-sequence</csymbol><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1"><eq id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.1"></eq><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2">subscript</csymbol><ci id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.2">𝛽</ci><cn id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.3.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.2.3">2</cn></apply><cn id="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.3.cmml" type="float" xref="A1.T5.5.5.5.1.m1.2.2.2.2.1.1.3">0.999</cn></apply><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2"><eq id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.1"></eq><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2"><times id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.1"></times><ci id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.2">𝑒</ci><ci id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.3">𝑝</ci><ci id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.4.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.2.4">𝑠</ci></apply><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3"><times id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.1"></times><cn id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.2.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.2">1</cn><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3"><csymbol cd="ambiguous" id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3">superscript</csymbol><ci id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.2.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.2">𝑒</ci><apply id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3"><minus id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.1.cmml" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3"></minus><cn id="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.2.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.2.2.2.2.2.2.3.3.3.2">8</cn></apply></apply></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.1.m1.2c">\beta_{1}=0.9,\beta_{2}=0.999,eps=1e^{-8}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.1.m1.2d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = 0.9 , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.999 , italic_e italic_p italic_s = 1 italic_e start_POSTSUPERSCRIPT - 8 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.9.9.9">
<td class="ltx_td ltx_align_left" id="A1.T5.9.9.9.5">Peak learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.6.1"><math alttext="2e^{-4}" class="ltx_Math" display="inline" id="A1.T5.6.6.6.1.m1.1"><semantics id="A1.T5.6.6.6.1.m1.1a"><mrow id="A1.T5.6.6.6.1.m1.1.1" xref="A1.T5.6.6.6.1.m1.1.1.cmml"><mn id="A1.T5.6.6.6.1.m1.1.1.2" xref="A1.T5.6.6.6.1.m1.1.1.2.cmml">2</mn><mo id="A1.T5.6.6.6.1.m1.1.1.1" xref="A1.T5.6.6.6.1.m1.1.1.1.cmml">⁢</mo><msup id="A1.T5.6.6.6.1.m1.1.1.3" xref="A1.T5.6.6.6.1.m1.1.1.3.cmml"><mi id="A1.T5.6.6.6.1.m1.1.1.3.2" xref="A1.T5.6.6.6.1.m1.1.1.3.2.cmml">e</mi><mrow id="A1.T5.6.6.6.1.m1.1.1.3.3" xref="A1.T5.6.6.6.1.m1.1.1.3.3.cmml"><mo id="A1.T5.6.6.6.1.m1.1.1.3.3a" xref="A1.T5.6.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.6.6.6.1.m1.1.1.3.3.2" xref="A1.T5.6.6.6.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.1.m1.1b"><apply id="A1.T5.6.6.6.1.m1.1.1.cmml" xref="A1.T5.6.6.6.1.m1.1.1"><times id="A1.T5.6.6.6.1.m1.1.1.1.cmml" xref="A1.T5.6.6.6.1.m1.1.1.1"></times><cn id="A1.T5.6.6.6.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.6.6.6.1.m1.1.1.2">2</cn><apply id="A1.T5.6.6.6.1.m1.1.1.3.cmml" xref="A1.T5.6.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.6.6.6.1.m1.1.1.3.1.cmml" xref="A1.T5.6.6.6.1.m1.1.1.3">superscript</csymbol><ci id="A1.T5.6.6.6.1.m1.1.1.3.2.cmml" xref="A1.T5.6.6.6.1.m1.1.1.3.2">𝑒</ci><apply id="A1.T5.6.6.6.1.m1.1.1.3.3.cmml" xref="A1.T5.6.6.6.1.m1.1.1.3.3"><minus id="A1.T5.6.6.6.1.m1.1.1.3.3.1.cmml" xref="A1.T5.6.6.6.1.m1.1.1.3.3"></minus><cn id="A1.T5.6.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.6.6.6.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.1.m1.1c">2e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.1.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.7.7.2"><math alttext="1e^{-4}" class="ltx_Math" display="inline" id="A1.T5.7.7.7.2.m1.1"><semantics id="A1.T5.7.7.7.2.m1.1a"><mrow id="A1.T5.7.7.7.2.m1.1.1" xref="A1.T5.7.7.7.2.m1.1.1.cmml"><mn id="A1.T5.7.7.7.2.m1.1.1.2" xref="A1.T5.7.7.7.2.m1.1.1.2.cmml">1</mn><mo id="A1.T5.7.7.7.2.m1.1.1.1" xref="A1.T5.7.7.7.2.m1.1.1.1.cmml">⁢</mo><msup id="A1.T5.7.7.7.2.m1.1.1.3" xref="A1.T5.7.7.7.2.m1.1.1.3.cmml"><mi id="A1.T5.7.7.7.2.m1.1.1.3.2" xref="A1.T5.7.7.7.2.m1.1.1.3.2.cmml">e</mi><mrow id="A1.T5.7.7.7.2.m1.1.1.3.3" xref="A1.T5.7.7.7.2.m1.1.1.3.3.cmml"><mo id="A1.T5.7.7.7.2.m1.1.1.3.3a" xref="A1.T5.7.7.7.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.7.7.7.2.m1.1.1.3.3.2" xref="A1.T5.7.7.7.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.2.m1.1b"><apply id="A1.T5.7.7.7.2.m1.1.1.cmml" xref="A1.T5.7.7.7.2.m1.1.1"><times id="A1.T5.7.7.7.2.m1.1.1.1.cmml" xref="A1.T5.7.7.7.2.m1.1.1.1"></times><cn id="A1.T5.7.7.7.2.m1.1.1.2.cmml" type="integer" xref="A1.T5.7.7.7.2.m1.1.1.2">1</cn><apply id="A1.T5.7.7.7.2.m1.1.1.3.cmml" xref="A1.T5.7.7.7.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.7.7.7.2.m1.1.1.3.1.cmml" xref="A1.T5.7.7.7.2.m1.1.1.3">superscript</csymbol><ci id="A1.T5.7.7.7.2.m1.1.1.3.2.cmml" xref="A1.T5.7.7.7.2.m1.1.1.3.2">𝑒</ci><apply id="A1.T5.7.7.7.2.m1.1.1.3.3.cmml" xref="A1.T5.7.7.7.2.m1.1.1.3.3"><minus id="A1.T5.7.7.7.2.m1.1.1.3.3.1.cmml" xref="A1.T5.7.7.7.2.m1.1.1.3.3"></minus><cn id="A1.T5.7.7.7.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.7.7.7.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.2.m1.1c">1e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.2.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.8.3"><math alttext="2e^{-5}" class="ltx_Math" display="inline" id="A1.T5.8.8.8.3.m1.1"><semantics id="A1.T5.8.8.8.3.m1.1a"><mrow id="A1.T5.8.8.8.3.m1.1.1" xref="A1.T5.8.8.8.3.m1.1.1.cmml"><mn id="A1.T5.8.8.8.3.m1.1.1.2" xref="A1.T5.8.8.8.3.m1.1.1.2.cmml">2</mn><mo id="A1.T5.8.8.8.3.m1.1.1.1" xref="A1.T5.8.8.8.3.m1.1.1.1.cmml">⁢</mo><msup id="A1.T5.8.8.8.3.m1.1.1.3" xref="A1.T5.8.8.8.3.m1.1.1.3.cmml"><mi id="A1.T5.8.8.8.3.m1.1.1.3.2" xref="A1.T5.8.8.8.3.m1.1.1.3.2.cmml">e</mi><mrow id="A1.T5.8.8.8.3.m1.1.1.3.3" xref="A1.T5.8.8.8.3.m1.1.1.3.3.cmml"><mo id="A1.T5.8.8.8.3.m1.1.1.3.3a" xref="A1.T5.8.8.8.3.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.8.8.8.3.m1.1.1.3.3.2" xref="A1.T5.8.8.8.3.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.3.m1.1b"><apply id="A1.T5.8.8.8.3.m1.1.1.cmml" xref="A1.T5.8.8.8.3.m1.1.1"><times id="A1.T5.8.8.8.3.m1.1.1.1.cmml" xref="A1.T5.8.8.8.3.m1.1.1.1"></times><cn id="A1.T5.8.8.8.3.m1.1.1.2.cmml" type="integer" xref="A1.T5.8.8.8.3.m1.1.1.2">2</cn><apply id="A1.T5.8.8.8.3.m1.1.1.3.cmml" xref="A1.T5.8.8.8.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.8.8.8.3.m1.1.1.3.1.cmml" xref="A1.T5.8.8.8.3.m1.1.1.3">superscript</csymbol><ci id="A1.T5.8.8.8.3.m1.1.1.3.2.cmml" xref="A1.T5.8.8.8.3.m1.1.1.3.2">𝑒</ci><apply id="A1.T5.8.8.8.3.m1.1.1.3.3.cmml" xref="A1.T5.8.8.8.3.m1.1.1.3.3"><minus id="A1.T5.8.8.8.3.m1.1.1.3.3.1.cmml" xref="A1.T5.8.8.8.3.m1.1.1.3.3"></minus><cn id="A1.T5.8.8.8.3.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.8.8.8.3.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.3.m1.1c">2e^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.3.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.9.9.9.4"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="A1.T5.9.9.9.4.m1.1"><semantics id="A1.T5.9.9.9.4.m1.1a"><mrow id="A1.T5.9.9.9.4.m1.1.1" xref="A1.T5.9.9.9.4.m1.1.1.cmml"><mn id="A1.T5.9.9.9.4.m1.1.1.2" xref="A1.T5.9.9.9.4.m1.1.1.2.cmml">1</mn><mo id="A1.T5.9.9.9.4.m1.1.1.1" xref="A1.T5.9.9.9.4.m1.1.1.1.cmml">⁢</mo><msup id="A1.T5.9.9.9.4.m1.1.1.3" xref="A1.T5.9.9.9.4.m1.1.1.3.cmml"><mi id="A1.T5.9.9.9.4.m1.1.1.3.2" xref="A1.T5.9.9.9.4.m1.1.1.3.2.cmml">e</mi><mrow id="A1.T5.9.9.9.4.m1.1.1.3.3" xref="A1.T5.9.9.9.4.m1.1.1.3.3.cmml"><mo id="A1.T5.9.9.9.4.m1.1.1.3.3a" xref="A1.T5.9.9.9.4.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.9.9.9.4.m1.1.1.3.3.2" xref="A1.T5.9.9.9.4.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.9.9.9.4.m1.1b"><apply id="A1.T5.9.9.9.4.m1.1.1.cmml" xref="A1.T5.9.9.9.4.m1.1.1"><times id="A1.T5.9.9.9.4.m1.1.1.1.cmml" xref="A1.T5.9.9.9.4.m1.1.1.1"></times><cn id="A1.T5.9.9.9.4.m1.1.1.2.cmml" type="integer" xref="A1.T5.9.9.9.4.m1.1.1.2">1</cn><apply id="A1.T5.9.9.9.4.m1.1.1.3.cmml" xref="A1.T5.9.9.9.4.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.9.9.9.4.m1.1.1.3.1.cmml" xref="A1.T5.9.9.9.4.m1.1.1.3">superscript</csymbol><ci id="A1.T5.9.9.9.4.m1.1.1.3.2.cmml" xref="A1.T5.9.9.9.4.m1.1.1.3.2">𝑒</ci><apply id="A1.T5.9.9.9.4.m1.1.1.3.3.cmml" xref="A1.T5.9.9.9.4.m1.1.1.3.3"><minus id="A1.T5.9.9.9.4.m1.1.1.3.3.1.cmml" xref="A1.T5.9.9.9.4.m1.1.1.3.3"></minus><cn id="A1.T5.9.9.9.4.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.9.9.9.4.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.9.9.4.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.9.9.4.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.16.16.19">
<td class="ltx_td ltx_align_left" id="A1.T5.16.16.19.1">LR schedule</td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T5.16.16.19.2">cosine decay with warm-up</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.10">
<td class="ltx_td ltx_align_left" id="A1.T5.10.10.10.2">Warm-up steps</td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T5.10.10.10.1"><math alttext="0.03" class="ltx_Math" display="inline" id="A1.T5.10.10.10.1.m1.1"><semantics id="A1.T5.10.10.10.1.m1.1a"><mn id="A1.T5.10.10.10.1.m1.1.1" xref="A1.T5.10.10.10.1.m1.1.1.cmml">0.03</mn><annotation-xml encoding="MathML-Content" id="A1.T5.10.10.10.1.m1.1b"><cn id="A1.T5.10.10.10.1.m1.1.1.cmml" type="float" xref="A1.T5.10.10.10.1.m1.1.1">0.03</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.10.10.1.m1.1c">0.03</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.10.10.1.m1.1d">0.03</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.11.11.11">
<td class="ltx_td ltx_align_left" id="A1.T5.11.11.11.2">Weight decay</td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T5.11.11.11.1"><math alttext="0.0" class="ltx_Math" display="inline" id="A1.T5.11.11.11.1.m1.1"><semantics id="A1.T5.11.11.11.1.m1.1a"><mn id="A1.T5.11.11.11.1.m1.1.1" xref="A1.T5.11.11.11.1.m1.1.1.cmml">0.0</mn><annotation-xml encoding="MathML-Content" id="A1.T5.11.11.11.1.m1.1b"><cn id="A1.T5.11.11.11.1.m1.1.1.cmml" type="float" xref="A1.T5.11.11.11.1.m1.1.1">0.0</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.11.11.11.1.m1.1c">0.0</annotation><annotation encoding="application/x-llamapun" id="A1.T5.11.11.11.1.m1.1d">0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.15.15">
<td class="ltx_td ltx_align_left" id="A1.T5.15.15.15.5">Global batch size</td>
<td class="ltx_td ltx_align_center" id="A1.T5.12.12.12.1"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.12.12.12.1.m1.1"><semantics id="A1.T5.12.12.12.1.m1.1a"><mn id="A1.T5.12.12.12.1.m1.1.1" xref="A1.T5.12.12.12.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.12.12.12.1.m1.1b"><cn id="A1.T5.12.12.12.1.m1.1.1.cmml" type="integer" xref="A1.T5.12.12.12.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.12.12.12.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.12.12.12.1.m1.1d">1024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.13.13.13.2"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.13.13.13.2.m1.1"><semantics id="A1.T5.13.13.13.2.m1.1a"><mn id="A1.T5.13.13.13.2.m1.1.1" xref="A1.T5.13.13.13.2.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.13.13.13.2.m1.1b"><cn id="A1.T5.13.13.13.2.m1.1.1.cmml" type="integer" xref="A1.T5.13.13.13.2.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.13.13.13.2.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.13.13.13.2.m1.1d">1024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.14.14.14.3"><math alttext="512" class="ltx_Math" display="inline" id="A1.T5.14.14.14.3.m1.1"><semantics id="A1.T5.14.14.14.3.m1.1a"><mn id="A1.T5.14.14.14.3.m1.1.1" xref="A1.T5.14.14.14.3.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T5.14.14.14.3.m1.1b"><cn id="A1.T5.14.14.14.3.m1.1.1.cmml" type="integer" xref="A1.T5.14.14.14.3.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.14.14.14.3.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T5.14.14.14.3.m1.1d">512</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.15.4"><math alttext="512" class="ltx_Math" display="inline" id="A1.T5.15.15.15.4.m1.1"><semantics id="A1.T5.15.15.15.4.m1.1a"><mn id="A1.T5.15.15.15.4.m1.1.1" xref="A1.T5.15.15.15.4.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T5.15.15.15.4.m1.1b"><cn id="A1.T5.15.15.15.4.m1.1.1.cmml" type="integer" xref="A1.T5.15.15.15.4.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.15.15.15.4.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T5.15.15.15.4.m1.1d">512</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.16.16.16.2">Numerical precision</td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="4" id="A1.T5.16.16.16.1"><math alttext="\mathtt{bfloat16}" class="ltx_Math" display="inline" id="A1.T5.16.16.16.1.m1.1"><semantics id="A1.T5.16.16.16.1.m1.1a"><mi id="A1.T5.16.16.16.1.m1.1.1" xref="A1.T5.16.16.16.1.m1.1.1.cmml">𝚋𝚏𝚕𝚘𝚊𝚝𝟷𝟼</mi><annotation-xml encoding="MathML-Content" id="A1.T5.16.16.16.1.m1.1b"><ci id="A1.T5.16.16.16.1.m1.1.1.cmml" xref="A1.T5.16.16.16.1.m1.1.1">𝚋𝚏𝚕𝚘𝚊𝚝𝟷𝟼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.16.16.16.1.m1.1c">\mathtt{bfloat16}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.16.16.16.1.m1.1d">typewriter_bfloat16</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the three training stages of the EVEv2.0 model.  It shows the settings for various aspects of the training process, including the optimizer used (AdamW), learning rates, learning rate scheduling (cosine decay with warm-up), weight decay, batch size, and numerical precision. Each stage represents a distinct phase in the training, each having its own set of hyperparameter configurations.  The number of training epochs for each stage is also noted (1 epoch per stage).
> <details>
> <summary>read the caption</summary>
> Table 5: Hyper-parameter configurations in Stage 1-3 for training EVEv2.0. Note that we set the training epoch in each stage as 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2">
<tr class="ltx_tr" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="354" id="A4.1.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6191103/figures/examples/MAR.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3">
<td class="ltx_td ltx_align_left" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.1"><span class="ltx_text ltx_font_bold" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2.1">
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.3.2.1.1" style="width:512.1pt;">Please output all the text information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1" style="font-size:80%;">EVEv2.0</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1">
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1" style="width:512.1pt;">Cornell University We gratefully acknowledge support member. arXiv:2406.11838 Computer Science <math alttext="&gt;" class="ltx_Math" display="inline" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1"><semantics id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1a"><mo id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1" xref="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1b"><gt id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1.cmml" xref="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.1.m1.1d">&gt;</annotation></semantics></math> Computer Vision and Pattern Recognition Submitted on 17 Jun 2024 (v1), last revised 1 Nov 2024 (this version, v3))</span>
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.2">Autoregressive Image Generation without Vector Quantization</span>
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.3">Tianhong Li, Yonglong Tian, He Li, Mingyang Deng, Kaiming He</span>
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.4">Conventional wisdom holds that autoregressive models for image generation are typically accompanied by vector-quantized tokens. We observe that while a discrete-valued space can facilitate representing a categorical distribution, it is not a necessity for autoregressive modeling. In this work, we propose to model the per-token probability distribution using a diffusion procedure, which allows us to apply autoregressive models in a continuous-valued space. Rather than using categorical cross-entropy loss, we define a Diffusion Loss function to model the per-token probability. This approach eliminates the need for discrete-valued tokenizers. We evaluate its effectiveness across a wide range of cases, including standard autoregressive models and generalized masked autoregressive (MAR) variants. By removing vector quantization, our image generator achieves strong results while enjoying the speed advantage of sequence modeling. We hope this work will motivate the use of autoregressive generation in other continuous-valued domains and applications. Code is available at: this https URL</span>
<span class="ltx_p" id="A4.1.1.p1.pic1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1.5">Comments: Neurips 2024 (Spotlight); Code: this https URL Subjects: Computer Vision and Pattern Recognition (cs.CV) Cite as: arXiv:2406.11838 [cs.CV] (or arXiv:2406.11838v3 [cs.CV] for this version) Submission history From: Tianhong Li [view email] [v1] Mon, 17 Jun 2024 17:59:58 UTC (5,459 KB) [v2] Sun, 28 Jul 2024 05:30:08 UTC (5,447 KB) [v3] Fri, 1 Nov 2024 14:45:36 UTC (8,971 KB)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 demonstrates EVEv2.0's capacity to accurately extract text information from a webpage.  It showcases the model's ability to perform Optical Character Recognition (OCR) and accurately interpret the extracted text within the context of the webpage. This highlights the model's strong vision and language understanding capabilities, particularly in complex scenarios.
> <details>
> <summary>read the caption</summary>
> Table 6: EVEv2.0 exhibits excellent OCR recognition capabilities in understanding Webpage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="242" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6191103/figures/examples/ocr_beijing.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_left" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1">
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1.1" style="width:512.1pt;">Please describe the image in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1.1" style="font-size:80%;">EVEv2.0</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1">
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.1" style="width:512.1pt;">The image is a promotional poster for ”Neanderthal,” which appears to be a documentary or film about Neanderthals. The title ”Neanderthal” is prominently displayed in large, bold yellow letters across the center of the image. Below the title, there is additional text that reads ”Years 7 and 8 Welcome of the Day,” suggesting that this event might be targeted towards students in those grade levels.</span>
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.2">The background of the poster features a close-up photograph of a man with a Neanderthal-like appearance. He has a long beard, a prominent forehead, and a strong jawline, which are characteristic features often associated with Neanderthals. The man is holding a wooden stick or pole, which adds to the prehistoric theme of the image. The background behind him is blurred, drawing focus to his face and upper body.</span>
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.3">At the bottom right corner of the poster, there is more text indicating the date of the event: ”Friday 23 January 2015.” This provides a specific time frame for when the event or release of the documentary/film would have taken place.</span>
<span class="ltx_p" id="A4.3.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.4">Overall, the poster uses visual elements such as the Neanderthal figure and the title to convey information about the subject matter, while also providing essential details like the target audience and the date of the event. The design effectively captures attention and communicates key information to viewers.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 demonstrates EVEv2.0's capability to accurately extract text information from PowerPoint slides.  It showcases the model's proficiency in Optical Character Recognition (OCR), a crucial aspect of multimodal understanding where the model needs to correctly identify and interpret text within images.  The table likely contains examples of PowerPoint slides and the corresponding text extracted by EVEv2.0, highlighting the model's ability to handle various formatting styles and layouts commonly encountered in presentations.
> <details>
> <summary>read the caption</summary>
> Table 7: EVEv2.0 exhibits excellent OCR recognition capabilities in understanding PowerPoint.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="628" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6191103/figures/examples/background.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_left" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1">
<span class="ltx_p" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1.1" style="width:512.1pt;">Please describe the image in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1.1" style="font-size:80%;">EVEv2.0</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1">
<span class="ltx_p" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.1" style="width:512.1pt;">In the image, there is a man standing in front of a bathroom mirror, taking a selfie with his cell phone. He is wearing a purple shirt and leopard print pants. The man appears to be smiling as he captures the photo.</span>
<span class="ltx_p" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.2">In the background, there is a potted plant with white flowers placed on the counter near the sink. The sink is white and has a modern design. There is also a poster hanging on the wall next to the mirror. The poster features a silhouette of a person’s head with several circles on it. Below the silhouette, there is text that reads ”COME SETS,” followed by some additional information about Friday night events at Codame.com.</span>
<span class="ltx_p" id="A4.4.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.3">The bathroom appears to be well-lit, likely due to natural light coming from a window or another source not visible in the image. The overall atmosphere seems casual and relaxed, with the man enjoying his time in the bathroom while capturing a moment through his phone camera.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 showcases EVEv2.0's capacity to thoroughly grasp the visual details of a poster.  It demonstrates the model's ability to not only identify the main components (title, text, image) but also accurately describe their content and context, including the subject of the poster (Neanderthals), its likely target audience (students), and even subtle details such as the date and style.  This example highlights the model's advanced visual recognition capabilities and its capacity for complex scene understanding.
> <details>
> <summary>read the caption</summary>
> Table 8: EVEv2.0 exhibits excellent visual recognition capabilities in understanding Poster.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="471" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6191103/figures/examples/mac.jpg" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_left" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1">
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1.1" style="width:512.1pt;">Please describe the image in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1.1" style="font-size:80%;">EVEv2.0</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1">
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.1" style="width:512.1pt;">The image depicts a well-organized workspace featuring a wooden desk with various items on it. At the center of the desk is a closed silver laptop computer, which has an Apple logo on its lid. This laptop is accompanied by a white keyboard placed directly in front of it, suggesting that the user might prefer using an external keyboard for typing.</span>
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.2">To the right of the laptop, there is a white wireless mouse, indicating that the user also utilizes a mouse for navigation and other tasks. On the left side of the desk, there is a glass containing a beverage, possibly water or another drink, which is positioned near the edge of the desk.</span>
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.3">In addition to these items, there are two cylindrical objects resembling speakers, one on each side of the desk. These speakers likely provide audio output for the user while working or listening to music.</span>
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.4">Behind the desk, there is a bookshelf filled with numerous books, suggesting that the user may have a keen interest in reading or research. The presence of multiple books indicates that this workspace could be used for studying, work, or leisure activities involving reading.</span>
<span class="ltx_p" id="A4.5.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.5">Overall, the image portrays a functional and organized workspace designed for productivity and comfort, with essential computing equipment and additional accessories such as speakers and a beverage.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 showcases EVEv2.0's performance on a real-world image understanding task. The image depicts a person taking a selfie in a bathroom. The model accurately identifies various objects in the scene, including the person, their clothing, a plant, a sink, and a poster on the wall, demonstrating its capacity for detailed visual recognition and comprehension.
> <details>
> <summary>read the caption</summary>
> Table 9: EVEv2.0 exhibits excellent recognition capabilities in the real-world scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<td class="ltx_td" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:512.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="573" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6191103/figures/examples/som.png" width="628"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_left" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.1.1" style="font-size:80%;">User</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1">
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.2.2.1.1" style="width:512.1pt;">Here is an image with objects labeled in numbers. Please describe the objects that are marked as 9, 12 and 15.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.1.1" style="font-size:80%;">EVEv2.0</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1">
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.1" style="width:512.1pt;">In the image, there are three objects marked with numbers: 9, 12, and 15.</span>
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.2">Object 9: A laptop computer is placed on the desk. It appears to be open and ready for use.</span>
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.3">Object 12: A lamp is situated near the desk, providing light for the workspace. It has a sleek design and complements the overall aesthetic of the room.</span>
<span class="ltx_p" id="A4.6.1.p1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.3.2.1.4">Object 15: A potted plant is located on the desk, adding a touch of greenery and life to the space. It contributes to creating a more pleasant and inviting atmosphere in the room.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 showcases EVEv2.0's performance on a real-world image.  The image contains a variety of common household items arranged on a desk, including a laptop, keyboard, mouse, drink, speakers, and a bookshelf in the background.  The caption highlights that the model successfully identifies and describes these objects, demonstrating its ability to understand complex and diverse real-world scenes.
> <details>
> <summary>read the caption</summary>
> Table 10: EVEv2.0 exhibits excellent recognition capabilities in the real-world scene.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06788/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06788/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}