---
title: "Emilia: A Large-Scale, Extensive, Multilingual, and Diverse Dataset for Speech Generation"
summary: "Emilia-Pipe and its resulting datasets, Emilia and Emilia-Large, offer the largest open-source, multilingual speech corpus, enabling more natural and spontaneous AI speech generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Text-to-Speech", "🏢 Chinese University of Hong Kong, Shenzhen",]
showSummary: true
date: 2025-01-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.15907 {{< /keyword >}}
{{< keyword icon="writer" >}} Haorui He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.15907" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.15907" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.15907/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current speech generation models struggle to capture the spontaneity and variability of real-world human speech due to reliance on limited, formal datasets.  This reliance hinders progress in creating truly natural-sounding AI voices.  Addressing this challenge requires more diverse and extensive training data.

This paper introduces Emilia-Pipe, an open-source preprocessing pipeline designed to extract high-quality speech data from vast amounts of in-the-wild audio. Using this pipeline, the researchers created Emilia and Emilia-Large, two multilingual speech datasets encompassing over 216,000 hours of speech across six languages.  The results show that these datasets significantly improve the quality and naturalness of AI-generated speech compared to models trained on traditional datasets.  This work offers a valuable resource to researchers looking to improve speech synthesis capabilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Emilia and Emilia-Large are the largest open-source multilingual speech datasets, exceeding 216k hours of data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Emilia-Pipe preprocessing pipeline efficiently handles large-scale multilingual, in-the-wild data, improving dataset creation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate that Emilia outperforms traditional datasets in generating spontaneous and human-like speech. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it addresses the **limitations of current speech generation models** by creating a **massive, multilingual dataset** (Emilia and Emilia-Large) with **diverse and spontaneous speech**.  This resource will significantly advance research, enabling the development of more **natural and human-like speech synthesis**. It also opens avenues for **investigating data scaling laws and cross-lingual speech generation techniques.**

------
#### Visual Insights



![](https://arxiv.org/html/2501.15907/x1.png)

> 🔼 The Emilia-Pipe pipeline processes raw in-the-wild speech data to create a high-quality dataset for training speech generation models.  It begins with standardization of the input audio to a consistent format.  Next, source separation isolates human speech from background noise and music. Speaker diarization then separates speech from multiple speakers. Fine-grained segmentation using voice activity detection (VAD) further divides the audio into shorter, manageable segments. Automated speech recognition (ASR) transcribes the speech segments into text. Finally, a filtering step removes low-quality segments based on criteria such as language, DNSMOS score (objective speech quality score), and average character duration.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of the Emilia-Pipe processing pipeline. It consists of six steps, namely, standardization, source separation, speaker diarization, fine-grained segmentation by voice activity detection (VAD), automated speech recognition (ASR), and filtering.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.4.1">
<tr class="ltx_tr" id="S1.T1.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.2.1">Data Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.3.1">Total Duration (hours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.4.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.5"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.5.1">Samp. Rate (Hz)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.4.1.1.6"><span class="ltx_text ltx_font_bold" id="S1.T1.4.1.1.6.1">Dynamic</span></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.4.1.1.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.2.1">LJSpeech <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib17" title="">17</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.2.2">Audiobook</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.2.3">24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.2.4">En</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.2.5">22.05k</td>
<td class="ltx_td ltx_border_t" id="S1.T1.4.1.2.6"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.4.1.2.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.3">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.1">AutoPrepWild <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib12" title="">12</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.2">In-the-wild</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.3">39</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.4">Zh</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.5">24k/44.1k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.3.6">✓(Proprietary)</td>
<td class="ltx_td" id="S1.T1.4.1.3.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.4">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.4.1">VCTK <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.4.2">Studio Recording</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.4.3">44</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.4.4">En</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.4.5">48k</td>
<td class="ltx_td" id="S1.T1.4.1.4.6"></td>
<td class="ltx_td" id="S1.T1.4.1.4.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.5">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.5.1">AISHELL-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib19" title="">19</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.5.2">Studio Recording</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.5.3">85</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.5.4">Zh</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.5.5">44.1k</td>
<td class="ltx_td" id="S1.T1.4.1.5.6"></td>
<td class="ltx_td" id="S1.T1.4.1.5.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.6">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.6.1">LibriTTS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.6.2">Audiobook</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.6.3">585</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.6.4">En</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.6.5">24k</td>
<td class="ltx_td" id="S1.T1.4.1.6.6"></td>
<td class="ltx_td" id="S1.T1.4.1.6.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.7">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.7.1">GigaSpeech <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.7.2">In-the-wild</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.7.3">10k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.7.4">En</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.7.5">16k</td>
<td class="ltx_td" id="S1.T1.4.1.7.6"></td>
<td class="ltx_td" id="S1.T1.4.1.7.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.8">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.1">WenetSpeech4TTS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib13" title="">13</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.2">In-the-wild</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.3">12k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.4">Zh</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.5">16k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.8.6">✓(Proprietary)</td>
<td class="ltx_td" id="S1.T1.4.1.8.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.9">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.9.1">Libri-Heavy <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib22" title="">22</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.9.2">Audiobook</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.9.3">50k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.9.4">En</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.9.5">16k</td>
<td class="ltx_td" id="S1.T1.4.1.9.6"></td>
<td class="ltx_td" id="S1.T1.4.1.9.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.10">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.10.1">MLS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.10.2">Audiobook</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.10.3">51k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.10.4">En/Fr/De/Nl/Es/It/Pt/Pl</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.10.5">16k</td>
<td class="ltx_td" id="S1.T1.4.1.10.6"></td>
<td class="ltx_td" id="S1.T1.4.1.10.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.11">
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.11.1">Libri-Light <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.11.2">Audiobook</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.11.3">60k</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.11.4">En</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.1.11.5">16k</td>
<td class="ltx_td" id="S1.T1.4.1.11.6"></td>
<td class="ltx_td" id="S1.T1.4.1.11.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.1">Emilia</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.2">In-the-wild</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.3">101k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.4">En/Zh/De/Fr/Ja/Ko</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.5">24k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.1.12.6">✓</td>
<td class="ltx_td ltx_border_t" id="S1.T1.4.1.12.7"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.1">Emilia-Large</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.2">In-the-wild</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.3">216k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.4">En/Zh/De/Fr/Ja/Ko</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.5">24k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.4.1.13.6">✓</td>
<td class="ltx_td ltx_border_bb" id="S1.T1.4.1.13.7"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the Emilia and Emilia-Large speech generation datasets with other existing datasets.  It shows key characteristics such as the data source (e.g., audiobooks, in-the-wild recordings), total duration in hours, the number of languages included, sample rate, and whether the dataset creation involved a proprietary dynamic pipeline.  This allows for a quantitative comparison of dataset size, scope, and characteristics, highlighting the relative strengths and limitations of each.
> <details>
> <summary>read the caption</summary>
> TABLE I: A comparison of Emilia and Emilia-Large datasets with existing datasets for speech generation.
> </details>





### In-depth insights


#### Emilia-Pipe Pipeline
The Emilia-Pipe pipeline is a crucial contribution of the research, addressing the critical need for an efficient and open-source method to process large-scale, multilingual in-the-wild speech data.  Its six core steps—**standardization, source separation, speaker diarization, fine-grained segmentation (VAD), ASR, and filtering**—demonstrate a comprehensive approach to data cleaning and preparation.  The pipeline's **multilingual capabilities** are particularly noteworthy, overcoming limitations of previous, monolingual pipelines.  Its **open-source nature** fosters wider accessibility and collaborative improvements, which is essential for advancing the field.  Furthermore, **optimization for efficiency** is highlighted, emphasizing the scalability and practicality of the pipeline for processing vast datasets, ultimately enabling the creation of Emilia and Emilia-Large. The pipeline's impact extends beyond the datasets' creation; its open availability and effectiveness potentially accelerate progress in speech generation research globally.

#### Dataset Construction
The creation of the Emilia speech dataset is a multi-stage process, beginning with the development of Emilia-Pipe, a novel and open-source preprocessing pipeline.  **Emilia-Pipe is crucial**, as it addresses the challenges of using raw, in-the-wild data by incorporating standardization, source separation, speaker diarization, voice activity detection, automated speech recognition (ASR), and filtering steps. This pipeline is designed for efficiency and scalability, enabling the creation of a significantly large dataset.  The dataset is extensive, multilingual (English, Chinese, German, French, Japanese, Korean), and importantly, diverse, containing spontaneous speech reflecting real-world variability.  **The incorporation of spontaneous speech** differentiates Emilia from previous datasets largely based on formal, read-aloud audio-books. **The expansion to Emilia-Large**, exceeding 216k hours of speech, showcases the scalability of Emilia-Pipe and further enhances the dataset's value for research.  The careful design and rigorous processing steps ensure high-quality data suitable for training sophisticated speech generation models.

#### Data Scaling Laws
The concept of "Data Scaling Laws" in the context of speech generation research explores the relationship between the size of a training dataset and the performance of the resulting model.  **Larger datasets generally lead to improved model performance**, but this improvement follows a pattern of diminishing returns.  Initial gains are significant with moderate dataset size increases, showcasing substantial performance enhancements. However, **as the dataset size grows substantially, the performance improvements become less pronounced**, eventually reaching a point of convergence where further data expansion yields minimal added benefit.  This observation highlights the importance of **finding an optimal balance between dataset size and computational resources**.  Excessively large datasets, while potentially beneficial,  can incur significant computational costs and might not justify the marginal gains in model performance.  Therefore, understanding these scaling laws is crucial for researchers to make informed decisions about dataset size, resource allocation, and the overall efficiency of speech generation research.

#### Multilingual Analysis
A multilingual analysis of a speech generation dataset would involve a multifaceted investigation.  It would necessitate **comparing the performance of speech generation models across multiple languages**, examining how well models trained on one language generalize to others.  Furthermore, this would involve a detailed analysis of the dataset itself; checking for **potential biases or imbalances in representation across different languages**. This would include evaluating the quantity, quality, diversity of accents and dialects, as well as the overall linguistic features of the data within each language.   A key consideration would be determining whether models trained on a resource-rich language adequately translate their performance to low-resource languages.  The analysis would also need to address whether the model's ability to accurately capture nuances such as pronunciation, intonation, and rhythm is consistent across all languages. Ultimately, a robust multilingual analysis is crucial to **assess the fairness, inclusivity, and generalizability of speech generation models**, especially when considering application in diverse global communities.

#### Future Directions
Future research should prioritize expanding the Emilia dataset to encompass a wider range of languages and demographics, **enhancing its diversity and global applicability**.  Addressing the limitations of the current speaker diarization and separation techniques is crucial to improve the quality of the processed data.  Investigating the effect of different audio durations on speech generation performance is important, **potentially optimizing the pipeline for longer or shorter segments**. Furthermore, exploring advanced strategies to mitigate the performance gap in cross-lingual speech generation is necessary.  Finally, **researching robust methods to detect and filter out synthetic or manipulated speech** within in-the-wild datasets is vital for the trustworthiness and reliability of future speech generation models.  This combined approach would lead to more robust and versatile speech generation models, overcoming the current limitations and propelling the field forward.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.15907/extracted/6158378/figures/pca_clustering_acoustic_00.png)

> 🔼 This figure shows a pie chart visualizing the distribution of languages in the Emilia dataset.  Each slice of the pie represents a different language (English, Chinese, German, French, Japanese, Korean), with its size proportional to the amount of speech data available for that language.  It provides a clear visual representation of the multilingual nature of the dataset and the relative proportion of each language.
> <details>
> <summary>read the caption</summary>
> (a) Emilia
> </details>



![](https://arxiv.org/html/2501.15907/extracted/6158378/figures/pca_clustering_semantic.png)

> 🔼 The pie chart visualizes the distribution of speech data across six languages within the Emilia-Large dataset.  It shows the relative proportion of each language (English, Chinese, German, French, Japanese, Korean) in the dataset, highlighting the relative abundance of each language.  The sizes of the slices directly correspond to the amount of data available for each language. This allows for a quick visual comparison of the dataset's multilingual balance.
> <details>
> <summary>read the caption</summary>
> (b) Emilia-Large
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.4.1">
<tr class="ltx_tr" id="S3.T2.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.2.1">Duration (s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.3.1">DNSMOS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.4.1">Total Duration (hours)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.1.1">min</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.2.1">max</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.3.1">avg ± std</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.4.1">min</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.5"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.5.1">max</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.6.1">avg ± std</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.1">Raw</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.2">9.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.3">18,056.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.4">1,572.53 ± 1,966.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.5">1.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.6">3.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.7">2.50 ± 0.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.3.8">598.87 (100.00%)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.4">
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.1">Processed w/o Filtering</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.2">1.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.3">30.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.4">7.18 ± 5.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.5">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.6">3.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.7">2.86 ± 0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.8">340.54 (56.86%)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.1">Processed</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.2">3.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.3">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.4">8.98 ± 4.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.5">3.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.6">3.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.7">3.26 ± 0.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.1.5.8">176.22 (29.43%)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical analysis of 600 hours of raw, in-the-wild speech data before and after processing with the Emilia-Pipe.  It shows the minimum, maximum, and average duration of speech segments (in seconds), along with their standard deviations.  Furthermore, it details the distribution of  DNSMOS (Deep Neural Network-based objective speech quality metric) scores, indicating the perceived quality of the speech segments before and after processing. Finally, it provides the total duration of speech data retained after each stage of processing. This data quantifies the effect of Emilia-Pipe in enhancing the quality and usability of raw, in-the-wild speech data.
> <details>
> <summary>read the caption</summary>
> TABLE II: Statistics of 600 hours of in-the-wild raw speech data processed by Emilia-Pipe.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tr class="ltx_tr" id="S4.T3.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.2.1">DNSMOS</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.1">LJSpeech <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib17" title="">17</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2">3.30 ± 0.17</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3">
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.1">AutoPrepWild <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib12" title="">12</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.2">3.24 ± 0.21</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.1">VCTK <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2">3.20 ± 0.18</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5">
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.1">AISHELL-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib19" title="">19</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.2">3.15 ± 0.17</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6">
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.1">LibriTTS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2">3.25 ± 0.19</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7">
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.1">GigaSpeech <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.2">2.52 ± 0.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8">
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.1">WenetSpeech4TTS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib13" title="">13</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.2">3.18 ± 0.22</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9">
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.1">MLS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.9.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.9.2.1">3.33 ± 0.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10">
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.1">Libri-Light <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.15907v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.2">3.25 ± 0.26</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.11.1">Emilia</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.11.2">3.26 ± 0.14</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table III presents a comparison of the speech quality, as measured by the DNSMOS score, across ten speech datasets.  It highlights the relative quality of Emilia compared to other datasets, including both audiobook-based datasets (like LibriTTS and Libri-Light) and those derived from in-the-wild recordings (like AutoPrepWild). Note that for certain datasets (Libri-Light and WenetSpeech4TTS), scores are from specific subsets, and for Emilia and MLS, scores are based on a randomly chosen 600-hour subset to ensure a fair comparison. This allows for a clear understanding of Emilia's quality relative to existing options, showing how its quality compares to both audiobook and in-the-wild datasets.
> <details>
> <summary>read the caption</summary>
> TABLE III: Quality comparison between Emilia and nine existing datasets. The scores for LJSpeech, AutoPrepWild, AISHELL-3, and LibriTTS are derived from [12]. The score for Libri-Light is computed from its official ”small” subset, and the score for WenetSpeech4TTS is computed from its official “basic” subset. The scores for MLS and Emilia are computed from a randomly sampled 600-hour subset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.10">
<tr class="ltx_tr" id="S5.T4.10.11">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.10.11.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.10.11.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.10.11.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.10.11.2.1">Training Set</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T4.10.11.3"><span class="ltx_text ltx_font_bold" id="S5.T4.10.11.3.1">LibriSpeech-Test</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T4.10.11.4"><span class="ltx_text ltx_font_bold" id="S5.T4.10.11.4.1">Emilia-Test</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1">WER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.1">S-SIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><ci id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.1">FSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mo id="S5.T4.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><ci id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.1">CMOS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mo id="S5.T4.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><ci id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.1">SMOS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.1.m1.1"><semantics id="S5.T4.5.5.5.1.m1.1a"><mo id="S5.T4.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.1.m1.1b"><ci id="S5.T4.5.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.6"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.1">WER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.1.m1.1"><semantics id="S5.T4.6.6.6.1.m1.1a"><mo id="S5.T4.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.1.m1.1b"><ci id="S5.T4.6.6.6.1.m1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.7"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.1">S-SIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.7.7.7.1.m1.1"><semantics id="S5.T4.7.7.7.1.m1.1a"><mo id="S5.T4.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T4.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.1.m1.1b"><ci id="S5.T4.7.7.7.1.m1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.8.8"><span class="ltx_text ltx_font_bold" id="S5.T4.8.8.8.1">FSD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.8.8.8.1.m1.1"><semantics id="S5.T4.8.8.8.1.m1.1a"><mo id="S5.T4.8.8.8.1.m1.1.1" stretchy="false" xref="S5.T4.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.8.1.m1.1b"><ci id="S5.T4.8.8.8.1.m1.1.1.cmml" xref="S5.T4.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.9.9.9"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.9.1">CMOS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.9.9.9.1.m1.1"><semantics id="S5.T4.9.9.9.1.m1.1a"><mo id="S5.T4.9.9.9.1.m1.1.1" stretchy="false" xref="S5.T4.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.9.1.m1.1b"><ci id="S5.T4.9.9.9.1.m1.1.1.cmml" xref="S5.T4.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.10.10"><span class="ltx_text ltx_font_bold" id="S5.T4.10.10.10.1">SMOS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.10.10.10.1.m1.1"><semantics id="S5.T4.10.10.10.1.m1.1a"><mo id="S5.T4.10.10.10.1.m1.1.1" stretchy="false" xref="S5.T4.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.10.10.10.1.m1.1b"><ci id="S5.T4.10.10.10.1.m1.1.1.cmml" xref="S5.T4.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.1" rowspan="2"><span class="ltx_text" id="S5.T4.10.12.1.1">AR+SoundStorm</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.2">MLS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.3">8.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.4"><span class="ltx_text ltx_font_bold" id="S5.T4.10.12.4.1">0.612</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.5">49.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.6">-0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.7">3.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.8">7.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.9">0.587</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.10">20.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.11">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.12.12">3.71</td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.13">
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.1">Emilia-En</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.2"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.2.1">8.4%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.3">0.577</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.4"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.4.1">24.73</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.5"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.5.1">-0.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.6"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.6.1">3.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.7"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.7.1">6.6%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.8"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.8.1">0.618</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.9"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.9.1">12.73</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.10"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.10.1">0.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.13.11"><span class="ltx_text ltx_font_bold" id="S5.T4.10.13.11.1">3.73</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.10.14.1" rowspan="2"><span class="ltx_text" id="S5.T4.10.14.1.1">VoiceBox</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.2">MLS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.3"><span class="ltx_text ltx_font_bold" id="S5.T4.10.14.3.1">6.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.4"><span class="ltx_text ltx_font_bold" id="S5.T4.10.14.4.1">0.625</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.5"><span class="ltx_text ltx_font_bold" id="S5.T4.10.14.5.1">16.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.6">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.7">3.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.8">8.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.9">0.528</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.10">15.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.11"><span class="ltx_text ltx_font_bold" id="S5.T4.10.14.11.1">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.10.14.12">3.61</td>
</tr>
<tr class="ltx_tr" id="S5.T4.10.15">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.1">Emilia-En</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.2">7.2%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.3">0.585</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.4">23.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.5"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.5.1">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.6"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.6.1">3.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.7"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.7.1">7.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.8"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.8.1">0.601</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.9"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.9.1">14.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.10"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.10.1">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.10.15.11"><span class="ltx_text ltx_font_bold" id="S5.T4.10.15.11.1">3.76</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table IV presents a detailed comparison of the performance of two state-of-the-art text-to-speech (TTS) models, AR+SoundStorm and VoiceBox, trained on two different datasets: Emilia-En (English subset of the Emilia dataset) and MLS (an audiobook dataset).  The models' performance is evaluated using both objective and subjective metrics on two distinct test sets: LibriSpeech-Test, containing formal read-aloud speech, and Emilia-Test, featuring more spontaneous, human-like speech.  Objective metrics include Word Error Rate (WER), Speaker Similarity Score (S-SIM), and Fréchet Speech Distance (FSD). Subjective metrics comprise Speaker Mean Opinion Score (SMOS) and Comparative Mean Opinion Score (CMOS).  The table highlights the best-performing model for each metric in bold, allowing for a direct comparison of the models' abilities to generate high-quality speech in both formal and spontaneous contexts.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Objective and subjective evaluation results of TTS models trained with Emilia-En and MLS on LibriSpeech-Test and Emilia-Test evaluation sets. The best results for each model are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.1">
<tr class="ltx_tr" id="S5.T5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1" rowspan="2"><span class="ltx_text ltx_nopad" id="S5.T5.1.1.1.1">
<svg height="21.76" overflow="visible" version="1.1" width="116.54"><g transform="translate(0,21.76) scale(1,-1)"><path d="M 0,21.76 116.54,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="58.27">
<span class="ltx_inline-block" id="S5.T5.1.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S5.T5.1.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S5.T5.1.1.1.1.pic1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.pic1.1.1.1.1.1">Reference</span></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(76.91,9.61)"><g transform="translate(0,12.15) scale(1, -1)"><foreignobject height="12.15" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S5.T5.1.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S5.T5.1.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S5.T5.1.1.1.1.pic1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.pic1.2.1.1.1.1">Target</span></span>
</span>
</span></foreignobject></g></g></g></svg></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S5.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1">AR+SoundStorm</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S5.T5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.1">VoiceBox</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.1.1">En</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.2.1">Zh</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.3.1">Fr</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.4.1">De</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.5.1">Ja</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.6.1">Ko</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.7.1">En</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.8.1">Zh</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.9"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.9.1">Fr</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.10"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.10.1">De</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.11"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.11.1">Ja</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.12"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.12.1">Ko</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.3">
<td class="ltx_td ltx_border_t" id="S5.T5.1.3.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.3.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.3" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.3.3.1" style="background-color:#DFDFDF;">5.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.4">5.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.5">6.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.6">5.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.7">6.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.9" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.3.9.1" style="background-color:#DFDFDF;">6.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.10">7.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.11">8.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.12">8.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.13">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.14">10.2%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.4">
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.4.1.1">En</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.4.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.3" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.4.3.1" style="background-color:#DFDFDF;">0.568</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.4">0.431</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.5">0.452</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.6">0.529</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.7">0.446</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.8">0.443</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.9" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.4.9.1" style="background-color:#DFDFDF;">0.588</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.10">0.386</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.11">0.458</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.12">0.490</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.13">0.425</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.14">0.442</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.5">
<td class="ltx_td" id="S5.T5.1.5.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.5.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.3" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.5.3.1" style="background-color:#DFDFDF;">24.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4">99.40</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.5">82.84</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.6">26.62</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.7">89.40</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.8">98.36</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.9" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.5.9.1" style="background-color:#DFDFDF;">24.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.10">91.29</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.11">78.53</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.12">68.62</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.13">92.54</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.14">89.49</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.6">
<td class="ltx_td ltx_border_t" id="S5.T5.1.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.6.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.3">5.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.4" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.6.4.1" style="background-color:#DFDFDF;">3.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.5">5.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.6">5.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.7">4.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.8">5.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.9">8.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.10" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.6.10.1" style="background-color:#DFDFDF;">5.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.11">6.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.12">5.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.13">6.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.14">7.0%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.7">
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.7.1.1">Zh</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.7.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.3">0.507</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.4" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.7.4.1" style="background-color:#DFDFDF;">0.511</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.5">0.509</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.6">0.504</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.7">0.516</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.8">0.523</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.9">0.524</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.10" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.7.10.1" style="background-color:#DFDFDF;">0.557</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.11">0.524</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.12">0.522</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.13">0.543</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.14">0.591</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.8">
<td class="ltx_td" id="S5.T5.1.8.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.8.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.3">56.15</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.4" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.8.4.1" style="background-color:#DFDFDF;">40.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.5">56.75</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.6">57.10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.7">56.71</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.8">52.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.9">109.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.10" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.8.10.1" style="background-color:#DFDFDF;">40.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.11">58.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.12">72.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.13">64.73</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.8.14">57.90</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.9">
<td class="ltx_td ltx_border_t" id="S5.T5.1.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.9.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.3">5.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.4">5.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.5" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.9.5.1" style="background-color:#DFDFDF;">5.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.6">5.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.7">5.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.8">8.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.9">7.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.10">6.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.11" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.9.11.1" style="background-color:#DFDFDF;">5.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.12">6.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.13">7.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.9.14">9.3%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.10">
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.10.1.1">Fr</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.10.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.3">0.596</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.4">0.527</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.5" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.10.5.1" style="background-color:#DFDFDF;">0.596</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.6">0.596</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.7">0.572</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.8">0.557</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.9">0.565</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.10">0.485</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.11" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.10.11.1" style="background-color:#DFDFDF;">0.589</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.12">0.582</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.13">0.547</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.10.14">0.556</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.11">
<td class="ltx_td" id="S5.T5.1.11.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.11.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.3">39.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.4">66.21</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.5" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.11.5.1" style="background-color:#DFDFDF;">39.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.6">38.48</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.7">51.13</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.8">54.41</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.9">91.08</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.10">80.76</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.11" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.11.11.1" style="background-color:#DFDFDF;">42.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.12">58.16</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.13">63.36</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.11.14">61.51</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.12">
<td class="ltx_td ltx_border_t" id="S5.T5.1.12.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.12.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.3">4.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.4">4.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.5">4.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.6" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.12.6.1" style="background-color:#DFDFDF;">4.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.7">4.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.8">6.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.9">5.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.10">7.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.11">6.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.12" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.12.12.1" style="background-color:#DFDFDF;">5.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.13">6.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.12.14">8.9%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.13">
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.13.1.1">De</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.13.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.3">0.619</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.4">0.545</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.5">0.603</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.6" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.13.6.1" style="background-color:#DFDFDF;">0.639</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.7">0.596</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.8">0.591</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.9">0.639</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.10">0.519</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.11">0.577</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.12" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.13.12.1" style="background-color:#DFDFDF;">0.683</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.13">0.538</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.13.14">0.586</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.14">
<td class="ltx_td" id="S5.T5.1.14.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.14.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.3">39.96</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.4">57.82</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.5">44.86</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.6" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.14.6.1" style="background-color:#DFDFDF;">33.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.7">53.38</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.8">55.12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.9">83.37</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.10">72.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.11">54.77</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.12" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.14.12.1" style="background-color:#DFDFDF;">34.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.13">67.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.14.14">67.46</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.15">
<td class="ltx_td ltx_border_t" id="S5.T5.1.15.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.15.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.3">4.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.4">4.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.5">4.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.6">4.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.7" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.15.7.1" style="background-color:#DFDFDF;">4.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.8">6.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.9">7.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.10">5.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.11">6.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.12">6.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.13" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.15.13.1" style="background-color:#DFDFDF;">6.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.15.14">6.6%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.16">
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.16.1.1">Ja</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.16.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.3">0.622</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.4">0.557</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.5">0.626</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.6">0.618</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.7" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.16.7.1" style="background-color:#DFDFDF;">0.641</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.8">0.633</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.9">0.556</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.10">0.525</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.11">0.521</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.12">0.557</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.13" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.16.13.1" style="background-color:#DFDFDF;">0.584</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.16.14">0.596</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.17">
<td class="ltx_td" id="S5.T5.1.17.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.17.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.3">49.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.4">68.70</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.5">44.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.6">50.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.7" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.17.7.1" style="background-color:#DFDFDF;">44.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.8">52.19</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.9">103.68</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.10">76.65</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.11">63.55</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.12">72.41</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.13" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.17.13.1" style="background-color:#DFDFDF;">44.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.17.14">56.34</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.18">
<td class="ltx_td ltx_border_t" id="S5.T5.1.18.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.18.2.1">WER</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.3">6.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.4">4.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.5">6.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.6">6.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.7">6.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.8" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.18.8.1" style="background-color:#DFDFDF;">6.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.9">8.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.10">5.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.11">7.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.12">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.13">5.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.18.14" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.18.14.1" style="background-color:#DFDFDF;">6.0%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.19">
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.19.1.1">Ko</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.19.2.1">S-SIM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.3">0.657</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.4">0.593</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.5">0.665</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.6">0.656</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.7">0.673</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.8" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.19.8.1" style="background-color:#DFDFDF;">0.673</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.9">0.589</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.10">0.567</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.11">0.545</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.12">0.597</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.13">0.595</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.19.14" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.19.14.1" style="background-color:#DFDFDF;">0.648</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.20">
<td class="ltx_td ltx_border_bb" id="S5.T5.1.20.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.2"><span class="ltx_text ltx_font_italic" id="S5.T5.1.20.2.1">FSD</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.3">36.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.4">58.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.5">32.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.6">37.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.7">31.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.8" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.20.8.1" style="background-color:#DFDFDF;">30.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.9">86.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.10">63.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.11">53.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.12">57.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.13">52.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.20.14" style="background-color:#DFDFDF;"><span class="ltx_text" id="S5.T5.1.20.14.1" style="background-color:#DFDFDF;">38.82</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table V presents the multilingual and cross-lingual speech generation performance of two state-of-the-art models, AR+SoundStorm and VoiceBox, trained using the Emilia-Large dataset.  The table displays metrics such as Word Error Rate (WER), Speaker Similarity (S-SIM), and Fréchet Speech Distance (FSD) for six different languages (English, Chinese, German, French, Japanese, Korean).  Results are shown for both multilingual scenarios (same source and target language) and cross-lingual scenarios (different source and target languages).  Multilingual results are highlighted in gray for easy identification.
> <details>
> <summary>read the caption</summary>
> TABLE V: Experimental results of AR+SoundStorm and VoiceBox for multilingual and crosslingual speech generation. The models were trained on the Emilia-Large dataset. Results for multilingual speech generation are highlighted in grey.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.15907/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15907/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}