---
title: "Shiksha: A Technical Domain focused Translation Dataset and Model for Indian Languages"
summary: "Shiksha: A new multilingual translation dataset and model surpasses existing benchmarks for Indian languages, focusing on scientific, technical, and educational domains."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Machine Translation", "🏢 Indian Institute of Technology Madras",]
showSummary: true
date: 2024-12-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.09025 {{< /keyword >}}
{{< keyword icon="writer" >}} Advait Joglekar et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.09025" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.09025" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/shiksha-a-technical-domain-focused" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.09025/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many machine translation (MT) models struggle with scientific, technical, and educational texts, especially in low-resource languages like Indian languages. This is because existing datasets are limited and do not adequately reflect these specialized domains.  The lack of such resources hampers the development of effective MT systems for these languages and hinders the progress in fields like multilingual education.



This paper introduces Shiksha, a large multilingual parallel corpus with over 2.8 million high-quality translations, focusing on technical domains in 8 Indian languages. It uses the transcriptions of NPTEL video lectures, curated over many years. **The research fine-tunes NMT models using Shiksha and achieves state-of-the-art results in in-domain translation.**  A user-friendly tool, Translingua, is also released to help human translators work more efficiently.  **Shiksha significantly contributes to the field by providing a valuable resource to improve MT performance in Indian languages** and facilitates broader access to educational content.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new multilingual parallel corpus, Shiksha, containing over 2.8 million high-quality translation pairs across 8 Indian languages was created. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} NMT models fine-tuned on Shiksha outperform existing models on in-domain translation tasks and show improvement on out-of-domain tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Translingua tool, built using Shiksha's models, facilitates faster and more accurate translation of educational materials. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical need for high-quality, domain-specific translation datasets and models for low-resource Indian languages.  **The creation of the Shiksha dataset and model directly impacts the field of machine translation**, offering researchers a valuable resource for benchmarking and further development.  **Its focus on scientific, technical, and educational domains fills a significant gap in existing resources,** opening avenues for improved multilingual education and accessibility.

------
#### Visual Insights



![](https://arxiv.org/html/2412.09025/x1.png)

> 🔼 This figure shows the number of translation pairs (in thousands) in the Shiksha dataset. The dataset includes translations between 8 Indian languages (Bengali, Gujarati, Hindi, Kannada, Malayalam, Marathi, Tamil, Telugu) and English. The heatmap shows the number of translation pairs between each pair of languages. For example, the top left cell (0) represents the number of Bengali-to-Bengali pairs. The numbers increase along the diagonal, indicating that more translation pairs exist between a language and itself.
> <details>
> <summary>read the caption</summary>
> Figure 1: Translation Pair Counts (in thousands)
> </details>





{{< table-caption >}}
| Our testset |
|---|---| 
| **Models** | **en-in** |
| NLLB | 30.73 / 57.62 |
| LoRA FT | **48.98 / 71.99** |
| IT2 | 39.66 / 66.49 |{{< /table-caption >}}

> 🔼 This table showcases example translations from English to Hindi, focusing on scientific and technical terminology.  It highlights the challenges of machine translation in this domain by comparing the output of a model to professional translations.  In-domain and out-of-domain sentences are indicated, and the table analyzes words with multiple meanings, showing where the model translates correctly (green), incorrectly (red), or with an alternative meaning (blue).
> <details>
> <summary>read the caption</summary>
> Table 1:  Example translations from English to Hindi in the Scientific/Technical domain.  Sentences marked as † are in-domain, while ‡ are out-of-domain.  The words in blue are terms with multiple meanings, that tend to get translated incorrectly.  The words in green represent the correct, expected translation by the model for the blue word in the given context. The words in red represent incorrect translations.
> </details>





### In-depth insights


#### NPTEL Data Mining
The NPTEL data mining process is a crucial aspect of this research, forming the foundation for the creation of a high-quality, multilingual translation dataset.  The researchers leveraged the readily available, human-translated transcriptions of NPTEL video lectures. **This readily available resource significantly reduced the time and cost associated with creating a large parallel corpus.**  The process involved several steps, starting with obtaining the raw data from NPTEL, then implementing careful cleaning and extraction techniques to remove extraneous material, such as timestamps and other irrelevant artifacts.  **The use of advanced sentence alignment algorithms ensured high confidence in the accuracy of the mined sentence pairs**.  The result was a substantial and valuable multilingual parallel corpus containing more than 2.8 million high-quality translation pairs across 8 Indian languages; highlighting **the effectiveness of leveraging existing resources to achieve a larger-scale translation task.**

#### Multi-lingual MT
Multi-lingual Machine Translation (MT) systems are crucial for bridging language barriers and facilitating communication across diverse linguistic groups.  **The effectiveness of these systems is heavily dependent on the availability of high-quality parallel corpora for training.**  Developing such corpora, particularly for low-resource languages, presents a significant challenge.  This paper addresses this issue by presenting a large, high-quality parallel corpus for Indian languages, thus significantly advancing the field of multi-lingual MT for these languages.  **The focus on technical domains is notable, highlighting the difficulties in achieving accurate translations in specialized areas and emphasizing the need for domain-specific training data.**  Furthermore, the research demonstrates successful fine-tuning of existing multilingual models on this corpus, resulting in improved performance on both in-domain and out-of-domain tasks.  **This finding suggests the potential of transfer learning** in improving the accuracy of multi-lingual MT even for languages with limited resources. The development and application of a tool like Translingua underscores the practical implications of this research, showcasing how enhanced MT models can accelerate translation processes and facilitate access to educational resources in diverse languages.

#### LoRA Fine-tuning
LoRA (Low-Rank Adaptation) fine-tuning offers a **parameter-efficient** approach to adapting large language models like NLLB to specific domains.  Instead of full fine-tuning, which is computationally expensive, LoRA trains only a small set of low-rank matrices, updating the model's weights indirectly. This significantly reduces the number of trainable parameters.  **The method's effectiveness** in this study was shown by achieving improved performance on both in-domain (technical) and out-of-domain translation tasks. The choice of LoRA highlights **a practical concern**: balancing performance gains with computational cost.  In low-resource settings like Indian language translation, LoRA's efficiency becomes crucial. **Further investigation** into the optimal LoRA hyperparameters (rank, alpha, etc.) and its generalizability across diverse datasets would strengthen the approach.

#### Technical MT Gaps
Technical Machine Translation (MT) currently faces significant challenges.  **Domain specificity** is a major hurdle; models trained on general corpora struggle with the specialized terminology and nuanced language of technical texts.  This is especially true for **low-resource languages**, where data scarcity exacerbates the problem.  **Ambiguity** in technical terms, with words having multiple meanings depending on context, further complicates accurate translation.  Existing models often fall short in correctly identifying the intended meaning within technical contexts, leading to mistranslations that can have severe consequences.  **Existing datasets** are often insufficient, lacking the scale and quality necessary to train robust technical MT systems.  The development of high-quality, domain-specific parallel corpora and fine-tuning techniques is critical to bridging these gaps and improving accuracy for technical MT.

#### Translingua Tool
The Translingua tool, as described, represents a significant advancement in the practical application of the research findings.  **It bridges the gap between academic research and real-world utility**, enabling human annotators to translate NPTEL lecture transcripts into multiple languages efficiently.  This direct application of the improved machine translation models is a crucial step, showcasing the **impact of the Shiksha project beyond merely producing a dataset and model**.  The tool facilitates faster and more accurate translations, highlighting the **positive societal impact** on education and access to information. **User feedback** suggests high satisfaction with the tool's translation quality, further validating its effectiveness and potential for broader deployment.  However, ongoing monitoring and refinement will be vital to continuously improve translation accuracy and address limitations, especially concerning translation quality across diverse language pairs and domain-specific terminology.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.09025/x3.png)

> 🔼 This figure shows the average LABSE (Language-Agnostic BERT Sentence Embedding) similarity scores for all language pairs in the dataset.  Higher scores indicate greater similarity, suggesting higher confidence in the quality of the aligned sentence pairs used to create the parallel corpus. The x-axis represents different language pairs, and the y-axis represents the average LABSE similarity score for each pair. The plot visually demonstrates the consistency of alignment quality across various language combinations, with scores generally above 0.75.
> <details>
> <summary>read the caption</summary>
> Figure 2: Average LABSE score across language pairs
> </details>



![](https://arxiv.org/html/2412.09025/x4.png)

> 🔼 This figure shows a sample page from a bilingual document used in the dataset creation.  It demonstrates the alternating English and Indic text within the transcriptions, interspersed with timestamps and video snapshots. This highlights the format of the raw data before cleaning and extraction steps detailed in Section 4.2, Data Cleaning and Extraction.
> <details>
> <summary>read the caption</summary>
> Figure 3: A sample page from a bilingual document
> </details>



![](https://arxiv.org/html/2412.09025/x5.png)

> 🔼 Figure 4 presents a comparison of chrF++ scores for three machine translation models across eight Indian languages: NLLB, IndicTrans2 (IT2), and the model proposed in the paper.  The chart displays the performance of each model on each language, enabling a direct comparison. The size of each bubble plotted correlates with the number of speakers of that language, visually representing the scale of each language's user base.
> <details>
> <summary>read the caption</summary>
> Figure 4: Chrf++ comparison between NLLB, IT2 and our model across all Indian languages.  The size of the bubble represents the population of the speakers.
> </details>



![](https://arxiv.org/html/2412.09025/extracted/6063910/assets/screenshot.png)

> 🔼 This figure is a screenshot of the Translingua tool in action.  It showcases the tool's user interface, which displays a video lecture in English alongside its translation in Hindi. The interface also shows timestamps, speech-to-text transcriptions of the audio, and the possibility of text-to-speech functionality. The overall design aims to aid users in the accurate and efficient translation of video lectures.
> <details>
> <summary>read the caption</summary>
> Figure 5: A screenshot from the Translingua tool
> </details>



![](https://arxiv.org/html/2412.09025/x6.png)

> 🔼 A pie chart summarizing user feedback on the quality of machine translations produced by the Translingua tool.  The majority of respondents (76.5%) rated the translations as 'Excellent', with a smaller portion rating them as 'Good' (17.6%). The remaining responses fell into the categories of 'Average', 'Poor', and 'Very Poor', indicating a high level of user satisfaction with the translation quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Feedback on Translation Quality from a subset of Users
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| **Flores+**   |
|---|---| 
| **Models** | **en-in** |
|---|---| 
| NLLB  | 19.73 / 54.27 |
| LoRA FT | 22.04 / 57.33 |
| IT2 | **24.08 / 59.45** |{{< /table-caption >}}
> 🔼 Table 2 presents the BLEU and chrF++ scores for different machine translation models on the Flores+ benchmark.  The scores are averages across all eight Indian languages included in the Shiksha dataset.  Crucially, these evaluation metrics were calculated without using beam search or sampling, which ensures a fair comparison between models and highlights the inherent translation quality of each.
> <details>
> <summary>read the caption</summary>
> Table 2: Results are in the form <bleu>/<chrf++>.  These scores represent the average of all 8 languages covered by the dataset.  All models were evaluated without using beam-search or sampling.
> </details>

{{< table-caption >}}
| Parameter | Setting |
|---|---| 
| peft-type | LORA |
| rank | 256 |
| lora alpha | 256 |
| lora dropout | 0.1 |
| rslora | True |
| target modules | all-linear |
| learning rate | 4e-5 |
| optimizer | adafactor |
| data-type | BF-16 |
| epochs | 1 |{{< /table-caption >}}
> 🔼 Table 3 presents the hyperparameters used for the third training approach of the Shiksha model.  The first and second approaches used different training durations: 10 epochs for the first and 4 epochs for the second.  The table details the settings for parameters like the type of PEFT (Parameter-Efficient Fine Tuning) method employed (LoRA), the rank, alpha, dropout rate for LoRA, whether relative LoRA (rslora) was used, which model modules were targeted, the learning rate, optimizer used (Adafactor), data type (BF-16), and the number of training epochs.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyperparameters for our 3rd approach.  First approach was trained for 10 epochs and second for 4 epochs seperately
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.09025/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09025/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}