---
title: "From TOWER to SPIRE: Adding the Speech Modality to a Text-Only LLM"
summary: "SPIRE: Adds speech to text-only LLMs, maintaining text performance via discretized speech and continued pre-training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Paris-Saclay University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10620 {{< /keyword >}}
{{< keyword icon="writer" >}} Kshitij Ambilduke et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10620" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10620" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10620/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models have excelled in various tasks, leading to interest in multimodal integration, like speech. Existing methods link ASR to LLMs, missing disambiguation, or use modality projection with high costs. Speech discretization transforms speech into discrete units, simplifying training. However, development focuses on speech tasks, neglecting textual performance preservation.



This paper introduces **SPIRE, a speech-augmented LLM** built atop TOWER.  It transcribes and translates English speech, maintaining original translation capabilities. Using HuBERT-based k-means, SPIRE undergoes continued pre-training with ASR data and instruction tuning. Code and models are available, showing effective speech input integration as an additional language during adaptation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Speech can be integrated as a translation language. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Continued pre-training and instruction tuning are essential for optimal speech task performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Speech integration can be achieved without sacrificing the LLM's original textual task capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it provides a recipe to add speech to LLMs, enabling multimodal capabilities, which is a growing field. It offers insights into the trade-offs and best practices for integrating speech w/o compromising existing text capabilities. **The reproducible pipeline and open-source models facilitate further research and development in multilingual speech processing and multimodal LLMs.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.10620/extracted/6278306/latex/figures/pipeline8.png)

> 🔼 This figure illustrates the training pipeline for the two main variants of the SPIRE model: SpireBase and SpireFull.  SpireBase undergoes continued pre-training (CPT) using a mixture of text data from the TOWER model and English speech data transcribed using HuBERT-based k-means clustering into discrete speech units (DSUs).  SpireFull then takes the SpireBase model and further fine-tunes it through instruction tuning (IT) using additional data including task-specific datasets for machine translation (MT), automatic speech recognition (ASR), and speech translation (ST). The figure visually depicts the data flow and processing steps involved in building both models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of the model training method for SpireBase and SpireFull.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.1.1">ASR (CPT)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.1.1.1.1.1.1.1">Speech:&lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.1.1.1.1.2.1.1">English: {TRANSCRIPT}</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.6.2.1.1">MT (CPT)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.7.3.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.7.3.1.1">
<tr class="ltx_tr" id="S3.T1.4.7.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.7.3.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.7.3.1.1.1.1.1">Source_lang: Source-sentence</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.7.3.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.7.3.1.1.2.1.1">Target_lang: {TRANSLATION}</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.8.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.1.1">ASR (IT)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.1.1">
<tr class="ltx_tr" id="S3.T1.2.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.2.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.2.2.1.1.1.1.1.m1.1"><semantics id="S3.T1.2.2.1.1.1.1.1.m1.1a"><mi id="S3.T1.2.2.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.2.2.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.1.1.1.1.m1.1b"><ci id="S3.T1.2.2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.2.1.1.2.1.1">English: {TRANSCRIPT}</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.9.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.9.5.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.9.5.1.1">Direct ST (IT)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.3.3.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.1.1">
<tr class="ltx_tr" id="S3.T1.3.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.3.3.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.3.3.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.3.3.1.1.1.1.1.m1.1"><semantics id="S3.T1.3.3.1.1.1.1.1.m1.1a"><mi id="S3.T1.3.3.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.3.3.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.1.1.1.1.m1.1b"><ci id="S3.T1.3.3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.3.3.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.3.3.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.3.3.1.1.2.1.1">TARGET_LANG: {TRANSLATION}</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.10.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.10.6.1.1">Multi-turn ST (IT)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.4.4.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.4.1.1">
<tr class="ltx_tr" id="S3.T1.4.4.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.4.4.1.1.1.1.1.m1.1"><semantics id="S3.T1.4.4.1.1.1.1.1.m1.1a"><mi id="S3.T1.4.4.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.4.4.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.1.1.1.1.m1.1b"><ci id="S3.T1.4.4.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.4.4.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.2.1.1">English:{TRANSCRIPT}</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.3.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.3.1.1">TARGET_LANG: {TRANSLATION}</span></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the different prompt formats used during the training process of the SPIRE model. It shows how the input (speech or text) and desired output (transcript or translation) are formatted for different tasks and training stages (Continued Pretraining (CPT) and Instruction Tuning (IT)).  The table is crucial for understanding the specifics of the multi-modal training approach and how speech is integrated with the existing text-based training data.
> <details>
> <summary>read the caption</summary>
> Table 1: Prompt formats used at different training stages.
> </details>





### In-depth insights


#### LLM Speech Boost
While "LLM Speech Boost" isn't a direct heading in the paper, the study inherently explores methods to enhance LLMs using speech data. Key areas involve **modality integration**, specifically adding speech to text-only LLMs. The core idea revolves around leveraging **speech discretization** and continued pre-training to adapt existing LLMs. A critical aspect is the pursuit of a balance, retaining the original LLM's textual capabilities while successfully integrating speech processing. The research aims to achieve superior ASR and ST performance without sacrificing MT capabilities. This suggests exploring strategies for efficient transfer learning and adaptation of existing models to incorporate speech data effectively. Ultimately, the goal is to **improve the LLM's performance on speech-related tasks** while preserving or even enhancing its existing capabilities.

#### Discrete Speech
The concept of **discrete speech** is crucial in bridging the gap between continuous audio signals and language models. Instead of directly feeding raw audio into models, discrete speech involves converting the audio into a sequence of **discrete units**. This is often achieved through techniques like vector quantization or clustering of acoustic features. The **benefits** include reduced computational complexity, easier integration with text-based models, and potentially improved robustness to noise. However, a key challenge is finding the right level of granularity for these discrete units. **Too coarse**, and information is lost; **too fine**, and the sequence becomes unwieldy. Recent research explores various methods for learning these discrete units in a self-supervised manner, allowing models to capture the underlying structure of speech without explicit phonetic labels.

#### CPT & IT Synergy
**Continued Pre-training (CPT)** followed by **Instruction Tuning (IT)** emerges as a powerful paradigm for adapting Large Language Models (LLMs) to new modalities, like speech, while preserving existing capabilities. CPT allows the model to learn fundamental representations of the new modality by treating discrete speech units as an additional language. IT then refines the model's understanding by exposing it to task-specific instructions, guiding it to perform ASR, ST and translation-related functions. The synergy lies in the staged approach: CPT provides the foundation, and IT hones the model's skills.

#### Text Task Kept
**Maintaining performance on text-based tasks** is a crucial aspect when augmenting Large Language Models (LLMs) with speech processing capabilities. The central concern is ensuring that the integration of speech data does not degrade the LLM's original strengths in understanding, generating, and manipulating text. This involves **careful design of the training regime**, including the selection of speech data, the method of integrating speech features, and the balancing of training objectives. If not done correctly, the adaptation process can lead to **catastrophic forgetting** or a shift in the model's capabilities, resulting in diminished performance on its original text-based tasks like translation, summarization, and question answering. It's important to implement strategies that prioritize **textual performance** while facilitating the acquisition of new speech-related skills.

#### Multiling. Path
Considering a 'Multiling. Path' for an LLM entails several crucial steps. It begins with data acquisition, requiring vast amounts of text and speech data in multiple languages, ensuring diversity and balanced representation. Models like **mHuBERT** are pivotal here. Next, model architecture must accommodate multilingual processing, which is typically achieved through shared embeddings or language-specific adapters. The choice of **training strategy** is key; options include joint training, transfer learning, and curriculum learning, each impacting performance differently. A critical aspect is evaluation, which necessitates benchmarks that accurately assess cross-lingual understanding and generation, mitigating bias. Finally, it's necessary to investigate methods of **model alignment**, to guarantee that the model displays equivalent levels of competence and generates consistent behavior across all supported languages.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.1.1.1.1.1.1.1">Speech:&lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.1.1.1.1.2.1.1">English: {TRANSCRIPT}</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the speech data used for training the SPIRE model.  It shows the source dataset for each portion of the training data (SPGI Speech, GigaSpeech, MLS, VoxPopuli, CommonVoice, Europarl-ST, FLEURS, and CoVOST-2). For each dataset, it lists the specific task (ASR or ST) it was used for, the phase of training (CPT or IT), the number of Discrete Speech Units (DSUs) used, the total training time in hours, and whether the data was used for training in the Continued Pretraining (CPT) or Instruction Tuning (IT) stages,  as well as whether the data was speech, text, or pseudo-labeled data.  The number of hours is an approximation based on the deduplicated number of DSUs.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics for the speech data used for training. Numbers of hours are approximated from the number of deduplicated DSUs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.7.3.1.1">
<tr class="ltx_tr" id="S3.T1.4.7.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.7.3.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.7.3.1.1.1.1.1">Source_lang: Source-sentence</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.7.3.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.7.3.1.1.2.1.1">Target_lang: {TRANSLATION}</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the different model variations used in the experiments.  It shows the base model each variant is built upon (TowerBase-7B, SpireBase), and indicates whether each model was trained using continued pre-training (CPT) with speech data, continued pre-training (CPT) with text-only data, instruction tuning (IT) with speech data, or instruction tuning (IT) with text-only data. This allows for a comparison of the impact of different training stages and data types on model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Our models and their variants, along with their base models. The CPT and IT columns indicate which data was seen during training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.1.1">
<tr class="ltx_tr" id="S3.T1.2.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.2.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.2.2.1.1.1.1.1.m1.1"><semantics id="S3.T1.2.2.1.1.1.1.1.m1.1a"><mi id="S3.T1.2.2.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.2.2.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.1.1.1.1.m1.1b"><ci id="S3.T1.2.2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.2.1.1.2.1.1">English: {TRANSCRIPT}</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Error Rate (WER) achieved by various Automatic Speech Recognition (ASR) models on four different test sets: LibriSpeech (clean and other), FLEURS, and VoxPopuli.  The models compared include established baselines (Whisper, SeamlessM4T, Spirit-LM, and a HuBERT-large+CTC model), and several variants of the SPIRE model, which is the focus of the paper.  This allows for a comparison of SPIRE's performance against existing state-of-the-art ASR systems, as well as an analysis of the impact of different training strategies (continued pre-training and instruction tuning) on SPIRE's ASR capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: WER on various ASR test sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.1.1">
<tr class="ltx_tr" id="S3.T1.3.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.3.3.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.3.3.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.3.3.1.1.1.1.1.m1.1"><semantics id="S3.T1.3.3.1.1.1.1.1.m1.1a"><mi id="S3.T1.3.3.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.3.3.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.1.1.1.1.m1.1b"><ci id="S3.T1.3.3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.3.3.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.3.3.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.3.3.1.1.2.1.1">TARGET_LANG: {TRANSLATION}</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the COMET-22 and spBLEU metrics on the FLORES devtest set.  The results compare the performance of the Tower and Spire models on machine translation tasks between English and other languages supported by both models.  It provides a detailed breakdown of the performance for each language pair, allowing for an in-depth comparison of the two models' translation capabilities across various language combinations.
> <details>
> <summary>read the caption</summary>
> Table 5: COMET-22 (C22) and spBLEU (spB) on the FLORES devtest set between English and the other languages supported by Tower And Spire.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.4.1.1">
<tr class="ltx_tr" id="S3.T1.4.4.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.1.1.1">Speech: &lt;extra_id_i&gt;<math alttext="\cdots" class="ltx_Math" display="inline" id="S3.T1.4.4.1.1.1.1.1.m1.1"><semantics id="S3.T1.4.4.1.1.1.1.1.m1.1a"><mi id="S3.T1.4.4.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.4.4.1.1.1.1.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.1.1.1.1.m1.1b"><ci id="S3.T1.4.4.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.4.4.1.1.1.1.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.1.1.1.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.1.1.1.1.m1.1d">⋯</annotation></semantics></math>&lt;extra_id_j&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.2.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.2.1.1">English:{TRANSCRIPT}</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.4.4.1.1.3.1"><span class="ltx_text ltx_font_typewriter" id="S3.T1.4.4.1.1.3.1.1">TARGET_LANG: {TRANSLATION}</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the COMET-22 and spBLEU metrics on the WMT23 test set for machine translation.  It compares the performance of various models, including the baseline TOWER models (TOWERBASE-7B and TOWERINSTRUCT-7B), the SeamlessM4T model, and different versions of the SPIRE model (TOWERFULL, SPIRENOBLOCKS, SPIRENOPSEUDO, SPIREBASE, and SPIREFULL).  These different SPIRE models represent variations in training data and methods, allowing for an analysis of the impact of various choices on MT performance.  The results are broken down by language pairs, providing a detailed comparison across different translation directions.
> <details>
> <summary>read the caption</summary>
> Table 6: COMET-22 (C22) and spBLEU (spB) on the WMT23 test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">Phase</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1"># DSUs</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.5.1"># Hours</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.1">SPGI Speech</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.2">ASR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.3">CPT</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.1.2.1.4">645M</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.1.2.1.5">5.1K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.1">Gigaspeech</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.2">ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.3">CPT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.3.2.4">1.2B</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.3.2.5">9.9K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.1">MLS</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.2">ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.3">CPT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.4.3.4">2.4B</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.4.3.5">19.2K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.1">VoxPopuli</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.2">ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.3">CPT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.5.4.4">69M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.5.4.5">0.5K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.5">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.1">CV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.2">ASR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.6.5.4">105M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.6.5.5">0.8K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.6">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.1">Europarl-ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.2">ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.7.6.4">122M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.7.6.5">1.0K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8.7">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.1">FLEURS</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.2">ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.8.7.4">11M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.8.7.5">0.09K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9.8">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.1">CoVoST-2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.2">ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.9.8.4">12M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.9.8.5">0.09K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10.9">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.1">SPGI Speech</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.2">Pseudo-ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.10.9.4">350M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.10.9.5">2.8K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11.10">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.1">GigaSpeech</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.2">Pseudo-ST</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.3">IT</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.11.10.4">161M</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.1.11.10.5">1.3K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12.11">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.12.11.1">CV</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.12.11.2">Pseudo-ST</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.12.11.3">IT</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.1.1.12.11.4">212M</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.1.1.12.11.5">1.7K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents the results of Speech Translation (ST) experiments on two datasets: FLEURS and CoVOST-2.  The experiments focus on English-to-X (en→xx) translations, where 'x' represents various other languages.  The table compares three approaches to ST: direct ST (translating audio directly to another language), self-cascaded ST (performing automatic speech recognition first, then translating the resulting text), and MT with gold-standard transcriptions (translating text that's already been perfectly transcribed).  The evaluation metrics used are COMET-22 (C22) and spBLEU (spB), which measure the quality of the translation.  The scores are averaged across all language pairs within each dataset and method.
> <details>
> <summary>read the caption</summary>
> Table 7: ST results on FLEURS and CoVoST-2 for en→→\rightarrow→xx reporting COMET-22 (C22) and spBLEU (spB) using direct ST (direct), self-cascaded ST (self-cascade), and MT from gold-transcriptions (gold). Scores are averaged over all language pairs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS0.SSS0.Px1.tab1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.2.1">Base Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.3">CPT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.SS0.SSS0.Px1.tab1.1.1.1.1.4">IT</td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2.1">Speech</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2.2">Text</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2.3">Speech</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2.4">Pseudo</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.2.2.5">Text</td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.1"><span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.1.1">TowerFull</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.2">TowerBase-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS0.SSS0.Px1.tab1.1.1.3.3.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.1"><span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.1.1" style="background-color:#E6E6FF;">SpireBase</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.2"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.2.1" style="background-color:#E6E6FF;">SpireBase</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.3"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.3.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.4"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.4.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.5"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.5.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.6"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.6.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.7"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.4.4.7.1" style="background-color:#E6E6FF;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5" style="background-color:#CCCCFF;">
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.1"><span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.1.1" style="background-color:#CCCCFF;">SpireFull</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.2"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.2.1" style="background-color:#CCCCFF;">SpireBase</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.3"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.3.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.4"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.4.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.5"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.5.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.6"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.6.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.7"><span class="ltx_text" id="S4.SS0.SSS0.Px1.tab1.1.1.5.5.7.1" style="background-color:#CCCCFF;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.6.6">
<td class="ltx_td ltx_align_center" colspan="7" id="S4.SS0.SSS0.Px1.tab1.1.1.6.6.1">
<span class="ltx_ERROR undefined" id="S4.SS0.SSS0.Px1.tab1.1.1.6.6.1.1">\hdashline</span>      <span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.6.6.1.2">Spire<span class="ltx_text ltx_font_italic" id="S4.SS0.SSS0.Px1.tab1.1.1.6.6.1.2.1"> Variants</span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7">
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.1">
<span class="ltx_ERROR undefined" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.1.1">\hdashline</span><span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.1.2">SpireNoBlocks</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.2">SpireBase</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.6">✓</td>
<td class="ltx_td ltx_align_center" id="S4.SS0.SSS0.Px1.tab1.1.1.7.7.7">✗</td>
</tr>
<tr class="ltx_tr" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.1"><span class="ltx_text ltx_font_smallcaps" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.1.1">SpireNoPseudo</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.2">SpireBase</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.6">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS0.SSS0.Px1.tab1.1.1.8.8.7">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the results of evaluating the SPIRE model on two translation-related tasks: Automatic Post-Editing (APE) and Named Entity Recognition (NER).  APE assesses the quality of translations after post-editing, using COMET-22 scores. NER measures the accuracy of identifying named entities, using sequence F1 scores. The table compares SPIRE's performance against the TOWERINSTRUCT and TOWERFULL models across multiple language pairs for APE and various languages for NER.  The results show that SPIRE achieves comparable performance to TOWERINSTRUCT and even outperforms TOWERFULL, indicating the effectiveness of the model's approach.
> <details>
> <summary>read the caption</summary>
> Table 8: Results on APE and NER reporting COMET-22 (↑↑\uparrow↑) and sequence F1 score (↑↑\uparrow↑) respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10620/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10620/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}