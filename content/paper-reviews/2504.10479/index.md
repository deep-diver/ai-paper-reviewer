---
title: "InternVL3: Exploring Advanced Training and Test-Time Recipes for Open-Source Multimodal Models"
summary: "InternVL3: A new open-source multimodal model achieves state-of-the-art results, offering advanced training and test-time recipes."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10479 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinguo Zhu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10479" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10479" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10479/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models(MLLMs) are advancing artificial intelligence. However, most models adapt text-only models through multi-stage pipelines, leading to alignment challenges. This paper introduces InternVL3, improving on the InternVL series with native multimodal pre-training, addressing complexities of conventional training. This unified approach enables simultaneous acquisition of linguistic and multimodal competencies. 



InternVL3 incorporates variable visual position encoding (V2PE) for extended contexts, along with advanced post-training and optimized infrastructure. It surpasses predecessors across tasks and is competitive with proprietary models. The 78B model achieves 72.2 on MMMU, setting a new open-source standard. Training data and weights will be released.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} InternVL3 employs native multimodal pre-training, jointly learning language and vision. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It achieves state-of-the-art performance among open-source MLLMs on MMMU benchmark. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The training data and model weights are publicly released. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
InternVL3 is crucial for researchers as it sets a new standard among **open-source MLLMs**, rivaling proprietary models in performance. Publicly available training data and model weights will accelerate advancements. It offers a strong foundation for future multimodal AI innovations.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10479/x1.png)

> 🔼 This figure compares the performance of InternVL3 with other state-of-the-art multimodal large language models (MLLMs), both open-source and closed-source.  It showcases the consistent improvement in multimodal capabilities across the InternVL series (InternVL2.5 and InternVL3), highlighting InternVL3's superior performance compared to open-source alternatives.  Furthermore, the figure demonstrates that InternVL3's performance is highly competitive, even against leading commercial models like ChatGPT-40, Claude 3.5 Sonnet, and Gemini 2.5 Pro.
> <details>
> <summary>read the caption</summary>
> Figure 1: Multimodal performance of the InternVL series and other advanced MLLMs. The InternVL series has consistently exhibited progressive enhancements in multimodal capabilities. The newly released InternVL3 significantly outperforms existing open-source MLLMs. Moreover, even in comparison with state-of-the-art closed-source commercial models, InternVL3 continues to demonstrate highly competitive performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.2">
<tr class="ltx_tr" id="S2.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.2.1.1" style="padding:0.25pt 7.0pt;">Model Name</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.1.2" style="padding:0.25pt 7.0pt;">#Param</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.1.3" style="padding:0.25pt 7.0pt;">Vision Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.1.4" style="padding:0.25pt 7.0pt;">Language Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.1.5" style="padding:0.25pt 7.0pt;">OpenCompass Academic</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.2.2.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-1B" title="">InternVL3-1B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.2.2" style="padding:0.25pt 7.0pt;">0.9B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.2.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-300M-448px-V2_5" title="">InternViT-300M-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.2.2.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-0.5B" title="">Qwen2.5-0.5B</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.5" style="padding:0.25pt 7.0pt;">57.4</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.2.3.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-2B" title="">InternVL3-2B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.3.2" style="padding:0.25pt 7.0pt;">1.9B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.3.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-300M-448px-V2_5" title="">InternViT-300M-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.3.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-1.5B" title="">Qwen2.5-1.5B</a></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.5" style="padding:0.25pt 7.0pt;">63.9</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.2.4.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-8B" title="">InternVL3-8B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.4.2" style="padding:0.25pt 7.0pt;">8.1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.4.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-300M-448px-V2_5" title="">InternViT-300M-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.4.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-7B" title="">Qwen2.5-7B</a></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.4.5" style="padding:0.25pt 7.0pt;">73.3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.2.5.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-9B" title="">InternVL3-9B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.5.2" style="padding:0.25pt 7.0pt;">9.2B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.5.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-300M-448px-V2_5" title="">InternViT-300M-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.5.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/internlm/internlm3-8b-instruct" title="">InternLM3-8B</a></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.5.5" style="padding:0.25pt 7.0pt;">72.4</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.2.6.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-14B" title="">InternVL3-14B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.6.2" style="padding:0.25pt 7.0pt;">15.1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.6.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-300M-448px-V2_5" title="">InternViT-300M-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.6.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-14B" title="">Qwen2.5-14B</a></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.6.5" style="padding:0.25pt 7.0pt;">75.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.2.7.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-38B" title="">InternVL3-38B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.7.2" style="padding:0.25pt 7.0pt;">38.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.7.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-6B-448px-V2_5" title="">InternViT-6B-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.7.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-32B" title="">Qwen2.5-32B</a></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.7.5" style="padding:0.25pt 7.0pt;">77.3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.8">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S2.T1.2.8.1" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternVL3-78B" title="">InternVL3-78B</a></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T1.2.8.2" style="padding:0.25pt 7.0pt;">78.4B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T1.2.8.3" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/OpenGVLab/InternViT-6B-448px-V2_5" title="">InternViT-6B-448px-V2.5</a></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T1.2.8.4" style="padding:0.25pt 7.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-72B" title="">Qwen2.5-72B</a></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.2.8.5" style="padding:0.25pt 7.0pt;">79.5</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the different pre-trained models used in the InternVL3 series.  It lists each model's name, the number of parameters (in billions), the type of vision encoder used (InternViT-300M or InternViT-6B, along with the image resolution and V2PE version), the language model employed (from the Qwen2.5 series or InternLM3-8B), and finally, the OpenCompass academic score achieved by each model. Note that the OpenCompass scores for InternVL3 were obtained through local testing by the authors and not from the official OpenCompass leaderboard.
> <details>
> <summary>read the caption</summary>
> Table 1:  Pre-trained models used in the InternVL3 series. The OpenCompass scores for the InternVL3 series were obtained through our local testing.
> </details>





### In-depth insights


#### Native Multi-modal
The research introduces a novel "native multimodal pre-training" approach, **consolidating language pre-training and multimodal alignment into a single stage**, unlike conventional methods that adapt language models post-training. This integrated approach involves interleaving multimodal data with large-scale textual corpora, enabling simultaneous learning of linguistic and multimodal capabilities. This enhances the model's ability to handle vision-language tasks without needing additional bridging modules or inter-model alignment procedures. A key element is the multimodal autoregressive formulation, restricting loss computation to text tokens while using visual tokens for context. This strategy ensures the model embeds multimodal info beneficially for language tasks. The method trains all model parameters jointly during pre-training, ensuring that both text representations and visual features are learned in tandem. Data-wise, the training utilizes both multimodal data, including a diverse set of tasks, and pure language data to maintain language proficiency, striking a balance between both types.

#### InternVL3: Overview
**InternVL3** marks a significant advancement in multimodal learning, distinguished by its native pre-training approach. Unlike conventional methods that adapt text-only models, InternVL3 jointly learns multimodal and linguistic capabilities. This unified approach addresses complexities in post-hoc training pipelines. Key innovations include variable visual position encoding (V2PE) for extended contexts and advanced post-training techniques like supervised fine-tuning (SFT) and mixed preference optimization (MPO). Test-time scaling strategies are also integrated. The model achieves state-of-the-art performance among open-source models, scoring 72.2 on the MMMU benchmark and competing with proprietary models like ChatGPT-4o. The release of training data and model weights promotes open science and further research. The core architecture follows the "ViT-MLP-LLM" paradigm, initialized with pre-trained weights from InternViT and Qwen2.5 series, respectively. V2PE is integrated for flexible position encoding. A two-stage strategy including SFT and MPO is applied to enhance multimodal conversation and reasoning. The InternEVO framework is extended for efficient scaling and dynamic workload balance.

#### Model Scales Well
From the context, **InternVL3** shows a positive trend with increasing model size, indicating good scaling behavior. The models with larger parameter counts tend to perform better on a variety of tasks. This can be seen in improvements on many benchmarks when comparing InternVL3-8B to InternVL3-38B, or InternVL3-78B. However, there are diminishing returns, with incremental gains decreasing as the model size increases. There are some tasks, the performance gains appear to plateau at larger model sizes, suggesting that the complexity of these tasks requires other improvements such as better training data or different architectures instead of more model parameters. It means, for certain modalities, the training data or the model architecture itself may impose bottlenecks on scalability. Future research should investigate methods to maintain scaling efficiency, such as optimizing the architecture or incorporating techniques to improve model training at a larger scale. This trend shows that **larger models are generally better**, but also hints at the importance of factors beyond sheer parameter count.

#### MPO's Edge
I interpret 'MPO's Edge' as referring to the **advantages conferred by Mixed Preference Optimization** during fine-tuning MLLMs. MPO likely sharpens a model's response distribution, aligning it more closely with desired characteristics (**human preferences or ground truth**), crucial for tasks demanding subtle reasoning or nuance. It likely mitigates issues arising from discrepancies between training (ground truth) and inference (model-generated tokens), boosting chain-of-thought. **It likely improves overall response quality**, potentially making the model less prone to generating nonsensical or hallucinated outputs. In essence, MPO enhances the model's reliability and finesse, yielding more valuable and consistent performance gains.

#### Future GUI Vision
**Future GUI Vision** is an exciting concept with implications for AI. The research paper highlights the importance of precise understanding of interfaces for automation. Future advancements could involve developing more sophisticated GUI agents capable of handling dynamic and complex layouts. These agents could also incorporate spatial reasoning to grasp 3D elements and real-world context, leading to more intuitive human-computer interactions. Further improvements to training data curation and models could significantly enhance overall performance in interactive GUI environments.The use of multimodal learning will revolutionize the way humans and computers interact, promising streamlined and more efficient applications. This requires robust vision models, improved comprehension of layouts, and dynamic adjustments to interface configurations, paving the way for intuitive applications. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10479/x2.png)

> 🔼 Figure 2 presents a comprehensive comparison of various multimodal large language models (MLLMs) on the OpenCompass academic leaderboard, which assesses multimodal capabilities.  InternVL3 significantly outperforms other open-source models (including the Qwen2.5-VL series) and achieves highly competitive results against several leading closed-source commercial MLLMs (Step-10, GLM-4v-Plus, GPT-40, and Gemini-2.5-Pro). The chart visually demonstrates InternVL3's superior performance across different model sizes, particularly InternVL3-78B, highlighting its strong multimodal capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Performance of various MLLMs on the OpenCompass multimodal academic leaderboard. The enhanced InternVL series—InternVL3—demonstrates outstanding multimodal capabilities, significantly outperforming both the Qwen2.5-VL series and closed-source models such as Step-1o, GLM-4v-Plus, and GPT-4o. Remarkably, InternVL3-78B also remains highly competitive with the state-of-the-art Gemini-2.5-Pro.
> </details>



![](https://arxiv.org/html/2504.10479/x3.png)

> 🔼 This figure compares the performance of models trained with different strategies on several multimodal benchmarks.  Specifically, it contrasts the performance of models trained with and without native multimodal pre-training.  The results demonstrate that native multimodal pre-training significantly improves performance on these benchmarks, even before any additional post-training such as supervised fine-tuning. This suggests that jointly learning multimodal and linguistic skills during the initial training phase offers a significant advantage over traditional approaches of first training a text-only model and then adapting it to multimodal data.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance comparison on multimodal benchmarks under different training strategies. Native multimodal pre-training endows MLLMs with strong multimodal capabilities, even without further post-training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.18">
<tr class="ltx_tr" id="S3.T2.18.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.19.1" style="padding:-0.5pt 4.0pt;">Model</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.2" style="padding:-0.5pt 4.0pt;">MMMU</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.3" style="padding:-0.5pt 4.0pt;">MathVista</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.4" style="padding:-0.5pt 4.0pt;">MathVision</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.5" style="padding:-0.5pt 4.0pt;">MathVerse</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.6" style="padding:-0.5pt 4.0pt;">DynaMath</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.7" style="padding:-0.5pt 4.0pt;">WeMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.19.8" style="padding:-0.5pt 4.0pt;">LogicVista</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.19.9" style="padding:-0.5pt 4.0pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.6.6.7" style="padding:-0.5pt 4.0pt;">LLaVA-OV-0.5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.8" style="padding:-0.5pt 4.0pt;">31.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.9" style="padding:-0.5pt 4.0pt;">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" xref="S3.T2.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><minus id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><minus id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" xref="S3.T2.3.3.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><minus id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.4" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" xref="S3.T2.4.4.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><minus id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.5.5" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.m1.1.1" xref="S3.T2.5.5.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.m1.1b"><minus id="S3.T2.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.m1.1.1" xref="S3.T2.6.6.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.m1.1b"><minus id="S3.T2.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.20.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.2" style="padding:-0.5pt 4.0pt;">41.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.3" style="padding:-0.5pt 4.0pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.4" style="padding:-0.5pt 4.0pt;">21.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.5" style="padding:-0.5pt 4.0pt;">16.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.6" style="padding:-0.5pt 4.0pt;">5.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.7" style="padding:-0.5pt 4.0pt;">11.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.20.8" style="padding:-0.5pt 4.0pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.20.9" style="padding:-0.5pt 4.0pt;">24.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.21" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.21.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.1.1" style="background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.2.1" style="background-color:#ECECEC;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.3.1" style="background-color:#ECECEC;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.4.1" style="background-color:#ECECEC;">18.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.5.1" style="background-color:#ECECEC;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.6.1" style="background-color:#ECECEC;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.7.1" style="background-color:#ECECEC;">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.21.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.8.1" style="background-color:#ECECEC;">29.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.21.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.21.9.1" style="background-color:#ECECEC;">25.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.22" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.22.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.22.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.22.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.2.1" style="background-color:#ECECEC;">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.3.1" style="background-color:#ECECEC;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.4.1" style="background-color:#ECECEC;">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.5.1" style="background-color:#ECECEC;">28.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.6.1" style="background-color:#ECECEC;">13.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.7.1" style="background-color:#ECECEC;">28.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.22.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.8.1" style="background-color:#ECECEC;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.22.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.22.9.1" style="background-color:#ECECEC;">35.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.23">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.18.23.1" style="padding:-0.5pt 4.0pt;">Aquila-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.2" style="padding:-0.5pt 4.0pt;">46.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.3" style="padding:-0.5pt 4.0pt;">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.4" style="padding:-0.5pt 4.0pt;">17.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.5" style="padding:-0.5pt 4.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.6" style="padding:-0.5pt 4.0pt;">5.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.7" style="padding:-0.5pt 4.0pt;">15.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.18.23.8" style="padding:-0.5pt 4.0pt;">30.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.23.9" style="padding:-0.5pt 4.0pt;">27.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.24.1" style="padding:-0.5pt 4.0pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.2" style="padding:-0.5pt 4.0pt;">51.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.3" style="padding:-0.5pt 4.0pt;">61.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.4" style="padding:-0.5pt 4.0pt;">21.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.5" style="padding:-0.5pt 4.0pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.6" style="padding:-0.5pt 4.0pt;">13.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.7" style="padding:-0.5pt 4.0pt;">22.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.24.8" style="padding:-0.5pt 4.0pt;">40.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.24.9" style="padding:-0.5pt 4.0pt;">34.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.25.1" style="padding:-0.5pt 4.0pt;">Ovis-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.2" style="padding:-0.5pt 4.0pt;">45.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.3" style="padding:-0.5pt 4.0pt;">64.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.4" style="padding:-0.5pt 4.0pt;">17.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.5" style="padding:-0.5pt 4.0pt;">29.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.6" style="padding:-0.5pt 4.0pt;">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.7" style="padding:-0.5pt 4.0pt;">9.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.25.8" style="padding:-0.5pt 4.0pt;">34.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.25.9" style="padding:-0.5pt 4.0pt;">30.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.26.1" style="padding:-0.5pt 4.0pt;">Ovis-4B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.2" style="padding:-0.5pt 4.0pt;">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.3" style="padding:-0.5pt 4.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.4" style="padding:-0.5pt 4.0pt;">21.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.5" style="padding:-0.5pt 4.0pt;">38.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.6" style="padding:-0.5pt 4.0pt;">18.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.7" style="padding:-0.5pt 4.0pt;">16.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.26.8" style="padding:-0.5pt 4.0pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.26.9" style="padding:-0.5pt 4.0pt;">35.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.27.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.2" style="padding:-0.5pt 4.0pt;">43.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.3" style="padding:-0.5pt 4.0pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.4" style="padding:-0.5pt 4.0pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.5" style="padding:-0.5pt 4.0pt;">22.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.6" style="padding:-0.5pt 4.0pt;">4.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.7" style="padding:-0.5pt 4.0pt;">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.27.8" style="padding:-0.5pt 4.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.27.9" style="padding:-0.5pt 4.0pt;">24.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.28.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-4B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.2" style="padding:-0.5pt 4.0pt;">51.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.3" style="padding:-0.5pt 4.0pt;">64.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.4" style="padding:-0.5pt 4.0pt;">18.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.5" style="padding:-0.5pt 4.0pt;">27.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.6" style="padding:-0.5pt 4.0pt;">15.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.7" style="padding:-0.5pt 4.0pt;">21.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.28.8" style="padding:-0.5pt 4.0pt;">34.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.28.9" style="padding:-0.5pt 4.0pt;">33.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.29" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.29.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.1.1" style="background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.2.1" style="background-color:#ECECEC;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.3.1" style="background-color:#ECECEC;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.4.1" style="background-color:#ECECEC;">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.5.1" style="background-color:#ECECEC;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.6.1" style="background-color:#ECECEC;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.7.1" style="background-color:#ECECEC;">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.29.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.8.1" style="background-color:#ECECEC;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.29.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.29.9.1" style="background-color:#ECECEC;">32.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.30" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.30.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.30.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.30.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.2.1" style="background-color:#ECECEC;">57.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.3.1" style="background-color:#ECECEC;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.4.1" style="background-color:#ECECEC;">26.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.5.1" style="background-color:#ECECEC;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.6.1" style="background-color:#ECECEC;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.7.1" style="background-color:#ECECEC;">38.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.30.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.8.1" style="background-color:#ECECEC;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.30.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.30.9.1" style="background-color:#ECECEC;">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.31">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.18.31.1" style="padding:-0.5pt 4.0pt;">LLaVA-OV-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.2" style="padding:-0.5pt 4.0pt;">47.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.3" style="padding:-0.5pt 4.0pt;">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.4" style="padding:-0.5pt 4.0pt;">18.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.5" style="padding:-0.5pt 4.0pt;">19.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.6" style="padding:-0.5pt 4.0pt;">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.7" style="padding:-0.5pt 4.0pt;">20.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.18.31.8" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.31.9" style="padding:-0.5pt 4.0pt;">29.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.32.1" style="padding:-0.5pt 4.0pt;">MiniCPM-V2.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.2" style="padding:-0.5pt 4.0pt;">49.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.3" style="padding:-0.5pt 4.0pt;">60.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.4" style="padding:-0.5pt 4.0pt;">23.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.5" style="padding:-0.5pt 4.0pt;">18.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.6" style="padding:-0.5pt 4.0pt;">9.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.7" style="padding:-0.5pt 4.0pt;">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.32.8" style="padding:-0.5pt 4.0pt;">27.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.32.9" style="padding:-0.5pt 4.0pt;">29.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.33.1" style="padding:-0.5pt 4.0pt;">MiniCPM-o2.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.2" style="padding:-0.5pt 4.0pt;">50.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.3" style="padding:-0.5pt 4.0pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.4" style="padding:-0.5pt 4.0pt;">21.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.5" style="padding:-0.5pt 4.0pt;">35.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.6" style="padding:-0.5pt 4.0pt;">10.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.7" style="padding:-0.5pt 4.0pt;">25.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.33.8" style="padding:-0.5pt 4.0pt;">36.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.33.9" style="padding:-0.5pt 4.0pt;">36.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.34.1" style="padding:-0.5pt 4.0pt;">Ovis-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.2" style="padding:-0.5pt 4.0pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.3" style="padding:-0.5pt 4.0pt;">71.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.4" style="padding:-0.5pt 4.0pt;">25.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.5" style="padding:-0.5pt 4.0pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.6" style="padding:-0.5pt 4.0pt;">20.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.7" style="padding:-0.5pt 4.0pt;">27.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.34.8" style="padding:-0.5pt 4.0pt;">39.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.34.9" style="padding:-0.5pt 4.0pt;">40.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.35.1" style="padding:-0.5pt 4.0pt;">Qwen2.5-VL-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.2" style="padding:-0.5pt 4.0pt;">55.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.3" style="padding:-0.5pt 4.0pt;">67.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.4" style="padding:-0.5pt 4.0pt;">25.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.5" style="padding:-0.5pt 4.0pt;">41.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.6" style="padding:-0.5pt 4.0pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.7" style="padding:-0.5pt 4.0pt;">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.35.8" style="padding:-0.5pt 4.0pt;">44.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.35.9" style="padding:-0.5pt 4.0pt;">41.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.36.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.2" style="padding:-0.5pt 4.0pt;">56.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.3" style="padding:-0.5pt 4.0pt;">64.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.4" style="padding:-0.5pt 4.0pt;">17.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.5" style="padding:-0.5pt 4.0pt;">22.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.6" style="padding:-0.5pt 4.0pt;">9.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.7" style="padding:-0.5pt 4.0pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.36.8" style="padding:-0.5pt 4.0pt;">36.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.36.9" style="padding:-0.5pt 4.0pt;">32.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.37" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.37.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.2.1" style="background-color:#ECECEC;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.3.1" style="background-color:#ECECEC;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.4.1" style="background-color:#ECECEC;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.5.1" style="background-color:#ECECEC;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.6.1" style="background-color:#ECECEC;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.7.1" style="background-color:#ECECEC;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.37.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.8.1" style="background-color:#ECECEC;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.37.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.37.9.1" style="background-color:#ECECEC;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.38" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.38.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.38.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.38.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.2.1" style="background-color:#ECECEC;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.3.1" style="background-color:#ECECEC;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.4.1" style="background-color:#ECECEC;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.5.1" style="background-color:#ECECEC;">46.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.6.1" style="background-color:#ECECEC;">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.7.1" style="background-color:#ECECEC;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.38.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.8.1" style="background-color:#ECECEC;">49.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.38.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.38.9.1" style="background-color:#ECECEC;">50.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.39" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.18.39.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.1.1" style="background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.2.1" style="background-color:#ECECEC;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.3.1" style="background-color:#ECECEC;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.4.1" style="background-color:#ECECEC;">27.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.5.1" style="background-color:#ECECEC;">35.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.6.1" style="background-color:#ECECEC;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.7.1" style="background-color:#ECECEC;">33.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.18.39.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.8.1" style="background-color:#ECECEC;">49.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.39.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.39.9.1" style="background-color:#ECECEC;">43.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.40" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.40.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.40.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.40.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.2.1" style="background-color:#ECECEC;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.3.1" style="background-color:#ECECEC;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.4.1" style="background-color:#ECECEC;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.5.1" style="background-color:#ECECEC;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.6.1" style="background-color:#ECECEC;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.7.1" style="background-color:#ECECEC;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.40.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.8.1" style="background-color:#ECECEC;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.40.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.40.9.1" style="background-color:#ECECEC;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.41">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.18.41.1" style="padding:-0.5pt 4.0pt;">Ovis2-16B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.2" style="padding:-0.5pt 4.0pt;">60.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.3" style="padding:-0.5pt 4.0pt;">73.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.4" style="padding:-0.5pt 4.0pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.5" style="padding:-0.5pt 4.0pt;">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.6" style="padding:-0.5pt 4.0pt;">26.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.7" style="padding:-0.5pt 4.0pt;">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.18.41.8" style="padding:-0.5pt 4.0pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.41.9" style="padding:-0.5pt 4.0pt;">47.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.42">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.42.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.2" style="padding:-0.5pt 4.0pt;">60.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.3" style="padding:-0.5pt 4.0pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.4" style="padding:-0.5pt 4.0pt;">23.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.5" style="padding:-0.5pt 4.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.6" style="padding:-0.5pt 4.0pt;">11.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.7" style="padding:-0.5pt 4.0pt;">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.42.8" style="padding:-0.5pt 4.0pt;">39.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.42.9" style="padding:-0.5pt 4.0pt;">36.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.43" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.43.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.1.1" style="background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.2.1" style="background-color:#ECECEC;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.3.1" style="background-color:#ECECEC;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.4.1" style="background-color:#ECECEC;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.5.1" style="background-color:#ECECEC;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.6.1" style="background-color:#ECECEC;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.7.1" style="background-color:#ECECEC;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.43.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.8.1" style="background-color:#ECECEC;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.43.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.43.9.1" style="background-color:#ECECEC;">49.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.44" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.44.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.44.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.44.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.2.1" style="background-color:#ECECEC;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.3.1" style="background-color:#ECECEC;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.4.1" style="background-color:#ECECEC;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.5.1" style="background-color:#ECECEC;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.6.1" style="background-color:#ECECEC;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.7.1" style="background-color:#ECECEC;">52.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.44.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.8.1" style="background-color:#ECECEC;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.44.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.44.9.1" style="background-color:#ECECEC;">53.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.12.12.7" style="padding:-0.5pt 4.0pt;">Cambrian-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.12.8" style="padding:-0.5pt 4.0pt;">49.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.12.9" style="padding:-0.5pt 4.0pt;">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.1" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.7.7.1.m1.1"><semantics id="S3.T2.7.7.1.m1.1a"><mo id="S3.T2.7.7.1.m1.1.1" xref="S3.T2.7.7.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.1.m1.1b"><minus id="S3.T2.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.2" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.8.8.2.m1.1"><semantics id="S3.T2.8.8.2.m1.1a"><mo id="S3.T2.8.8.2.m1.1.1" xref="S3.T2.8.8.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.2.m1.1b"><minus id="S3.T2.8.8.2.m1.1.1.cmml" xref="S3.T2.8.8.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.3" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.9.9.3.m1.1"><semantics id="S3.T2.9.9.3.m1.1a"><mo id="S3.T2.9.9.3.m1.1.1" xref="S3.T2.9.9.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.3.m1.1b"><minus id="S3.T2.9.9.3.m1.1.1.cmml" xref="S3.T2.9.9.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.4" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.10.10.4.m1.1"><semantics id="S3.T2.10.10.4.m1.1a"><mo id="S3.T2.10.10.4.m1.1.1" xref="S3.T2.10.10.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.4.m1.1b"><minus id="S3.T2.10.10.4.m1.1.1.cmml" xref="S3.T2.10.10.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.11.11.5" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.11.11.5.m1.1"><semantics id="S3.T2.11.11.5.m1.1a"><mo id="S3.T2.11.11.5.m1.1.1" xref="S3.T2.11.11.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.5.m1.1b"><minus id="S3.T2.11.11.5.m1.1.1.cmml" xref="S3.T2.11.11.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.12.6" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.12.12.6.m1.1"><semantics id="S3.T2.12.12.6.m1.1a"><mo id="S3.T2.12.12.6.m1.1.1" xref="S3.T2.12.12.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.6.m1.1b"><minus id="S3.T2.12.12.6.m1.1.1.cmml" xref="S3.T2.12.12.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.6.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.18.7" style="padding:-0.5pt 4.0pt;">VILA-1.5-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.8" style="padding:-0.5pt 4.0pt;">55.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.9" style="padding:-0.5pt 4.0pt;">49.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.1" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.13.13.1.m1.1"><semantics id="S3.T2.13.13.1.m1.1a"><mo id="S3.T2.13.13.1.m1.1.1" xref="S3.T2.13.13.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.1.m1.1b"><minus id="S3.T2.13.13.1.m1.1.1.cmml" xref="S3.T2.13.13.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.14.14.2" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.14.14.2.m1.1"><semantics id="S3.T2.14.14.2.m1.1a"><mo id="S3.T2.14.14.2.m1.1.1" xref="S3.T2.14.14.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.2.m1.1b"><minus id="S3.T2.14.14.2.m1.1.1.cmml" xref="S3.T2.14.14.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.3" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.15.15.3.m1.1"><semantics id="S3.T2.15.15.3.m1.1a"><mo id="S3.T2.15.15.3.m1.1.1" xref="S3.T2.15.15.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.3.m1.1b"><minus id="S3.T2.15.15.3.m1.1.1.cmml" xref="S3.T2.15.15.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.4" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.16.16.4.m1.1"><semantics id="S3.T2.16.16.4.m1.1a"><mo id="S3.T2.16.16.4.m1.1.1" xref="S3.T2.16.16.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.4.m1.1b"><minus id="S3.T2.16.16.4.m1.1.1.cmml" xref="S3.T2.16.16.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.17.17.5" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.17.17.5.m1.1"><semantics id="S3.T2.17.17.5.m1.1a"><mo id="S3.T2.17.17.5.m1.1.1" xref="S3.T2.17.17.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.17.17.5.m1.1b"><minus id="S3.T2.17.17.5.m1.1.1.cmml" xref="S3.T2.17.17.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.17.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.17.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.6" style="padding:-0.5pt 4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.18.18.6.m1.1"><semantics id="S3.T2.18.18.6.m1.1a"><mo id="S3.T2.18.18.6.m1.1.1" xref="S3.T2.18.18.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.18.18.6.m1.1b"><minus id="S3.T2.18.18.6.m1.1.1.cmml" xref="S3.T2.18.18.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.18.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.18.6.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.45">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.45.1" style="padding:-0.5pt 4.0pt;">Ovis2-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.2" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.3" style="padding:-0.5pt 4.0pt;">76.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.4" style="padding:-0.5pt 4.0pt;">31.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.5" style="padding:-0.5pt 4.0pt;">50.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.6" style="padding:-0.5pt 4.0pt;">27.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.7" style="padding:-0.5pt 4.0pt;">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.45.8" style="padding:-0.5pt 4.0pt;">49.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.45.9" style="padding:-0.5pt 4.0pt;">50.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.46">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.46.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-38B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.2" style="padding:-0.5pt 4.0pt;">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.3" style="padding:-0.5pt 4.0pt;">71.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.4" style="padding:-0.5pt 4.0pt;">32.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.5" style="padding:-0.5pt 4.0pt;">36.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.6" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.7" style="padding:-0.5pt 4.0pt;">38.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.46.8" style="padding:-0.5pt 4.0pt;">47.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.46.9" style="padding:-0.5pt 4.0pt;">44.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.47" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.47.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.2.1" style="background-color:#ECECEC;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.3.1" style="background-color:#ECECEC;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.4.1" style="background-color:#ECECEC;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.5.1" style="background-color:#ECECEC;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.6.1" style="background-color:#ECECEC;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.7.1" style="background-color:#ECECEC;">48.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.47.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.8.1" style="background-color:#ECECEC;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.47.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.47.9.1" style="background-color:#ECECEC;">52.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.48" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.48.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.48.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.48.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.2.1" style="background-color:#ECECEC;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.3.1" style="background-color:#ECECEC;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.4.1" style="background-color:#ECECEC;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.5.1" style="background-color:#ECECEC;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.6.1" style="background-color:#ECECEC;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.7.1" style="background-color:#ECECEC;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.48.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.8.1" style="background-color:#ECECEC;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.48.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.48.9.1" style="background-color:#ECECEC;">56.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.49">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.18.49.1" style="padding:-0.5pt 4.0pt;">GPT-4o-20241120 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.2" style="padding:-0.5pt 4.0pt;">70.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.3" style="padding:-0.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.4" style="padding:-0.5pt 4.0pt;">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.5" style="padding:-0.5pt 4.0pt;">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.6" style="padding:-0.5pt 4.0pt;">34.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.7" style="padding:-0.5pt 4.0pt;">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.18.49.8" style="padding:-0.5pt 4.0pt;">52.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.18.49.9" style="padding:-0.5pt 4.0pt;">47.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.50">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.50.1" style="padding:-0.5pt 4.0pt;">Claude-3.7-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.2" style="padding:-0.5pt 4.0pt;">75.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.3" style="padding:-0.5pt 4.0pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.4" style="padding:-0.5pt 4.0pt;">41.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.5" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.6" style="padding:-0.5pt 4.0pt;">39.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.7" style="padding:-0.5pt 4.0pt;">49.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.50.8" style="padding:-0.5pt 4.0pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.50.9" style="padding:-0.5pt 4.0pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.51">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.51.1" style="padding:-0.5pt 4.0pt;">Gemini-2.0-Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.2" style="padding:-0.5pt 4.0pt;">72.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.3" style="padding:-0.5pt 4.0pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.4" style="padding:-0.5pt 4.0pt;">43.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.5" style="padding:-0.5pt 4.0pt;">47.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.6" style="padding:-0.5pt 4.0pt;">42.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.7" style="padding:-0.5pt 4.0pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.51.8" style="padding:-0.5pt 4.0pt;">52.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.51.9" style="padding:-0.5pt 4.0pt;">53.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.52">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.52.1" style="padding:-0.5pt 4.0pt;">Gemini-2.0-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.2" style="padding:-0.5pt 4.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.3" style="padding:-0.5pt 4.0pt;">71.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.4" style="padding:-0.5pt 4.0pt;">48.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.5" style="padding:-0.5pt 4.0pt;">67.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.6" style="padding:-0.5pt 4.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.7" style="padding:-0.5pt 4.0pt;">56.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.52.8" style="padding:-0.5pt 4.0pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.52.9" style="padding:-0.5pt 4.0pt;">58.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.53">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.53.1" style="padding:-0.5pt 4.0pt;">LLaVA-OV-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.2" style="padding:-0.5pt 4.0pt;">55.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.3" style="padding:-0.5pt 4.0pt;">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.4" style="padding:-0.5pt 4.0pt;">25.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.5" style="padding:-0.5pt 4.0pt;">27.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.6" style="padding:-0.5pt 4.0pt;">15.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.7" style="padding:-0.5pt 4.0pt;">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.53.8" style="padding:-0.5pt 4.0pt;">40.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.53.9" style="padding:-0.5pt 4.0pt;">37.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.54">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.54.1" style="padding:-0.5pt 4.0pt;">QvQ-72B-Preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib114" title=""><span class="ltx_text" style="font-size:90%;">114</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.2" style="padding:-0.5pt 4.0pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.3" style="padding:-0.5pt 4.0pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.4" style="padding:-0.5pt 4.0pt;">34.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.5" style="padding:-0.5pt 4.0pt;">48.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.6" style="padding:-0.5pt 4.0pt;">30.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.7" style="padding:-0.5pt 4.0pt;">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.54.8" style="padding:-0.5pt 4.0pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.54.9" style="padding:-0.5pt 4.0pt;">50.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.55">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.55.1" style="padding:-0.5pt 4.0pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.2" style="padding:-0.5pt 4.0pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.3" style="padding:-0.5pt 4.0pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.4" style="padding:-0.5pt 4.0pt;">39.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.5" style="padding:-0.5pt 4.0pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.6" style="padding:-0.5pt 4.0pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.7" style="padding:-0.5pt 4.0pt;">49.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.55.8" style="padding:-0.5pt 4.0pt;">55.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.55.9" style="padding:-0.5pt 4.0pt;">52.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.56">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.56.1" style="padding:-0.5pt 4.0pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.2" style="padding:-0.5pt 4.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.3" style="padding:-0.5pt 4.0pt;">72.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.4" style="padding:-0.5pt 4.0pt;">32.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.5" style="padding:-0.5pt 4.0pt;">39.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.6" style="padding:-0.5pt 4.0pt;">19.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.7" style="padding:-0.5pt 4.0pt;">39.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.56.8" style="padding:-0.5pt 4.0pt;">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.56.9" style="padding:-0.5pt 4.0pt;">46.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.57" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.57.1" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.2.1" style="background-color:#ECECEC;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.3.1" style="background-color:#ECECEC;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.4.1" style="background-color:#ECECEC;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.5.1" style="background-color:#ECECEC;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.6.1" style="background-color:#ECECEC;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.7.1" style="background-color:#ECECEC;">46.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.57.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.8.1" style="background-color:#ECECEC;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.57.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.57.9.1" style="background-color:#ECECEC;">54.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.18.58" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.18.58.1" style="padding:-0.5pt 4.0pt;">
<em class="ltx_emph ltx_font_italic" id="S3.T2.18.58.1.1" style="color:#0000FF;background-color:#ECECEC;">w/ VisualPRM-Bo8</em><span class="ltx_text" id="S3.T2.18.58.1.2" style="background-color:#ECECEC;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a>]</cite></span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.2" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.2.1" style="background-color:#ECECEC;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.3.1" style="background-color:#ECECEC;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.4" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.4.1" style="background-color:#ECECEC;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.5.1" style="background-color:#ECECEC;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.6.1" style="background-color:#ECECEC;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.7.1" style="background-color:#ECECEC;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.18.58.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.8.1" style="background-color:#ECECEC;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.58.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.18.58.9.1" style="background-color:#ECECEC;">56.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of various multimodal large language models (MLLMs) across multiple benchmarks focusing on multimodal reasoning and mathematical abilities.  The benchmarks cover diverse aspects, including multidisciplinary reasoning (MMMU), various mathematical problem-solving tasks (MathVista, MathVision, MathVerse, DynaMath, WeMath), and logical reasoning (LogicVista).  The table shows the performance of each model on each benchmark, allowing for a direct comparison of their strengths and weaknesses in these areas.  It also presents the performance when employing a test-time scaling strategy ('w/ VisualPRM-Bo8') that uses the Visual Process Reward Model (VisualPRM) to select the best response among multiple generated options. The 'Overall' score represents an average across all benchmarks, offering a concise summary of each model's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of multimodal reasoning and mathematical performance. MMMU [140] is a multidisciplinary reasoning benchmark. MathVista [79], MathVision [118], MathVerse [145], DynaMath [154], and WeMath [98] are mathematics benchmarks. For MathVerse, we report the performance on Vision-Only split. LogicVista [130] is a logical reasoning benchmark. Part of the results are collected from the OpenCompass leaderboard [26]. The overall score is the average score of the above benchmarks. “w/ VisualPRM-Bo8” denotes that the model is evaluated with Best-of-8 settings, where VisualPRM [124] serves as the critic model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.2">
<tr class="ltx_tr" id="S3.T3.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.1.1" style="padding:-0.25pt 1.5pt;">Model Name</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.2" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.2.1"></span> <span class="ltx_text" id="S3.T3.2.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.2.2.1">
<span class="ltx_tr" id="S3.T3.2.1.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.2.2.1.1.1" style="padding:-0.25pt 1.5pt;">AI2D</span></span>
<span class="ltx_tr" id="S3.T3.2.1.2.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.2.2.1.2.1" style="padding:-0.25pt 1.5pt;">(w / wo M)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.2.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.3" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.3.1"></span> <span class="ltx_text" id="S3.T3.2.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.3.2.1">
<span class="ltx_tr" id="S3.T3.2.1.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.3.2.1.1.1" style="padding:-0.25pt 1.5pt;">ChartQA</span></span>
<span class="ltx_tr" id="S3.T3.2.1.3.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.3.2.1.2.1" style="padding:-0.25pt 1.5pt;">(test avg)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.3.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.4" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.4.1"></span> <span class="ltx_text" id="S3.T3.2.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.4.2.1">
<span class="ltx_tr" id="S3.T3.2.1.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.4.2.1.1.1" style="padding:-0.25pt 1.5pt;">TextVQA</span></span>
<span class="ltx_tr" id="S3.T3.2.1.4.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.4.2.1.2.1" style="padding:-0.25pt 1.5pt;">(val)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.4.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.5" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.5.1"></span> <span class="ltx_text" id="S3.T3.2.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.5.2.1">
<span class="ltx_tr" id="S3.T3.2.1.5.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.5.2.1.1.1" style="padding:-0.25pt 1.5pt;">DocVQA</span></span>
<span class="ltx_tr" id="S3.T3.2.1.5.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.5.2.1.2.1" style="padding:-0.25pt 1.5pt;">(test)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.5.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.6" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.6.1"></span> <span class="ltx_text" id="S3.T3.2.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.6.2.1">
<span class="ltx_tr" id="S3.T3.2.1.6.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.6.2.1.1.1" style="padding:-0.25pt 1.5pt;">InfoVQA</span></span>
<span class="ltx_tr" id="S3.T3.2.1.6.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.6.2.1.2.1" style="padding:-0.25pt 1.5pt;">(test)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.6.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.7" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.7.1"></span> <span class="ltx_text" id="S3.T3.2.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.7.2.1">
<span class="ltx_tr" id="S3.T3.2.1.7.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.7.2.1.1.1" style="padding:-0.25pt 1.5pt;">OCR</span></span>
<span class="ltx_tr" id="S3.T3.2.1.7.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.7.2.1.2.1" style="padding:-0.25pt 1.5pt;">Bench</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.7.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.8" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.8.1"></span> <span class="ltx_text" id="S3.T3.2.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.8.2.1">
<span class="ltx_tr" id="S3.T3.2.1.8.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.8.2.1.1.1" style="padding:-0.25pt 1.5pt;">SEED-2</span></span>
<span class="ltx_tr" id="S3.T3.2.1.8.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.8.2.1.2.1" style="padding:-0.25pt 1.5pt;">Plus</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.8.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.9" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.9.1"></span> <span class="ltx_text" id="S3.T3.2.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.9.2.1">
<span class="ltx_tr" id="S3.T3.2.1.9.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.9.2.1.1.1" style="padding:-0.25pt 1.5pt;">CharXiv</span></span>
<span class="ltx_tr" id="S3.T3.2.1.9.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.9.2.1.2.1" style="padding:-0.25pt 1.5pt;">(RQ / DQ)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.9.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.10" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T3.2.1.10.1"></span> <span class="ltx_text" id="S3.T3.2.1.10.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.10.2.1">
<span class="ltx_tr" id="S3.T3.2.1.10.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.10.2.1.1.1" style="padding:-0.25pt 1.5pt;">VCR-EN-Easy</span></span>
<span class="ltx_tr" id="S3.T3.2.1.10.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.10.2.1.2.1" style="padding:-0.25pt 1.5pt;">(EM / Jaccard)</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.10.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.1.11" style="padding:-0.25pt 1.5pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.2.1" style="padding:-0.25pt 1.5pt;">LLaVA-OneVision-0.5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.2" style="padding:-0.25pt 1.5pt;">57.1 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.3" style="padding:-0.25pt 1.5pt;">61.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.4" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.5" style="padding:-0.25pt 1.5pt;">70.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.6" style="padding:-0.25pt 1.5pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.7" style="padding:-0.25pt 1.5pt;">565</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.3.1" style="padding:-0.25pt 1.5pt;">InternVL2-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.2" style="padding:-0.25pt 1.5pt;">64.1 / 70.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.3" style="padding:-0.25pt 1.5pt;">72.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.4" style="padding:-0.25pt 1.5pt;">70.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.5" style="padding:-0.25pt 1.5pt;">81.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.6" style="padding:-0.25pt 1.5pt;">50.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.7" style="padding:-0.25pt 1.5pt;">754</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.8" style="padding:-0.25pt 1.5pt;">54.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.9" style="padding:-0.25pt 1.5pt;">18.1 / 30.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.10" style="padding:-0.25pt 1.5pt;">21.5 / 48.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.3.11" style="padding:-0.25pt 1.5pt;">54.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.4.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.2" style="padding:-0.25pt 1.5pt;">69.3 / 77.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.3" style="padding:-0.25pt 1.5pt;">75.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.4" style="padding:-0.25pt 1.5pt;">72.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.5" style="padding:-0.25pt 1.5pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.6" style="padding:-0.25pt 1.5pt;">56.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.7" style="padding:-0.25pt 1.5pt;">785</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.8" style="padding:-0.25pt 1.5pt;">59.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.9" style="padding:-0.25pt 1.5pt;">19.0 / 38.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.10" style="padding:-0.25pt 1.5pt;">91.5 / 97.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.11" style="padding:-0.25pt 1.5pt;">68.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.5" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.5.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.1.1" style="background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.2.1" style="background-color:#ECECEC;">69.4 / 78.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.3.1" style="background-color:#ECECEC;">75.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.4.1" style="background-color:#ECECEC;">74.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.5.1" style="background-color:#ECECEC;">81.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.6.1" style="background-color:#ECECEC;">53.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.7.1" style="background-color:#ECECEC;">790</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.8.1" style="background-color:#ECECEC;">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.9.1" style="background-color:#ECECEC;">21.0 / 47.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.10.1" style="background-color:#ECECEC;">89.3 / 96.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.5.11.1" style="background-color:#ECECEC;">68.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.6.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.2" style="padding:-0.25pt 1.5pt;">74.7 / 84.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.3" style="padding:-0.25pt 1.5pt;">73.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.4" style="padding:-0.25pt 1.5pt;">79.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.5" style="padding:-0.25pt 1.5pt;">90.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.6" style="padding:-0.25pt 1.5pt;">65.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.7" style="padding:-0.25pt 1.5pt;">809</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.8" style="padding:-0.25pt 1.5pt;">62.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.10" style="padding:-0.25pt 1.5pt;">81.5 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.7.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.2" style="padding:-0.25pt 1.5pt;">81.6 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.3" style="padding:-0.25pt 1.5pt;">84.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.4" style="padding:-0.25pt 1.5pt;">79.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.5" style="padding:-0.25pt 1.5pt;">93.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.6" style="padding:-0.25pt 1.5pt;">77.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.7" style="padding:-0.25pt 1.5pt;">797</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.8" style="padding:-0.25pt 1.5pt;">67.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.9" style="padding:-0.25pt 1.5pt;">31.3 / 58.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.7.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.8.1" style="padding:-0.25pt 1.5pt;">Aquila-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.2" style="padding:-0.25pt 1.5pt;">75.0 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.3" style="padding:-0.25pt 1.5pt;">76.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.4" style="padding:-0.25pt 1.5pt;">76.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.5" style="padding:-0.25pt 1.5pt;">85.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.6" style="padding:-0.25pt 1.5pt;">58.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.7" style="padding:-0.25pt 1.5pt;">772</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.8" style="padding:-0.25pt 1.5pt;">63.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.10" style="padding:-0.25pt 1.5pt;">70.0 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.8.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.9.1" style="padding:-0.25pt 1.5pt;">InternVL2-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.2" style="padding:-0.25pt 1.5pt;">74.1 / 82.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.3" style="padding:-0.25pt 1.5pt;">76.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.4" style="padding:-0.25pt 1.5pt;">73.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.5" style="padding:-0.25pt 1.5pt;">86.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.6" style="padding:-0.25pt 1.5pt;">58.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.7" style="padding:-0.25pt 1.5pt;">784</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.8" style="padding:-0.25pt 1.5pt;">60.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.9" style="padding:-0.25pt 1.5pt;">21.0 / 40.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.10" style="padding:-0.25pt 1.5pt;">32.9 / 59.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.9.11" style="padding:-0.25pt 1.5pt;">62.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.10.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.2" style="padding:-0.25pt 1.5pt;">74.9 / 83.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.3" style="padding:-0.25pt 1.5pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.4" style="padding:-0.25pt 1.5pt;">74.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.5" style="padding:-0.25pt 1.5pt;">88.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.6" style="padding:-0.25pt 1.5pt;">60.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.7" style="padding:-0.25pt 1.5pt;">804</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.8" style="padding:-0.25pt 1.5pt;">60.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.9" style="padding:-0.25pt 1.5pt;">21.3 / 49.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.10" style="padding:-0.25pt 1.5pt;">93.2 / 97.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.10.11" style="padding:-0.25pt 1.5pt;">72.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.11" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.11.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.1.1" style="background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.2.1" style="background-color:#ECECEC;">78.7 / 87.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.3.1" style="background-color:#ECECEC;">80.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.4.1" style="background-color:#ECECEC;">77.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.5.1" style="background-color:#ECECEC;">88.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.6.1" style="background-color:#ECECEC;">66.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.7.1" style="background-color:#ECECEC;">835</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.8.1" style="background-color:#ECECEC;">64.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.9.1" style="background-color:#ECECEC;">28.3 / 54.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.10.1" style="background-color:#ECECEC;">91.2 / 96.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.11.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.11.11.1" style="background-color:#ECECEC;">74.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.12.1" style="padding:-0.25pt 1.5pt;">Ovis1.6-Gemma2-9B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.2" style="padding:-0.25pt 1.5pt;">84.4 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.3" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.4" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.5" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.7" style="padding:-0.25pt 1.5pt;">830</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.12.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.13.1" style="padding:-0.25pt 1.5pt;">MiniCPM-V2.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.2" style="padding:-0.25pt 1.5pt;">82.1 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.3" style="padding:-0.25pt 1.5pt;">82.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.4" style="padding:-0.25pt 1.5pt;">80.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.5" style="padding:-0.25pt 1.5pt;">90.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.7" style="padding:-0.25pt 1.5pt;">852</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.8" style="padding:-0.25pt 1.5pt;">65.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.9" style="padding:-0.25pt 1.5pt;">31.0 / 57.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.10" style="padding:-0.25pt 1.5pt;">73.9 / 85.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.13.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.14.1" style="padding:-0.25pt 1.5pt;">Molmo-7B-D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.2" style="padding:-0.25pt 1.5pt;">     – / 93.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.3" style="padding:-0.25pt 1.5pt;">84.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.4" style="padding:-0.25pt 1.5pt;">81.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.5" style="padding:-0.25pt 1.5pt;">92.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.6" style="padding:-0.25pt 1.5pt;">72.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.7" style="padding:-0.25pt 1.5pt;">694</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.14.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.15.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.2" style="padding:-0.25pt 1.5pt;">83.0 / 92.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.3" style="padding:-0.25pt 1.5pt;">83.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.4" style="padding:-0.25pt 1.5pt;">84.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.5" style="padding:-0.25pt 1.5pt;">94.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.6" style="padding:-0.25pt 1.5pt;">76.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.7" style="padding:-0.25pt 1.5pt;">866</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.8" style="padding:-0.25pt 1.5pt;">69.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.10" style="padding:-0.25pt 1.5pt;">89.7 / 93.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.15.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.16.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.2" style="padding:-0.25pt 1.5pt;">83.9 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.3" style="padding:-0.25pt 1.5pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.4" style="padding:-0.25pt 1.5pt;">84.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.5" style="padding:-0.25pt 1.5pt;">95.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.6" style="padding:-0.25pt 1.5pt;">82.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.7" style="padding:-0.25pt 1.5pt;">864</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.8" style="padding:-0.25pt 1.5pt;">70.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.9" style="padding:-0.25pt 1.5pt;">42.5/73.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.16.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.17.1" style="padding:-0.25pt 1.5pt;">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.2" style="padding:-0.25pt 1.5pt;">83.8 / 91.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.3" style="padding:-0.25pt 1.5pt;">83.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.4" style="padding:-0.25pt 1.5pt;">77.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.5" style="padding:-0.25pt 1.5pt;">91.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.6" style="padding:-0.25pt 1.5pt;">74.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.7" style="padding:-0.25pt 1.5pt;">794</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.8" style="padding:-0.25pt 1.5pt;">67.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.9" style="padding:-0.25pt 1.5pt;">31.2 / 56.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.10" style="padding:-0.25pt 1.5pt;">37.9 / 61.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.17.11" style="padding:-0.25pt 1.5pt;">69.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.18.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.2" style="padding:-0.25pt 1.5pt;">84.5 / 92.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.3" style="padding:-0.25pt 1.5pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.4" style="padding:-0.25pt 1.5pt;">79.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.5" style="padding:-0.25pt 1.5pt;">93.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.6" style="padding:-0.25pt 1.5pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.7" style="padding:-0.25pt 1.5pt;">822</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.8" style="padding:-0.25pt 1.5pt;">69.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.9" style="padding:-0.25pt 1.5pt;">32.9 / 68.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.10" style="padding:-0.25pt 1.5pt;">92.6 / 97.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.18.11" style="padding:-0.25pt 1.5pt;">79.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.19" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.19.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.2.1" style="background-color:#ECECEC;">85.2 / 92.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.3.1" style="background-color:#ECECEC;">86.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.4.1" style="background-color:#ECECEC;">80.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.5.1" style="background-color:#ECECEC;">92.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.6.1" style="background-color:#ECECEC;">76.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.7.1" style="background-color:#ECECEC;">880</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.8.1" style="background-color:#ECECEC;">69.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.9.1" style="background-color:#ECECEC;">37.6 / 73.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.10.1" style="background-color:#ECECEC;">94.5 / 98.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.19.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.19.11.1" style="background-color:#ECECEC;">81.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.20" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.20.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.1.1" style="background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.2.1" style="background-color:#ECECEC;">84.6 / 92.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.3.1" style="background-color:#ECECEC;">86.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.4.1" style="background-color:#ECECEC;">79.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.5.1" style="background-color:#ECECEC;">93.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.6.1" style="background-color:#ECECEC;">79.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.7.1" style="background-color:#ECECEC;">877</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.8.1" style="background-color:#ECECEC;">68.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.9.1" style="background-color:#ECECEC;">38.0 / 72.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.10.1" style="background-color:#ECECEC;">94.2 / 97.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.20.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.20.11.1" style="background-color:#ECECEC;">81.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.21" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.21.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.1.1" style="background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.2.1" style="background-color:#ECECEC;">86.0 / 93.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.3.1" style="background-color:#ECECEC;">87.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.4.1" style="background-color:#ECECEC;">80.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.5.1" style="background-color:#ECECEC;">94.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.6.1" style="background-color:#ECECEC;">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.7.1" style="background-color:#ECECEC;">875</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.8.1" style="background-color:#ECECEC;">70.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.9.1" style="background-color:#ECECEC;">43.1 / 82.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.10.1" style="background-color:#ECECEC;">94.8 / 98.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.21.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.21.11.1" style="background-color:#ECECEC;">83.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.22.1" style="padding:-0.25pt 1.5pt;">InternVL-Chat-V1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.2" style="padding:-0.25pt 1.5pt;">80.7 / 89.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.3" style="padding:-0.25pt 1.5pt;">83.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.4" style="padding:-0.25pt 1.5pt;">80.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.5" style="padding:-0.25pt 1.5pt;">90.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.6" style="padding:-0.25pt 1.5pt;">72.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.7" style="padding:-0.25pt 1.5pt;">724</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.8" style="padding:-0.25pt 1.5pt;">66.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.9" style="padding:-0.25pt 1.5pt;">29.2 / 58.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.10" style="padding:-0.25pt 1.5pt;">14.7 / 51.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.22.11" style="padding:-0.25pt 1.5pt;">65.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.23.1" style="padding:-0.25pt 1.5pt;">InternVL2-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.2" style="padding:-0.25pt 1.5pt;">84.5 / 92.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.3" style="padding:-0.25pt 1.5pt;">84.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.4" style="padding:-0.25pt 1.5pt;">82.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.5" style="padding:-0.25pt 1.5pt;">92.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.6" style="padding:-0.25pt 1.5pt;">75.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.7" style="padding:-0.25pt 1.5pt;">825</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.8" style="padding:-0.25pt 1.5pt;">67.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.9" style="padding:-0.25pt 1.5pt;">33.4 / 62.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.10" style="padding:-0.25pt 1.5pt;">74.5 / 86.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.23.11" style="padding:-0.25pt 1.5pt;">76.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.24.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.2" style="padding:-0.25pt 1.5pt;">86.4 / 94.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.3" style="padding:-0.25pt 1.5pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.4" style="padding:-0.25pt 1.5pt;">82.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.5" style="padding:-0.25pt 1.5pt;">94.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.6" style="padding:-0.25pt 1.5pt;">79.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.7" style="padding:-0.25pt 1.5pt;">852</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.8" style="padding:-0.25pt 1.5pt;">70.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.9" style="padding:-0.25pt 1.5pt;">35.9 / 73.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.10" style="padding:-0.25pt 1.5pt;">94.4 / 98.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.24.11" style="padding:-0.25pt 1.5pt;">81.8</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.25.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-32B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.2" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.3" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.4" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.5" style="padding:-0.25pt 1.5pt;">94.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.6" style="padding:-0.25pt 1.5pt;">83.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.7" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.25.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.26.1" style="padding:-0.25pt 1.5pt;">Cambrian-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.2" style="padding:-0.25pt 1.5pt;">79.5 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.3" style="padding:-0.25pt 1.5pt;">75.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.4" style="padding:-0.25pt 1.5pt;">76.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.5" style="padding:-0.25pt 1.5pt;">75.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.6" style="padding:-0.25pt 1.5pt;">46.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.7" style="padding:-0.25pt 1.5pt;">600</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.9" style="padding:-0.25pt 1.5pt;">27.3 / 59.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.10" style="padding:-0.25pt 1.5pt;">79.7 / 89.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.26.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.27.1" style="padding:-0.25pt 1.5pt;">VILA-1.5-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.2" style="padding:-0.25pt 1.5pt;">69.9 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.3" style="padding:-0.25pt 1.5pt;">67.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.4" style="padding:-0.25pt 1.5pt;">73.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.5" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.7" style="padding:-0.25pt 1.5pt;">460</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.9" style="padding:-0.25pt 1.5pt;">24.0 / 38.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.27.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.28.1" style="padding:-0.25pt 1.5pt;">InternVL2-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.2" style="padding:-0.25pt 1.5pt;">86.6 / 94.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.3" style="padding:-0.25pt 1.5pt;">86.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.4" style="padding:-0.25pt 1.5pt;">83.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.5" style="padding:-0.25pt 1.5pt;">93.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.6" style="padding:-0.25pt 1.5pt;">78.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.7" style="padding:-0.25pt 1.5pt;">837</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.8" style="padding:-0.25pt 1.5pt;">69.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.9" style="padding:-0.25pt 1.5pt;">32.3 / 66.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.10" style="padding:-0.25pt 1.5pt;">84.7 / 92.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.28.11" style="padding:-0.25pt 1.5pt;">79.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.29.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-38B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.2" style="padding:-0.25pt 1.5pt;">87.6 / 95.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.3" style="padding:-0.25pt 1.5pt;">88.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.4" style="padding:-0.25pt 1.5pt;">82.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.5" style="padding:-0.25pt 1.5pt;">95.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.6" style="padding:-0.25pt 1.5pt;">83.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.7" style="padding:-0.25pt 1.5pt;">842</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.8" style="padding:-0.25pt 1.5pt;">71.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.9" style="padding:-0.25pt 1.5pt;">42.4 / 79.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.10" style="padding:-0.25pt 1.5pt;">94.7 / 98.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.29.11" style="padding:-0.25pt 1.5pt;">83.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.30" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.30.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.2.1" style="background-color:#ECECEC;">88.9 / 95.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.3.1" style="background-color:#ECECEC;">89.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.4.1" style="background-color:#ECECEC;">83.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.5.1" style="background-color:#ECECEC;">95.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.6.1" style="background-color:#ECECEC;">85.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.7.1" style="background-color:#ECECEC;">886</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.8.1" style="background-color:#ECECEC;">71.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.9.1" style="background-color:#ECECEC;">46.4 / 87.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.10.1" style="background-color:#ECECEC;">96.1 / 98.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.30.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.30.11.1" style="background-color:#ECECEC;">85.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.31.1" style="padding:-0.25pt 1.5pt;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.2" style="padding:-0.25pt 1.5pt;">78.2 / 89.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.3" style="padding:-0.25pt 1.5pt;">78.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.4" style="padding:-0.25pt 1.5pt;">78.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.5" style="padding:-0.25pt 1.5pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.6" style="padding:-0.25pt 1.5pt;">75.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.7" style="padding:-0.25pt 1.5pt;">645</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.8" style="padding:-0.25pt 1.5pt;">53.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.9" style="padding:-0.25pt 1.5pt;">37.1 / 79.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.10" style="padding:-0.25pt 1.5pt;">52.0 / 65.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.31.11" style="padding:-0.25pt 1.5pt;">70.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.32.1" style="padding:-0.25pt 1.5pt;">GPT-4o-20240513 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.2" style="padding:-0.25pt 1.5pt;">84.6 / 94.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.3" style="padding:-0.25pt 1.5pt;">85.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.4" style="padding:-0.25pt 1.5pt;">77.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.5" style="padding:-0.25pt 1.5pt;">92.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.6" style="padding:-0.25pt 1.5pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.7" style="padding:-0.25pt 1.5pt;">736</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.8" style="padding:-0.25pt 1.5pt;">72.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.9" style="padding:-0.25pt 1.5pt;">47.1 / 84.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.10" style="padding:-0.25pt 1.5pt;">91.6 / 96.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.32.11" style="padding:-0.25pt 1.5pt;">81.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.33.1" style="padding:-0.25pt 1.5pt;">Claude-3-Opus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.2" style="padding:-0.25pt 1.5pt;">70.6 / 88.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.3" style="padding:-0.25pt 1.5pt;">80.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.4" style="padding:-0.25pt 1.5pt;">67.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.5" style="padding:-0.25pt 1.5pt;">89.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.6" style="padding:-0.25pt 1.5pt;">55.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.7" style="padding:-0.25pt 1.5pt;">694</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.8" style="padding:-0.25pt 1.5pt;">44.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.9" style="padding:-0.25pt 1.5pt;">30.2 / 71.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.10" style="padding:-0.25pt 1.5pt;">62.0 / 77.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.33.11" style="padding:-0.25pt 1.5pt;">67.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.34.1" style="padding:-0.25pt 1.5pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.2" style="padding:-0.25pt 1.5pt;">81.2 / 94.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.3" style="padding:-0.25pt 1.5pt;">90.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.4" style="padding:-0.25pt 1.5pt;">74.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.5" style="padding:-0.25pt 1.5pt;">95.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.6" style="padding:-0.25pt 1.5pt;">74.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.7" style="padding:-0.25pt 1.5pt;">788</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.8" style="padding:-0.25pt 1.5pt;">71.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.9" style="padding:-0.25pt 1.5pt;">60.2 / 84.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.10" style="padding:-0.25pt 1.5pt;">63.9 / 74.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.34.11" style="padding:-0.25pt 1.5pt;">78.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.35.1" style="padding:-0.25pt 1.5pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.2" style="padding:-0.25pt 1.5pt;">79.1 / 94.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.3" style="padding:-0.25pt 1.5pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.4" style="padding:-0.25pt 1.5pt;">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.5" style="padding:-0.25pt 1.5pt;">93.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.6" style="padding:-0.25pt 1.5pt;">81.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.7" style="padding:-0.25pt 1.5pt;">754</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.9" style="padding:-0.25pt 1.5pt;">43.3 / 72.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.10" style="padding:-0.25pt 1.5pt;">62.7 / 77.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.35.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.36.1" style="padding:-0.25pt 1.5pt;">LLaVA-OneVision-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.2" style="padding:-0.25pt 1.5pt;">85.6 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.3" style="padding:-0.25pt 1.5pt;">83.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.4" style="padding:-0.25pt 1.5pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.5" style="padding:-0.25pt 1.5pt;">91.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.6" style="padding:-0.25pt 1.5pt;">74.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.7" style="padding:-0.25pt 1.5pt;">741</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.36.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.37.1" style="padding:-0.25pt 1.5pt;">NVLM-D-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.2" style="padding:-0.25pt 1.5pt;">85.2 / 94.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.3" style="padding:-0.25pt 1.5pt;">86.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.4" style="padding:-0.25pt 1.5pt;">82.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.5" style="padding:-0.25pt 1.5pt;">92.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.7" style="padding:-0.25pt 1.5pt;">853</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.37.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.38.1" style="padding:-0.25pt 1.5pt;">Molmo-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.2" style="padding:-0.25pt 1.5pt;">     – / 96.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.3" style="padding:-0.25pt 1.5pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.4" style="padding:-0.25pt 1.5pt;">83.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.5" style="padding:-0.25pt 1.5pt;">93.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.6" style="padding:-0.25pt 1.5pt;">81.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.7" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.38.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.39.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.2" style="padding:-0.25pt 1.5pt;">88.1 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.3" style="padding:-0.25pt 1.5pt;">88.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.4" style="padding:-0.25pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.5" style="padding:-0.25pt 1.5pt;">96.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.6" style="padding:-0.25pt 1.5pt;">84.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.7" style="padding:-0.25pt 1.5pt;">877</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.9" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.10" style="padding:-0.25pt 1.5pt;">91.3 / 94.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.39.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.40.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.2" style="padding:-0.25pt 1.5pt;">88.7 / –</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.3" style="padding:-0.25pt 1.5pt;">89.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.4" style="padding:-0.25pt 1.5pt;">83.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.5" style="padding:-0.25pt 1.5pt;">96.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.6" style="padding:-0.25pt 1.5pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.7" style="padding:-0.25pt 1.5pt;">885</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.8" style="padding:-0.25pt 1.5pt;">73.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.9" style="padding:-0.25pt 1.5pt;">49.7 / 87.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.40.11" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.41.1" style="padding:-0.25pt 1.5pt;">InternVL2-Llama3-76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.2" style="padding:-0.25pt 1.5pt;">87.6 / 94.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.3" style="padding:-0.25pt 1.5pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.4" style="padding:-0.25pt 1.5pt;">84.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.5" style="padding:-0.25pt 1.5pt;">94.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.6" style="padding:-0.25pt 1.5pt;">82.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.7" style="padding:-0.25pt 1.5pt;">839</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.8" style="padding:-0.25pt 1.5pt;">69.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.9" style="padding:-0.25pt 1.5pt;">38.9 / 75.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.10" style="padding:-0.25pt 1.5pt;">83.2 / 91.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.41.11" style="padding:-0.25pt 1.5pt;">81.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.42">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.42.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.2" style="padding:-0.25pt 1.5pt;">89.1 / 95.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.3" style="padding:-0.25pt 1.5pt;">88.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.4" style="padding:-0.25pt 1.5pt;">83.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.5" style="padding:-0.25pt 1.5pt;">95.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.6" style="padding:-0.25pt 1.5pt;">84.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.7" style="padding:-0.25pt 1.5pt;">854</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.8" style="padding:-0.25pt 1.5pt;">71.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.9" style="padding:-0.25pt 1.5pt;">42.4 / 82.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.10" style="padding:-0.25pt 1.5pt;">95.7 / 94.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.42.11" style="padding:-0.25pt 1.5pt;">83.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.43" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.2.43.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.2.1" style="background-color:#ECECEC;">89.7 / 96.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.3.1" style="background-color:#ECECEC;">89.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.4.1" style="background-color:#ECECEC;">84.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.5.1" style="background-color:#ECECEC;">95.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.6.1" style="background-color:#ECECEC;">86.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.7.1" style="background-color:#ECECEC;">906</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.8.1" style="background-color:#ECECEC;">71.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.9.1" style="background-color:#ECECEC;">46.0 / 85.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.10.1" style="background-color:#ECECEC;">96.0 / 98.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.43.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T3.2.43.11.1" style="background-color:#ECECEC;">85.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of the performance of various models on nine benchmarks related to Optical Character Recognition (OCR), chart understanding, and document understanding.  The benchmarks assess different aspects of these capabilities, ranging from the accuracy of character recognition in various scenarios to the understanding of complex chart structures and document layouts. The models' performances are quantified and compared using various metrics tailored to the nature of each specific benchmark. The inclusion of results from other sources such as specific papers and the OpenCompass leaderboard provides a broader context for evaluating the relative strengths and weaknesses of the models.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of OCR, chart, and document understanding performance. We evaluate OCR-related capabilities across 9 benchmarks, including AI2D [56], ChartQA [90], TextVQA [106], DocVQA [92], InfoVQA [91], OCRBench [75], SEED-2-Plus [60], CharXiv [127], and VCR [147]. Part of results are collected from [33, 31, 3, 127, 147] and the OpenCompass leaderboard [26].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T4.2">
<tr class="ltx_tr" id="S3.T4.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.1.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.1.1.1" style="font-size:70%;">Model Name</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.2" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.2.1"></span><span class="ltx_text" id="S3.T4.2.1.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.2.3.1">
<span class="ltx_tr" id="S3.T4.2.1.2.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.2.3.1.1.1" style="padding:-0.2pt 1.3pt;">BLINK</span></span>
<span class="ltx_tr" id="S3.T4.2.1.2.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.2.3.1.2.1" style="padding:-0.2pt 1.3pt;">(val)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.2.4"></span><span class="ltx_text" id="S3.T4.2.1.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.3" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.3.1"></span><span class="ltx_text" id="S3.T4.2.1.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.3.3.1">
<span class="ltx_tr" id="S3.T4.2.1.3.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.3.3.1.1.1" style="padding:-0.2pt 1.3pt;">Mantis</span></span>
<span class="ltx_tr" id="S3.T4.2.1.3.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.3.3.1.2.1" style="padding:-0.2pt 1.3pt;">Eval</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.3.4"></span><span class="ltx_text" id="S3.T4.2.1.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.4" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.4.1"></span><span class="ltx_text" id="S3.T4.2.1.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.4.3.1">
<span class="ltx_tr" id="S3.T4.2.1.4.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.4.3.1.1.1" style="padding:-0.2pt 1.3pt;">MMIU</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.4.4"></span><span class="ltx_text" id="S3.T4.2.1.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.5" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.5.1"></span><span class="ltx_text" id="S3.T4.2.1.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.5.3.1">
<span class="ltx_tr" id="S3.T4.2.1.5.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.5.3.1.1.1" style="padding:-0.2pt 1.3pt;">Muir</span></span>
<span class="ltx_tr" id="S3.T4.2.1.5.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.5.3.1.2.1" style="padding:-0.2pt 1.3pt;">Bench</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.5.4"></span><span class="ltx_text" id="S3.T4.2.1.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.6" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.6.1"></span><span class="ltx_text" id="S3.T4.2.1.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.6.3.1">
<span class="ltx_tr" id="S3.T4.2.1.6.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.6.3.1.1.1" style="padding:-0.2pt 1.3pt;">MMT</span></span>
<span class="ltx_tr" id="S3.T4.2.1.6.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.6.3.1.2.1" style="padding:-0.2pt 1.3pt;">(val)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.6.4"></span><span class="ltx_text" id="S3.T4.2.1.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.7" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.7.1"></span><span class="ltx_text" id="S3.T4.2.1.7.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.7.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.7.3.1">
<span class="ltx_tr" id="S3.T4.2.1.7.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.7.3.1.1.1" style="padding:-0.2pt 1.3pt;">MIRB</span></span>
<span class="ltx_tr" id="S3.T4.2.1.7.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.7.3.1.2.1" style="padding:-0.2pt 1.3pt;">(avg)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.7.4"></span><span class="ltx_text" id="S3.T4.2.1.7.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.1.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.1.8.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.9" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.9.1"></span><span class="ltx_text" id="S3.T4.2.1.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.9.3.1">
<span class="ltx_tr" id="S3.T4.2.1.9.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.9.3.1.1.1" style="padding:-0.2pt 1.3pt;">RealWorld</span></span>
<span class="ltx_tr" id="S3.T4.2.1.9.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.9.3.1.2.1" style="padding:-0.2pt 1.3pt;">QA</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.9.4"></span><span class="ltx_text" id="S3.T4.2.1.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.10" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.10.1"></span><span class="ltx_text" id="S3.T4.2.1.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.10.3.1">
<span class="ltx_tr" id="S3.T4.2.1.10.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.10.3.1.1.1" style="padding:-0.2pt 1.3pt;">MME-RW</span></span>
<span class="ltx_tr" id="S3.T4.2.1.10.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.10.3.1.2.1" style="padding:-0.2pt 1.3pt;">(EN)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.10.4"></span><span class="ltx_text" id="S3.T4.2.1.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.11" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.11.1"></span><span class="ltx_text" id="S3.T4.2.1.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.11.3.1">
<span class="ltx_tr" id="S3.T4.2.1.11.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.11.3.1.1.1" style="padding:-0.2pt 1.3pt;">WildVision</span></span>
<span class="ltx_tr" id="S3.T4.2.1.11.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.11.3.1.2.1" style="padding:-0.2pt 1.3pt;">(win rate)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.11.4"></span><span class="ltx_text" id="S3.T4.2.1.11.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.12" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.1.12.1"></span><span class="ltx_text" id="S3.T4.2.1.12.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T4.2.1.12.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T4.2.1.12.3.1">
<span class="ltx_tr" id="S3.T4.2.1.12.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.12.3.1.1.1" style="padding:-0.2pt 1.3pt;">R-Bench</span></span>
<span class="ltx_tr" id="S3.T4.2.1.12.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.12.3.1.2.1" style="padding:-0.2pt 1.3pt;">(dis)</span></span>
</span></span><span class="ltx_text" id="S3.T4.2.1.12.4"></span><span class="ltx_text" id="S3.T4.2.1.12.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.1.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.1.13.1" style="font-size:70%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.2.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.2.1.1" style="font-size:70%;">LLaVA-OneVision-0.5B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.2.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T4.2.2.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.2.1" style="font-size:70%;">52.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.3.1" style="font-size:70%;">39.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.5.1" style="font-size:70%;">25.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.2.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.9.1" style="font-size:70%;">55.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.2.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.2.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.3.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.3.1.1" style="font-size:70%;">InternVL2-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.2.1" style="font-size:70%;">38.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.3.1" style="font-size:70%;">46.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.4.1" style="font-size:70%;">37.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.5.1" style="font-size:70%;">29.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.6.1" style="font-size:70%;">49.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.7.1" style="font-size:70%;">31.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.3.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.8.1" style="font-size:70%;">38.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.9.1" style="font-size:70%;">50.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.10.1" style="font-size:70%;">40.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.11.1" style="font-size:70%;">17.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.12.1" style="font-size:70%;">55.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.3.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.3.13.1" style="font-size:70%;">41.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.4.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.4.1.1" style="font-size:70%;">InternVL2.5-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.2.1" style="font-size:70%;">42.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.3.1" style="font-size:70%;">51.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.4.1" style="font-size:70%;">38.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.5.1" style="font-size:70%;">29.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.6.1" style="font-size:70%;">50.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.7.1" style="font-size:70%;">35.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.4.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.8.1" style="font-size:70%;">41.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.9.1" style="font-size:70%;">57.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.10.1" style="font-size:70%;">44.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.11.1" style="font-size:70%;">43.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.12.1" style="font-size:70%;">59.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.4.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.4.13.1" style="font-size:70%;">51.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.5" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.5.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.2.1" style="font-size:70%;background-color:#ECECEC;">42.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.3.1" style="font-size:70%;background-color:#ECECEC;">50.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.4.1" style="font-size:70%;background-color:#ECECEC;">39.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.5.1" style="font-size:70%;background-color:#ECECEC;">31.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.6.1" style="font-size:70%;background-color:#ECECEC;">52.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.7.1" style="font-size:70%;background-color:#ECECEC;">36.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.5.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.8.1" style="font-size:70%;background-color:#ECECEC;">42.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.9.1" style="font-size:70%;background-color:#ECECEC;">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.10.1" style="font-size:70%;background-color:#ECECEC;">46.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.11.1" style="font-size:70%;background-color:#ECECEC;">43.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.12.1" style="font-size:70%;background-color:#ECECEC;">60.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.5.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.5.13.1" style="font-size:70%;background-color:#ECECEC;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.6.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.6.1.1" style="font-size:70%;">Qwen2-VL-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T4.2.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.2.1" style="font-size:70%;">44.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.6.1" style="font-size:70%;">55.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.6.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.9.1" style="font-size:70%;">62.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.6.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.6.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.7.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.7.1.1" style="font-size:70%;">Qwen2.5-VL-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T4.2.7.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.2.1" style="font-size:70%;">47.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.5.1" style="font-size:70%;">47.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.7.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.9.1" style="font-size:70%;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.10.1" style="font-size:70%;">53.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.7.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.7.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.8.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.8.1.1" style="font-size:70%;">InternVL2-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.2.1" style="font-size:70%;">43.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.3.1" style="font-size:70%;">48.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.4.1" style="font-size:70%;">39.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.5.1" style="font-size:70%;">32.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.6.1" style="font-size:70%;">50.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.7.1" style="font-size:70%;">32.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.8.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.8.1" style="font-size:70%;">41.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.9.1" style="font-size:70%;">57.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.10.1" style="font-size:70%;">47.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.11.1" style="font-size:70%;">31.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.12.1" style="font-size:70%;">56.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.8.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.8.13.1" style="font-size:70%;">48.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.9.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.9.1.1" style="font-size:70%;">InternVL2.5-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.2.1" style="font-size:70%;">44.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.3.1" style="font-size:70%;">54.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.4.1" style="font-size:70%;">43.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.5.1" style="font-size:70%;">40.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.6.1" style="font-size:70%;">54.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.7.1" style="font-size:70%;">36.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.9.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.8.1" style="font-size:70%;">45.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.9.1" style="font-size:70%;">60.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.10.1" style="font-size:70%;">48.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.11.1" style="font-size:70%;">44.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.12.1" style="font-size:70%;">62.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.9.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.9.13.1" style="font-size:70%;">53.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.10" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.10.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.2.1" style="font-size:70%;background-color:#ECECEC;">50.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.3.1" style="font-size:70%;background-color:#ECECEC;">65.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.4.1" style="font-size:70%;background-color:#ECECEC;">43.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.5.1" style="font-size:70%;background-color:#ECECEC;">38.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.6.1" style="font-size:70%;background-color:#ECECEC;">59.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.7.1" style="font-size:70%;background-color:#ECECEC;">42.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.10.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.8.1" style="font-size:70%;background-color:#ECECEC;">50.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.9.1" style="font-size:70%;background-color:#ECECEC;">64.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.10.1" style="font-size:70%;background-color:#ECECEC;">53.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.11.1" style="font-size:70%;background-color:#ECECEC;">48.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.12.1" style="font-size:70%;background-color:#ECECEC;">67.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.10.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.10.13.1" style="font-size:70%;background-color:#ECECEC;">58.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.11.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.11.1.1" style="font-size:70%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T4.2.11.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.2.1" style="font-size:70%;">53.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.6.1" style="font-size:70%;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.11.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.9.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.10.1" style="font-size:70%;">56.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.12.1" style="font-size:70%;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.11.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.11.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.12.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.12.1.1" style="font-size:70%;">Qwen2.5-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.12.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T4.2.12.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.2.1" style="font-size:70%;">56.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.5.1" style="font-size:70%;">59.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.12.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.9.1" style="font-size:70%;">68.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.10.1" style="font-size:70%;">57.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.12.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.12.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.13.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.13.1.1" style="font-size:70%;">MiniCPM-V2.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.13.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a><span class="ltx_text" id="S3.T4.2.13.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.2.1" style="font-size:70%;">53.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.3.1" style="font-size:70%;">69.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.6.1" style="font-size:70%;">60.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.13.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.9.1" style="font-size:70%;">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.13.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.13.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.14.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.14.1.1" style="font-size:70%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.14.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.14.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.2.1" style="font-size:70%;">50.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.3.1" style="font-size:70%;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.4.1" style="font-size:70%;">42.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.5.1" style="font-size:70%;">48.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.6.1" style="font-size:70%;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.7.1" style="font-size:70%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.14.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.8.1" style="font-size:70%;">52.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.9.1" style="font-size:70%;">64.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.10.1" style="font-size:70%;">53.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.11.1" style="font-size:70%;">54.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.12.1" style="font-size:70%;">67.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.14.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.14.13.1" style="font-size:70%;">60.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.15.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.15.1.1" style="font-size:70%;">InternVL2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.15.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.15.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.2.1" style="font-size:70%;">54.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.3.1" style="font-size:70%;">67.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.4.1" style="font-size:70%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.5.1" style="font-size:70%;">51.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.6.1" style="font-size:70%;">62.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.7.1" style="font-size:70%;">52.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.15.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.8.1" style="font-size:70%;">55.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.9.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.10.1" style="font-size:70%;">59.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.11.1" style="font-size:70%;">62.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.12.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.15.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.15.13.1" style="font-size:70%;">65.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.16" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.16.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.2.1" style="font-size:70%;background-color:#ECECEC;">55.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.3.1" style="font-size:70%;background-color:#ECECEC;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.4.1" style="font-size:70%;background-color:#ECECEC;">46.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.5.1" style="font-size:70%;background-color:#ECECEC;">55.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.6.1" style="font-size:70%;background-color:#ECECEC;">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.7.1" style="font-size:70%;background-color:#ECECEC;">56.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.16.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.8.1" style="font-size:70%;background-color:#ECECEC;">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.9.1" style="font-size:70%;background-color:#ECECEC;">70.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.10.1" style="font-size:70%;background-color:#ECECEC;">62.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.11.1" style="font-size:70%;background-color:#ECECEC;">69.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.12.1" style="font-size:70%;background-color:#ECECEC;">74.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.16.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.16.13.1" style="font-size:70%;background-color:#ECECEC;">69.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.17" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.17.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.2.1" style="font-size:70%;background-color:#ECECEC;">58.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.3.1" style="font-size:70%;background-color:#ECECEC;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.4.1" style="font-size:70%;background-color:#ECECEC;">50.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.5.1" style="font-size:70%;background-color:#ECECEC;">51.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.6.1" style="font-size:70%;background-color:#ECECEC;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.7.1" style="font-size:70%;background-color:#ECECEC;">58.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.17.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.8.1" style="font-size:70%;background-color:#ECECEC;">59.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.9.1" style="font-size:70%;background-color:#ECECEC;">70.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.10.1" style="font-size:70%;background-color:#ECECEC;">61.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.11.1" style="font-size:70%;background-color:#ECECEC;">63.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.12.1" style="font-size:70%;background-color:#ECECEC;">70.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.17.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.17.13.1" style="font-size:70%;background-color:#ECECEC;">66.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.18" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.18.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.2.1" style="font-size:70%;background-color:#ECECEC;">60.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.3.1" style="font-size:70%;background-color:#ECECEC;">76.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.4.1" style="font-size:70%;background-color:#ECECEC;">50.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.5.1" style="font-size:70%;background-color:#ECECEC;">56.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.6.1" style="font-size:70%;background-color:#ECECEC;">70.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.7.1" style="font-size:70%;background-color:#ECECEC;">59.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.18.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.8.1" style="font-size:70%;background-color:#ECECEC;">62.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.9.1" style="font-size:70%;background-color:#ECECEC;">70.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.10.1" style="font-size:70%;background-color:#ECECEC;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.11.1" style="font-size:70%;background-color:#ECECEC;">69.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.12.1" style="font-size:70%;background-color:#ECECEC;">69.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.18.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.18.13.1" style="font-size:70%;background-color:#ECECEC;">68.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.19.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.19.1.1" style="font-size:70%;">InternVL-Chat-V1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.19.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.19.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.2.1" style="font-size:70%;">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.3.1" style="font-size:70%;">66.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.4.1" style="font-size:70%;">37.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.5.1" style="font-size:70%;">38.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.6.1" style="font-size:70%;">58.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.7.1" style="font-size:70%;">50.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.19.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.8.1" style="font-size:70%;">49.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.9.1" style="font-size:70%;">66.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.10.1" style="font-size:70%;">49.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.11.1" style="font-size:70%;">56.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.12.1" style="font-size:70%;">67.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.19.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.19.13.1" style="font-size:70%;">60.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.20.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.20.1.1" style="font-size:70%;">InternVL2-26B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.20.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.20.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.2.1" style="font-size:70%;">56.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.3.1" style="font-size:70%;">69.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.4.1" style="font-size:70%;">42.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.5.1" style="font-size:70%;">50.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.6.1" style="font-size:70%;">60.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.7.1" style="font-size:70%;">53.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.20.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.8.1" style="font-size:70%;">55.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.9.1" style="font-size:70%;">68.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.10.1" style="font-size:70%;">58.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.11.1" style="font-size:70%;">62.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.12.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.20.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.20.13.1" style="font-size:70%;">64.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.21.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.21.1.1" style="font-size:70%;">InternVL2.5-26B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.21.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.21.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.2.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.3.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.4.1" style="font-size:70%;">49.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.5.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.6.1" style="font-size:70%;">66.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.7.1" style="font-size:70%;">55.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.21.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.8.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.9.1" style="font-size:70%;">74.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.10.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.11.1" style="font-size:70%;">65.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.12.1" style="font-size:70%;">72.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.21.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.21.13.1" style="font-size:70%;">68.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.22.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.22.1.1" style="font-size:70%;">Cambrian-34B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.22.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a><span class="ltx_text" id="S3.T4.2.22.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.22.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.9.1" style="font-size:70%;">67.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.10.1" style="font-size:70%;">44.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.22.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.22.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.23.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.23.1.1" style="font-size:70%;">InternVL2-40B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.23.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.23.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.2.1" style="font-size:70%;">57.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.3.1" style="font-size:70%;">71.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.4.1" style="font-size:70%;">47.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.5.1" style="font-size:70%;">54.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.6.1" style="font-size:70%;">66.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.7.1" style="font-size:70%;">55.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.23.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.8.1" style="font-size:70%;">58.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.9.1" style="font-size:70%;">71.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.10.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.11.1" style="font-size:70%;">63.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.12.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.23.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.23.13.1" style="font-size:70%;">67.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.24.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.24.1.1" style="font-size:70%;">InternVL2.5-38B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.24.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.24.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.2.1" style="font-size:70%;">63.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.3.1" style="font-size:70%;">78.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.4.1" style="font-size:70%;">55.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.5.1" style="font-size:70%;">62.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.6.1" style="font-size:70%;">70.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.7.1" style="font-size:70%;">61.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.24.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.8.1" style="font-size:70%;">65.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.9.1" style="font-size:70%;">73.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.10.1" style="font-size:70%;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.11.1" style="font-size:70%;">66.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.12.1" style="font-size:70%;">72.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.24.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.24.13.1" style="font-size:70%;">69.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.25" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.25.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.2.1" style="font-size:70%;background-color:#ECECEC;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.3.1" style="font-size:70%;background-color:#ECECEC;">77.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.4.1" style="font-size:70%;background-color:#ECECEC;">57.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.5.1" style="font-size:70%;background-color:#ECECEC;">63.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.6.1" style="font-size:70%;background-color:#ECECEC;">71.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.7.1" style="font-size:70%;background-color:#ECECEC;">62.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.25.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.8.1" style="font-size:70%;background-color:#ECECEC;">66.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.9.1" style="font-size:70%;background-color:#ECECEC;">75.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.10.1" style="font-size:70%;background-color:#ECECEC;">67.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.11.1" style="font-size:70%;background-color:#ECECEC;">71.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.12.1" style="font-size:70%;background-color:#ECECEC;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.25.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.25.13.1" style="font-size:70%;background-color:#ECECEC;">72.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.26.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.26.1.1" style="font-size:70%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.26.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S3.T4.2.26.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.2.1" style="font-size:70%;">54.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.3.1" style="font-size:70%;">62.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.5.1" style="font-size:70%;">62.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.6.1" style="font-size:70%;">64.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.7.1" style="font-size:70%;">53.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.26.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.9.1" style="font-size:70%;">61.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.11.1" style="font-size:70%;">71.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.12.1" style="font-size:70%;">65.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.2.26.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.26.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.27.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.27.1.1" style="font-size:70%;">GPT-4o-20240513 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.27.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S3.T4.2.27.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.2.1" style="font-size:70%;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.4.1" style="font-size:70%;">55.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.5.1" style="font-size:70%;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.6.1" style="font-size:70%;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.27.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.9.1" style="font-size:70%;">75.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.10.1" style="font-size:70%;">45.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.11.1" style="font-size:70%;">80.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.12.1" style="font-size:70%;">77.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.27.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.27.13.1" style="font-size:70%;">69.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.28.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.28.1.1" style="font-size:70%;">Claude-3.5-Sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.28.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S3.T4.2.28.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.4.1" style="font-size:70%;">53.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.28.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.9.1" style="font-size:70%;">60.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.10.1" style="font-size:70%;">51.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.28.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.28.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.29.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.29.1.1" style="font-size:70%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.29.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a><span class="ltx_text" id="S3.T4.2.29.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.4.1" style="font-size:70%;">53.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.6.1" style="font-size:70%;">64.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.29.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.9.1" style="font-size:70%;">67.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.10.1" style="font-size:70%;">38.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.29.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.29.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.30.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.30.1.1" style="font-size:70%;">LLaVA-OneVision-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.30.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T4.2.30.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.2.1" style="font-size:70%;">55.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.3.1" style="font-size:70%;">77.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.5.1" style="font-size:70%;">54.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.30.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.9.1" style="font-size:70%;">71.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.30.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.30.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.31.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.31.1.1" style="font-size:70%;">Qwen2-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.31.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T4.2.31.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.6.1" style="font-size:70%;">71.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.31.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.9.1" style="font-size:70%;">77.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.31.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.31.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.32.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.32.1.1" style="font-size:70%;">Qwen2.5-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.32.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T4.2.32.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.2.1" style="font-size:70%;">64.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.5.1" style="font-size:70%;">70.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.32.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.9.1" style="font-size:70%;">75.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.10.1" style="font-size:70%;">63.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.32.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.32.13.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.33.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.33.1.1" style="font-size:70%;">InternVL2-Llama3-76B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.33.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T4.2.33.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.2.1" style="font-size:70%;">56.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.3.1" style="font-size:70%;">73.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.4.1" style="font-size:70%;">44.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.5.1" style="font-size:70%;">51.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.6.1" style="font-size:70%;">67.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.7.1" style="font-size:70%;">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.33.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.8.1" style="font-size:70%;">58.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.9.1" style="font-size:70%;">72.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.10.1" style="font-size:70%;">63.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.11.1" style="font-size:70%;">65.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.12.1" style="font-size:70%;">74.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.33.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.33.13.1" style="font-size:70%;">68.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.34.1" style="padding:-0.2pt 1.3pt;">
<span class="ltx_text" id="S3.T4.2.34.1.1" style="font-size:70%;">InternVL2.5-78B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T4.2.34.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T4.2.34.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.2.1" style="font-size:70%;">63.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.3.1" style="font-size:70%;">77.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.4.1" style="font-size:70%;">55.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.5.1" style="font-size:70%;">63.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.6.1" style="font-size:70%;">70.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.7.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.34.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.8.1" style="font-size:70%;">65.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.9.1" style="font-size:70%;">78.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.10.1" style="font-size:70%;">62.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.11.1" style="font-size:70%;">71.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.12.1" style="font-size:70%;">77.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.34.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.34.13.1" style="font-size:70%;">72.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.35" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.2.35.1" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.2" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.2.1" style="font-size:70%;background-color:#ECECEC;">66.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.3" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.3.1" style="font-size:70%;background-color:#ECECEC;">79.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.4" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.4.1" style="font-size:70%;background-color:#ECECEC;">60.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.5" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.5.1" style="font-size:70%;background-color:#ECECEC;">64.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.6" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.6.1" style="font-size:70%;background-color:#ECECEC;">73.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.7" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.7.1" style="font-size:70%;background-color:#ECECEC;">64.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.2.35.8" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.8.1" style="font-size:70%;background-color:#ECECEC;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.9" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.9.1" style="font-size:70%;background-color:#ECECEC;">78.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.10" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.10.1" style="font-size:70%;background-color:#ECECEC;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.11" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.11.1" style="font-size:70%;background-color:#ECECEC;">73.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.12" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.12.1" style="font-size:70%;background-color:#ECECEC;">77.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.2.35.13" style="padding:-0.2pt 1.3pt;"><span class="ltx_text" id="S3.T4.2.35.13.1" style="font-size:70%;background-color:#ECECEC;">73.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various multimodal large language models (MLLMs) across a diverse set of benchmarks assessing their ability to understand and reason using multiple images and real-world scenarios.  The benchmarks are categorized into multi-image tasks (evaluating skills such as cross-image reasoning and context integration) and real-world tasks (assessing performance in more realistic and complex scenarios). Specific benchmarks included are BLINK, Mantis-Eval, MMIU, MuirBench, MMT-Bench, and MIRB for multi-image understanding, and RealWorldQA, MME-RealWorld, WildVision, and R-Bench for real-world comprehension.  A portion of the results are drawn from previously published benchmark studies and the OpenCompass leaderboard.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of multi-image and real-world understanding performance.  Multi-image benchmarks include BLINK [38], Mantis-Eval [50], MMIU [94], MuirBench [117], MMT-Bench [136], and MIRB [152]. Real-world benchmarks encompass RealWorldQA [27], MME-RealWorld [150], WildVision [85], and R-Bench [61]. Part of the results are sourced from the benchmark papers and the OpenCompass leaderboard [26].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T5.2">
<tr class="ltx_tr" id="S3.T5.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.1.1" style="padding:-0.25pt 1.5pt;">Model Name</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.2" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.2.1"></span> <span class="ltx_text" id="S3.T5.2.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.2.2.1">
<span class="ltx_tr" id="S3.T5.2.1.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.2.2.1.1.1" style="padding:-0.25pt 1.5pt;">MME</span></span>
<span class="ltx_tr" id="S3.T5.2.1.2.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.2.2.1.2.1" style="padding:-0.25pt 1.5pt;">(sum)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.2.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.3" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.3.1"></span> <span class="ltx_text" id="S3.T5.2.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.3.2.1">
<span class="ltx_tr" id="S3.T5.2.1.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.3.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMB</span></span>
<span class="ltx_tr" id="S3.T5.2.1.3.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.3.2.1.2.1" style="padding:-0.25pt 1.5pt;">(EN / CN)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.3.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.4" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.4.1"></span> <span class="ltx_text" id="S3.T5.2.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.4.2.1">
<span class="ltx_tr" id="S3.T5.2.1.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.4.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMBv1.1</span></span>
<span class="ltx_tr" id="S3.T5.2.1.4.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.4.2.1.2.1" style="padding:-0.25pt 1.5pt;">(EN)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.4.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.5" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.5.1"></span> <span class="ltx_text" id="S3.T5.2.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.5.2.1">
<span class="ltx_tr" id="S3.T5.2.1.5.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.5.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMVet</span></span>
<span class="ltx_tr" id="S3.T5.2.1.5.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.5.2.1.2.1" style="padding:-0.25pt 1.5pt;">(turbo)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.5.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.6" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.6.1"></span> <span class="ltx_text" id="S3.T5.2.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.6.2.1">
<span class="ltx_tr" id="S3.T5.2.1.6.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.6.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMVetv2</span></span>
<span class="ltx_tr" id="S3.T5.2.1.6.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.6.2.1.2.1" style="padding:-0.25pt 1.5pt;">(0613)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.6.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.7" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.7.1"></span> <span class="ltx_text" id="S3.T5.2.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.7.2.1">
<span class="ltx_tr" id="S3.T5.2.1.7.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.7.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMStar</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.7.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.1.8" style="padding:-0.25pt 1.5pt;">Overall</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.9" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.9.1"></span> <span class="ltx_text" id="S3.T5.2.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.9.2.1">
<span class="ltx_tr" id="S3.T5.2.1.9.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.9.2.1.1.1" style="padding:-0.25pt 1.5pt;">HallBench</span></span>
<span class="ltx_tr" id="S3.T5.2.1.9.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.9.2.1.2.1" style="padding:-0.25pt 1.5pt;">(avg)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.9.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.10" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.10.1"></span> <span class="ltx_text" id="S3.T5.2.1.10.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.10.2.1">
<span class="ltx_tr" id="S3.T5.2.1.10.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.10.2.1.1.1" style="padding:-0.25pt 1.5pt;">MMHal</span></span>
<span class="ltx_tr" id="S3.T5.2.1.10.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.10.2.1.2.1" style="padding:-0.25pt 1.5pt;">(score)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.10.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.11" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.11.1"></span> <span class="ltx_text" id="S3.T5.2.1.11.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.11.2.1">
<span class="ltx_tr" id="S3.T5.2.1.11.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.11.2.1.1.1" style="padding:-0.25pt 1.5pt;">CRPE</span></span>
<span class="ltx_tr" id="S3.T5.2.1.11.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.11.2.1.2.1" style="padding:-0.25pt 1.5pt;">(relation)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.11.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.12" style="padding:-0.25pt 1.5pt;">
<span class="ltx_text" id="S3.T5.2.1.12.1"></span> <span class="ltx_text" id="S3.T5.2.1.12.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T5.2.1.12.2.1">
<span class="ltx_tr" id="S3.T5.2.1.12.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.12.2.1.1.1" style="padding:-0.25pt 1.5pt;">POPE</span></span>
<span class="ltx_tr" id="S3.T5.2.1.12.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.12.2.1.2.1" style="padding:-0.25pt 1.5pt;">(avg)</span></span>
</span></span><span class="ltx_text" id="S3.T5.2.1.12.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.1.13" style="padding:-0.25pt 1.5pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.2.2.1" style="padding:-0.25pt 1.5pt;">LLaVA-OneVision-0.5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.2" style="padding:-0.25pt 1.5pt;">1438.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.3" style="padding:-0.25pt 1.5pt;">61.6 / 55.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.4" style="padding:-0.25pt 1.5pt;">59.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.5" style="padding:-0.25pt 1.5pt;">32.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.7" style="padding:-0.25pt 1.5pt;">37.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.2.2.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.9" style="padding:-0.25pt 1.5pt;">27.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.2.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.3.1" style="padding:-0.25pt 1.5pt;">InternVL2-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.2" style="padding:-0.25pt 1.5pt;">1794.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.3" style="padding:-0.25pt 1.5pt;">65.4 / 60.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.4" style="padding:-0.25pt 1.5pt;">61.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.5" style="padding:-0.25pt 1.5pt;">32.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.6" style="padding:-0.25pt 1.5pt;">36.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.7" style="padding:-0.25pt 1.5pt;">45.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.3.8" style="padding:-0.25pt 1.5pt;">51.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.9" style="padding:-0.25pt 1.5pt;">34.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.10" style="padding:-0.25pt 1.5pt;">2.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.11" style="padding:-0.25pt 1.5pt;">57.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.12" style="padding:-0.25pt 1.5pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.3.13" style="padding:-0.25pt 1.5pt;">45.3</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.4.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.2" style="padding:-0.25pt 1.5pt;">1950.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.3" style="padding:-0.25pt 1.5pt;">70.7 / 66.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.4" style="padding:-0.25pt 1.5pt;">68.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.5" style="padding:-0.25pt 1.5pt;">48.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.6" style="padding:-0.25pt 1.5pt;">43.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.7" style="padding:-0.25pt 1.5pt;">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.4.8" style="padding:-0.25pt 1.5pt;">58.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.9" style="padding:-0.25pt 1.5pt;">39.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.10" style="padding:-0.25pt 1.5pt;">2.49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.11" style="padding:-0.25pt 1.5pt;">60.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.12" style="padding:-0.25pt 1.5pt;">89.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.4.13" style="padding:-0.25pt 1.5pt;">48.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.5" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.5.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.1.1" style="background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.2.1" style="background-color:#ECECEC;">1934.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.3.1" style="background-color:#ECECEC;">72.6 / 67.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.4.1" style="background-color:#ECECEC;">69.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.5.1" style="background-color:#ECECEC;">59.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.6.1" style="background-color:#ECECEC;">47.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.7.1" style="background-color:#ECECEC;">51.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.5.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.8.1" style="background-color:#ECECEC;">61.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.9.1" style="background-color:#ECECEC;">41.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.10.1" style="background-color:#ECECEC;">2.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.11.1" style="background-color:#ECECEC;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.12.1" style="background-color:#ECECEC;">90.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.5.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.5.13.1" style="background-color:#ECECEC;">49.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.6.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.2" style="padding:-0.25pt 1.5pt;">1872.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.3" style="padding:-0.25pt 1.5pt;">74.9 / 73.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.4" style="padding:-0.25pt 1.5pt;">72.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.5" style="padding:-0.25pt 1.5pt;">49.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.7" style="padding:-0.25pt 1.5pt;">48.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.6.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.9" style="padding:-0.25pt 1.5pt;">41.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.6.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.7.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.2" style="padding:-0.25pt 1.5pt;">2157</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.3" style="padding:-0.25pt 1.5pt;">79.1 / 78.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.4" style="padding:-0.25pt 1.5pt;">77.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.5" style="padding:-0.25pt 1.5pt;">61.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.7" style="padding:-0.25pt 1.5pt;">55.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.7.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.9" style="padding:-0.25pt 1.5pt;">46.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.11" style="padding:-0.25pt 1.5pt;">73.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.7.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.8.1" style="padding:-0.25pt 1.5pt;">InternVL2-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.2" style="padding:-0.25pt 1.5pt;">1876.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.3" style="padding:-0.25pt 1.5pt;">73.2 / 70.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.4" style="padding:-0.25pt 1.5pt;">70.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.5" style="padding:-0.25pt 1.5pt;">39.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.6" style="padding:-0.25pt 1.5pt;">39.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.7" style="padding:-0.25pt 1.5pt;">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.8.8" style="padding:-0.25pt 1.5pt;">58.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.9" style="padding:-0.25pt 1.5pt;">37.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.10" style="padding:-0.25pt 1.5pt;">2.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.11" style="padding:-0.25pt 1.5pt;">66.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.12" style="padding:-0.25pt 1.5pt;">88.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.8.13" style="padding:-0.25pt 1.5pt;">48.8</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.9.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.2" style="padding:-0.25pt 1.5pt;">2138.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.3" style="padding:-0.25pt 1.5pt;">74.7 / 71.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.4" style="padding:-0.25pt 1.5pt;">72.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.5" style="padding:-0.25pt 1.5pt;">60.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.6" style="padding:-0.25pt 1.5pt;">52.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.7" style="padding:-0.25pt 1.5pt;">53.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.9.8" style="padding:-0.25pt 1.5pt;">65.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.9" style="padding:-0.25pt 1.5pt;">42.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.10" style="padding:-0.25pt 1.5pt;">2.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.11" style="padding:-0.25pt 1.5pt;">70.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.12" style="padding:-0.25pt 1.5pt;">90.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.9.13" style="padding:-0.25pt 1.5pt;">51.6</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.10" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.10.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.1.1" style="background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.2.1" style="background-color:#ECECEC;">2221.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.3.1" style="background-color:#ECECEC;">81.1 / 78.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.4.1" style="background-color:#ECECEC;">78.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.5.1" style="background-color:#ECECEC;">62.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.6.1" style="background-color:#ECECEC;">53.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.7.1" style="background-color:#ECECEC;">60.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.10.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.8.1" style="background-color:#ECECEC;">69.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.9.1" style="background-color:#ECECEC;">42.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.10.1" style="background-color:#ECECEC;">3.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.11.1" style="background-color:#ECECEC;">71.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.12.1" style="background-color:#ECECEC;">89.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.10.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.10.13.1" style="background-color:#ECECEC;">51.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.2.11.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.2" style="padding:-0.25pt 1.5pt;">2326.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.3" style="padding:-0.25pt 1.5pt;">83.0 / 80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.4" style="padding:-0.25pt 1.5pt;">80.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.5" style="padding:-0.25pt 1.5pt;">62.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.7" style="padding:-0.25pt 1.5pt;">60.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.2.11.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.9" style="padding:-0.25pt 1.5pt;">50.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.10" style="padding:-0.25pt 1.5pt;">3.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.11" style="padding:-0.25pt 1.5pt;">74.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.12" style="padding:-0.25pt 1.5pt;">88.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.11.13" style="padding:-0.25pt 1.5pt;">54.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.12.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.2" style="padding:-0.25pt 1.5pt;">2347</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.3" style="padding:-0.25pt 1.5pt;">83.5 / 83.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.4" style="padding:-0.25pt 1.5pt;">82.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.5" style="padding:-0.25pt 1.5pt;">67.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.7" style="padding:-0.25pt 1.5pt;">63.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.12.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.9" style="padding:-0.25pt 1.5pt;">52.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.11" style="padding:-0.25pt 1.5pt;">76.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.12.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.13.1" style="padding:-0.25pt 1.5pt;">MiniCPM-V2.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.2" style="padding:-0.25pt 1.5pt;">2348.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.3" style="padding:-0.25pt 1.5pt;">81.5 / 79.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.4" style="padding:-0.25pt 1.5pt;">78.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.5" style="padding:-0.25pt 1.5pt;">60.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.7" style="padding:-0.25pt 1.5pt;">57.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.13.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.9" style="padding:-0.25pt 1.5pt;">48.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.10" style="padding:-0.25pt 1.5pt;">3.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.11" style="padding:-0.25pt 1.5pt;">75.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.12" style="padding:-0.25pt 1.5pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.13.13" style="padding:-0.25pt 1.5pt;">53.6</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.14.1" style="padding:-0.25pt 1.5pt;">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.2" style="padding:-0.25pt 1.5pt;">2210.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.3" style="padding:-0.25pt 1.5pt;">81.7 / 81.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.4" style="padding:-0.25pt 1.5pt;">79.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.5" style="padding:-0.25pt 1.5pt;">54.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.6" style="padding:-0.25pt 1.5pt;">52.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.7" style="padding:-0.25pt 1.5pt;">62.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.14.8" style="padding:-0.25pt 1.5pt;">69.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.9" style="padding:-0.25pt 1.5pt;">45.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.10" style="padding:-0.25pt 1.5pt;">3.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.11" style="padding:-0.25pt 1.5pt;">75.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.12" style="padding:-0.25pt 1.5pt;">86.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.14.13" style="padding:-0.25pt 1.5pt;">52.8</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.15.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.2" style="padding:-0.25pt 1.5pt;">2344.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.3" style="padding:-0.25pt 1.5pt;">84.6 / 82.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.4" style="padding:-0.25pt 1.5pt;">83.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.5" style="padding:-0.25pt 1.5pt;">62.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.6" style="padding:-0.25pt 1.5pt;">58.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.7" style="padding:-0.25pt 1.5pt;">62.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.15.8" style="padding:-0.25pt 1.5pt;">73.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.9" style="padding:-0.25pt 1.5pt;">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.10" style="padding:-0.25pt 1.5pt;">3.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.11" style="padding:-0.25pt 1.5pt;">78.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.12" style="padding:-0.25pt 1.5pt;">90.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.15.13" style="padding:-0.25pt 1.5pt;">55.7</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.16" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.16.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.2.1" style="background-color:#ECECEC;">2415.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.3.1" style="background-color:#ECECEC;">83.4 / 82.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.4.1" style="background-color:#ECECEC;">81.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.5.1" style="background-color:#ECECEC;">81.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.6.1" style="background-color:#ECECEC;">66.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.7.1" style="background-color:#ECECEC;">68.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.16.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.8.1" style="background-color:#ECECEC;">77.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.9.1" style="background-color:#ECECEC;">49.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.10.1" style="background-color:#ECECEC;">3.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.11.1" style="background-color:#ECECEC;">76.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.12.1" style="background-color:#ECECEC;">91.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.16.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.16.13.1" style="background-color:#ECECEC;">55.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.17" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.17.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.1.1" style="background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.2.1" style="background-color:#ECECEC;">2372.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.3.1" style="background-color:#ECECEC;">83.4 / 82.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.4.1" style="background-color:#ECECEC;">81.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.5.1" style="background-color:#ECECEC;">76.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.6.1" style="background-color:#ECECEC;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.7.1" style="background-color:#ECECEC;">66.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.17.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.8.1" style="background-color:#ECECEC;">76.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.9.1" style="background-color:#ECECEC;">51.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.10.1" style="background-color:#ECECEC;">3.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.11.1" style="background-color:#ECECEC;">75.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.12.1" style="background-color:#ECECEC;">90.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.17.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.17.13.1" style="background-color:#ECECEC;">55.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.18" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.18.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.1.1" style="background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.2.1" style="background-color:#ECECEC;">2478.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.3.1" style="background-color:#ECECEC;">85.6 / 84.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.4.1" style="background-color:#ECECEC;">83.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.5.1" style="background-color:#ECECEC;">80.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.6.1" style="background-color:#ECECEC;">68.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.7.1" style="background-color:#ECECEC;">68.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.18.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.8.1" style="background-color:#ECECEC;">79.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.9.1" style="background-color:#ECECEC;">55.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.10.1" style="background-color:#ECECEC;">3.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.11.1" style="background-color:#ECECEC;">77.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.12.1" style="background-color:#ECECEC;">90.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.18.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.18.13.1" style="background-color:#ECECEC;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.2.19.1" style="padding:-0.25pt 1.5pt;">InternVL-Chat-V1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.2" style="padding:-0.25pt 1.5pt;">2194.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.3" style="padding:-0.25pt 1.5pt;">82.2 / 82.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.4" style="padding:-0.25pt 1.5pt;">80.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.5" style="padding:-0.25pt 1.5pt;">61.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.6" style="padding:-0.25pt 1.5pt;">51.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.7" style="padding:-0.25pt 1.5pt;">57.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.2.19.8" style="padding:-0.25pt 1.5pt;">69.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.9" style="padding:-0.25pt 1.5pt;">50.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.10" style="padding:-0.25pt 1.5pt;">3.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.11" style="padding:-0.25pt 1.5pt;">75.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.12" style="padding:-0.25pt 1.5pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.19.13" style="padding:-0.25pt 1.5pt;">54.3</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.20.1" style="padding:-0.25pt 1.5pt;">InternVL2-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.2" style="padding:-0.25pt 1.5pt;">2260.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.3" style="padding:-0.25pt 1.5pt;">83.4 / 82.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.4" style="padding:-0.25pt 1.5pt;">81.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.5" style="padding:-0.25pt 1.5pt;">62.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.6" style="padding:-0.25pt 1.5pt;">57.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.7" style="padding:-0.25pt 1.5pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.20.8" style="padding:-0.25pt 1.5pt;">71.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.9" style="padding:-0.25pt 1.5pt;">50.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.10" style="padding:-0.25pt 1.5pt;">3.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.11" style="padding:-0.25pt 1.5pt;">75.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.12" style="padding:-0.25pt 1.5pt;">88.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.20.13" style="padding:-0.25pt 1.5pt;">54.5</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.21.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.2" style="padding:-0.25pt 1.5pt;">2373.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.3" style="padding:-0.25pt 1.5pt;">85.4 / 85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.4" style="padding:-0.25pt 1.5pt;">84.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.5" style="padding:-0.25pt 1.5pt;">65.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.6" style="padding:-0.25pt 1.5pt;">60.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.7" style="padding:-0.25pt 1.5pt;">66.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.21.8" style="padding:-0.25pt 1.5pt;">75.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.9" style="padding:-0.25pt 1.5pt;">55.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.10" style="padding:-0.25pt 1.5pt;">3.70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.11" style="padding:-0.25pt 1.5pt;">79.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.12" style="padding:-0.25pt 1.5pt;">90.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.21.13" style="padding:-0.25pt 1.5pt;">57.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.22.1" style="padding:-0.25pt 1.5pt;">Cambrian-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib115" title=""><span class="ltx_text" style="font-size:90%;">115</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.2" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.3" style="padding:-0.25pt 1.5pt;">80.4 / 79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.4" style="padding:-0.25pt 1.5pt;">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.5" style="padding:-0.25pt 1.5pt;">53.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.7" style="padding:-0.25pt 1.5pt;">54.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.22.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.9" style="padding:-0.25pt 1.5pt;">41.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.22.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.23.1" style="padding:-0.25pt 1.5pt;">InternVL2-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.2" style="padding:-0.25pt 1.5pt;">2307.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.3" style="padding:-0.25pt 1.5pt;">86.8 / 86.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.4" style="padding:-0.25pt 1.5pt;">85.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.5" style="padding:-0.25pt 1.5pt;">65.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.6" style="padding:-0.25pt 1.5pt;">63.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.7" style="padding:-0.25pt 1.5pt;">65.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.23.8" style="padding:-0.25pt 1.5pt;">75.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.9" style="padding:-0.25pt 1.5pt;">56.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.10" style="padding:-0.25pt 1.5pt;">3.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.11" style="padding:-0.25pt 1.5pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.12" style="padding:-0.25pt 1.5pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.23.13" style="padding:-0.25pt 1.5pt;">56.7</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.24.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-38B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.2" style="padding:-0.25pt 1.5pt;">2455.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.3" style="padding:-0.25pt 1.5pt;">86.5 / 86.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.4" style="padding:-0.25pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.5" style="padding:-0.25pt 1.5pt;">68.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.6" style="padding:-0.25pt 1.5pt;">62.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.7" style="padding:-0.25pt 1.5pt;">67.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.24.8" style="padding:-0.25pt 1.5pt;">77.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.9" style="padding:-0.25pt 1.5pt;">56.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.10" style="padding:-0.25pt 1.5pt;">3.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.11" style="padding:-0.25pt 1.5pt;">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.12" style="padding:-0.25pt 1.5pt;">90.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.24.13" style="padding:-0.25pt 1.5pt;">57.4</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.25" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.25.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.2.1" style="background-color:#ECECEC;">2523.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.3.1" style="background-color:#ECECEC;">87.6 / 86.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.4.1" style="background-color:#ECECEC;">86.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.5.1" style="background-color:#ECECEC;">83.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.6.1" style="background-color:#ECECEC;">69.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.7.1" style="background-color:#ECECEC;">71.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.25.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.8.1" style="background-color:#ECECEC;">81.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.9.1" style="background-color:#ECECEC;">57.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.10.1" style="background-color:#ECECEC;">3.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.11.1" style="background-color:#ECECEC;">77.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.12.1" style="background-color:#ECECEC;">90.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.25.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.25.13.1" style="background-color:#ECECEC;">57.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.2.26.1" style="padding:-0.25pt 1.5pt;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.2" style="padding:-0.25pt 1.5pt;">1926.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.3" style="padding:-0.25pt 1.5pt;">81.0 / 80.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.4" style="padding:-0.25pt 1.5pt;">80.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.5" style="padding:-0.25pt 1.5pt;">67.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.6" style="padding:-0.25pt 1.5pt;">66.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.7" style="padding:-0.25pt 1.5pt;">56.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.2.26.8" style="padding:-0.25pt 1.5pt;">70.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.9" style="padding:-0.25pt 1.5pt;">46.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.2.26.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.27.1" style="padding:-0.25pt 1.5pt;">GPT-4o-20240513 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.2" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.3" style="padding:-0.25pt 1.5pt;">83.4 / 82.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.4" style="padding:-0.25pt 1.5pt;">83.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.5" style="padding:-0.25pt 1.5pt;">69.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.6" style="padding:-0.25pt 1.5pt;">71.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.7" style="padding:-0.25pt 1.5pt;">64.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.27.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.9" style="padding:-0.25pt 1.5pt;">55.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.10" style="padding:-0.25pt 1.5pt;">4.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.11" style="padding:-0.25pt 1.5pt;">76.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.12" style="padding:-0.25pt 1.5pt;">86.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.27.13" style="padding:-0.25pt 1.5pt;">55.6</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.28.1" style="padding:-0.25pt 1.5pt;">Claude-3-Opus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.2" style="padding:-0.25pt 1.5pt;">1586.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.3" style="padding:-0.25pt 1.5pt;">63.3 / 59.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.4" style="padding:-0.25pt 1.5pt;">60.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.5" style="padding:-0.25pt 1.5pt;">51.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.6" style="padding:-0.25pt 1.5pt;">55.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.7" style="padding:-0.25pt 1.5pt;">45.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.28.8" style="padding:-0.25pt 1.5pt;">55.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.9" style="padding:-0.25pt 1.5pt;">37.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.28.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.29.1" style="padding:-0.25pt 1.5pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.2" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.3" style="padding:-0.25pt 1.5pt;">82.6 / 83.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.4" style="padding:-0.25pt 1.5pt;">80.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.5" style="padding:-0.25pt 1.5pt;">70.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.6" style="padding:-0.25pt 1.5pt;">71.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.7" style="padding:-0.25pt 1.5pt;">65.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.29.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.9" style="padding:-0.25pt 1.5pt;">55.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.29.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.30.1" style="padding:-0.25pt 1.5pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.2" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.3" style="padding:-0.25pt 1.5pt;">73.9 / 73.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.4" style="padding:-0.25pt 1.5pt;">74.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.5" style="padding:-0.25pt 1.5pt;">64.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.6" style="padding:-0.25pt 1.5pt;">66.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.7" style="padding:-0.25pt 1.5pt;">59.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.30.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.9" style="padding:-0.25pt 1.5pt;">45.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.30.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.31.1" style="padding:-0.25pt 1.5pt;">LLaVA-OneVision-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.2" style="padding:-0.25pt 1.5pt;">2261.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.3" style="padding:-0.25pt 1.5pt;">85.8 / 85.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.4" style="padding:-0.25pt 1.5pt;">85.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.5" style="padding:-0.25pt 1.5pt;">60.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.7" style="padding:-0.25pt 1.5pt;">65.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.31.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.9" style="padding:-0.25pt 1.5pt;">49.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.31.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.32.1" style="padding:-0.25pt 1.5pt;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.2" style="padding:-0.25pt 1.5pt;">2482.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.3" style="padding:-0.25pt 1.5pt;">86.5 / 86.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.4" style="padding:-0.25pt 1.5pt;">85.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.5" style="padding:-0.25pt 1.5pt;">74.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.6" style="padding:-0.25pt 1.5pt;">66.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.7" style="padding:-0.25pt 1.5pt;">68.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.32.8" style="padding:-0.25pt 1.5pt;">78.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.9" style="padding:-0.25pt 1.5pt;">58.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.11" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.32.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.33.1" style="padding:-0.25pt 1.5pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.2" style="padding:-0.25pt 1.5pt;">2448.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.3" style="padding:-0.25pt 1.5pt;">88.6 / 87.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.4" style="padding:-0.25pt 1.5pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.5" style="padding:-0.25pt 1.5pt;">76.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.6" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.7" style="padding:-0.25pt 1.5pt;">70.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.33.8" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.9" style="padding:-0.25pt 1.5pt;">55.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.10" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.11" style="padding:-0.25pt 1.5pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.12" style="padding:-0.25pt 1.5pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.33.13" style="padding:-0.25pt 1.5pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.34.1" style="padding:-0.25pt 1.5pt;">InternVL2-Llama3-76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.2" style="padding:-0.25pt 1.5pt;">2414.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.3" style="padding:-0.25pt 1.5pt;">86.5 / 86.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.4" style="padding:-0.25pt 1.5pt;">85.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.5" style="padding:-0.25pt 1.5pt;">65.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.6" style="padding:-0.25pt 1.5pt;">68.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.7" style="padding:-0.25pt 1.5pt;">67.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.34.8" style="padding:-0.25pt 1.5pt;">77.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.9" style="padding:-0.25pt 1.5pt;">55.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.10" style="padding:-0.25pt 1.5pt;">3.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.11" style="padding:-0.25pt 1.5pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.12" style="padding:-0.25pt 1.5pt;">89.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.34.13" style="padding:-0.25pt 1.5pt;">56.4</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.35.1" style="padding:-0.25pt 1.5pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.2" style="padding:-0.25pt 1.5pt;">2494.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.3" style="padding:-0.25pt 1.5pt;">88.3 / 88.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.4" style="padding:-0.25pt 1.5pt;">87.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.5" style="padding:-0.25pt 1.5pt;">72.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.6" style="padding:-0.25pt 1.5pt;">65.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.7" style="padding:-0.25pt 1.5pt;">69.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.35.8" style="padding:-0.25pt 1.5pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.9" style="padding:-0.25pt 1.5pt;">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.10" style="padding:-0.25pt 1.5pt;">3.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.11" style="padding:-0.25pt 1.5pt;">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.12" style="padding:-0.25pt 1.5pt;">90.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.35.13" style="padding:-0.25pt 1.5pt;">57.7</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.36" style="background-color:#ECECEC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T5.2.36.1" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.2" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.2.1" style="background-color:#ECECEC;">2549.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.3" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.3.1" style="background-color:#ECECEC;">89.0 / 88.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.4" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.4.1" style="background-color:#ECECEC;">87.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.5" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.5.1" style="background-color:#ECECEC;">81.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.6" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.6.1" style="background-color:#ECECEC;">70.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.7" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.7.1" style="background-color:#ECECEC;">72.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T5.2.36.8" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.8.1" style="background-color:#ECECEC;">82.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.9" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.9.1" style="background-color:#ECECEC;">59.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.10" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.10.1" style="background-color:#ECECEC;">3.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.11" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.11.1" style="background-color:#ECECEC;">79.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.12" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.12.1" style="background-color:#ECECEC;">90.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T5.2.36.13" style="padding:-0.25pt 1.5pt;"><span class="ltx_text" id="S3.T5.2.36.13.1" style="background-color:#ECECEC;">58.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comprehensive comparison of various Multimodal Large Language Models (MLLMs) across a range of benchmarks assessing both their understanding capabilities and their propensity for hallucinations.  The multimodal understanding benchmarks evaluate the models' performance on complex tasks involving multiple modalities (text, images, videos, etc.). These benchmarks are MME, MMBench, MMVet, and MMStar. Hallucination benchmarks specifically measure the models' tendency to generate false or fabricated information, encompassing HallusionBench, MMHal, CRPE, and POPE. A portion of the results are drawn from the original benchmark papers and supplemented with data from the OpenCompass leaderboard, providing a holistic view of model performance on these crucial aspects.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of comprehensive multimodal understanding and hallucination performance. Comprehensive multimodal benchmarks include MME [36], MMBench series [74], MMVet series [137, 138], and MMStar [13]. Hallucination benchmarks encompass HallusionBench [44], MMHal [110], CRPE [125], and POPE [66]. Part of the results are sourced from the benchmark papers and the OpenCompass leaderboard [26].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T6.2">
<tr class="ltx_tr" id="S3.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.1.1" rowspan="2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.1.1.1">Model Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="3" id="S3.T6.2.1.2" style="padding:-0.25pt 8.0pt;">RefCOCO</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="3" id="S3.T6.2.1.3" style="padding:-0.25pt 8.0pt;">RefCOCO+</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S3.T6.2.1.4" style="padding:-0.25pt 8.0pt;">RefCOCOg</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.1.5" rowspan="2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.1.5.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.2">
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.1" style="padding:-0.25pt 8.0pt;">val</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.2" style="padding:-0.25pt 8.0pt;">test-A</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.2.3" style="padding:-0.25pt 8.0pt;">test-B</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.4" style="padding:-0.25pt 8.0pt;">val</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.5" style="padding:-0.25pt 8.0pt;">test-A</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.2.6" style="padding:-0.25pt 8.0pt;">test-B</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.7" style="padding:-0.25pt 8.0pt;">val</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.2.8" style="padding:-0.25pt 8.0pt;">test</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T6.2.3.1" style="padding:-0.25pt 8.0pt;">Grounding-DINO-L <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.2" style="padding:-0.25pt 8.0pt;">90.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.3" style="padding:-0.25pt 8.0pt;">93.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.3.4" style="padding:-0.25pt 8.0pt;">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.5" style="padding:-0.25pt 8.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.6" style="padding:-0.25pt 8.0pt;">89.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.3.7" style="padding:-0.25pt 8.0pt;">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.8" style="padding:-0.25pt 8.0pt;">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.3.9" style="padding:-0.25pt 8.0pt;">87.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.3.10" style="padding:-0.25pt 8.0pt;">86.6</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.4.1" style="padding:-0.25pt 8.0pt;">UNINEXT-H <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib132" title=""><span class="ltx_text" style="font-size:90%;">132</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.2" style="padding:-0.25pt 8.0pt;">92.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.3" style="padding:-0.25pt 8.0pt;">94.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.4.4" style="padding:-0.25pt 8.0pt;">91.5</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.5" style="padding:-0.25pt 8.0pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.6" style="padding:-0.25pt 8.0pt;">89.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.4.7" style="padding:-0.25pt 8.0pt;">79.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.8" style="padding:-0.25pt 8.0pt;">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.4.9" style="padding:-0.25pt 8.0pt;">89.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.4.10" style="padding:-0.25pt 8.0pt;">88.9</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.5.1" style="padding:-0.25pt 8.0pt;">ONE-PEACE <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib121" title=""><span class="ltx_text" style="font-size:90%;">121</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.2" style="padding:-0.25pt 8.0pt;">92.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.3" style="padding:-0.25pt 8.0pt;">94.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.5.4" style="padding:-0.25pt 8.0pt;">89.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.5" style="padding:-0.25pt 8.0pt;">88.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.6" style="padding:-0.25pt 8.0pt;">92.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.5.7" style="padding:-0.25pt 8.0pt;">83.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.8" style="padding:-0.25pt 8.0pt;">89.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.5.9" style="padding:-0.25pt 8.0pt;">89.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.5.10" style="padding:-0.25pt 8.0pt;">89.8</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T6.2.6.1" style="padding:-0.25pt 8.0pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.2" style="padding:-0.25pt 8.0pt;">89.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.3" style="padding:-0.25pt 8.0pt;">91.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.6.4" style="padding:-0.25pt 8.0pt;">84.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.5" style="padding:-0.25pt 8.0pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.6" style="padding:-0.25pt 8.0pt;">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.6.7" style="padding:-0.25pt 8.0pt;">74.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.8" style="padding:-0.25pt 8.0pt;">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.6.9" style="padding:-0.25pt 8.0pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.6.10" style="padding:-0.25pt 8.0pt;">85.0</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.7" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.7.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.1.1" style="background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.2.1" style="background-color:#ECECEC;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.3.1" style="background-color:#ECECEC;">90.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.7.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.4.1" style="background-color:#ECECEC;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.5.1" style="background-color:#ECECEC;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.6.1" style="background-color:#ECECEC;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.7.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.7.1" style="background-color:#ECECEC;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.8.1" style="background-color:#ECECEC;">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.7.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.9.1" style="background-color:#ECECEC;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.7.10.1" style="background-color:#ECECEC;">81.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.8" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.8.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.1.1" style="background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.2.1" style="background-color:#ECECEC;">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.3.1" style="background-color:#ECECEC;">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.8.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.4.1" style="background-color:#ECECEC;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.5.1" style="background-color:#ECECEC;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.6.1" style="background-color:#ECECEC;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.8.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.7.1" style="background-color:#ECECEC;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.8.1" style="background-color:#ECECEC;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.8.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.9.1" style="background-color:#ECECEC;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.8.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.8.10.1" style="background-color:#ECECEC;">86.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.9.1" style="padding:-0.25pt 8.0pt;">Shikra-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.2" style="padding:-0.25pt 8.0pt;">87.0</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.3" style="padding:-0.25pt 8.0pt;">90.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.9.4" style="padding:-0.25pt 8.0pt;">80.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.5" style="padding:-0.25pt 8.0pt;">81.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.6" style="padding:-0.25pt 8.0pt;">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.9.7" style="padding:-0.25pt 8.0pt;">72.1</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.8" style="padding:-0.25pt 8.0pt;">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.9.9" style="padding:-0.25pt 8.0pt;">82.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.10" style="padding:-0.25pt 8.0pt;">82.9</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.10.1" style="padding:-0.25pt 8.0pt;">Ferret-v2-13B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib143" title=""><span class="ltx_text" style="font-size:90%;">143</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.2" style="padding:-0.25pt 8.0pt;">92.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.3" style="padding:-0.25pt 8.0pt;">95.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.10.4" style="padding:-0.25pt 8.0pt;">88.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.5" style="padding:-0.25pt 8.0pt;">87.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.6" style="padding:-0.25pt 8.0pt;">92.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.10.7" style="padding:-0.25pt 8.0pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.8" style="padding:-0.25pt 8.0pt;">89.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.10.9" style="padding:-0.25pt 8.0pt;">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.10" style="padding:-0.25pt 8.0pt;">89.6</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.11.1" style="padding:-0.25pt 8.0pt;">CogVLM-Grounding <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib122" title=""><span class="ltx_text" style="font-size:90%;">122</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.2" style="padding:-0.25pt 8.0pt;">92.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.3" style="padding:-0.25pt 8.0pt;">94.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.11.4" style="padding:-0.25pt 8.0pt;">89.0</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.5" style="padding:-0.25pt 8.0pt;">88.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.6" style="padding:-0.25pt 8.0pt;">92.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.11.7" style="padding:-0.25pt 8.0pt;">83.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.8" style="padding:-0.25pt 8.0pt;">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.11.9" style="padding:-0.25pt 8.0pt;">90.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.11.10" style="padding:-0.25pt 8.0pt;">90.3</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.12.1" style="padding:-0.25pt 8.0pt;">MM1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib142" title=""><span class="ltx_text" style="font-size:90%;">142</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.2" style="padding:-0.25pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.3" style="padding:-0.25pt 8.0pt;">92.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.12.4" style="padding:-0.25pt 8.0pt;">86.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.5" style="padding:-0.25pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.6" style="padding:-0.25pt 8.0pt;">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.12.7" style="padding:-0.25pt 8.0pt;">77.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.8" style="padding:-0.25pt 8.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.12.9" style="padding:-0.25pt 8.0pt;">87.1</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.10" style="padding:-0.25pt 8.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.13.1" style="padding:-0.25pt 8.0pt;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.2" style="padding:-0.25pt 8.0pt;">91.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.3" style="padding:-0.25pt 8.0pt;">93.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.13.4" style="padding:-0.25pt 8.0pt;">87.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.5" style="padding:-0.25pt 8.0pt;">85.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.6" style="padding:-0.25pt 8.0pt;">90.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.13.7" style="padding:-0.25pt 8.0pt;">79.5</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.8" style="padding:-0.25pt 8.0pt;">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.13.9" style="padding:-0.25pt 8.0pt;">87.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.13.10" style="padding:-0.25pt 8.0pt;">87.9</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.14.1" style="padding:-0.25pt 8.0pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.2" style="padding:-0.25pt 8.0pt;">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.3" style="padding:-0.25pt 8.0pt;">92.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.14.4" style="padding:-0.25pt 8.0pt;">85.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.5" style="padding:-0.25pt 8.0pt;">84.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.6" style="padding:-0.25pt 8.0pt;">89.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.14.7" style="padding:-0.25pt 8.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.8" style="padding:-0.25pt 8.0pt;">87.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.14.9" style="padding:-0.25pt 8.0pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.14.10" style="padding:-0.25pt 8.0pt;">86.6</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.15.1" style="padding:-0.25pt 8.0pt;">TextHawk2 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib139" title=""><span class="ltx_text" style="font-size:90%;">139</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.2" style="padding:-0.25pt 8.0pt;">91.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.3" style="padding:-0.25pt 8.0pt;">93.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.15.4" style="padding:-0.25pt 8.0pt;">87.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.5" style="padding:-0.25pt 8.0pt;">86.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.6" style="padding:-0.25pt 8.0pt;">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.15.7" style="padding:-0.25pt 8.0pt;">80.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.8" style="padding:-0.25pt 8.0pt;">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.15.9" style="padding:-0.25pt 8.0pt;">88.1</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.15.10" style="padding:-0.25pt 8.0pt;">88.2</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.16.1" style="padding:-0.25pt 8.0pt;">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.2" style="padding:-0.25pt 8.0pt;">87.1</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.3" style="padding:-0.25pt 8.0pt;">91.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.16.4" style="padding:-0.25pt 8.0pt;">80.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.5" style="padding:-0.25pt 8.0pt;">79.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.6" style="padding:-0.25pt 8.0pt;">87.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.16.7" style="padding:-0.25pt 8.0pt;">71.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.8" style="padding:-0.25pt 8.0pt;">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.16.9" style="padding:-0.25pt 8.0pt;">82.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.16.10" style="padding:-0.25pt 8.0pt;">82.9</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.17.1" style="padding:-0.25pt 8.0pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.2" style="padding:-0.25pt 8.0pt;">90.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.3" style="padding:-0.25pt 8.0pt;">94.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.17.4" style="padding:-0.25pt 8.0pt;">85.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.5" style="padding:-0.25pt 8.0pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.6" style="padding:-0.25pt 8.0pt;">91.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.17.7" style="padding:-0.25pt 8.0pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.8" style="padding:-0.25pt 8.0pt;">86.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.17.9" style="padding:-0.25pt 8.0pt;">87.6</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.17.10" style="padding:-0.25pt 8.0pt;">87.6</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.18" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.18.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.2.1" style="background-color:#ECECEC;">92.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.3.1" style="background-color:#ECECEC;">94.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.18.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.4.1" style="background-color:#ECECEC;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.5.1" style="background-color:#ECECEC;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.6.1" style="background-color:#ECECEC;">92.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.18.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.7.1" style="background-color:#ECECEC;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.8.1" style="background-color:#ECECEC;">89.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.18.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.9.1" style="background-color:#ECECEC;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.18.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.18.10.1" style="background-color:#ECECEC;">89.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.19" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.19.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.1.1" style="background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.2.1" style="background-color:#ECECEC;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.3.1" style="background-color:#ECECEC;">93.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.19.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.4.1" style="background-color:#ECECEC;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.5.1" style="background-color:#ECECEC;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.6.1" style="background-color:#ECECEC;">91.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.19.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.7.1" style="background-color:#ECECEC;">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.8.1" style="background-color:#ECECEC;">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.19.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.9.1" style="background-color:#ECECEC;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.19.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.19.10.1" style="background-color:#ECECEC;">88.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.20" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.20.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.1.1" style="background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.2.1" style="background-color:#ECECEC;">92.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.3.1" style="background-color:#ECECEC;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.20.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.4.1" style="background-color:#ECECEC;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.5.1" style="background-color:#ECECEC;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.6.1" style="background-color:#ECECEC;">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.20.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.7.1" style="background-color:#ECECEC;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.8.1" style="background-color:#ECECEC;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.20.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.9.1" style="background-color:#ECECEC;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.20.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.20.10.1" style="background-color:#ECECEC;">89.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T6.2.21.1" style="padding:-0.25pt 8.0pt;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.2" style="padding:-0.25pt 8.0pt;">93.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.3" style="padding:-0.25pt 8.0pt;">95.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.21.4" style="padding:-0.25pt 8.0pt;">90.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.5" style="padding:-0.25pt 8.0pt;">90.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.6" style="padding:-0.25pt 8.0pt;">93.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.21.7" style="padding:-0.25pt 8.0pt;">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.8" style="padding:-0.25pt 8.0pt;">89.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.21.9" style="padding:-0.25pt 8.0pt;">90.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.21.10" style="padding:-0.25pt 8.0pt;">91.1</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.22.1" style="padding:-0.25pt 8.0pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.2" style="padding:-0.25pt 8.0pt;">92.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.3" style="padding:-0.25pt 8.0pt;">94.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.22.4" style="padding:-0.25pt 8.0pt;">89.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.5" style="padding:-0.25pt 8.0pt;">88.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.6" style="padding:-0.25pt 8.0pt;">92.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.22.7" style="padding:-0.25pt 8.0pt;">83.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.8" style="padding:-0.25pt 8.0pt;">89.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.22.9" style="padding:-0.25pt 8.0pt;">90.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.22.10" style="padding:-0.25pt 8.0pt;">90.3</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.23.1" style="padding:-0.25pt 8.0pt;">InternVL2-Llama3-76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.2" style="padding:-0.25pt 8.0pt;">92.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.3" style="padding:-0.25pt 8.0pt;">94.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.23.4" style="padding:-0.25pt 8.0pt;">88.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.5" style="padding:-0.25pt 8.0pt;">88.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.6" style="padding:-0.25pt 8.0pt;">93.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.23.7" style="padding:-0.25pt 8.0pt;">82.8</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.8" style="padding:-0.25pt 8.0pt;">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.23.9" style="padding:-0.25pt 8.0pt;">90.3</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.23.10" style="padding:-0.25pt 8.0pt;">90.0</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.24.1" style="padding:-0.25pt 8.0pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.2" style="padding:-0.25pt 8.0pt;">93.7</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.3" style="padding:-0.25pt 8.0pt;">95.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.24.4" style="padding:-0.25pt 8.0pt;">92.5</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.5" style="padding:-0.25pt 8.0pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.6" style="padding:-0.25pt 8.0pt;">94.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.24.7" style="padding:-0.25pt 8.0pt;">86.9</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.8" style="padding:-0.25pt 8.0pt;">92.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.24.9" style="padding:-0.25pt 8.0pt;">92.2</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.24.10" style="padding:-0.25pt 8.0pt;">92.3</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.25" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.25.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.2.1" style="background-color:#ECECEC;">93.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.3.1" style="background-color:#ECECEC;">95.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.25.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.4.1" style="background-color:#ECECEC;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.5.1" style="background-color:#ECECEC;">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.6.1" style="background-color:#ECECEC;">93.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.25.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.7.1" style="background-color:#ECECEC;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.8.1" style="background-color:#ECECEC;">91.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.25.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.9.1" style="background-color:#ECECEC;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.25.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.25.10.1" style="background-color:#ECECEC;">91.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.26" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T6.2.26.1" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.2" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.2.1" style="background-color:#ECECEC;">93.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.3" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.3.1" style="background-color:#ECECEC;">95.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.26.4" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.4.1" style="background-color:#ECECEC;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.5" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.5.1" style="background-color:#ECECEC;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.6" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.6.1" style="background-color:#ECECEC;">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.26.7" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.7.1" style="background-color:#ECECEC;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.8" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.8.1" style="background-color:#ECECEC;">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.26.9" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.9.1" style="background-color:#ECECEC;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.26.10" style="padding:-0.25pt 8.0pt;"><span class="ltx_text" id="S3.T6.2.26.10.1" style="background-color:#ECECEC;">91.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of visual grounding performance across various models, including InternVL3 models of different sizes and several state-of-the-art visual grounding models.  The models are evaluated on three benchmark datasets: RefCOCO, RefCOCO+, and RefCOCOg.  The results show the performance of each model on the 'val' and 'test' splits of these datasets, categorized by test-A and test-B subsets for RefCOCO and RefCOCO+.  This allows for a detailed comparison of the models' ability to accurately localize objects in images based on textual descriptions.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of visual grounding performance. We evaluate InternVL’s visual grounding capability on RefCOCO, RefCOCO+, and RefCOCOg datasets [55, 87]. Parts of the results are collected from [120].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T7.2">
<tr class="ltx_tr" id="S3.T7.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.1.1" rowspan="2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.1.1.1" style="font-size:70%;">Model Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="6" id="S3.T7.2.1.2" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.1.2.1"></span><span class="ltx_text" id="S3.T7.2.1.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T7.2.1.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T7.2.1.2.3.1">
<span class="ltx_tr" id="S3.T7.2.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T7.2.1.2.3.1.1.1" style="padding:-0.2pt 4.2pt;">MMMB</span></span>
</span></span><span class="ltx_text" id="S3.T7.2.1.2.4"></span><span class="ltx_text" id="S3.T7.2.1.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="6" id="S3.T7.2.1.3" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.1.3.1"></span><span class="ltx_text" id="S3.T7.2.1.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T7.2.1.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T7.2.1.3.3.1">
<span class="ltx_tr" id="S3.T7.2.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T7.2.1.3.3.1.1.1" style="padding:-0.2pt 4.2pt;">Multilingual MMBench</span></span>
</span></span><span class="ltx_text" id="S3.T7.2.1.3.4"></span><span class="ltx_text" id="S3.T7.2.1.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.1.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.1.4.1" style="font-size:70%;">MTVQA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.1.5" rowspan="2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.1.5.1" style="font-size:70%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.2">
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.1.1" style="font-size:70%;">en</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.2.1" style="font-size:70%;">zh</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.3.1" style="font-size:70%;">pt</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.4.1" style="font-size:70%;">ar</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.5.1" style="font-size:70%;">tr</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.2.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.6.1" style="font-size:70%;">ru</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.7.1" style="font-size:70%;">en</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.8.1" style="font-size:70%;">zh</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.9.1" style="font-size:70%;">pt</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.10.1" style="font-size:70%;">ar</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.2.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.11.1" style="font-size:70%;">tr</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.2.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.12.1" style="font-size:70%;">ru</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.2.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.2.13.1" style="font-size:70%;">(avg)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T7.2.3.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.3.1.1" style="font-size:70%;">InternVL2-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.2.1" style="font-size:70%;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.3.1" style="font-size:70%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.4.1" style="font-size:70%;">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.5.1" style="font-size:70%;">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.6.1" style="font-size:70%;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.3.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.7.1" style="font-size:70%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.8.1" style="font-size:70%;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.9.1" style="font-size:70%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.10.1" style="font-size:70%;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.11.1" style="font-size:70%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.12.1" style="font-size:70%;">31.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.3.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.13.1" style="font-size:70%;">52.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.3.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.14.1" style="font-size:70%;">12.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.3.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.3.15.1" style="font-size:70%;">40.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.4.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.4.1.1" style="font-size:70%;">InternVL2.5-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.2.1" style="font-size:70%;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.3.1" style="font-size:70%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.4.1" style="font-size:70%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.5.1" style="font-size:70%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.6.1" style="font-size:70%;">45.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.4.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.7.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.8.1" style="font-size:70%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.9.1" style="font-size:70%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.10.1" style="font-size:70%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.11.1" style="font-size:70%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.12.1" style="font-size:70%;">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.4.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.13.1" style="font-size:70%;">53.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.4.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.14.1" style="font-size:70%;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.4.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.4.15.1" style="font-size:70%;">46.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.5" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.5.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.2.1" style="font-size:70%;background-color:#ECECEC;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.3.1" style="font-size:70%;background-color:#ECECEC;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.4.1" style="font-size:70%;background-color:#ECECEC;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.5.1" style="font-size:70%;background-color:#ECECEC;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.6.1" style="font-size:70%;background-color:#ECECEC;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.5.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.7.1" style="font-size:70%;background-color:#ECECEC;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.8.1" style="font-size:70%;background-color:#ECECEC;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.9.1" style="font-size:70%;background-color:#ECECEC;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.10.1" style="font-size:70%;background-color:#ECECEC;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.11.1" style="font-size:70%;background-color:#ECECEC;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.12.1" style="font-size:70%;background-color:#ECECEC;">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.5.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.13.1" style="font-size:70%;background-color:#ECECEC;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.5.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.14.1" style="font-size:70%;background-color:#ECECEC;">22.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.5.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.5.15.1" style="font-size:70%;background-color:#ECECEC;">47.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.6.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.6.1.1" style="font-size:70%;">Qwen2-VL-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T7.2.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.2.1" style="font-size:70%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.3.1" style="font-size:70%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.4.1" style="font-size:70%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.5.1" style="font-size:70%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.6.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.6.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.7.1" style="font-size:70%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.8.1" style="font-size:70%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.9.1" style="font-size:70%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.10.1" style="font-size:70%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.11.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.12.1" style="font-size:70%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.6.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.13.1" style="font-size:70%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.6.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.14.1" style="font-size:70%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.6.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.6.15.1" style="font-size:70%;">52.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.7.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.7.1.1" style="font-size:70%;">Qwen2.5-VL-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T7.2.7.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.7.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.7.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.13.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.7.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.14.1" style="font-size:70%;">24.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.7.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.7.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.8.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.8.1.1" style="font-size:70%;">InternVL2-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.2.1" style="font-size:70%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.3.1" style="font-size:70%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.4.1" style="font-size:70%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.5.1" style="font-size:70%;">43.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.6.1" style="font-size:70%;">46.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.8.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.7.1" style="font-size:70%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.8.1" style="font-size:70%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.9.1" style="font-size:70%;">69.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.10.1" style="font-size:70%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.11.1" style="font-size:70%;">29.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.12.1" style="font-size:70%;">31.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.8.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.13.1" style="font-size:70%;">42.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.8.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.14.1" style="font-size:70%;">10.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.8.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.8.15.1" style="font-size:70%;">39.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.9.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.9.1.1" style="font-size:70%;">InternVL2.5-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.2.1" style="font-size:70%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.3.1" style="font-size:70%;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.4.1" style="font-size:70%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.5.1" style="font-size:70%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.6.1" style="font-size:70%;">46.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.9.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.7.1" style="font-size:70%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.8.1" style="font-size:70%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.9.1" style="font-size:70%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.10.1" style="font-size:70%;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.11.1" style="font-size:70%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.12.1" style="font-size:70%;">33.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.9.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.13.1" style="font-size:70%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.9.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.14.1" style="font-size:70%;">21.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.9.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.9.15.1" style="font-size:70%;">45.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.10" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.10.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.2.1" style="font-size:70%;background-color:#ECECEC;">81.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.3.1" style="font-size:70%;background-color:#ECECEC;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.4.1" style="font-size:70%;background-color:#ECECEC;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.5.1" style="font-size:70%;background-color:#ECECEC;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.6.1" style="font-size:70%;background-color:#ECECEC;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.10.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.7.1" style="font-size:70%;background-color:#ECECEC;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.8.1" style="font-size:70%;background-color:#ECECEC;">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.9.1" style="font-size:70%;background-color:#ECECEC;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.10.1" style="font-size:70%;background-color:#ECECEC;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.11.1" style="font-size:70%;background-color:#ECECEC;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.12.1" style="font-size:70%;background-color:#ECECEC;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.10.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.13.1" style="font-size:70%;background-color:#ECECEC;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.10.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.14.1" style="font-size:70%;background-color:#ECECEC;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.10.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.10.15.1" style="font-size:70%;background-color:#ECECEC;">57.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T7.2.11.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.11.1.1" style="font-size:70%;">mPLUG-Owl2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib135" title=""><span class="ltx_text" style="font-size:90%;">135</span></a><span class="ltx_text" id="S3.T7.2.11.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.2.1" style="font-size:70%;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.3.1" style="font-size:70%;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.4.1" style="font-size:70%;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.5.1" style="font-size:70%;">45.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.6.1" style="font-size:70%;">45.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.11.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.7.1" style="font-size:70%;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.8.1" style="font-size:70%;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.9.1" style="font-size:70%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.10.1" style="font-size:70%;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.11.1" style="font-size:70%;">37.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.12.1" style="font-size:70%;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.11.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.13.1" style="font-size:70%;">60.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.11.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.14.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.11.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.11.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.12.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.12.1.1" style="font-size:70%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.12.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T7.2.12.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.2.1" style="font-size:70%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.3.1" style="font-size:70%;">82.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.4.1" style="font-size:70%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.5.1" style="font-size:70%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.6.1" style="font-size:70%;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.12.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.7.1" style="font-size:70%;">82.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.8.1" style="font-size:70%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.9.1" style="font-size:70%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.10.1" style="font-size:70%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.11.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.12.1" style="font-size:70%;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.12.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.13.1" style="font-size:70%;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.12.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.14.1" style="font-size:70%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.12.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.12.15.1" style="font-size:70%;">61.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.13.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.13.1.1" style="font-size:70%;">Qwen2.5-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.13.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T7.2.13.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.13.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.13.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.13.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.13.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.14.1" style="font-size:70%;">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.13.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.13.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.14.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.14.1.1" style="font-size:70%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.14.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.14.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.2.1" style="font-size:70%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.3.1" style="font-size:70%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.4.1" style="font-size:70%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.5.1" style="font-size:70%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.6.1" style="font-size:70%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.14.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.7.1" style="font-size:70%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.8.1" style="font-size:70%;">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.9.1" style="font-size:70%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.10.1" style="font-size:70%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.11.1" style="font-size:70%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.12.1" style="font-size:70%;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.14.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.13.1" style="font-size:70%;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.14.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.14.1" style="font-size:70%;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.14.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.14.15.1" style="font-size:70%;">56.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.15.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.15.1.1" style="font-size:70%;">InternVL2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.15.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.15.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.2.1" style="font-size:70%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.3.1" style="font-size:70%;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.4.1" style="font-size:70%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.5.1" style="font-size:70%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.6.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.15.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.7.1" style="font-size:70%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.8.1" style="font-size:70%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.9.1" style="font-size:70%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.10.1" style="font-size:70%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.11.1" style="font-size:70%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.12.1" style="font-size:70%;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.15.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.13.1" style="font-size:70%;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.15.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.14.1" style="font-size:70%;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.15.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.15.15.1" style="font-size:70%;">60.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.16" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.16.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.2.1" style="font-size:70%;background-color:#ECECEC;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.3.1" style="font-size:70%;background-color:#ECECEC;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.4.1" style="font-size:70%;background-color:#ECECEC;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.5.1" style="font-size:70%;background-color:#ECECEC;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.6.1" style="font-size:70%;background-color:#ECECEC;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.16.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.7.1" style="font-size:70%;background-color:#ECECEC;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.8.1" style="font-size:70%;background-color:#ECECEC;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.9.1" style="font-size:70%;background-color:#ECECEC;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.10.1" style="font-size:70%;background-color:#ECECEC;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.11.1" style="font-size:70%;background-color:#ECECEC;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.12.1" style="font-size:70%;background-color:#ECECEC;">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.16.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.13.1" style="font-size:70%;background-color:#ECECEC;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.16.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.14.1" style="font-size:70%;background-color:#ECECEC;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.16.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.16.15.1" style="font-size:70%;background-color:#ECECEC;">64.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.17" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.17.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.2.1" style="font-size:70%;background-color:#ECECEC;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.3.1" style="font-size:70%;background-color:#ECECEC;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.4.1" style="font-size:70%;background-color:#ECECEC;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.5.1" style="font-size:70%;background-color:#ECECEC;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.6.1" style="font-size:70%;background-color:#ECECEC;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.17.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.7.1" style="font-size:70%;background-color:#ECECEC;">80.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.8.1" style="font-size:70%;background-color:#ECECEC;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.9.1" style="font-size:70%;background-color:#ECECEC;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.10.1" style="font-size:70%;background-color:#ECECEC;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.11.1" style="font-size:70%;background-color:#ECECEC;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.12.1" style="font-size:70%;background-color:#ECECEC;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.17.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.13.1" style="font-size:70%;background-color:#ECECEC;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.17.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.14.1" style="font-size:70%;background-color:#ECECEC;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.17.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.17.15.1" style="font-size:70%;background-color:#ECECEC;">60.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.18" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.18.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.2.1" style="font-size:70%;background-color:#ECECEC;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.3.1" style="font-size:70%;background-color:#ECECEC;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.4.1" style="font-size:70%;background-color:#ECECEC;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.5.1" style="font-size:70%;background-color:#ECECEC;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.6.1" style="font-size:70%;background-color:#ECECEC;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.18.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.7.1" style="font-size:70%;background-color:#ECECEC;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.8.1" style="font-size:70%;background-color:#ECECEC;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.9.1" style="font-size:70%;background-color:#ECECEC;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.10.1" style="font-size:70%;background-color:#ECECEC;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.11.1" style="font-size:70%;background-color:#ECECEC;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.12.1" style="font-size:70%;background-color:#ECECEC;">80.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.18.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.13.1" style="font-size:70%;background-color:#ECECEC;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.18.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.14.1" style="font-size:70%;background-color:#ECECEC;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.18.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.18.15.1" style="font-size:70%;background-color:#ECECEC;">66.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T7.2.19.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.19.1.1" style="font-size:70%;">InternVL-Chat-V1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.19.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.19.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.2.1" style="font-size:70%;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.3.1" style="font-size:70%;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.4.1" style="font-size:70%;">76.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.5.1" style="font-size:70%;">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.6.1" style="font-size:70%;">68.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.19.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.7.1" style="font-size:70%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.8.1" style="font-size:70%;">81.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.9.1" style="font-size:70%;">80.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.10.1" style="font-size:70%;">76.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.11.1" style="font-size:70%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.12.1" style="font-size:70%;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.19.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.13.1" style="font-size:70%;">71.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.19.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.14.1" style="font-size:70%;">20.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.19.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.19.15.1" style="font-size:70%;">55.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.20.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.20.1.1" style="font-size:70%;">InternVL2-26B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.20.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.20.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.2.1" style="font-size:70%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.3.1" style="font-size:70%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.4.1" style="font-size:70%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.5.1" style="font-size:70%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.6.1" style="font-size:70%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.20.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.7.1" style="font-size:70%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.8.1" style="font-size:70%;">82.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.9.1" style="font-size:70%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.10.1" style="font-size:70%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.11.1" style="font-size:70%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.12.1" style="font-size:70%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.20.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.13.1" style="font-size:70%;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.20.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.14.1" style="font-size:70%;">17.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.20.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.20.15.1" style="font-size:70%;">56.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.21.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.21.1.1" style="font-size:70%;">InternVL2.5-26B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.21.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.21.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.2.1" style="font-size:70%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.3.1" style="font-size:70%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.4.1" style="font-size:70%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.5.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.6.1" style="font-size:70%;">73.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.21.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.7.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.8.1" style="font-size:70%;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.9.1" style="font-size:70%;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.10.1" style="font-size:70%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.11.1" style="font-size:70%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.12.1" style="font-size:70%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.21.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.13.1" style="font-size:70%;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.21.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.14.1" style="font-size:70%;">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.21.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.21.15.1" style="font-size:70%;">62.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.22.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.22.1.1" style="font-size:70%;">InternVL2-40B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.22.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.22.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.2.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.3.1" style="font-size:70%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.4.1" style="font-size:70%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.5.1" style="font-size:70%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.6.1" style="font-size:70%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.22.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.7.1" style="font-size:70%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.8.1" style="font-size:70%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.9.1" style="font-size:70%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.10.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.11.1" style="font-size:70%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.12.1" style="font-size:70%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.22.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.13.1" style="font-size:70%;">81.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.22.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.14.1" style="font-size:70%;">20.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.22.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.22.15.1" style="font-size:70%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.23.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.23.1.1" style="font-size:70%;">InternVL2.5-38B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.23.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.23.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.2.1" style="font-size:70%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.3.1" style="font-size:70%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.4.1" style="font-size:70%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.5.1" style="font-size:70%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.6.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.23.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.7.1" style="font-size:70%;">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.8.1" style="font-size:70%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.9.1" style="font-size:70%;">88.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.10.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.11.1" style="font-size:70%;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.12.1" style="font-size:70%;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.23.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.13.1" style="font-size:70%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.23.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.14.1" style="font-size:70%;">31.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.23.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.23.15.1" style="font-size:70%;">67.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.24" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.24.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.2.1" style="font-size:70%;background-color:#ECECEC;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.3.1" style="font-size:70%;background-color:#ECECEC;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.4.1" style="font-size:70%;background-color:#ECECEC;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.5.1" style="font-size:70%;background-color:#ECECEC;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.6.1" style="font-size:70%;background-color:#ECECEC;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.24.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.7.1" style="font-size:70%;background-color:#ECECEC;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.8.1" style="font-size:70%;background-color:#ECECEC;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.9.1" style="font-size:70%;background-color:#ECECEC;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.10.1" style="font-size:70%;background-color:#ECECEC;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.11.1" style="font-size:70%;background-color:#ECECEC;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.12.1" style="font-size:70%;background-color:#ECECEC;">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.24.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.13.1" style="font-size:70%;background-color:#ECECEC;">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.24.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.14.1" style="font-size:70%;background-color:#ECECEC;">32.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.24.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.24.15.1" style="font-size:70%;background-color:#ECECEC;">68.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.25">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T7.2.25.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.25.1.1" style="font-size:70%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.25.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S3.T7.2.25.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.2.1" style="font-size:70%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.3.1" style="font-size:70%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.4.1" style="font-size:70%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.5.1" style="font-size:70%;">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.6.1" style="font-size:70%;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.25.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.7.1" style="font-size:70%;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.8.1" style="font-size:70%;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.9.1" style="font-size:70%;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.10.1" style="font-size:70%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.11.1" style="font-size:70%;">72.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.12.1" style="font-size:70%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.25.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.13.1" style="font-size:70%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T7.2.25.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.14.1" style="font-size:70%;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T7.2.25.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.25.15.1" style="font-size:70%;">56.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.26.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.26.1.1" style="font-size:70%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.26.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S3.T7.2.26.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.26.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.26.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.13.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.26.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.14.1" style="font-size:70%;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.26.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.26.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.27.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.27.1.1" style="font-size:70%;">Gemini-1.0-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.27.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a><span class="ltx_text" id="S3.T7.2.27.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.2.1" style="font-size:70%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.3.1" style="font-size:70%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.4.1" style="font-size:70%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.5.1" style="font-size:70%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.6.1" style="font-size:70%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.27.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.7.1" style="font-size:70%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.8.1" style="font-size:70%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.9.1" style="font-size:70%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.10.1" style="font-size:70%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.11.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.12.1" style="font-size:70%;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.27.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.13.1" style="font-size:70%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.27.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.14.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.27.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.27.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.28.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.28.1.1" style="font-size:70%;">Qwen2-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.28.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a><span class="ltx_text" id="S3.T7.2.28.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.2.1" style="font-size:70%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.3.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.4.1" style="font-size:70%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.5.1" style="font-size:70%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.6.1" style="font-size:70%;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.28.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.7.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.8.1" style="font-size:70%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.9.1" style="font-size:70%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.10.1" style="font-size:70%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.11.1" style="font-size:70%;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.12.1" style="font-size:70%;">84.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.28.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.13.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.28.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.14.1" style="font-size:70%;">30.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.28.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.28.15.1" style="font-size:70%;">67.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.29.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.29.1.1" style="font-size:70%;">Qwen2.5-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.29.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T7.2.29.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.3.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.29.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.29.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.13.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.29.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.14.1" style="font-size:70%;">31.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.29.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.29.15.1" style="font-size:70%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.30.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.30.1.1" style="font-size:70%;">InternVL2-Llama3-76B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.30.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T7.2.30.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.2.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.3.1" style="font-size:70%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.4.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.5.1" style="font-size:70%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.6.1" style="font-size:70%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.30.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.7.1" style="font-size:70%;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.8.1" style="font-size:70%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.9.1" style="font-size:70%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.10.1" style="font-size:70%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.11.1" style="font-size:70%;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.12.1" style="font-size:70%;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.30.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.13.1" style="font-size:70%;">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.30.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.14.1" style="font-size:70%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.30.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.30.15.1" style="font-size:70%;">63.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.31.1" style="padding:-0.2pt 4.2pt;">
<span class="ltx_text" id="S3.T7.2.31.1.1" style="font-size:70%;">InternVL2.5-78B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T7.2.31.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T7.2.31.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.2.1" style="font-size:70%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.3.1" style="font-size:70%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.4.1" style="font-size:70%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.5.1" style="font-size:70%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.6.1" style="font-size:70%;">83.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.31.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.7.1" style="font-size:70%;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.8.1" style="font-size:70%;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.9.1" style="font-size:70%;">89.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.10.1" style="font-size:70%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.11.1" style="font-size:70%;">83.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.12.1" style="font-size:70%;">84.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.31.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.13.1" style="font-size:70%;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.31.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.14.1" style="font-size:70%;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.31.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.31.15.1" style="font-size:70%;">68.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T7.2.32" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T7.2.32.1" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.1.1" style="font-size:70%;background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.2" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.2.1" style="font-size:70%;background-color:#ECECEC;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.3" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.3.1" style="font-size:70%;background-color:#ECECEC;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.4" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.4.1" style="font-size:70%;background-color:#ECECEC;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.5" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.5.1" style="font-size:70%;background-color:#ECECEC;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.6" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.6.1" style="font-size:70%;background-color:#ECECEC;">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.32.7" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.7.1" style="font-size:70%;background-color:#ECECEC;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.8" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.8.1" style="font-size:70%;background-color:#ECECEC;">89.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.9" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.9.1" style="font-size:70%;background-color:#ECECEC;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.10" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.10.1" style="font-size:70%;background-color:#ECECEC;">88.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.11" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.11.1" style="font-size:70%;background-color:#ECECEC;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.12" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.12.1" style="font-size:70%;background-color:#ECECEC;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.32.13" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.13.1" style="font-size:70%;background-color:#ECECEC;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T7.2.32.14" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.14.1" style="font-size:70%;background-color:#ECECEC;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T7.2.32.15" style="padding:-0.2pt 4.2pt;"><span class="ltx_text" id="S3.T7.2.32.15.1" style="font-size:70%;background-color:#ECECEC;">68.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance of various multimodal multilingual large language models (MLLMs) across three benchmark datasets: MMMB, Multilingual MMBench, and MTVQA.  Each benchmark assesses the models' ability to understand and reason across multiple languages, specifically English, Chinese, Portuguese, Arabic, Turkish, and Russian. The results highlight the relative strengths and weaknesses of different models in handling diverse linguistic contexts within a multimodal setting.  The table helps to understand the current state-of-the-art in multilingual multimodal capabilities and provides insights into the challenges and opportunities for further advancement in this field.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of multimodal multilingual performance.  We evaluate multilingual capabilities across 3 benchmarks, including MMMB [108], Multilingual MMBench [108] and MTVQA [112]. The languages evaluated are English (en), Chinese (zh), Portuguese (pt), Arabic (ar), Turkish (tr), and Russian (ru).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T8.2">
<tr class="ltx_tr" id="S3.T8.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.1.1" style="padding:-0.25pt 3.0pt;">Model Name</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.2" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.2.1"></span> <span class="ltx_text" id="S3.T8.2.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.2.2.1">
<span class="ltx_tr" id="S3.T8.2.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.2.2.1.1.1" style="padding:-0.25pt 3.0pt;">Video-MME</span></span>
<span class="ltx_tr" id="S3.T8.2.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.2.2.1.2.1" style="padding:-0.25pt 3.0pt;">(wo / w sub)</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.3" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.3.1"></span> <span class="ltx_text" id="S3.T8.2.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.3.2.1">
<span class="ltx_tr" id="S3.T8.2.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.3.2.1.1.1" style="padding:-0.25pt 3.0pt;">MVBench</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.4" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.4.1"></span> <span class="ltx_text" id="S3.T8.2.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.4.2.1">
<span class="ltx_tr" id="S3.T8.2.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.4.2.1.1.1" style="padding:-0.25pt 3.0pt;">MMBench-Video</span></span>
<span class="ltx_tr" id="S3.T8.2.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.4.2.1.2.1" style="padding:-0.25pt 3.0pt;">(val)</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.5" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.5.1"></span> <span class="ltx_text" id="S3.T8.2.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.5.2.1">
<span class="ltx_tr" id="S3.T8.2.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.5.2.1.1.1" style="padding:-0.25pt 3.0pt;">MLVU</span></span>
<span class="ltx_tr" id="S3.T8.2.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.5.2.1.2.1" style="padding:-0.25pt 3.0pt;">(M-Avg)</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.5.3"></span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.6" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.6.1"></span> <span class="ltx_text" id="S3.T8.2.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.6.2.1">
<span class="ltx_tr" id="S3.T8.2.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.6.2.1.1.1" style="padding:-0.25pt 3.0pt;">LongVideoBench</span></span>
<span class="ltx_tr" id="S3.T8.2.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.6.2.1.2.1" style="padding:-0.25pt 3.0pt;">(val total)</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.1.7" style="padding:-0.25pt 3.0pt;">
<span class="ltx_text" id="S3.T8.2.1.7.1"></span> <span class="ltx_text" id="S3.T8.2.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T8.2.1.7.2.1">
<span class="ltx_tr" id="S3.T8.2.1.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.7.2.1.1.1" style="padding:-0.25pt 3.0pt;">CG-Bench</span></span>
<span class="ltx_tr" id="S3.T8.2.1.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.1.7.2.1.2.1" style="padding:-0.25pt 3.0pt;">(long / clue acc.)</span></span>
</span></span><span class="ltx_text" id="S3.T8.2.1.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.1.8" style="padding:-0.25pt 3.0pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T8.2.2.1" style="padding:-0.25pt 3.0pt;">InternVL2-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.2" style="padding:-0.25pt 3.0pt;">42.9 / 45.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.3" style="padding:-0.25pt 3.0pt;">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.4" style="padding:-0.25pt 3.0pt;">1.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.5" style="padding:-0.25pt 3.0pt;">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.6" style="padding:-0.25pt 3.0pt;">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.2.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.2.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.3.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.2" style="padding:-0.25pt 3.0pt;">50.3 / 52.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.3" style="padding:-0.25pt 3.0pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.4" style="padding:-0.25pt 3.0pt;">1.36</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.5" style="padding:-0.25pt 3.0pt;">57.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.6" style="padding:-0.25pt 3.0pt;">47.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.3.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.3.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.4" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.4.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.1.1" style="background-color:#ECECEC;">InternVL3-1B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.2.1" style="background-color:#ECECEC;">51.0 / 53.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.3.1" style="background-color:#ECECEC;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.4.1" style="background-color:#ECECEC;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.5.1" style="background-color:#ECECEC;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.6.1" style="background-color:#ECECEC;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.4.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.7.1" style="background-color:#ECECEC;">24.8 / 39.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.4.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.4.8.1" style="background-color:#ECECEC;">46.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.5.1" style="padding:-0.25pt 3.0pt;">Qwen2-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.2" style="padding:-0.25pt 3.0pt;">55.6 / 60.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.3" style="padding:-0.25pt 3.0pt;">63.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.4" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.5.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.5.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.6.1" style="padding:-0.25pt 3.0pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.2" style="padding:-0.25pt 3.0pt;">61.5 / 67.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.3" style="padding:-0.25pt 3.0pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.4" style="padding:-0.25pt 3.0pt;">1.63</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.5" style="padding:-0.25pt 3.0pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.6" style="padding:-0.25pt 3.0pt;">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.6.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.6.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.7.1" style="padding:-0.25pt 3.0pt;">InternVL2-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.2" style="padding:-0.25pt 3.0pt;">46.2 / 49.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.3" style="padding:-0.25pt 3.0pt;">60.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.4" style="padding:-0.25pt 3.0pt;">1.30</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.5" style="padding:-0.25pt 3.0pt;">54.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.6" style="padding:-0.25pt 3.0pt;">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.7.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.7.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.8.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.2" style="padding:-0.25pt 3.0pt;">51.9 / 54.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.3" style="padding:-0.25pt 3.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.4" style="padding:-0.25pt 3.0pt;">1.44</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.5" style="padding:-0.25pt 3.0pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.6" style="padding:-0.25pt 3.0pt;">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.8.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.8.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.9" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.9.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.1.1" style="background-color:#ECECEC;">InternVL3-2B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.2.1" style="background-color:#ECECEC;">58.9 / 61.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.3.1" style="background-color:#ECECEC;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.4.1" style="background-color:#ECECEC;">1.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.5.1" style="background-color:#ECECEC;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.6.1" style="background-color:#ECECEC;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.9.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.7.1" style="background-color:#ECECEC;">30.8 / 50.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.9.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.9.8.1" style="background-color:#ECECEC;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T8.2.10.1" style="padding:-0.25pt 3.0pt;">VideoChat2-HD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.2" style="padding:-0.25pt 3.0pt;">45.3 / 55.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.3" style="padding:-0.25pt 3.0pt;">62.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.4" style="padding:-0.25pt 3.0pt;">1.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.5" style="padding:-0.25pt 3.0pt;">47.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.10.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.10.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.11.1" style="padding:-0.25pt 3.0pt;">MiniCPM-V-2.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib134" title=""><span class="ltx_text" style="font-size:90%;">134</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.2" style="padding:-0.25pt 3.0pt;">60.9 / 63.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.4" style="padding:-0.25pt 3.0pt;">1.70</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.6" style="padding:-0.25pt 3.0pt;">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.11.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.11.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.12.1" style="padding:-0.25pt 3.0pt;">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.2" style="padding:-0.25pt 3.0pt;">58.2 / –</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.3" style="padding:-0.25pt 3.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.4" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.12.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.12.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.13.1" style="padding:-0.25pt 3.0pt;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.2" style="padding:-0.25pt 3.0pt;">63.3 / 69.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.3" style="padding:-0.25pt 3.0pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.4" style="padding:-0.25pt 3.0pt;">1.44</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.6" style="padding:-0.25pt 3.0pt;">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.13.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.13.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.14.1" style="padding:-0.25pt 3.0pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.2" style="padding:-0.25pt 3.0pt;">65.1 / 71.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.3" style="padding:-0.25pt 3.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.4" style="padding:-0.25pt 3.0pt;">1.79</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.5" style="padding:-0.25pt 3.0pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.6" style="padding:-0.25pt 3.0pt;">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.14.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.14.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.15.1" style="padding:-0.25pt 3.0pt;">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.2" style="padding:-0.25pt 3.0pt;">56.3 / 59.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.3" style="padding:-0.25pt 3.0pt;">65.8</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.4" style="padding:-0.25pt 3.0pt;">1.57</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.5" style="padding:-0.25pt 3.0pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.6" style="padding:-0.25pt 3.0pt;">54.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.15.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.15.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.16.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.2" style="padding:-0.25pt 3.0pt;">64.2 / 66.9</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.3" style="padding:-0.25pt 3.0pt;">72.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.4" style="padding:-0.25pt 3.0pt;">1.68</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.5" style="padding:-0.25pt 3.0pt;">68.9</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.6" style="padding:-0.25pt 3.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.16.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.16.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.17" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.17.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.2.1" style="background-color:#ECECEC;">66.3 / 68.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.3.1" style="background-color:#ECECEC;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.4.1" style="background-color:#ECECEC;">1.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.5.1" style="background-color:#ECECEC;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.6.1" style="background-color:#ECECEC;">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.17.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.7.1" style="background-color:#ECECEC;">38.6 / 55.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.17.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.17.8.1" style="background-color:#ECECEC;">61.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.18" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.18.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.1.1" style="background-color:#ECECEC;">InternVL3-9B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.2.1" style="background-color:#ECECEC;">66.7 / 68.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.3.1" style="background-color:#ECECEC;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.4.1" style="background-color:#ECECEC;">1.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.5.1" style="background-color:#ECECEC;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.6.1" style="background-color:#ECECEC;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.18.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.7.1" style="background-color:#ECECEC;">41.1 / 58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.18.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.18.8.1" style="background-color:#ECECEC;">62.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.19" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.19.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.1.1" style="background-color:#ECECEC;">InternVL3-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.2.1" style="background-color:#ECECEC;">70.4 / 73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.3.1" style="background-color:#ECECEC;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.4.1" style="background-color:#ECECEC;">1.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.5.1" style="background-color:#ECECEC;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.6.1" style="background-color:#ECECEC;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.19.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.7.1" style="background-color:#ECECEC;">44.1 / 60.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.19.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.19.8.1" style="background-color:#ECECEC;">64.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T8.2.20.1" style="padding:-0.25pt 3.0pt;">InternVL2-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.2" style="padding:-0.25pt 3.0pt;">57.0 / 60.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.3" style="padding:-0.25pt 3.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.4" style="padding:-0.25pt 3.0pt;">1.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.5" style="padding:-0.25pt 3.0pt;">64.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.6" style="padding:-0.25pt 3.0pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.20.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.20.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.21.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-26B</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.2" style="padding:-0.25pt 3.0pt;">66.9 / 69.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.3" style="padding:-0.25pt 3.0pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.4" style="padding:-0.25pt 3.0pt;">1.86</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.5" style="padding:-0.25pt 3.0pt;">72.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.6" style="padding:-0.25pt 3.0pt;">59.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.21.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.21.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.22.1" style="padding:-0.25pt 3.0pt;">Oryx-1.5-32B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.2" style="padding:-0.25pt 3.0pt;">67.3 / 74.9</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.3" style="padding:-0.25pt 3.0pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.4" style="padding:-0.25pt 3.0pt;">1.52</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.5" style="padding:-0.25pt 3.0pt;">72.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.22.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.22.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.23.1" style="padding:-0.25pt 3.0pt;">Qwen2.5-VL-32B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.2" style="padding:-0.25pt 3.0pt;">70.5 / 77.9</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.4" style="padding:-0.25pt 3.0pt;">1.93</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.23.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.23.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.24.1" style="padding:-0.25pt 3.0pt;">VILA-1.5-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.2" style="padding:-0.25pt 3.0pt;">60.1 / 61.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.4" style="padding:-0.25pt 3.0pt;">1.61</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.5" style="padding:-0.25pt 3.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.24.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.24.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.25.1" style="padding:-0.25pt 3.0pt;">InternVL2-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.2" style="padding:-0.25pt 3.0pt;">66.1 / 68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.3" style="padding:-0.25pt 3.0pt;">72.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.4" style="padding:-0.25pt 3.0pt;">1.78</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.5" style="padding:-0.25pt 3.0pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.6" style="padding:-0.25pt 3.0pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.25.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.25.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.26.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-38B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.2" style="padding:-0.25pt 3.0pt;">70.7 / 73.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.3" style="padding:-0.25pt 3.0pt;">74.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.4" style="padding:-0.25pt 3.0pt;">1.82</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.5" style="padding:-0.25pt 3.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.6" style="padding:-0.25pt 3.0pt;">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.26.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.26.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.27" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.27.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.2.1" style="background-color:#ECECEC;">72.7 / 75.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.3.1" style="background-color:#ECECEC;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.4.1" style="background-color:#ECECEC;">1.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.5.1" style="background-color:#ECECEC;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.6.1" style="background-color:#ECECEC;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.27.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.7.1" style="background-color:#ECECEC;">46.9 / 62.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.27.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.27.8.1" style="background-color:#ECECEC;">67.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.28">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T8.2.28.1" style="padding:-0.25pt 3.0pt;">GPT-4V/4T <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.2" style="padding:-0.25pt 3.0pt;">59.9 / 63.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.3" style="padding:-0.25pt 3.0pt;">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.4" style="padding:-0.25pt 3.0pt;">1.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.5" style="padding:-0.25pt 3.0pt;">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.6" style="padding:-0.25pt 3.0pt;">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.28.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.2.28.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.29.1" style="padding:-0.25pt 3.0pt;">GPT-4o-20240513 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.2" style="padding:-0.25pt 3.0pt;">71.9 / 77.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.4" style="padding:-0.25pt 3.0pt;">1.63</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.5" style="padding:-0.25pt 3.0pt;">64.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.6" style="padding:-0.25pt 3.0pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.29.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.29.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.30.1" style="padding:-0.25pt 3.0pt;">GPT-4o-20240806 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.2" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.4" style="padding:-0.25pt 3.0pt;">1.87</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.30.7" style="padding:-0.25pt 3.0pt;">41.8 / 58.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.30.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.31.1" style="padding:-0.25pt 3.0pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.2" style="padding:-0.25pt 3.0pt;">75.0 / 81.3</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.3" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.4" style="padding:-0.25pt 3.0pt;">1.30</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.6" style="padding:-0.25pt 3.0pt;">64.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.31.7" style="padding:-0.25pt 3.0pt;">40.1 / 56.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.31.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.32.1" style="padding:-0.25pt 3.0pt;">VideoLLaMA2-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.2" style="padding:-0.25pt 3.0pt;">61.4 / 63.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.3" style="padding:-0.25pt 3.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.4" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.32.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.32.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.33.1" style="padding:-0.25pt 3.0pt;">LLaVA-OneVision-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.2" style="padding:-0.25pt 3.0pt;">66.2 / 69.5</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.3" style="padding:-0.25pt 3.0pt;">59.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.4" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.5" style="padding:-0.25pt 3.0pt;">66.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.6" style="padding:-0.25pt 3.0pt;">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.33.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.33.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.34.1" style="padding:-0.25pt 3.0pt;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib120" title=""><span class="ltx_text" style="font-size:90%;">120</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.2" style="padding:-0.25pt 3.0pt;">71.2 / 77.8</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.3" style="padding:-0.25pt 3.0pt;">73.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.4" style="padding:-0.25pt 3.0pt;">1.70</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.5" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.6" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.34.7" style="padding:-0.25pt 3.0pt;">41.3 / 56.2</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.34.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.35.1" style="padding:-0.25pt 3.0pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.2" style="padding:-0.25pt 3.0pt;">73.3 / 79.1</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.3" style="padding:-0.25pt 3.0pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.4" style="padding:-0.25pt 3.0pt;">2.02</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.5" style="padding:-0.25pt 3.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.6" style="padding:-0.25pt 3.0pt;">60.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.35.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.35.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.36.1" style="padding:-0.25pt 3.0pt;">InternVL2-Llama3-76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.2" style="padding:-0.25pt 3.0pt;">64.7 / 67.8</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.3" style="padding:-0.25pt 3.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.4" style="padding:-0.25pt 3.0pt;">1.71</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.5" style="padding:-0.25pt 3.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.6" style="padding:-0.25pt 3.0pt;">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.36.7" style="padding:-0.25pt 3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.36.8" style="padding:-0.25pt 3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.37.1" style="padding:-0.25pt 3.0pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.2" style="padding:-0.25pt 3.0pt;">72.1 / 74.0</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.3" style="padding:-0.25pt 3.0pt;">76.4</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.4" style="padding:-0.25pt 3.0pt;">1.97</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.5" style="padding:-0.25pt 3.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.6" style="padding:-0.25pt 3.0pt;">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.37.7" style="padding:-0.25pt 3.0pt;">42.2 / 58.5</td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.37.8" style="padding:-0.25pt 3.0pt;">66.0</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.38" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T8.2.38.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.2.1" style="background-color:#ECECEC;">72.7 / 75.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.3.1" style="background-color:#ECECEC;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.4.1" style="background-color:#ECECEC;">1.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.5.1" style="background-color:#ECECEC;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.6.1" style="background-color:#ECECEC;">65.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.2.38.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.7.1" style="background-color:#ECECEC;">48.4 / 65.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.2.38.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T8.2.38.8.1" style="background-color:#ECECEC;">68.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comprehensive comparison of InternVL's video understanding capabilities against other state-of-the-art models.  Six video understanding benchmarks are used for evaluation: Video-MME, MVBench, MMBench-Video, MLVU, LongVideoBench, and CG-Bench.  To handle varying video lengths, different frame numbers (16, 32, 48, and 64) are used for Video-MME, MMBench-Video, MLVU, and LongVideoBench, with the maximum score reported.  MVBench uses 16 frames and CG-Bench uses 32 frames. The table allows for a thorough assessment of InternVL's performance across various video understanding tasks and different video lengths.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of video understanding performance. We evaluate InternVL’s video understanding capabilities across 6 benchmarks. For Video-MME [37], MMBench-Video [34], MLVU [153], and LongVideoBench [128], we test with four different settings: 16, 32, 48, and 64 frames, and report the maximum results. For MVBench [64], we conduct testing using 16 frames. For CG-Bench [2], we use 32 frames.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T9.5">
<tr class="ltx_tr" id="S3.T9.5.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T9.5.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.6.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.2.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.3.1" style="font-size:80%;">Gemini 2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T9.5.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.4.1" style="font-size:80%;">Claude</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.5.1" style="font-size:80%;">Aguvis-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.6.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T9.5.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.7.1" style="font-size:80%;">UI-TARS-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.8.1" style="font-size:80%;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.9.1" style="font-size:80%;">-38B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T9.5.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.6.10.1" style="font-size:80%;">-72B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T9.5.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T9.5.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.1.1" style="font-size:80%;">ScreenSpot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.2.1" style="font-size:80%;">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.3.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T9.5.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.4.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.7.5.1" style="font-size:80%;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.6.1" style="font-size:80%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T9.5.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.7.1" style="font-size:80%;">88.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.8.1" style="font-size:80%;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.9.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.5.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.7.10.1" style="font-size:80%;">88.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T9.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T9.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.5.6.1" style="font-size:80%;">ScreenSpot-V2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T9.1.1.1.m1.1"><semantics id="S3.T9.1.1.1.m1.1a"><mo id="S3.T9.1.1.1.m1.1.1" mathsize="80%" xref="S3.T9.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T9.1.1.1.m1.1b"><minus id="S3.T9.1.1.1.m1.1.1.cmml" xref="S3.T9.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T9.1.1.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T9.2.2.2.m1.1"><semantics id="S3.T9.2.2.2.m1.1a"><mo id="S3.T9.2.2.2.m1.1.1" mathsize="80%" xref="S3.T9.2.2.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T9.2.2.2.m1.1b"><minus id="S3.T9.2.2.2.m1.1.1.cmml" xref="S3.T9.2.2.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.2.2.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T9.2.2.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T9.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T9.3.3.3.m1.1"><semantics id="S3.T9.3.3.3.m1.1a"><mo id="S3.T9.3.3.3.m1.1.1" mathsize="80%" xref="S3.T9.3.3.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T9.3.3.3.m1.1b"><minus id="S3.T9.3.3.3.m1.1.1.cmml" xref="S3.T9.3.3.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.3.3.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T9.3.3.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T9.4.4.4.m1.1"><semantics id="S3.T9.4.4.4.m1.1a"><mo id="S3.T9.4.4.4.m1.1.1" mathsize="80%" xref="S3.T9.4.4.4.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T9.4.4.4.m1.1b"><minus id="S3.T9.4.4.4.m1.1.1.cmml" xref="S3.T9.4.4.4.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.4.4.4.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T9.4.4.4.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T9.5.5.5.m1.1"><semantics id="S3.T9.5.5.5.m1.1a"><mo id="S3.T9.5.5.5.m1.1.1" mathsize="80%" xref="S3.T9.5.5.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T9.5.5.5.m1.1b"><minus id="S3.T9.5.5.5.m1.1.1.cmml" xref="S3.T9.5.5.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.5.5.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T9.5.5.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T9.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.5.7.1" style="font-size:80%;">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.5.8.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T9.5.5.9.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T9.5.5.10.1" style="font-size:80%;">90.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of InternVL3 and other state-of-the-art models on GUI grounding benchmarks.  It shows the objective counts, absolute and relative distances, object sizes and room sizes, relative directions, route planning accuracy, approximated order of selection, and overall performance metrics. This allows for a detailed analysis of how well each model performs on various aspects of GUI grounding tasks.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance of InternVL3 and other models on GUI grounding benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T10.2">
<tr class="ltx_tr" id="S3.T10.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.1.1" style="padding:-0.25pt 3.0pt;">Model Name</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.2" style="padding:-0.25pt 3.0pt;">Obj.count</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.3" style="padding:-0.25pt 3.0pt;">Abs.Dist.</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.4" style="padding:-0.25pt 3.0pt;">Obj.size</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.5" style="padding:-0.25pt 3.0pt;">Room Size</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.6" style="padding:-0.25pt 3.0pt;">Rel.Dist.</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.7" style="padding:-0.25pt 3.0pt;">Rel.Dir.</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.8" style="padding:-0.25pt 3.0pt;">Route Plan</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.1.9" style="padding:-0.25pt 3.0pt;">Appr.Order</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.1.10" style="padding:-0.25pt 3.0pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T10.2.2.1" style="padding:-0.25pt 3.0pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.2" style="padding:-0.25pt 3.0pt;">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.3" style="padding:-0.25pt 3.0pt;">5.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.4" style="padding:-0.25pt 3.0pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.5" style="padding:-0.25pt 3.0pt;">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.6" style="padding:-0.25pt 3.0pt;">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.7" style="padding:-0.25pt 3.0pt;">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.8" style="padding:-0.25pt 3.0pt;">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T10.2.2.9" style="padding:-0.25pt 3.0pt;">28.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.2.10" style="padding:-0.25pt 3.0pt;">34.0</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.3.1" style="padding:-0.25pt 3.0pt;">Gemini-1.5 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.2" style="padding:-0.25pt 3.0pt;">56.2</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.3" style="padding:-0.25pt 3.0pt;">30.9</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.4" style="padding:-0.25pt 3.0pt;">64.1</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.5" style="padding:-0.25pt 3.0pt;">43.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.6" style="padding:-0.25pt 3.0pt;">51.3</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.7" style="padding:-0.25pt 3.0pt;">46.3</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.8" style="padding:-0.25pt 3.0pt;">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.3.9" style="padding:-0.25pt 3.0pt;">34.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.3.10" style="padding:-0.25pt 3.0pt;">45.4</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T10.2.4.1" style="padding:-0.25pt 3.0pt;">VILA-1.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.2" style="padding:-0.25pt 3.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.3" style="padding:-0.25pt 3.0pt;">21.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.4" style="padding:-0.25pt 3.0pt;">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.5" style="padding:-0.25pt 3.0pt;">18.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.6" style="padding:-0.25pt 3.0pt;">32.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.7" style="padding:-0.25pt 3.0pt;">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.8" style="padding:-0.25pt 3.0pt;">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T10.2.4.9" style="padding:-0.25pt 3.0pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.2.4.10" style="padding:-0.25pt 3.0pt;">28.9</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.5.1" style="padding:-0.25pt 3.0pt;">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib144" title=""><span class="ltx_text" style="font-size:90%;">144</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.2" style="padding:-0.25pt 3.0pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.3" style="padding:-0.25pt 3.0pt;">16.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.4" style="padding:-0.25pt 3.0pt;">38.9</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.5" style="padding:-0.25pt 3.0pt;">22.2</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.6" style="padding:-0.25pt 3.0pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.7" style="padding:-0.25pt 3.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.8" style="padding:-0.25pt 3.0pt;">25.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.5.9" style="padding:-0.25pt 3.0pt;">15.7</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.5.10" style="padding:-0.25pt 3.0pt;">29.2</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.6.1" style="padding:-0.25pt 3.0pt;">LLaVA-NeXT-Video-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib149" title=""><span class="ltx_text" style="font-size:90%;">149</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.2" style="padding:-0.25pt 3.0pt;">48.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.3" style="padding:-0.25pt 3.0pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.4" style="padding:-0.25pt 3.0pt;">47.8</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.5" style="padding:-0.25pt 3.0pt;">24.2</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.6" style="padding:-0.25pt 3.0pt;">43.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.7" style="padding:-0.25pt 3.0pt;">42.4</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.8" style="padding:-0.25pt 3.0pt;">34.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.6.9" style="padding:-0.25pt 3.0pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.6.10" style="padding:-0.25pt 3.0pt;">35.6</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.7.1" style="padding:-0.25pt 3.0pt;">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.2" style="padding:-0.25pt 3.0pt;">47.7</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.3" style="padding:-0.25pt 3.0pt;">20.2</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.4" style="padding:-0.25pt 3.0pt;">47.4</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.5" style="padding:-0.25pt 3.0pt;">12.3</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.6" style="padding:-0.25pt 3.0pt;">42.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.7" style="padding:-0.25pt 3.0pt;">35.2</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.8" style="padding:-0.25pt 3.0pt;">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.7.9" style="padding:-0.25pt 3.0pt;">24.4</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.7.10" style="padding:-0.25pt 3.0pt;">32.4</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.8" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.8.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.1.1" style="background-color:#ECECEC;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.2.1" style="background-color:#ECECEC;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.3.1" style="background-color:#ECECEC;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.4.1" style="background-color:#ECECEC;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.5.1" style="background-color:#ECECEC;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.6.1" style="background-color:#ECECEC;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.7.1" style="background-color:#ECECEC;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.8.1" style="background-color:#ECECEC;">27.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.8.9" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.9.1" style="background-color:#ECECEC;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.8.10" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.8.10.1" style="background-color:#ECECEC;">42.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.9" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.9.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.1.1" style="background-color:#ECECEC;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.2.1" style="background-color:#ECECEC;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.3.1" style="background-color:#ECECEC;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.4.1" style="background-color:#ECECEC;">46.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.5.1" style="background-color:#ECECEC;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.6.1" style="background-color:#ECECEC;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.7.1" style="background-color:#ECECEC;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.8.1" style="background-color:#ECECEC;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.9.9" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.9.1" style="background-color:#ECECEC;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.9.10" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.9.10.1" style="background-color:#ECECEC;">48.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.10.1" style="padding:-0.25pt 3.0pt;">LLaVA-NeXT-Video-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib149" title=""><span class="ltx_text" style="font-size:90%;">149</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.2" style="padding:-0.25pt 3.0pt;">48.9</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.3" style="padding:-0.25pt 3.0pt;">22.8</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.4" style="padding:-0.25pt 3.0pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.5" style="padding:-0.25pt 3.0pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.6" style="padding:-0.25pt 3.0pt;">42.4</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.7" style="padding:-0.25pt 3.0pt;">36.7</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.8" style="padding:-0.25pt 3.0pt;">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.10.9" style="padding:-0.25pt 3.0pt;">48.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.10.10" style="padding:-0.25pt 3.0pt;">40.9</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.11.1" style="padding:-0.25pt 3.0pt;">LLaVA-OneVision-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10479v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.2" style="padding:-0.25pt 3.0pt;">43.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.3" style="padding:-0.25pt 3.0pt;">23.9</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.4" style="padding:-0.25pt 3.0pt;">57.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.5" style="padding:-0.25pt 3.0pt;">37.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.6" style="padding:-0.25pt 3.0pt;">42.5</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.7" style="padding:-0.25pt 3.0pt;">39.9</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.8" style="padding:-0.25pt 3.0pt;">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.11.9" style="padding:-0.25pt 3.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.11.10" style="padding:-0.25pt 3.0pt;">40.2</td>
</tr>
<tr class="ltx_tr" id="S3.T10.2.12" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T10.2.12.1" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.1.1" style="background-color:#ECECEC;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.2" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.2.1" style="background-color:#ECECEC;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.3" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.3.1" style="background-color:#ECECEC;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.4" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.4.1" style="background-color:#ECECEC;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.5" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.5.1" style="background-color:#ECECEC;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.6" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.6.1" style="background-color:#ECECEC;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.7" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.7.1" style="background-color:#ECECEC;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.8" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.8.1" style="background-color:#ECECEC;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.2.12.9" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.9.1" style="background-color:#ECECEC;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T10.2.12.10" style="padding:-0.25pt 3.0pt;"><span class="ltx_text" id="S3.T10.2.12.10.1" style="background-color:#ECECEC;">48.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance of various large language models (LLMs) on the Visual Spatial Intelligence Benchmark (VSI-Bench).  The benchmark evaluates the ability of LLMs to perform spatial reasoning tasks such as object counting, distance estimation, and order prediction.  The table includes the performance of InternVL3 models of various sizes (8B, 38B, and 78B parameters) alongside several other prominent LLMs, including GPT-40 and Gemini models.  The results provide insights into the relative strengths and weaknesses of different LLMs in handling complex visual spatial reasoning problems.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance of InternVL3 and other models on VSI-Bench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T11.2">
<tr class="ltx_tr" id="S3.T11.2.1">
<td class="ltx_td ltx_align_left" id="S3.T11.2.1.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.1.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.1.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.1.2.1" style="font-size:90%;">Version</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.3" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.3.1" style="width:18.0pt;height:88.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:88.1pt;transform:translate(-35.06pt,-35.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.3.1.1"><span class="ltx_text" id="S3.T11.2.1.3.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.3.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.3.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.3.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.3.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.3.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-0.5B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.3.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.3.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.1.4" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.4.1" style="width:18.0pt;height:65.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:65.8pt;transform:translate(-23.89pt,-23.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.4.1.1"><span class="ltx_text" id="S3.T11.2.1.4.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.4.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.4.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.4.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.4.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.4.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-1B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.4.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.4.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.5" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.5.1" style="width:18.0pt;height:88.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:88.1pt;transform:translate(-35.06pt,-35.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.5.1.1"><span class="ltx_text" id="S3.T11.2.1.5.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.5.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.5.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.5.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.5.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.5.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-1.5B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.5.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.5.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.1.6" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.6.1" style="width:18.0pt;height:65.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:65.8pt;transform:translate(-23.89pt,-23.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.6.1.1"><span class="ltx_text" id="S3.T11.2.1.6.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.6.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.6.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.6.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.6.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.6.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-2B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.6.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.6.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.7" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.7.1" style="width:18.0pt;height:81.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:81.1pt;transform:translate(-31.56pt,-31.56pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.7.1.1"><span class="ltx_text" id="S3.T11.2.1.7.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.7.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.7.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.7.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.7.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.7.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-7B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.7.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.7.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.1.8" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.8.1" style="width:18.0pt;height:65.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:65.8pt;transform:translate(-23.89pt,-23.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.8.1.1"><span class="ltx_text" id="S3.T11.2.1.8.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.8.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.8.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.8.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.8.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.8.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-8B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.8.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.8.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.9" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.9.1" style="width:18.0pt;height:85.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:85.6pt;transform:translate(-33.81pt,-33.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.9.1.1"><span class="ltx_text" id="S3.T11.2.1.9.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.9.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.9.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.9.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.9.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.9.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-14B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.9.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.9.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.1.10" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.10.1" style="width:18.0pt;height:70.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:70.3pt;transform:translate(-26.14pt,-26.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.10.1.1"><span class="ltx_text" id="S3.T11.2.1.10.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.10.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.10.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.10.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.10.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.10.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-14B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.10.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.10.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.11" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.11.1" style="width:18.0pt;height:85.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:85.6pt;transform:translate(-33.81pt,-33.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.11.1.1"><span class="ltx_text" id="S3.T11.2.1.11.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.11.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.11.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.11.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.11.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.11.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-32B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.11.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.11.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.1.12" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.12.1" style="width:18.0pt;height:70.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:70.3pt;transform:translate(-26.14pt,-26.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.12.1.1"><span class="ltx_text" id="S3.T11.2.1.12.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.12.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.12.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.12.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.12.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.12.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-38B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.12.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.12.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.13" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.13.1" style="width:18.0pt;height:85.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:85.6pt;transform:translate(-33.81pt,-33.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.13.1.1"><span class="ltx_text" id="S3.T11.2.1.13.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.13.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.13.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.13.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.13.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.13.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">Qwen2.5-72B Chat</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.13.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.13.1.1.5"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.1.14" style="padding:-0.25pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T11.2.1.14.1" style="width:18.0pt;height:70.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:70.3pt;transform:translate(-26.14pt,-26.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T11.2.1.14.1.1"><span class="ltx_text" id="S3.T11.2.1.14.1.1.1"></span><span class="ltx_text" id="S3.T11.2.1.14.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.14.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T11.2.1.14.1.1.3.1">
<span class="ltx_tr" id="S3.T11.2.1.14.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T11.2.1.14.1.1.3.1.1.1" style="padding:-0.25pt 5.0pt;">InternVL3-78B</span></span>
</span></span><span class="ltx_text" id="S3.T11.2.1.14.1.1.4" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T11.2.1.14.1.1.5"></span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.2.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.1.1" style="font-size:90%;">MMLU</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.2.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.2.1" style="font-size:90%;">4d595a</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.3.1" style="font-size:90%;">46.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.2.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.4.1" style="font-size:90%;">49.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.5.1" style="font-size:90%;">61.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.2.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.6.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.7.1" style="font-size:90%;">74.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.2.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.8.1" style="font-size:90%;">77.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.9.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.2.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.10.1" style="font-size:90%;">82.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.11.1" style="font-size:90%;">83.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.2.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.12.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.13.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.2.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.2.14.1" style="font-size:90%;">86.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.3">
<td class="ltx_td ltx_align_left" id="S3.T11.2.3.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.1.1" style="font-size:90%;">CMMLU</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.3.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.2.1" style="font-size:90%;">c13365</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.3.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.3.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.4.1" style="font-size:90%;">56.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.5.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.3.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.6.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.7.1" style="font-size:90%;">78.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.3.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.8.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.9.1" style="font-size:90%;">82.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.3.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.10.1" style="font-size:90%;">85.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.11.1" style="font-size:90%;">85.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.3.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.12.1" style="font-size:90%;">88.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.13.1" style="font-size:90%;">87.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.3.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.3.14.1" style="font-size:90%;">89.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.4">
<td class="ltx_td ltx_align_left" id="S3.T11.2.4.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.1.1" style="font-size:90%;">C-Eval</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.4.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.2.1" style="font-size:90%;">2daf24</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.3.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.4.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.4.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.5.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.4.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.6.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.7.1" style="font-size:90%;">77.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.4.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.8.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.9.1" style="font-size:90%;">81.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.4.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.10.1" style="font-size:90%;">85.6</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.11.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.4.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.12.1" style="font-size:90%;">89.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.13.1" style="font-size:90%;">88.1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.4.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.4.14.1" style="font-size:90%;">89.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.5">
<td class="ltx_td ltx_align_left" id="S3.T11.2.5.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.1.1" style="font-size:90%;">GAOKAO</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.5.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.2.1" style="font-size:90%;">4c31db</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.3.1" style="font-size:90%;">30.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.5.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.4.1" style="font-size:90%;">46.6</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.5.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.5.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.6.1" style="font-size:90%;">67.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.7.1" style="font-size:90%;">81.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.5.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.8.1" style="font-size:90%;">89.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.9.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.5.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.10.1" style="font-size:90%;">91.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.11.1" style="font-size:90%;">90.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.5.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.12.1" style="font-size:90%;">93.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.13.1" style="font-size:90%;">91.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.5.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.5.14.1" style="font-size:90%;">93.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.6.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.1.1" style="font-size:90%;">TriviaQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.6.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.2.1" style="font-size:90%;">2121ce</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.3.1" style="font-size:90%;">24.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.6.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.4.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.5.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.6.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.6.1" style="font-size:90%;">41.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.7.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.6.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.8.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.9.1" style="font-size:90%;">65.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.6.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.10.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.11.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.6.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.12.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.13.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.6.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.6.14.1" style="font-size:90%;">74.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.7">
<td class="ltx_td ltx_align_left" id="S3.T11.2.7.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.1.1" style="font-size:90%;">NaturalQuestions</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.7.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.2.1" style="font-size:90%;">3dcea1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.3.1" style="font-size:90%;">8.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.7.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.4.1" style="font-size:90%;">8.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.5.1" style="font-size:90%;">15.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.7.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.6.1" style="font-size:90%;">15.9</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.7.1" style="font-size:90%;">17.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.7.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.8.1" style="font-size:90%;">28.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.9.1" style="font-size:90%;">19.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.7.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.10.1" style="font-size:90%;">31.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.11.1" style="font-size:90%;">19.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.7.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.12.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.13.1" style="font-size:90%;">23.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.7.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.7.14.1" style="font-size:90%;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.8">
<td class="ltx_td ltx_align_left" id="S3.T11.2.8.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.1.1" style="font-size:90%;">C3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.8.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.2.1" style="font-size:90%;">8c358f</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.3.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.8.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.4.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.5.1" style="font-size:90%;">81.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.8.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.6.1" style="font-size:90%;">84.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.7.1" style="font-size:90%;">90.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.8.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.8.1" style="font-size:90%;">95.1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.9.1" style="font-size:90%;">92.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.8.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.10.1" style="font-size:90%;">96.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.11.1" style="font-size:90%;">92.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.8.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.12.1" style="font-size:90%;">97.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.13.1" style="font-size:90%;">96.1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.8.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.8.14.1" style="font-size:90%;">97.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.9">
<td class="ltx_td ltx_align_left" id="S3.T11.2.9.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.1.1" style="font-size:90%;">RACE-High</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.9.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.2.1" style="font-size:90%;">69ee4f</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.3.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.9.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.4.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.5.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.9.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.6.1" style="font-size:90%;">84.6</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.7.1" style="font-size:90%;">86.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.9.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.8.1" style="font-size:90%;">90.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.9.1" style="font-size:90%;">89.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.9.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.10.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.11.1" style="font-size:90%;">91.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.9.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.12.1" style="font-size:90%;">94.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.13.1" style="font-size:90%;">91.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.9.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.9.14.1" style="font-size:90%;">94.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.10.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.1.1" style="font-size:90%;">WinoGrande</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.10.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.2.1" style="font-size:90%;">b36770</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.3.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.10.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.4.1" style="font-size:90%;">52.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.5.1" style="font-size:90%;">56.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.10.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.6.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.7.1" style="font-size:90%;">71.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.10.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.8.1" style="font-size:90%;">78.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.9.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.10.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.10.1" style="font-size:90%;">84.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.11.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.10.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.12.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.13.1" style="font-size:90%;">83.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.10.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.10.14.1" style="font-size:90%;">87.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.11">
<td class="ltx_td ltx_align_left" id="S3.T11.2.11.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.1.1" style="font-size:90%;">HellaSwag</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.11.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.2.1" style="font-size:90%;">e42710</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.3.1" style="font-size:90%;">39.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.11.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.4.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.5.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.11.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.6.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.7.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.11.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.8.1" style="font-size:90%;">90.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.9.1" style="font-size:90%;">90.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.11.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.10.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.11.1" style="font-size:90%;">92.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.11.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.12.1" style="font-size:90%;">95.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.13.1" style="font-size:90%;">92.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.11.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.11.14.1" style="font-size:90%;">95.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.12">
<td class="ltx_td ltx_align_left" id="S3.T11.2.12.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.1.1" style="font-size:90%;">BBH</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.12.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.2.1" style="font-size:90%;">5b92b0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.3.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.12.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.4.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.5.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.12.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.6.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.7.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.12.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.8.1" style="font-size:90%;">77.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.9.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.12.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.10.1" style="font-size:90%;">82.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.11.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.12.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.12.1" style="font-size:90%;">87.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.13.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.12.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.12.14.1" style="font-size:90%;">85.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.13.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.1.1" style="font-size:90%;">GSM8K</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.13.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.2.1" style="font-size:90%;">1d7fe4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.3.1" style="font-size:90%;">39.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.13.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.4.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.5.1" style="font-size:90%;">61.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.13.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.6.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.7.1" style="font-size:90%;">80.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.13.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.8.1" style="font-size:90%;">83.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.9.1" style="font-size:90%;">82.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.13.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.10.1" style="font-size:90%;">88.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.11.1" style="font-size:90%;">84.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.13.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.12.1" style="font-size:90%;">89.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.13.1" style="font-size:90%;">88.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.13.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.13.14.1" style="font-size:90%;">90.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.14">
<td class="ltx_td ltx_align_left" id="S3.T11.2.14.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.1.1" style="font-size:90%;">MATH</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.14.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.2.1" style="font-size:90%;">393424</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.3.1" style="font-size:90%;">27.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.14.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.4.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.5.1" style="font-size:90%;">49.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.14.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.6.1" style="font-size:90%;">57.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.7.1" style="font-size:90%;">72.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.14.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.8.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.9.1" style="font-size:90%;">73.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.14.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.10.1" style="font-size:90%;">76.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.11.1" style="font-size:90%;">81.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.14.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.12.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.13.1" style="font-size:90%;">81.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.14.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.14.14.1" style="font-size:90%;">78.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.15">
<td class="ltx_td ltx_align_left" id="S3.T11.2.15.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.1.1" style="font-size:90%;">TheoremQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.15.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.2.1" style="font-size:90%;">6f0af8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.3.1" style="font-size:90%;">12.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.15.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.4.1" style="font-size:90%;">12.9</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.5.1" style="font-size:90%;">14.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.15.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.6.1" style="font-size:90%;">15.6</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.7.1" style="font-size:90%;">20.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.15.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.8.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.9.1" style="font-size:90%;">18.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.15.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.10.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.11.1" style="font-size:90%;">21.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.15.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.12.1" style="font-size:90%;">18.9</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.13.1" style="font-size:90%;">22.9</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.15.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.15.14.1" style="font-size:90%;">30.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.16.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.1.1" style="font-size:90%;">HumanEval</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.16.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.2.1" style="font-size:90%;">8e312c</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.3.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.16.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.4.1" style="font-size:90%;">39.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.5.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.16.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.6.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.7.1" style="font-size:90%;">82.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.16.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.8.1" style="font-size:90%;">78.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.9.1" style="font-size:90%;">81.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.16.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.10.1" style="font-size:90%;">78.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.11.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.16.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.12.1" style="font-size:90%;">87.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.13.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.16.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.16.14.1" style="font-size:90%;">82.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.17">
<td class="ltx_td ltx_align_left" id="S3.T11.2.17.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.1.1" style="font-size:90%;">MBPP</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.17.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.2.1" style="font-size:90%;">a447ff</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.3.1" style="font-size:90%;">38.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.17.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.4.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.5.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.17.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.6.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.7.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.17.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.8.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.9.1" style="font-size:90%;">76.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.17.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.10.1" style="font-size:90%;">75.1</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.11.1" style="font-size:90%;">83.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.17.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.12.1" style="font-size:90%;">77.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.13.1" style="font-size:90%;">86.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.17.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.17.14.1" style="font-size:90%;">76.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.18">
<td class="ltx_td ltx_align_left" id="S3.T11.2.18.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.1.1" style="font-size:90%;">MBPP-CN</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T11.2.18.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.2.1" style="font-size:90%;">9114d5</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.3.1" style="font-size:90%;">19.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.18.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.4.1" style="font-size:90%;">30.6</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.5.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.18.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.6.1" style="font-size:90%;">45.8</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.7.1" style="font-size:90%;">64.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.18.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.8.1" style="font-size:90%;">64.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.9.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.18.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.10.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.11.1" style="font-size:90%;">77.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T11.2.18.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.12.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.13.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_right" id="S3.T11.2.18.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.18.14.1" style="font-size:90%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T11.2.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T11.2.19.1" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.1.1" style="font-size:90%;">Overall</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T11.2.19.2" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.3" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.3.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.19.4" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.4.1" style="font-size:90%;">42.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.5" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.5.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.19.6" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.6.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.7" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.7.1" style="font-size:90%;">69.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.19.8" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.8.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.9" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.9.1" style="font-size:90%;">73.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.19.10" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.10.1" style="font-size:90%;">76.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.11" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.11.1" style="font-size:90%;">77.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T11.2.19.12" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.12.1" style="font-size:90%;">78.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.13" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.13.1" style="font-size:90%;">78.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T11.2.19.14" style="padding:-0.25pt 5.0pt;"><span class="ltx_text" id="S3.T11.2.19.14.1" style="font-size:90%;">80.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of InternVL3 and Qwen2.5 Chat models across various language benchmarks.  InternVL3 uses the same pre-trained base models as Qwen2.5 for its language component initialization.  The benchmarks cover various aspects of language understanding, including general knowledge, reasoning, and coding.  Note that the Qwen2.5 scores might vary from their official reports since the experiment used consistent prompt versions across all datasets within the OpenCompass evaluation framework.
> <details>
> <summary>read the caption</summary>
> Table 11: Comparison of language model performance across multiple benchmarks. These results were obtained using the OpenCompass toolkit. We compare InternVL3 with Qwen2.5 Chat models, whose corresponding pre-trained base models are employed as the initialization of the language component in InternVL3. Please note that the evaluation scores of the Qwen2.5 series may differ from those officially reported, as we have adopted the prompt versions provided in the table across all datasets for OpenCompass evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T12.1">
<tr class="ltx_tr" id="S3.T12.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T12.1.1.2" rowspan="2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.2.1" style="font-size:70%;">V2PE</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T12.1.1.1" rowspan="2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.1.1" style="font-size:70%;"><math alttext="\delta" class="ltx_Math" display="inline" id="S3.T12.1.1.1.1.m1.1"><semantics id="S3.T12.1.1.1.1.m1.1a"><mi id="S3.T12.1.1.1.1.m1.1.1" xref="S3.T12.1.1.1.1.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S3.T12.1.1.1.1.m1.1b"><ci id="S3.T12.1.1.1.1.m1.1.1.cmml" xref="S3.T12.1.1.1.1.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T12.1.1.1.1.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S3.T12.1.1.1.1.m1.1d">italic_δ</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.3.1" style="font-size:70%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.4.1" style="font-size:70%;">VizWiz</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.5.1" style="font-size:70%;">ChartQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.6.1" style="font-size:70%;">DocVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.7.1" style="font-size:70%;">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.8.1" style="font-size:70%;">InfoVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.9.1" style="font-size:70%;">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.10.1" style="font-size:70%;">SQA-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.11" rowspan="2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.11.1" style="font-size:70%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.12.1" style="font-size:70%;">Tiny</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.13.1" style="font-size:70%;">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.14.1" style="font-size:70%;">SEED v1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T12.1.1.15" rowspan="2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.1.15.1" style="font-size:70%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.2">
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.1.1" style="font-size:70%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.2.1" style="font-size:70%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.3.1" style="font-size:70%;">test avg</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.4.1" style="font-size:70%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.5.1" style="font-size:70%;">test</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.6.1" style="font-size:70%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.7.1" style="font-size:70%;">test</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.8.1" style="font-size:70%;">test</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.9.1" style="font-size:70%;">LVLM</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.10.1" style="font-size:70%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.2.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.2.11.1" style="font-size:70%;">image</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T12.1.3.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.1.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T12.1.3.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.2.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.3.1" style="font-size:70%;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.4.1" style="font-size:70%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.5.1" style="font-size:70%;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.6.1" style="font-size:70%;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.7.1" style="font-size:70%;">81.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.8.1" style="font-size:70%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.9.1" style="font-size:70%;">60.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.10.1" style="font-size:70%;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.11.1" style="font-size:70%;">87.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.12.1" style="font-size:70%;">348.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.13.1" style="font-size:70%;">52.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.14.1" style="font-size:70%;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.3.15" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.3.15.1" style="font-size:70%;">75.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T12.1.4.1" rowspan="5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.1.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T12.1.4.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.2.1" style="font-size:70%;">1/256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.3.1" style="font-size:70%;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.4.1" style="font-size:70%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.5.1" style="font-size:70%;">81.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.6.1" style="font-size:70%;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.7.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.8.1" style="font-size:70%;">67.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.9.1" style="font-size:70%;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.10.1" style="font-size:70%;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.11.1" style="font-size:70%;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.12.1" style="font-size:70%;">345.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.13.1" style="font-size:70%;">52.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.14.1" style="font-size:70%;">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T12.1.4.15" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.4.15.1" style="font-size:70%;">75.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.5">
<td class="ltx_td ltx_align_left" id="S3.T12.1.5.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.1.1" style="font-size:70%;">1/64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.2.1" style="font-size:70%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.3.1" style="font-size:70%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.4.1" style="font-size:70%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.5.1" style="font-size:70%;">89.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.6.1" style="font-size:70%;">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.7.1" style="font-size:70%;">69.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.8.1" style="font-size:70%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.9.1" style="font-size:70%;">94.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.10.1" style="font-size:70%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.11.1" style="font-size:70%;">345.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.12.1" style="font-size:70%;">52.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.13.1" style="font-size:70%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.5.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.5.14.1" style="font-size:70%;">75.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.6">
<td class="ltx_td ltx_align_left" id="S3.T12.1.6.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.1.1" style="font-size:70%;">1/16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.2.1" style="font-size:70%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.3.1" style="font-size:70%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.4.1" style="font-size:70%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.5.1" style="font-size:70%;">90.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.6.1" style="font-size:70%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.7.1" style="font-size:70%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.8.1" style="font-size:70%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.6.9.1" style="font-size:70%;">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.10.1" style="font-size:70%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.11.1" style="font-size:70%;">345.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.6.12.1" style="font-size:70%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.13.1" style="font-size:70%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.6.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.6.14.1" style="font-size:70%;">75.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.7">
<td class="ltx_td ltx_align_left" id="S3.T12.1.7.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.1.1" style="font-size:70%;">1/4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.2.1" style="font-size:70%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.3.1" style="font-size:70%;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.4.1" style="font-size:70%;">82.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.5.1" style="font-size:70%;">91.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.6.1" style="font-size:70%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.7.1" style="font-size:70%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.8.1" style="font-size:70%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.9.1" style="font-size:70%;">94.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.10.1" style="font-size:70%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.11.1" style="font-size:70%;">345.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.12.1" style="font-size:70%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.7.13.1" style="font-size:70%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T12.1.7.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.7.14.1" style="font-size:70%;">75.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T12.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T12.1.8.1" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.1.1" style="font-size:70%;">1/1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.2" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.2.1" style="font-size:70%;">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.3" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.3.1" style="font-size:70%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.4" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.4.1" style="font-size:70%;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.5" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.5.1" style="font-size:70%;">90.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.6" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.6.1" style="font-size:70%;">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.7" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.7.1" style="font-size:70%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.8" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.8.1" style="font-size:70%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.9" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.9.1" style="font-size:70%;">94.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.10" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.8.10.1" style="font-size:70%;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.11" style="padding:-0.2pt 2.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T12.1.8.11.1" style="font-size:70%;">347.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.12" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.12.1" style="font-size:70%;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.13" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.13.1" style="font-size:70%;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T12.1.8.14" style="padding:-0.2pt 2.6pt;"><span class="ltx_text" id="S3.T12.1.8.14.1" style="font-size:70%;">75.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of the InternVL3-8B model's performance across various multimodal benchmarks, focusing on the impact of different positional encoding strategies.  The results illustrate how the choice of positional encoding, particularly with the variable visual position encoding (V2PE), affects the model's ability to handle different context lengths and various multimodal tasks.  It systematically evaluates the effect of changing the positional increment value (delta, δ) within the V2PE method, comparing its performance against a standard positional encoding.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance of the pre-trained InternVL3-8B model on multimodal benchmarks with different positional encoding strategies. When employing V2PE, the impact of different positional increment values δ𝛿\deltaitalic_δ is systematically evaluated.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T13.2">
<tr class="ltx_tr" id="S3.T13.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T13.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.2.1" style="font-size:90%;">MPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.3.1" style="font-size:90%;">MMMU</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.4.1" style="font-size:90%;">MathVista</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.5.1" style="font-size:90%;">MathVision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.6.1" style="font-size:90%;">MathVerse</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.7.1" style="font-size:90%;">DynaMath</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.8.1" style="font-size:90%;">WeMath</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.9.1" style="font-size:90%;">LogicVista</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.1.10.1" style="font-size:90%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.2.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.1.1" style="font-size:90%;">InternVL3-1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.3.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.4.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.5.1" style="font-size:90%;">13.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.6.1" style="font-size:90%;">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.7.1" style="font-size:90%;">4.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.8.1" style="font-size:90%;">14.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.9.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.2.10.1" style="font-size:90%;">24.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.2.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.3.1" style="font-size:90%;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.4.1" style="font-size:90%;">18.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.5.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.6.1" style="font-size:90%;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.7.1" style="font-size:90%;">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.3.8.1" style="font-size:90%;">29.8</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.3.9.1" style="font-size:90%;">25.1 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.3.9.2" style="font-size:80%;color:#60B157;">(+0.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.4.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.1.1" style="font-size:90%;">InternVL3-2B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.3.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.4.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.5.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.6.1" style="font-size:90%;">23.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.7.1" style="font-size:90%;">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.8.1" style="font-size:90%;">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.9.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.4.10.1" style="font-size:90%;">30.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.2.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.3.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.4.1" style="font-size:90%;">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.5.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.6.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.7.1" style="font-size:90%;">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.5.8.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.5.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.5.9.1" style="font-size:90%;">32.4 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.5.9.2" style="font-size:80%;color:#60B157;">(+1.7)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.6.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.1.1" style="font-size:90%;">InternVL3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.3.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.4.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.5.1" style="font-size:90%;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.6.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.7.1" style="font-size:90%;">22.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.8.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.9.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.6.10.1" style="font-size:90%;">41.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.2.1" style="font-size:90%;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.3.1" style="font-size:90%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.4.1" style="font-size:90%;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.5.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.6.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.7.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.7.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.7.8.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.7.9.1" style="font-size:90%;">44.3 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.7.9.2" style="font-size:80%;color:#60B157;">(+2.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.8.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.1.1" style="font-size:90%;">InternVL3-9B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.3.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.4.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.5.1" style="font-size:90%;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.6.1" style="font-size:90%;">32.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.7.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.8.1" style="font-size:90%;">32.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.9.1" style="font-size:90%;">46.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.8.10.1" style="font-size:90%;">41.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.2.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.3.1" style="font-size:90%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.4.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.5.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.6.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.7.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.9.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.9.8.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.9.9.1" style="font-size:90%;">43.1 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.9.9.2" style="font-size:80%;color:#60B157;">(+1.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.10.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.1.1" style="font-size:90%;">InternVL3-14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.3.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.4.1" style="font-size:90%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.5.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.6.1" style="font-size:90%;">38.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.7.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.8.1" style="font-size:90%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.9.1" style="font-size:90%;">49.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.10.10.1" style="font-size:90%;">46.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.2.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.3.1" style="font-size:90%;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.4.1" style="font-size:90%;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.5.1" style="font-size:90%;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.6.1" style="font-size:90%;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.11.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.7.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.11.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.11.8.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.11.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.11.9.1" style="font-size:90%;">49.9 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.11.9.2" style="font-size:80%;color:#60B157;">(+3.7)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.12.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.1.1" style="font-size:90%;">InternVL3-38B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.3.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.4.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.5.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.6.1" style="font-size:90%;">45.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.7.1" style="font-size:90%;">22.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.12.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.8.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.12.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.9.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.12.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.12.10.1" style="font-size:90%;">48.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.2.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.3.1" style="font-size:90%;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.4.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.5.1" style="font-size:90%;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.6.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.13.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.7.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.13.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.13.8.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.13.9.1" style="font-size:90%;">52.8 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.13.9.2" style="font-size:80%;color:#60B157;">(+4.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T13.2.14.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.1.1" style="font-size:90%;">InternVL3-78B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.14.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.3.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.4.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.5.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.6.1" style="font-size:90%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.7.1" style="font-size:90%;">31.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T13.2.14.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.8.1" style="font-size:90%;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T13.2.14.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.9.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T13.2.14.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.14.10.1" style="font-size:90%;">50.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T13.2.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.1.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.2.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.3.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.4.1" style="font-size:90%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.5.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.6.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T13.2.15.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.7.1" style="font-size:90%;">46.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T13.2.15.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T13.2.15.8.1" style="font-size:90%;">55.9</span></td>
<td class="ltx_td ltx_align_left" id="S3.T13.2.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T13.2.15.9.1" style="font-size:90%;">54.6 </span><span class="ltx_text ltx_font_bold" id="S3.T13.2.15.9.2" style="font-size:80%;color:#60B157;">(+4.1)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of InternVL3 models on various reasoning benchmarks before and after applying Mixed Preference Optimization (MPO).  It shows the improvements achieved in different reasoning tasks (MMMU, MathVista, MathVision, MathVerse, DynaMath, WeMath, LogicVista) by incorporating MPO in the post-training stage. The 'X' indicates models without MPO, while the '✓' indicates models with MPO.  The numerical values represent the scores achieved by the models on each benchmark.  The overall improvement provided by MPO is also summarized in the last column.
> <details>
> <summary>read the caption</summary>
> Table 13: Comparison of reasoning abilities before and after Mixed Preference Optimization (MPO).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10479/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10479/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}