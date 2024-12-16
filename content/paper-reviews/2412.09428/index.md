---
title: "Multimodal Music Generation with Explicit Bridges and Retrieval Augmentation"
summary: "VMB generates music from videos, images, and text, using description and retrieval bridges to improve quality and controllability."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 University of Edinburgh",]
showSummary: true
date: 2024-12-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.09428 {{< /keyword >}}
{{< keyword icon="writer" >}} Baisen Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.09428" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.09428" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/multimodal-music-generation-with-explicit" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.09428/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating music from videos, images, and text (multimodal music generation) is an exciting area.  However, it faces challenges due to limited data, aligning different modalities (like visuals and sound), and difficulty in controlling aspects of the generated music. Existing methods struggle to create high-quality music that accurately reflects the input modalities. It also lacks fine-grained control, limiting users from customizing attributes like instruments, or rhythm.

This paper introduces a new method called Visuals Music Bridge (VMB).  It converts visual input into detailed text descriptions, which act as a bridge to the music.  VMB also incorporates retrieved music pieces – relevant to the scene – by using two retrieval strategies:  broad thematic matching for global coherence and targeted attribute retrieval for specific controls (like tempo).  These retrieved pieces, along with the textual descriptions, serve as another bridge.  Finally, it utilizes these combined bridges to generate the music. It sets a new standard for **high-quality, controllable, and interpretable multimodal music generation**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VMB uses explicit text and music bridges to enhance multimodal music alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dual-track retrieval combines broad thematic and targeted attribute matching for music selection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VMB improves music quality, modality alignment, and user controllability in generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This research is crucial for researchers in multimodal music generation and multimedia.**  It introduces a novel approach using explicit bridges – **textual descriptions and retrieved music – to improve the quality and controllability of generated music**.  This method offers a robust way to handle data scarcity and weak cross-modal alignment, common issues in the field.  Furthermore, it opens new avenues for research in **interpretable and controllable multimodal generation**, potentially impacting various multimedia applications like video game soundtracks and personalized music experiences.

------
#### Visual Insights



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/framework.png)

> 🔼 The VMB framework uses text and music as explicit bridges to enhance multimodal music generation.  The process starts with the Multimodal Music Description model, which takes multimodal inputs (like images or videos) and converts them into detailed text descriptions of music.  Simultaneously, the Dual-Track Music Retrieval module retrieves relevant music pieces from a database, serving as a musical reference. These text and music components are then fed into the Explicitly Conditioned Music Generation module, which uses this information to synthesize the final musical output.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the VMB framework. We employ text and music as two explicit bridges for multimodal music generation. Text-form music description is obtained with the Multimodal Music Description model. Reference music is retrieved with the Dual-track Music Retrieval module. The two bridges are fed into the Explicitly Conditioned Music Generation module to generate output music.
> </details>





{{< table-caption >}}
| Method | Inference Time | KL<sub>*passt*</sub>↓ | FD<sub>*openl3*</sub>↓ | IB↑ | MP | EC | TC | RC |
|---|---|---|---|---|---|---|---|---| 
| CMT [13] | ~3 min | 52.76 | 269.63 | 8.54 | 3.19 | 2.81 | 2.79 | 3.10 |
| Video2music [26] | ~1 min | 103.56 | 533.46 | 5.26 | 3.05 | 2.58 | 2.64 | 2.67 |
| VidMuse [51] | ~13 min | 56.48 | 187.13 | **22.09** | 3.01 | 2.91 | 3.05 | 3.02 |
| M<sup>2</sup>UGen [34] | ~40 s | 60.41 | 180.72 | 15.58 | 2.84 | 2.32 | 2.37 | 2.71 |
| VMB (ours) | ~20 s | **48.84** | **105.84** | 21.62 | **3.85** | **3.36** | **3.38** | **3.62 |{{< /table-caption >}}

> 🔼 This table presents a comparison of various video-to-music generation models, evaluated on the SymMV dataset. The metrics used for evaluation include objective measures such as KLpasst, FDopenl3, and ImageBind score (IB), as well as subjective metrics like Musical Pleasantness (MP), Emotional Correspondence (EC), Thematic Correspondence (TC), and Rhythmic Correspondence (RC).  Lower scores for KLpasst and FDopenl3 are better, indicating higher quality and closer alignment to real music. Higher scores are generally preferred for the other metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Video-to-music generation performance on SymMV dataset. Up/down arrows indicate the desired direction for improvement.
> </details>





### In-depth insights


#### Bridging Modalities
**Bridging modalities** is crucial for effective multimodal music generation.  This involves aligning different input forms like text, images, and videos with the desired musical output.  A key challenge lies in capturing the subtle emotional and thematic nuances conveyed by each modality and translating them into a coherent musical expression.  Effectively bridging this gap requires a deep understanding of both the input modalities and the intricacies of music composition.  One approach is using **explicit bridges**, such as converting visual inputs into detailed textual descriptions and incorporating music retrieval techniques to leverage existing musical knowledge.  These bridges provide a more direct link between modalities, enhancing the model's ability to generate music that accurately reflects the input's emotional and thematic content.

#### Dual Retrieval Power
**Dual retrieval** significantly enhances multimodal music generation. Combining **broad thematic retrieval** with **targeted attribute retrieval** leverages diverse musical elements for nuanced output.  Broad retrieval establishes a **global coherence** by aligning retrieved music with the overall emotional tone and theme. Targeted retrieval allows **fine-grained control**, enabling users to manipulate specific musical attributes. This synergy overcomes the limitations of solely relying on text descriptions and enhances the **quality**, **modality alignment**, and **customizability** of generated music.  The interplay of global coherence and granular control unlocks the potential for producing **diverse** and **expressive** music that resonates with the nuanced aspects of multimedia content.

#### Explicit Music Control
**Explicit music control** empowers users to shape generated music by manipulating specific attributes. This fine-grained control enhances **customization**, enabling users to tailor musical elements like **genre, tempo, mood, and instrumentation**. By offering direct control over these attributes, the system moves beyond simply responding to input prompts, allowing for a deeper level of **creative expression** and **personalization**. This shift represents a significant advancement in multimodal music generation, transitioning from reactive generation to **proactive creation**. This level of control is particularly crucial for applications in fields like **film scoring, video game soundtracks, and personalized music experiences**, where precise tailoring of music to specific moods and scenes is essential.  It also opens up new avenues for **interactive music experiences**, where users can actively participate in the creative process, shaping the music in real-time. This advancement not only caters to professional composers but also **democratizes music creation**, allowing anyone to tailor music to their individual preferences and creative visions. Further research can explore expanding the range of controllable attributes, offering more nuanced manipulation of musical elements like **melody, harmony, and rhythm**.

#### Beyond Local Rhythm
**Focusing solely on local rhythms can hinder musical coherence**, especially in video background scoring. While rhythmic accuracy is important, prioritizing localized rhythmic features can disrupt the overall flow and emotional impact of music. A **broader perspective** considers not only individual beats but also larger phrase structures, melodic contours, and harmonic progressions. This holistic approach ensures that music complements the narrative rather than distracting from it. **Prioritizing a balance between local and global rhythms** is key. By subtly aligning music with broader emotional cues, the overall audiovisual experience is enhanced, creating a more immersive and impactful experience. VMB's success, despite not explicitly focusing on local rhythms, highlights the effectiveness of this approach. This broader rhythmic focus sets the stage for future research exploring the balance between local precision and global coherence in music generation.

#### Bias & Diversity Gaps
**Data diversity** is crucial for mitigating bias. Uneven representation in datasets can lead to skewed outputs, **perpetuating societal biases**. This is especially critical in creative fields like music. Generation models trained on homogenous data may struggle to produce diverse musical styles, hindering **cultural expression** and potentially **marginalizing underrepresented genres**. Ensuring diverse representation across various musical attributes, including genres, instruments, and cultural influences, is essential for **fair and inclusive music generation**. A balanced, inclusive dataset empowers models to become more versatile, fostering creativity and capturing the rich tapestry of musical expression. This not only improves the **quality and relevance of generated music** but also contributes to a more equitable and representative musical landscape, promoting cross-cultural understanding and appreciation.  **Evaluating bias** requires careful consideration of subjective experiences and diverse cultural perspectives.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/3.1.png)

> 🔼 The Multimodal Music Description Model (MMDM) pipeline begins by collecting music videos and their associated metadata.  Automated tagging refines the audio annotations by leveraging CLAP embedding similarities. The Llama 3.1 model then synthesizes metadata and generates thematic descriptions. These descriptions serve as training targets.  Finally, the MMDM is trained using LoRA fine-tuning.  This allows it to effectively transform multimodal inputs (video and metadata) into detailed textual music descriptions that capture the essence of the visual content.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of the Multimodal Music Description Model (MMDM). This process starts with the collection of music videos, followed by automated tagging to refine audio annotations using CLAP embedding similarities. Metadata and thematic descriptions are synthesized by the Llama 3.1 model to create training targets. The training utilizes LoRA fine-tuning in the MMDM to transform multimodal inputs into targeted music descriptions that align with the visual content’s themes.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/3.2.png)

> 🔼 The figure presents the architecture of the Dual-track Music Retrieval and the Explicitly Conditioned Music Generation. The Dual-track Music Retrieval uses a multimodal dataset to retrieve music based on two strategies: broad retrieval, which focuses on overall thematic alignment, and targeted retrieval, which allows for user control over specific musical attributes like tempo, instrumentation, and genre.  The Explicitly Conditioned Music Generation module uses a ControlFormer block to generate music by integrating embeddings from the retrieved music (music bridge), the textual description (text bridge), and noise inputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Framework of Dual-track Music Retrieval and Explicitly Conditioned Music Generation. The left part illustrates the Dual-track Music Retrieval process, which leverages our multimodal dataset to perform both broad and targeted retrieval. The right part shows the Explicitly Conditioned Music Generation pathway, where music is generated through a ControlFormer block integrating embeddings from selected music bridge, text bridge, and noisy inputs.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/Distribution_of_PAM_Scores.png)

> 🔼 This table presents a comparison of different models on the video-to-description generation task, evaluating their ability to generate textual descriptions of music that align with the content of a given video. The table includes CLAPScore results for GPT-4V, InternVL, and the proposed MMDM. A higher CLAPScore indicates better alignment between the generated description and the music.
> <details>
> <summary>read the caption</summary>
> Table 4: Video-to-Description Generation Performance.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/dataset_distributions.png)

> 🔼 This table presents the results of the controllable generation experiment, demonstrating VMB's capability to generate music with distinct attributes.  The table focuses on the average change (Δ) in CLAPScore across different control dimensions: Instrument, Genre, and Mood.  CLAPScore measures how well the generated music aligns with textual descriptions, thus a larger Δ indicates more effective control. The results show that VMB can effectively control for specific instruments, moderately control genre, and achieve some level of mood manipulation in generated music.
> <details>
> <summary>read the caption</summary>
> Table 5: Attribute control effectiveness measured by average change (ΔΔ\Deltaroman_Δ) in CLAPScore.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/dataset_distributions2.png)

> 🔼 This histogram displays the distribution of Perceptual Audio Quality Measure (PAM) scores calculated for the initial dataset of 512k music tracks before filtering. The PAM score, ranging from 0 to 1, quantifies the perceptual quality of audio, with higher scores indicating better quality.  The x-axis represents the PAM score, while the y-axis represents the number of tracks that fall within each score range. This distribution helps understand the initial quality of the music tracks and aids in defining a filtering threshold, as detailed in Appendix A.1.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of PAM Scores across the raw training dataset.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/mood_distribution.png)

> 🔼 This histogram displays the distribution of music duration in the training dataset, measured in seconds. The x-axis represents the duration of the music tracks, while the y-axis represents the number of tracks that fall within each duration range. The majority of music tracks are concentrated between approximately 100 and 200 seconds.
> <details>
> <summary>read the caption</summary>
> Figure 5: Histogram of music duration in the training dataset.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/genre_distribution.png)

> 🔼 This histogram displays the distribution of word counts for the textual descriptions accompanying the music tracks in the training dataset. The x-axis represents the number of words, while the y-axis represents the frequency of descriptions with that specific word count. Most descriptions fall within a moderate word count range, indicating a balance between conciseness and descriptive detail. The distribution also suggests a variety in the length and complexity of the descriptions, reflecting the diversity of the music they describe.
> <details>
> <summary>read the caption</summary>
> Figure 6: Histogram of text word counts in the training dataset.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/instrument_distribution.png)

> 🔼 This histogram presents the distribution of mood tags within the retrieval dataset. The x-axis represents various mood categories, such as 'fun,' 'energetic,' 'romantic,' 'emotional,' 'holiday,' 'dreamy,' 'calm,' and 'dark.' The y-axis represents the number of music tracks tagged with each mood. The height of each bar corresponds to the frequency of each mood tag in the dataset. The figure demonstrates a balanced distribution across many mood categories, indicating the diverse emotional representation within the curated dataset for music retrieval. This diversity enables VMB to cater to a wide range of user preferences and input modalities, generating music that accurately aligns with the desired emotional tone.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of mood tags across the retrieval dataset. This histogram shows the frequency of various mood categories, illustrating the emotional diversity captured in our data.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/bpm_distribution.png)

> 🔼 This bar chart, situated within the Methodology section under the subsection 'Dual-track Music Retrieval', displays the distribution of various music genres present in the dataset curated for retrieval tasks. The bars represent the quantity of music tracks associated with each genre, like Pop, Hip Hop & Rap, Folk & Country, Latin Music and Rock, indicating the diversity of musical styles available. This broad genre representation suggests the dataset's suitability for retrieval tasks aimed at generating music aligned with specific genre preferences.
> <details>
> <summary>read the caption</summary>
> Figure 8: Genre distribution within the retrieval dataset. This bar graph reflects the variety of music genres represented, indicating the dataset’s broad applicability for genre-specific retrieval tasks.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/hist_audio_duration.png)

> 🔼 This histogram illustrates the distribution of instrument tags within the dataset curated for music retrieval.  It highlights the variety of instruments represented, emphasizing the dataset's comprehensive coverage of diverse instrumental music, which is crucial for effective retrieval-augmented music generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Histogram of instrument tags in our retrieval dataset. This figure shows the range of musical instruments represented, underscoring the dataset’s comprehensive coverage of instrumental music.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/hist_text_word_count.png)

> 🔼 This density plot visualizes the distribution of beats per minute (BPM) within the music retrieval dataset.  The x-axis represents BPM, and the y-axis represents the density, showing how frequently different tempos occur.  The plot demonstrates the range of tempos available, indicating the variety of musical pacing in the dataset.  This information is used to inform and guide retrieval strategies based on user-specified tempo preferences. 
> <details>
> <summary>read the caption</summary>
> Figure 10: Density curve of BPM across the retrieval dataset. This plot illustrates the distribution of Beats Per Minute, showcasing the tempo range covered in our collection.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/hist_lexical_diversity.png)

> 🔼 This histogram displays the distribution of audio durations within the MMDM and DMR retrieval dataset, indicating the typical length of music tracks included. Most of the audio durations fall within a consistent range, which suggests that the lengths of songs in this dataset are relatively uniform.
> <details>
> <summary>read the caption</summary>
> Figure 11: Histogram of audio durations in retrieval dataset. This shows the distribution of song lengths in the dataset.
> </details>



![](https://arxiv.org/html/2412.09428/extracted/6065175/figs/survey.jpg)

> 🔼 This histogram displays the distribution of word counts within the text descriptions associated with each music piece in the retrieval dataset. The x-axis represents the number of words, while the y-axis represents the frequency of occurrence. Most descriptions fall within a mid-range word count, indicating a moderate level of detail in the textual data.
> <details>
> <summary>read the caption</summary>
> Figure 12: Histogram of text word counts in retrieval dataset. This represents the distribution of word counts in the associated text data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | KL<sub>*passt*</sub>↓ | FD<sub>*openl3*</sub>↓ | CLAPScore↑ | IB↑ | MP | TMA | 
|---|---|---|---|---|---|---| 
| Stable Audio Open [17] | 42.89 | 183.09 | **40.92** | 24.67 | 3.41 | **3.52** |
| MusicGen [8] | 46.89 | 181.59 | 33.95 | 22.46 | 3.11 | 3.35 |
| AudioLDM [33] | 99.85 | 293.86 | 17.61 | 20.01 | 2.34 | 2.71 |
| M<sup>2</sup>UGen [34] | 49.03 | 188.84 | 28.76 | 16.70 | 3.19 | 3.27 |
| VMB (ours) | **37.43** | **132.16** | 39.66 | **29.36** | **3.78** | 3.48 |{{< /table-caption >}}
> 🔼 This table presents a comparison of different text-to-music generation models, including Stable Audio Open, MusicGen, AudioLDM, M2UGen, and the proposed VMB model. The evaluation is performed on the SongDescriber dataset, using both objective metrics (KL Divergence, Fréchet distance, CLAPScore, and ImageBind score) and subjective metrics (Musical Pleasantness and Text-Music Alignment). The table shows that VMB outperforms other baseline models by achieving the best scores across multiple evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: Text-to-music generation performance on SongDescriber dataset.
> </details>

{{< table-caption >}}
| Method | KL<sub>*passt*&darr; | FD<sub>*openl3*&darr; | IB&uarr; |
|---|---|---|---| 
| CoDi [50] | 216.48 | 251.52 | 9.60 |
| M<sup>2</sup>UGen [34] | 128.33 | 247.42 | 2.28 |
| VMB (ours) | **105.60** | **119.76** | **11.88** |{{< /table-caption >}}
> 🔼 This table presents the evaluation results for image-to-music generation using three different models: CoDi, M2UGen, and the proposed VMB model. The evaluation was conducted on the MUImage dataset, a collection of image-music pairs, and uses metrics such as KL divergence (KLpasst), Frechet Audio Distance (FDopenl3), and ImageBind score (IB).  Lower KLpasst and FDopenl3 indicate better music quality and alignment with real music, while a higher IB signifies stronger cross-modal alignment between image and generated music.
> <details>
> <summary>read the caption</summary>
> Table 3: Image-to-music generation performance on MUImage dataset.
> </details>

{{< table-caption >}}
| Model | CLAPScore |
|---|---| 
| GPT-4V [41] | 44.41 |
| InternVL [6] | 44.21 |
| MMDM | 50.88 |{{< /table-caption >}}
> 🔼 This table presents an ablation study conducted on the SymMV dataset, evaluating the impact of removing the Broad Retrieval (BR) and Targeted Retrieval (TR) components from the VMB model on video-to-music generation.  It reports objective metrics (KLpasst, FDopenl3, and ImageBind score) across four different ablation settings: using both BR and TR, using only BR, using only TR, and using neither.  Lower KLpasst and FDopenl3 scores indicate better music quality and alignment with real music distributions, while a higher ImageBind score represents better alignment between the generated music and the input video.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of model components on video-to-music generation with SymMV dataset. BR, TR represent broad retrieval and target retrieval respectively.
> </details>

{{< table-caption >}}
| Attribute | Change ($\Delta$) |
|---|---| 
| Instrument | +11.46 |
| Genre | +3.03 |
| Mood | +4.14 |{{< /table-caption >}}
> 🔼 This table presents the average Beats Per Minute (BPM) of music generated by the VMB model under different tempo conditions ('Fast', 'Medium', and 'Slow') in a controllable generation experiment.  This experiment evaluates the model's ability to adjust the tempo of generated music while maintaining overall coherence.
> <details>
> <summary>read the caption</summary>
> Table 7: Average BPM of music generated under varying tempo conditions.
> </details>

{{< table-caption >}}
| BR | TR | KL<sub>*passt*</sub>↓ | FD<sub>*openl3*</sub>↓ | IB↑ |
|---|---|---|---|---| 
| ✓ | ✓ | **75.29** | **177.27** | **24.70** |
| ✓ | × | 91.89 | 199.74 | 20.73 |
| × | ✓ | 91.07 | 387.14 | 20.51 |
| × | × | 96.42 | 360.29 | 14.67 |{{< /table-caption >}}
> 🔼 This table presents examples of how visual inputs, specifically images, are transformed into textual descriptions suitable for music generation. Each row features an image alongside its generated description and an evaluation by GPT-4, providing insights into the effectiveness of capturing the image's essence in the textual description. The evaluation includes a score (out of 5) and a rationale explaining the alignment between the image and the description.
> <details>
> <summary>read the caption</summary>
> Table 8: Samples of visual-to-description generation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.09428/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09428/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}