---
title: "Baichuan-Omni-1.5 Technical Report"
summary: "Baichuan-Omni-1.5: An open-source omni-modal LLM achieving SOTA performance across multiple modalities."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Baichuan Inc.",]
showSummary: true
date: 2025-01-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.15368 {{< /keyword >}}
{{< keyword icon="writer" >}} Yadong Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.15368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.15368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.15368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current open-source multimodal models struggle with fluent interactions across modalities and lack end-to-end audio generation.  This limits their broad applications.  The quality of user interaction experiences is also compromised, especially within multimodal dialogue systems.

The paper introduces Baichuan-Omni-1.5, an omni-modal model designed to address these issues. It uses a comprehensive dataset, a novel audio tokenizer, and a multi-stage training strategy to achieve fluent and high-quality interactions across modalities without compromising any modality's capabilities.  Baichuan-Omni-1.5 demonstrates significant improvements over existing models, particularly in medical image understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Baichuan-Omni-1.5 is a leading omni-modal model outperforming existing models on various benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model demonstrates excellent performance in medical image understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Baichuan-Omni-1.5 features high-quality end-to-end audio generation capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **Baichuan-Omni-1.5**, a leading omni-modal model that excels in various benchmarks, particularly in medical image understanding.  Its open-source nature and comprehensive evaluation across multiple modalities make it a valuable resource for researchers working on multi-modal large language models.  The work also opens avenues for further research into enhancing omni-modal understanding and high-quality end-to-end audio generation capabilities.

------
#### Visual Insights



![](https://arxiv.org/html/2501.15368/extracted/6156374/figures/performance.png)

> 🔼 Figure 1 presents a comparative analysis of Baichuan-Omni-1.5 against other leading multimodal models (Qwen2-VL, VITA-1.5, and MiniCPM-0 2.6) across various modalities (image, video, and audio).  The left panel is a radar chart visualizing the relative performance of these models on multiple benchmarks.  It highlights that Baichuan-Omni-1.5 surpasses the others in terms of both the number of modalities it supports and its overall performance. The right panel displays average benchmark scores, again demonstrating Baichuan-Omni-1.5's superiority. Note that all scores are normalized using a specified formula to ensure fair comparison.
> <details>
> <summary>read the caption</summary>
> Figure 1: Evaluation across image, video, and audio modalities. (Left) Baichuan-Omni-1.5 covers more modalities than Qwen2 VL [142] and outperforms the current leading omni-modal model, VITA-1.5 [45] and MiniCPM-o 2.6[165]. (Right) Average scores across benchmarks for all modalities. All the scores are normalized by xnorm=(x−xmin+10)/(xmax−xmin+10)subscript𝑥norm𝑥subscript𝑥min10subscript𝑥maxsubscript𝑥min10x_{\text{norm}}=(x-x_{\text{min}}+10)/(x_{\text{max}}-x_{\text{min}}+10)italic_x start_POSTSUBSCRIPT norm end_POSTSUBSCRIPT = ( italic_x - italic_x start_POSTSUBSCRIPT min end_POSTSUBSCRIPT + 10 ) / ( italic_x start_POSTSUBSCRIPT max end_POSTSUBSCRIPT - italic_x start_POSTSUBSCRIPT min end_POSTSUBSCRIPT + 10 ).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1">Phase</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.2">Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3">Public Datasets</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.4">Public</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.5">In-House</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.2.1.1">Pretrain</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.2">Pure-Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.4">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.2.5">150.7M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.3.1">Caption</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2">
<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib86" title="">86</a>]</cite><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib67" title="">67</a>]</cite><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib189" title="">189</a>]</cite><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib23" title="">23</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.3">33.2M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.3.4">49.1M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.4.1">Interleaved</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib71" title="">71</a>]</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3">19.1M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.4.4">28.7M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.5.1">OCR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib57" title="">57</a>]</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.3">12.4M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.5.4">7.8M</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.6.1">Total</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.6.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.6.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.6.4">71.3M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.6.5">238.2M</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a detailed breakdown of the image pre-training data used in the Baichuan-Omni-1.5 model. It shows the quantity of data for each phase (pre-training) and type (pure text, caption, and interleaved data), distinguishing between publicly available and internally collected datasets.  The total amount of data used in the image pre-training phase is also provided.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed statistics of the training data of image pretrain.
> </details>





### In-depth insights


#### Omni-modal prowess
The concept of "Omni-modal prowess" in a research paper would likely explore a model's ability to seamlessly integrate and process information from multiple modalities, such as text, images, audio, and video.  A high-performing omni-modal model should not only understand each modality independently but also exhibit **cross-modal understanding**, allowing it to effectively connect information across different sensory inputs.  **The paper might benchmark performance across various tasks**, demonstrating how the model leverages this combined information for superior results.  **Key metrics would likely be accuracy and efficiency**, highlighting the model's ability to handle diverse inputs swiftly and accurately.  A deeper analysis could also investigate the architecture's design choices, such as the use of shared representations or separate modality-specific encoders, which impact the model's capacity for omni-modal processing.  Ultimately, "Omni-modal prowess" would showcase the advanced capabilities of a model beyond single-modality strengths.

#### Data synthesis
Data synthesis in large language models (LLMs) is crucial for bridging the gap between limited real-world data and the vast amount of training required for optimal performance.  **Effective data synthesis strategies focus on augmenting existing datasets, rather than solely relying on real-world data collection.** This is especially important for tasks like multimodal understanding, where obtaining sufficient high-quality data across different modalities is challenging. The paper highlights the use of various techniques, including data cleaning and synthesis pipelines, to obtain high-quality multimodal data. A comprehensive data cleaning process is essential to eliminate noise and inconsistencies, ensuring that the synthesized data aligns with the desired model capabilities.  **Careful data preprocessing and synthesis are key to improving both the efficiency and effectiveness of model training.**  The creation of interleaved image-audio-text and video-audio-text data is highlighted as a particularly innovative method in the research paper to enhance the cross-modal interaction capabilities and improve model performance in various downstream tasks.  Furthermore, **the method of synthesizing data by interleaving various modalities (text, audio, and visual) into a unified model emerged as crucial for improving overall model performance.**

#### Training strategy
The research paper details a multi-stage training strategy for Baichuan-Omni-1.5, a large multimodal language model.  This approach prioritizes optimizing three key aspects: data cleaning and synthesis, tokenizer design, and a progressive training scheme.  **High-quality data (500B tokens) is crucial**, encompassing text, audio, and visual modalities, highlighting a focus on data diversity and quality control. The **Baichuan-Audio-Tokenizer is designed to capture semantic and acoustic information**,  allowing for seamless audio integration within the multimodal framework. The **multi-stage training progressively integrates multimodal alignment**, starting with separate image-text and then image-audio-text pretraining before a final omni-modal stage.  This phased approach aims to mitigate modality conflicts, ensuring fluency and quality across all modalities. The final supervised fine-tuning stage focuses on enhancing performance across diverse tasks, using high-quality data.  The **multi-stage strategy demonstrates a thoughtful approach**, balancing the optimization of individual modalities with the seamless integration of multimodal understanding and generation, ultimately improving model robustness and capabilities.

#### Medical potential
The research paper highlights the significant **medical potential** of advanced multimodal large language models (MLLMs).  MLLMs, by integrating diverse data modalities such as text, images, and audio, demonstrate enhanced capabilities in medical image analysis, diagnosis support, and even drug discovery.  The paper showcases the **superior performance** of their Baichuan-Omni-1.5 model on medical benchmarks, surpassing existing models.  This improved performance stems from the model's ability to seamlessly integrate and interpret complex medical data, thus enabling more accurate diagnoses and facilitating breakthroughs in clinical practice and research.  **Key improvements** include higher precision in medical image understanding and enhanced cross-modal interactions, suggesting wider applicability in various clinical scenarios. However, the research also acknowledges the need for further development to address challenges such as improving the model's robustness and ensuring data privacy and security within the medical context.

#### Future outlook
The future of multimodal large language models (MLLMs) appears exceptionally promising, driven by the continued advancements in model architectures and training techniques.  **Improved data synthesis and cleaning processes** will be crucial, leading to more comprehensive and higher-quality multimodal datasets.  **Developing more effective strategies to resolve modality conflicts** and achieve seamless integration of diverse data types will be a key area of focus. This may involve novel model architectures or innovative training approaches.  **Real-time performance and efficient processing** for diverse input types (text, audio, image, video) will also be a key factor, along with enhancing models' abilities to deal with complex and nuanced scenarios.  The integration of increasingly diverse and specialized modalities, like medical and scientific data, will enhance application scope. We can expect even more natural and efficient human-computer interaction with the development of more human-like qualities, such as expressiveness in speech generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.15368/x1.png)

> 🔼 Baichuan-Omni-1.5 is a multimodal model that can process various input modalities (text, audio, image, and video) and generate corresponding outputs (text and audio).  The figure details the model's architecture.  It shows how visual and audio information is encoded and fed into a shared LLM decoder. This decoder alternately generates text and audio tokens. The audio tokens are then passed to an audio decoder to generate the final audio output. This allows for end-to-end audio generation and seamless integration across modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture of Baichuan-Omni-1.5 . Our model is designed to process both pure text/audio inputs and combinations of video/image with text/audio. When generating audio, the Baichuan-Omni-1.5 LLM Decoder alternately predicts text tokens and audio tokens. The audio tokens are then decoded by the Audio Decoder to produce the final audio.
> </details>



![](https://arxiv.org/html/2501.15368/extracted/6156374/figures/data_example.png)

> 🔼 Figure 3 illustrates the diverse multimodal data used to pre-train Baichuan-Omni-1.5.  The dataset includes various data types: pure text, image-text pairs, video-text pairs, and audio-text pairs.  Importantly, it also incorporates more complex interleaved data formats, such as image-audio-text triplets and video-audio-text triplets. This rich and varied dataset allows the model to learn comprehensive cross-modal relationships and achieve a high level of multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Figure 3: Pretrain Data illustration of Baichuan-Omni-1.5 . We construct an extensive omni-modal dataset, including text, image-text, video-text, audio-text, and their interactions. Our collection also contains interleaved image-audio-text and video-audio-text data.
> </details>



![](https://arxiv.org/html/2501.15368/x2.png)

> 🔼 This figure illustrates the architecture of the Baichuan-Omni-1.5 model's audio branch.  It uses a Residual Vector Quantization (RVQ) based audio tokenizer to convert raw audio into discrete tokens, which are then processed by a Large Language Model (LLM).  The audio tokens are further decoded into a speech waveform using a flow-matching model based on a U-Net architecture and a HiFi-GAN vocoder.  The model utilizes a multi-stage training strategy to improve speech quality, incorporating techniques such as multi-scale Mel loss. The figure highlights the different components of the audio processing pipeline and their interactions, showing how raw audio is transformed into meaningful representations understandable by the LLM, then ultimately converted back into speech.
> <details>
> <summary>read the caption</summary>
> Figure 4: Audio tokenizer and audio decoder based on flow matching model.
> </details>



![](https://arxiv.org/html/2501.15368/x3.png)

> 🔼 This figure illustrates the training pipeline of the Baichuan-Omni-1.5 model.  The training process is divided into four stages. Stage 1 pre-trains the model on image-text data to enable visual understanding. Stage 2 incorporates audio using a newly designed audio tokenizer and embedding layer, enabling end-to-end audio processing. Stage 3 integrates image, audio, video, and text data to achieve comprehensive omni-modal understanding, extending the model's maximum sequence length for handling longer inputs.  Finally, Stage 4 fine-tunes the model through supervised learning using omni-modal data, with specific sub-stages focusing on improving both instruction following and audio generation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training Pipeline of Baichuan-Omni-1.5 . The pretraining phase is divided into three stages to incrementally incorporate vision and audio into the LLM while relieving modality conflicts. Stage 1 focuses on image-text training, which extends an LLM to process and understand visual input. Stage 2 extends an LLM pre-trained on visual data to understand audio input in end-to-end manner by incorporating our Baichuan-Audio-Tokenizer, a newly introduced audio embedding layers and an independent audio head. Stage 3 focuses on training Baichuan-Omni-1.5 using high-quality cross-modal interaction datasets encompassing image-audio-text and video-audio-text format, and extends the maximum sequence length to 64k to support long audio and video stream. Stage 4 enhances the model’s instruction following and audio capabilities through supervised fine-tuning with omni-modal data. Stage 4.1: Freeze the Audio Head using omni-modal understanding data to boost modality interactivity and multitasking comprehension. Stage 4.2: Activate only the Audio Head and Audio Embed layer, with audio generation data to improve speech generation capabilities.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.1">QA Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.2">Dataset Name</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.3">Public Datasets</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.1.1.4">Questions</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.1" rowspan="3"><span class="ltx_text" id="S3.T2.1.2.1.1">Description</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.2">Synthetic Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.3">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.4">300K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.3.1">ShareGPT-4o</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib29" title="">29</a>]</cite></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.3.3">2K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.4.1">Koala</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib150" title="">150</a>]</cite></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3">30M</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.5.1" rowspan="3"><span class="ltx_text" id="S3.T2.1.5.1.1">QA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.5.2">Synthetic Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.5.3">
<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib80" title="">80</a>]</cite><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib82" title="">82</a>]</cite><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib157" title="">157</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.5.4">164K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T2.1.6.1">VideoChatGPT-Plus</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib107" title="">107</a>]</cite></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.6.3">318K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.1.7.1">ShareGemini</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.2"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib131" title="">131</a>]</cite></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.7.3">205K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.1.8.1">Total</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.1.8.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.8.3">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.8.4">31M</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the video training data used in the Baichuan-Omni-1.5 model. It categorizes the data into question-answering (QA) and description types, specifying the dataset source (public or synthetic), and the number of questions and descriptions available for training.
> <details>
> <summary>read the caption</summary>
> Table 2: Detailed statistics of the training data of video pretrain.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.1.1">Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.2">Task</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.1.3">Data Format</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.4">Hours (k)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T3.1.1.2.1.1">Audio Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2">Automatic Speech Recognition (ASR)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.2.3"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.2.3.1">&lt;prompt, audio, transcript&gt;</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.4">185</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.1">Audio Query Answer (AQA)</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.3.2"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.3.2.1">&lt;prompt, audio, response&gt;</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.3">21</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.1">Speech-to-Text Translation (S2TT)</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.4.2.1">&lt;prompt, audio, translated_text&gt;</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.3">15</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.1">Audio-Text Interleaved (INTLV)</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.2"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.5.2.1">&lt;audio_1, text_2, audio_3, text_4, ...&gt;</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.3">393</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.6.1" rowspan="3"><span class="ltx_text" id="S3.T3.1.1.6.1.1">Audio Generation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.2">Text-to-Speech (TTS)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.6.3"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.6.3.1">&lt;text, audio&gt;</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.4">51</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.1">Interleaved Text-to-Speech (ITTS)</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.7.2"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.7.2.1">&lt;text_1, audio_1, text_2, audio_2, ...&gt;</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.3">142</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8">
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.1">Pure Audio</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.2"><span class="ltx_text ltx_font_typewriter" id="S3.T3.1.1.8.2.1">&lt;audio&gt;</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.3">80</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T3.1.1.9.1">Total</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.9.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T3.1.1.9.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.1.9.4">887</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the audio training data used in the Baichuan-Omni-1.5 model.  It shows the different types of audio data used (audio understanding and audio generation), their specific tasks (ASR, AQA, etc.), the data format, and the total number of hours of audio data for each task. This information highlights the scale and diversity of the audio data used to train the model's audio capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Detailed statistics of the training data of audio pretrain.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.3">
<tr class="ltx_tr" id="S3.T4.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.1.1">
<span class="ltx_p" id="S3.T4.3.1.1.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.1.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.2.1">
<span class="ltx_p" id="S3.T4.3.1.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.2.1.1.1">Text</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.3.1">
<span class="ltx_p" id="S3.T4.3.1.3.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.3.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.4.1">
<span class="ltx_p" id="S3.T4.3.1.4.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.4.1.1.1">Video</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.5.1">
<span class="ltx_p" id="S3.T4.3.1.5.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.5.1.1.1">Audio</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T4.3.1.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.6.1">
<span class="ltx_p" id="S3.T4.3.1.6.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.6.1.1.1">Image-Audio</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.1.1">
<span class="ltx_p" id="S3.T4.3.2.1.1.1" style="width:37.0pt;">Quantity</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.2.1">
<span class="ltx_p" id="S3.T4.3.2.2.1.1" style="width:28.5pt;">400K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.3.1">
<span class="ltx_p" id="S3.T4.3.2.3.1.1" style="width:28.5pt;">16M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.4.1">
<span class="ltx_p" id="S3.T4.3.2.4.1.1" style="width:28.5pt;">100K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.5.1">
<span class="ltx_p" id="S3.T4.3.2.5.1.1" style="width:28.5pt;">282K</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T4.3.2.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.6.1">
<span class="ltx_p" id="S3.T4.3.2.6.1.1" style="width:56.9pt;">60K</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a summary of the dataset used for the supervised fine-tuning stage of the Baichuan-Omni-1.5 model.  It details the quantity of data in various modalities (text, image, video, audio) and combinations thereof that were used to train the model to perform more effectively on a wider range of complex tasks involving multiple modalities. The table breaks down the data by category and provides counts to illustrate the scale and diversity of the training data.
> <details>
> <summary>read the caption</summary>
> Table 4: Omni-modal SFT data statistics for Baichuan-Omni-1.5 . Here we summarize the category and quantities of our SFT dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T5.3">
<tr class="ltx_tr" id="S3.T5.3.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T5.3.1.1.1">Scene</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T5.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.1.2.1">
<span class="ltx_p" id="S3.T5.3.1.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T5.3.1.2.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T5.3.1.3"><span class="ltx_text ltx_font_bold" id="S3.T5.3.1.3.1">Proportion</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.2.1"><span class="ltx_text" id="S3.T5.3.2.1.1">GeneralQA</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.2.2.1">
<span class="ltx_p" id="S3.T5.3.2.2.1.1" style="width:284.5pt;">Leopard-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib61" title="">61</a>]</cite>, LLaVA-OneVision-Data <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib76" title="">76</a>]</cite>, MMInstruct-GPT4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib99" title="">99</a>]</cite>, the Cauldron <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib72" title="">72</a>]</cite>, GeoGPT4V-1.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib15" title="">15</a>]</cite>, MMDU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib102" title="">102</a>]</cite>, Lova3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib188" title="">188</a>]</cite>, CaD-Inst <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib14" title="">14</a>]</cite>, VisionArena-Battle <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib25" title="">25</a>]</cite>, Q-Instruct-DB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib154" title="">154</a>]</cite>, MultipanelVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib41" title="">41</a>]</cite>, ConMe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib58" title="">58</a>]</cite>, FABAInstruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib90" title="">90</a>]</cite>, ScienceQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib128" title="">128</a>]</cite>, MapQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib16" title="">16</a>]</cite>, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.2.3"><span class="ltx_text" id="S3.T5.3.2.3.1">32.26%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.3.1"><span class="ltx_text" id="S3.T5.3.3.1.1">OCR</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.3.2.1">
<span class="ltx_p" id="S3.T5.3.3.2.1.1" style="width:284.5pt;">MathWriting <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib48" title="">48</a>]</cite>, WebSight <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib73" title="">73</a>]</cite>, ST-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib11" title="">11</a>]</cite>, GQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib60" title="">60</a>]</cite>, HME100K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib169" title="">169</a>]</cite>, UberTextQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib10" title="">10</a>]</cite>, OCR-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib117" title="">117</a>]</cite>, TallyQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib2" title="">2</a>]</cite>, SlideVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib139" title="">139</a>]</cite>, VizWiz <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib10" title="">10</a>]</cite>, NorHand-v3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib140" title="">140</a>]</cite>, LLaVAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib186" title="">186</a>]</cite>, Textualization <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib40" title="">40</a>]</cite>, PViT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib182" title="">182</a>]</cite>, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.3.3"><span class="ltx_text" id="S3.T5.3.3.3.1">26.51%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.4.1"><span class="ltx_text" id="S3.T5.3.4.1.1">Graphical</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.4.2.1">
<span class="ltx_p" id="S3.T5.3.4.2.1.1" style="width:284.5pt;">DVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib64" title="">64</a>]</cite>, TinyChart <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib179" title="">179</a>]</cite>, Chart2Text <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib66" title="">66</a>]</cite>, ArxivQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib84" title="">84</a>]</cite>, ChartLlama <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib52" title="">52</a>]</cite>, InfographicVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib112" title="">112</a>]</cite>, FlowVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib137" title="">137</a>]</cite>, MultiChartQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib194" title="">194</a>]</cite>, ChartGemma <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib111" title="">111</a>]</cite>, UniChart <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib109" title="">109</a>]</cite>, TAT-DQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib193" title="">193</a>]</cite>, PlotQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib116" title="">116</a>]</cite>, FigureQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib65" title="">65</a>]</cite>, MMTab <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib191" title="">191</a>]</cite>, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.4.3"><span class="ltx_text" id="S3.T5.3.4.3.1">9.04%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.5.1"><span class="ltx_text" id="S3.T5.3.5.1.1">Mathematics</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.5.2.1">
<span class="ltx_p" id="S3.T5.3.5.2.1.1" style="width:284.5pt;">MathV-360K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib132" title="">132</a>]</cite>, Geo170k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib46" title="">46</a>]</cite>, R-COT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib34" title="">34</a>]</cite>, A-OKVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib130" title="">130</a>]</cite>, Super-CLEVR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib94" title="">94</a>]</cite>, CLEVR-Math <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib96" title="">96</a>]</cite>, TabMWP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib105" title="">105</a>]</cite>, GeoQA+ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib5" title="">5</a>]</cite>, MAVIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib181" title="">181</a>]</cite>, Iconqa <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib106" title="">106</a>]</cite>, UniGeo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib17" title="">17</a>]</cite>, PUMA_VarsityTutors <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib195" title="">195</a>]</cite>, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.5.3"><span class="ltx_text" id="S3.T5.3.5.3.1">10.31%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.6.1"><span class="ltx_text" id="S3.T5.3.6.1.1">Spatiotemporal</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.6.2.1">
<span class="ltx_p" id="S3.T5.3.6.2.1.1" style="width:284.5pt;">CCTSDB2021 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib177" title="">177</a>]</cite>, SODA10M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib51" title="">51</a>]</cite>, EmbSpatial <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib36" title="">36</a>]</cite>, LLaVA-VSD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib62" title="">62</a>]</cite>, SpatialSense <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib163" title="">163</a>]</cite>, SpatialMM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib133" title="">133</a>]</cite>, Whatsup <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib12" title="">12</a>]</cite>, VSR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib180" title="">180</a>]</cite>, SpatialSense <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib163" title="">163</a>]</cite>, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.6.3"><span class="ltx_text" id="S3.T5.3.6.3.1">2.63%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.7.1"><span class="ltx_text" id="S3.T5.3.7.1.1">Captioning</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T5.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.7.2.1">
<span class="ltx_p" id="S3.T5.3.7.2.1.1" style="width:284.5pt;">TextCaps <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib134" title="">134</a>]</cite>, MMsci <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib92" title="">92</a>]</cite>, Synthetic Data, Others</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.3.7.3"><span class="ltx_text" id="S3.T5.3.7.3.1">8.23%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T5.3.8.1" rowspan="3"><span class="ltx_text" id="S3.T5.3.8.1.1">Medical</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T5.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T5.3.8.2.1">
<span class="ltx_p" id="S3.T5.3.8.2.1.1" style="width:284.5pt;">PubMed <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib113" title="">113</a>]</cite>, HAM10000 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib144" title="">144</a>]</cite>, PMC-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib184" title="">184</a>]</cite>, PathVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib54" title="">54</a>]</cite>, AIROGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib30" title="">30</a>]</cite>), MedFMC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib147" title="">147</a>]</cite>, Kvasir-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib47" title="">47</a>]</cite>, IU X-ray <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib33" title="">33</a>]</cite>, VQA-RAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib70" title="">70</a>]</cite>, DME VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15368v1#bib.bib141" title="">141</a>]</cite>, and other specialized medical datasets</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T5.3.8.3" rowspan="3"><span class="ltx_text" id="S3.T5.3.8.3.1">11.02%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the composition of the image data used for supervised fine-tuning of the Baichuan-Omni-1.5 model.  It breaks down the data by task category (GeneralQA, OCR, Graphical, Mathematics, Spatiotemporal, Captioning, Medical), listing the specific datasets contributing to each category and the percentage of the overall image SFT dataset each category represents. This provides insight into the diversity and distribution of training data used to enhance the model's capabilities in various visual understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Image SFT data for Baichuan-Omni-1.5 . This table summarizes the image SFT dataset categories, their sources, and proportions for various tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.11">
<tr class="ltx_tr" id="S4.T6.11.8">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T6.11.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T6.11.8.2"><span class="ltx_text ltx_font_bold" id="S4.T6.11.8.2.1">Comprehensive Tasks</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.9.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.9.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.9.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.2.1">
<tr class="ltx_tr" id="S4.T6.11.9.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.2.1.1.1">MMLU</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.2.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.9.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.3.1">
<tr class="ltx_tr" id="S4.T6.11.9.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.3.1.1.1">CMMLU</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.3.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.9.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.4.1">
<tr class="ltx_tr" id="S4.T6.11.9.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.4.1.1.1">AGIEval</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.4.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.9.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.5.1">
<tr class="ltx_tr" id="S4.T6.11.9.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.5.1.1.1">C-Eval</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.5.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.11.9.6">
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.6.1">
<tr class="ltx_tr" id="S4.T6.11.9.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.6.1.1.1">GAOKAO</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.6.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T6.11.10.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T6.11.10.1.1" style="background-color:#EFEFEF;">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.8.4.5">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.1">88.0<sup class="ltx_sup" id="S4.T6.5.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T6.5.1.1.1.1.1">♢</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T6.6.2.2.1">78.3<sup class="ltx_sup" id="S4.T6.6.2.2.1.1"><span class="ltx_text ltx_font_medium" id="S4.T6.6.2.2.1.1.1">♢</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.7.3.3.1">62.3<sup class="ltx_sup" id="S4.T6.7.3.3.1.1"><span class="ltx_text ltx_font_medium" id="S4.T6.7.3.3.1.1.1">♢</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T6.8.4.4.1">86.0<sup class="ltx_sup" id="S4.T6.8.4.4.1.1"><span class="ltx_text ltx_font_medium" id="S4.T6.8.4.4.1.1.1">♢</span></sup></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.8.4.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.11.1">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.11.2">82.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.11.3">67.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.11.4">52.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.11.5">63.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.11.6">70.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T6.11.12.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T6.11.12.1.1" style="background-color:#EFEFEF;">Open-source Models (Pure text)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.13">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.11.13.1">MAP-Neo (7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.13.2">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.13.3">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.13.4">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.13.5">57.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.11.13.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.14.1">Qwen1.5-Chat (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.2">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.3">68.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.4">39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.14.5">68.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.14.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.15.1">Llama3-Instruct (8B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.2">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.3">51.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.4">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.15.5">50.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.15.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.16.1">OLMo (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.2">28.4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.3">25.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.4">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.16.5">27.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.16.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T6.11.17.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T6.11.17.1.1" style="background-color:#EFEFEF;">Open-source Models (Omni-modal)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.11.7.4">VITA (8x7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.5.1">71.0<sup class="ltx_sup" id="S4.T6.9.5.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.7.5">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.10.6.2">46.2<sup class="ltx_sup" id="S4.T6.10.6.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.7.3">56.7<sup class="ltx_sup" id="S4.T6.11.7.3.1">∗</sup>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.11.7.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.18.1">VITA-1.5 (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.2">71.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.3">75.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.4">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.18.5">65.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.18.6">57.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.19.1">Baichuan-Omni (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.2">65.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.3">72.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.4">47.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.19.5">68.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.19.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.11.20.1">MiniCPM-o 2.6 (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.2">65.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.3">63.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.4">50.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.11.20.5">61.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.20.6">56.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.21">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.11.21.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.21.1.1">Baichuan-Omni-1.5 (7B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.21.2">72.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.21.3">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.21.4">54.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.11.21.5">73.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T6.11.21.6"><span class="ltx_text ltx_font_bold" id="S4.T6.11.21.6.1">73.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comprehensive comparison of various large language models (LLMs) on several prominent pure text benchmarks.  It includes both proprietary models (those developed by companies and not publicly available) and open-source models (those available for public use). The benchmarks used assess general knowledge, reasoning abilities, and Chinese language understanding. Results are shown as accuracy scores, with distinctions made for officially reported scores, scores retrieved from leaderboards, and scores reproduced by the authors.  This allows for a nuanced comparison of the models' capabilities across different assessment types.
> <details>
> <summary>read the caption</summary>
> Table 6: Results on comprehensive pure text benchmarks. ∗*∗: Officially reported results. ♢♢\diamondsuit♢: Retrieved results from official leaderboard or recent papers. Other unlabeled results are reproduced by ourselves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.2.1">
<tr class="ltx_tr" id="S4.T6.11.9.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.2.1.1.1">MMLU</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.2.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of various models' performance on multiple-choice and yes/no question benchmarks related to image understanding.  The models are categorized into proprietary (closed-source) models and open-source models (further divided into vision-language models and omni-modal models).  The benchmarks used assess accuracy across different visual question answering tasks, reflecting the models' abilities in understanding image content and responding accordingly.  Results marked with ∗ are officially reported scores, while those marked with ♢ are obtained from official leaderboards or recent papers.  The remaining results were reproduced by the authors of the paper for fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 7: Results on Multi-choice benchmarks and Yes-or-No benchmarks. ∗*∗: Officially reported results. ♢♢\diamondsuit♢: Retrieved results from official leaderboard or recent papers. Other unlabeled results are reproduced by ourselves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.3.1">
<tr class="ltx_tr" id="S4.T6.11.9.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.3.1.1.1">CMMLU</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.3.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of various models' performance on several Image Visual Question Answering (VQA) benchmarks.  The benchmarks assess a model's ability to understand and answer questions about images. The table includes both proprietary models (those developed and maintained by companies like OpenAI) and open-source models (publicly available models).  For each model, the table shows the accuracy achieved on each benchmark.  Results marked with a * are officially reported by the model's developers, while those marked with a ♢ were taken from official leaderboards or recent research papers.  The remaining results were reproduced by the authors of this paper to ensure consistent comparison.  This allows for a fair comparison across different models, considering potential variations in testing conditions.
> <details>
> <summary>read the caption</summary>
> Table 8: Results on image VQA benchmarks. ∗*∗: Officially reported results. ♢♢\diamondsuit♢: Retrieved results from official leaderboard or recent papers. Other unlabeled results are reproduced by ourselves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.4.1">
<tr class="ltx_tr" id="S4.T6.11.9.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.4.1.1.1">AGIEval</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.4.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents the results of general video question answering (VQA) benchmarks.  It compares various models' performance across four metrics: MVBench, Egoschema, VideoMME, and Perception-Test.  The table differentiates between proprietary models (those developed by companies and not publicly released), open-source vision-language models, and open-source omni-modal models. Results are shown as accuracy (%). The maximum number of frames sampled for evaluation is also specified.  Note that a specific setting ('no subtitles') was used for the VideoMME benchmark.  Results marked with * represent officially reported scores from the original papers or leaderboards.  Results with ♢ represent scores obtained from official leaderboards or recent papers.  The remaining scores were reproduced by the authors of this paper using consistent evaluation settings for fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 9: Results on general video VQA benchmarks. max: Maximum number of sampling frames. ∗*∗: Officially reported results. ♢♢\diamondsuit♢: Retrieved results from official leaderboard or recent papers. Other unlabeled results are reproduced by ourselves. Note that we use the 'no subtitles' evaluation setting in VideoMME.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.5.1">
<tr class="ltx_tr" id="S4.T6.11.9.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.5.1.1.1">C-Eval</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.5.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents the results of open-ended Video Question Answering (VQA) benchmark evaluations.  It compares the performance of several models, including proprietary models (Gemini 1.5 Pro, GPT-4 mini, GPT-4, GPT-4V) and open-source models (Qwen2-VL, VideoLLaMA 2, VideoChat2, LLaVA-NeXT-Video, Video-LLaMA, VITA, VITA-1.5, Baichuan-Omni, MiniCPM-0 2.6, Baichuan-Omni-1.5). The models are evaluated on two benchmarks: ActivityNet-QA and MSVD-QA. The table shows the accuracy (Acc.) and score achieved by each model on both benchmarks.  The number of frames sampled from each video is also indicated, with some models using a maximum number of frames and others a fixed frames per second.
> <details>
> <summary>read the caption</summary>
> Table 10: Results on open-ended video VQA benchmarks. max: Maximum number of sampling frames. ∗*∗: Officially reported results. Other unlabeled results are reproduced by ourselves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.11.9.6.1">
<tr class="ltx_tr" id="S4.T6.11.9.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.6.1.1.1">GAOKAO</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.9.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T6.11.9.6.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents the results of evaluating various models on several audio understanding benchmarks.  The benchmarks assess different aspects of audio comprehension, including reasoning, question answering, and general knowledge. The table compares the performance of proprietary models (GPT-40-Audio) and open-source models (GLM-4-Voice, VITA-1.5, MiniCPM-0 2.6, Baichuan-Omni-1.5) across these benchmarks. Different evaluation methods are employed, as denoted by symbols in the caption:  ∇∇\nabla∇ indicates text-only evaluation on text-audio interleaved outputs; ♢♢\diamondsuit♢ specifies text-audio interleaved output only; and □□\square□ denotes a cascaded output approach, with evaluation based on the produced text.  This allows for a multifaceted comparison of the models' abilities in various audio understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 11: Results on audio understanding benchmarks. ∇∇\nabla∇: The modalities parameter is set to ['text', 'audio'], evaluation based on the output text. ♢♢\diamondsuit♢: Supports only text-audio interleaved output. □□\square□: Cascade output method, evaluation based on the output text.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7">
<tr class="ltx_tr" id="S4.T7.11.7.8">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T7.11.7.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T7.11.7.8.2"><span class="ltx_text ltx_font_bold" id="S4.T7.11.7.8.2.1">Multi-choice &amp; Yes-or-No Question</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.7.9.1"><span class="ltx_text ltx_font_bold" id="S4.T7.11.7.9.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.9.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.2.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.2.1.1.1">MMBench-EN</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.2.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.9.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.3.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.3.1.1.1">MMBench-CN</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.3.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.9.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.4.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.4.1.1.1">SEED-IMG</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.4.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.9.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.5.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.5.1.1.1">MMMU (val)</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.5.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.11.7.9.6">
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.6.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.6.1.1.1">HallusionBench</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.6.1.2.1">(Acc.)</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T7.11.7.10.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T7.11.7.10.1.1" style="background-color:#EFEFEF;">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.8.4.4.5">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.5.1.1.1">83.4<sup class="ltx_sup" id="S4.T7.5.1.1.1.1">♢</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.2.2.2">82.1<sup class="ltx_sup" id="S4.T7.6.2.2.2.1">♢</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.8.4.4.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.7.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T7.7.3.3.3.1">69.1<sup class="ltx_sup" id="S4.T7.7.3.3.3.1.1"><span class="ltx_text ltx_font_medium" id="S4.T7.7.3.3.3.1.1.1">♢</span></sup></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.8.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T7.8.4.4.4.1">55.0<sup class="ltx_sup" id="S4.T7.8.4.4.4.1.1"><span class="ltx_text ltx_font_medium" id="S4.T7.8.4.4.4.1.1.1">♢</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.7.11.1">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.11.2">77.7</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.11.3">76.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.11.4">72.3</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.11.5">59.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.11.6">45.8</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T7.11.7.12.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T7.11.7.12.1.1" style="background-color:#EFEFEF;">Open-source Models (Vision-language)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.9.5.5.2">Qwen2 VL (7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.5.5.3">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.5.5.4">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T7.9.5.5.5.1">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.5.5.6">52.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.9.5.5.1">50.6<sup class="ltx_sup" id="S4.T7.9.5.5.1.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.10.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.10.6.6.2">MiniCPM-Llama3-V 2.5 (8B)</td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.6.6.3">76.7</td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.6.6.4">73.3</td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.6.6.5">72.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.6.6.1">45.8<sup class="ltx_sup" id="S4.T7.10.6.6.1.1">∗</sup>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.10.6.6.6">42.5</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T7.11.7.13.1" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_italic" id="S4.T7.11.7.13.1.1" style="background-color:#EFEFEF;">Open-source Models (Omni-modal)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.11.7.7.2">VITA (8x7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.7.3">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.7.4">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.7.5">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.11.7.7.6">45.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T7.11.7.7.1">39.7<sup class="ltx_sup" id="S4.T7.11.7.7.1.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.7.14.1">VITA-1.5 (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.14.2">80.8</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.14.3">80.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.14.4">74.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.14.5">50.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.14.6">44.8</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.7.15.1">Baichuan-Omni (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.15.2">76.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.15.3">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.15.4">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.15.5">47.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.15.6">47.8</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.7.16.1">MiniCPM-o 2.6 (7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.16.2">83.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.16.3">81.8</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.16.4">75.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.7.16.5">51.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.16.6">50.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.17">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.11.7.17.1"><span class="ltx_text ltx_font_bold" id="S4.T7.11.7.17.1.1">Baichuan-Omni-1.5 (7B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.11.7.17.2"><span class="ltx_text ltx_font_bold" id="S4.T7.11.7.17.2.1">85.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.11.7.17.3"><span class="ltx_text ltx_font_bold" id="S4.T7.11.7.17.3.1">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.11.7.17.4">75.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.11.7.17.5">53.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T7.11.7.17.6">49.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents a comprehensive comparison of the overall omni-understanding capabilities of several large language models (LLMs), including both proprietary models (GPT-40-mini) and open-source omni-modal models.  The models are evaluated across four distinct scenarios, each involving a unique combination of input modalities: Image & Audio, Image Caption & Audio, Image & Audio Transcript, and Image Caption & Audio Transcript.  The table highlights the accuracy scores achieved by each model in each scenario, offering a nuanced assessment of their cross-modal understanding performance. Note that for the GPT-40-mini model, audio input was not directly supported; therefore, audio data was transcribed before input for fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 12: Overall Omni-Undesratnding Results. All the results are reproduced by ourselves. GPT-4o-mini does not support audio input, we use its audio API and transcribe the audio and then input it.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.11.7.9.2.1">
<tr class="ltx_tr" id="S4.T7.11.7.9.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.2.1.1.1">MMBench-EN</td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.7.9.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.11.7.9.2.1.2.1">(Acc.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 13 presents the performance comparison of various models on medical image understanding benchmarks.  The benchmarks used are GMAI-MMB-VAL and OpenMM-Medical.  The results shown represent accuracy scores achieved by each model on each benchmark.  All results were reproduced by the authors of the paper for fair comparison. This table is crucial for assessing the models' capabilities to handle medical image data, a particularly challenging domain requiring high accuracy and reliability.
> <details>
> <summary>read the caption</summary>
> Table 13: Results on medical benchmarks. All the results are reproduced by ourselves.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.15368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15368/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}