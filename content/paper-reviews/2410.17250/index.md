---
title: "JMMMU: A Japanese Massive Multi-discipline Multimodal Understanding Benchmark for Culture-aware Evaluation"
summary: "JMMMU, a new benchmark, rigorously evaluates large multimodal models' Japanese language and cultural understanding, revealing significant performance gaps and highlighting the need for culturally awar..."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", "🤗 24-10-23"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

This research introduces JMMMU, a novel benchmark designed to thoroughly assess the capabilities of large multimodal models (LMMs) in understanding both the Japanese language and its cultural nuances.  Unlike existing benchmarks that primarily focus on English or lack cultural sensitivity, JMMMU offers a more comprehensive evaluation.  It achieves this through two key subsets: a culture-agnostic (CA) subset, allowing direct comparison with English counterparts, and a culture-specific (CS) subset, uniquely focused on Japanese culture.  Evaluations using JMMMU revealed that many LMMs, while performing well on English benchmarks, struggle significantly in Japanese, highlighting limitations in their true language and cultural understanding. Specifically, models performed worse in Japanese than in English on even the CA subset, indicating a purely language-based performance gap. The CS subset, however, revealed a deeper inadequacy in the models' comprehension of Japanese cultural context. This research underscores the necessity of culturally sensitive and comprehensive evaluation of LMMs, paving the way for the development of more advanced and inclusive multilingual AI systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17250" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17250" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large multimodal models (LMMs) and cross-cultural AI.  It introduces JMMMU, the first large-scale Japanese benchmark for evaluating cultural understanding in LMMs, addressing the current lack of comprehensive benchmarks beyond English.  JMMMU's unique design, with both culture-agnostic and culture-specific subsets, allows for a more nuanced evaluation of LMM capabilities and exposes limitations in current models' cross-cultural understanding. This opens avenues for developing more robust and culturally sensitive LMMs, and for creating similar benchmarks for other languages, furthering the development of truly multilingual and inclusive AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} JMMMU is the first large-scale Japanese benchmark for evaluating LMMs' cultural understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current LMMs show significant performance drops when evaluated in Japanese, even on culture-agnostic tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Combining culture-agnostic and culture-specific evaluations reveals crucial limitations in models' true understanding of language and culture. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure shows an overview of the JMMMU dataset, illustrating its composition of culture-agnostic and culture-specific questions, along with the number of questions and images, and their distribution across different subjects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>





![](charts/charts_6_0.png)

> 🔼 The chart shows the correlation between the performance of various Large Multimodal Models (LMMs) on culture-agnostic (CA) and culture-specific (CS) subsets of the JMMMU benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: Score correlation between subsets. While proprietary models (■) perform the best on both subsets, Japanese LMMs (★) perform remarkably high on CS subset compared to models that perform similarly on CA subset.
> </details>





{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Benchmark</td><td>Culture</td><td>Level</td><td>Questions</td><td>Images</td></tr><tr><td>JA-VG-VQA-500 (SakanaAI, 2024b)</td><td></td><td>Common sense</td><td>500</td><td>500</td></tr><tr><td>LLaVA-Bench-in-the-wild (Turing, 2024b)</td><td></td><td>Common sense</td><td>60</td><td>24</td></tr><tr><td>JA-Multi-Image-VQA (SakanaAI, 2024a)</td><td></td><td>Common sense</td><td>55</td><td>39</td></tr><tr><td>JA-VLM-Bench-in-the-wild (SakanaAI, 2024c)</td><td></td><td>Common sense</td><td>50</td><td>42</td></tr><tr><td>Heron Bench (Inoue et al., 2024b)</td><td></td><td>Common sense</td><td>102</td><td>21</td></tr><tr><td>JMMMU (Ours)</td><td></td><td>Expert</td><td>1,320</td><td>1,118</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares several Japanese LMM benchmarks, highlighting JMMMU's unique focus on expert-level skills and its significantly larger size compared to existing culture-aware benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of Japanese LMM benchmarks. JMMMU is the first benchmark that evaluates expert-level skills and is the largest among culture-aware benchmarks.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_1.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images in both culture-agnostic and culture-specific subsets, and the subject categories covered.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_2_2.png)

> 🔼 The figure shows the overview of the JMMMU dataset, including its composition of culture-agnostic and culture-specific questions, and the number of questions and images in each category.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_4_0.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images included in both culture-agnostic and culture-specific subsets, highlighting its size and scope compared to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_7_0.png)

> 🔼 The figure shows a visual overview of the JMMMU dataset, illustrating its composition of culture-agnostic and culture-specific subsets and the number of questions and images included.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_8_0.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images in each of its two subsets (culture-agnostic and culture-specific), highlighting its size and scope compared to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_13_0.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images in both culture-agnostic and culture-specific subsets, categorized by subject area.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_15_0.png)

> 🔼 The figure shows an overview of the JMMMU dataset, illustrating its composition of culture-agnostic and culture-specific questions, image numbers, and subject categories.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_15_1.png)

> 🔼 The figure shows the overview of the JMMMU dataset, which includes 720 culture-agnostic and 600 culture-specific questions, totaling 1320 questions across various subjects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_15_2.png)

> 🔼 The figure shows the composition of the JMMMU dataset, highlighting the number of questions, subjects, and the division into culture-agnostic and culture-specific subsets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_16_0.png)

> 🔼 The figure shows the overview of the JMMMU dataset, detailing the number of questions, images, and subjects categorized into culture-agnostic and culture-specific subsets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_16_1.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images in its culture-agnostic and culture-specific subsets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_16_2.png)

> 🔼 The figure shows an overview of the JMMMU dataset, detailing its composition of culture-agnostic and culture-specific questions and the overall number of questions and images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_16_3.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of culture-agnostic and culture-specific questions and their distribution across various subjects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_0.png)

> 🔼 The figure shows a visual overview of the JMMMU dataset, illustrating its composition of culture-agnostic and culture-specific question subsets and their respective numbers.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_1.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images in both culture-agnostic and culture-specific subsets, highlighting its size and scope compared to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_2.png)

> 🔼 Figure 1 shows an overview of the JMMMU dataset, illustrating the number of questions and images in its two subsets: culture-agnostic and culture-specific.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_3.png)

> 🔼 The figure shows the overview of the JMMMU dataset, which includes 720 culture-agnostic and 600 culture-specific questions, totaling 1320 questions across various subjects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_4.png)

> 🔼 The figure shows an overview of the JMMMU dataset, illustrating its composition of culture-agnostic and culture-specific questions and the overall number of questions and images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_5.png)

> 🔼 The figure shows a breakdown of the JMMMU dataset, illustrating the number of questions and images, and the distribution across culture-agnostic and culture-specific subsets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the JMMMU dataset. JMMMU includes 720 culture-agnostic (translation-based) questions and 600 culture-specific (newly created) questions, totaling 1,320 questions, thus expanding the existing culture-aware Japanese benchmark (Inoue et al., 2024b) by over 10 times. JMMMU serves as a diagnostic tool for assessing both Japanese cultural understanding and culture-agnostic language understanding capability.
> </details>



![](figures/figures_17_6.png)

> 🔼 Figure E shows example questions from the culture-specific subset of the JMMMU benchmark, highlighting their focus on Japanese cultural knowledge.
> <details>
> <summary>read the caption</summary>
> Figure E: Examples in culture-specific subjects. The questions are created by Japanese native speakers and requires knowledge of Japanese culture.
> </details>



![](figures/figures_17_7.png)

> 🔼 Figure 6 presents four example questions from the JMMMU benchmark to illustrate the four main error categories identified when evaluating LMMs on the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples from each error type: (a) Lack of Knowledge, where the model does not know the necessary information; (b) Image Recognition Errors, where the model fails to correctly interpret the image; (c) Answer Rejection, where the model rejects to answer; and (d) Textual Misunderstanding, where the response is not aligned with the question.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_7_0.png "🔼 Figure 5: Error distribution over culture-specific subjects. Lack of Knowledge is the majority error type at over 50%.")

> 🔼 The chart shows the distribution of error types in the culture-specific subset of the JMMMU benchmark, with the majority of errors (53.8%) attributed to a lack of knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 5: Error distribution over culture-specific subjects. Lack of Knowledge is the majority error type at over 50%.
> </details>


![](charts/charts_14_0.png "🔼 Figure 3: Score correlation between subsets. While proprietary models (■) perform the best on both subsets, Japanese LMMs (★) perform remarkably high on CS subset compared to models that perform similarly on CA subset.")

> 🔼 The chart displays the correlation between the performance of various large multimodal models (LMMs) on culture-agnostic and culture-specific subsets of a Japanese benchmark, highlighting the strong performance of Japanese LMMs on the culture-specific subset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Score correlation between subsets. While proprietary models (■) perform the best on both subsets, Japanese LMMs (★) perform remarkably high on CS subset compared to models that perform similarly on CA subset.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Models</td><td>Overall (1,320)</td><td>CS (600)</td><td>CA (720)</td><td>CA (EN) (720)</td><td>Jpn. Art (150)</td><td>Jpn. Heritage (150)</td><td>Jpn. History (150)</td><td>World History (150)</td><td>Art & Psych. (90)</td><td>Business (150)</td><td>Science (120)</td><td>Health & Medicine (150)</td><td>Tech & Eng. (210)</td></tr><tr><td>Random</td><td>24.8</td><td>25.0</td><td>24.6</td><td>24.6</td><td>25.0</td><td>25.0</td><td>25.0</td><td>25.0</td><td>25.4</td><td>25.0</td><td>22.8</td><td>25.6</td><td>24.3</td></tr><tr><td>Open Source</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>LLa VA-OV-0.5B</td><td>26.0</td><td>23.3</td><td>28.2</td><td>29.4</td><td>22.7</td><td>22.7</td><td>24.0</td><td>24.0</td><td>26.7</td><td>27.3</td><td>24.2</td><td>30.7</td><td>30.0</td></tr><tr><td>Intern VL2-2B</td><td>28.3</td><td>29.2</td><td>27.6</td><td>31.9</td><td>31.3</td><td>22.7</td><td>30.7</td><td>32.0</td><td>30.0</td><td>30.0</td><td>30.8</td><td>25.3</td><td>24.8</td></tr><tr><td>xGen-MM</td><td>28.6</td><td>28.2</td><td>28.9</td><td>35.7</td><td>30.0</td><td>20.7</td><td>22.7</td><td>39.3</td><td>32.2</td><td>21.3</td><td>22.5</td><td>36.7</td><td>31.0</td></tr><tr><td>Phi-3v</td><td>29.5</td><td>26.5</td><td>31.9</td><td>37.6</td><td>31.3</td><td>18.7</td><td>29.3</td><td>26.7</td><td>26.7</td><td>28.7</td><td>25.8</td><td>37.3</td><td>36.2</td></tr><tr><td>LLaVA-1.6-13B</td><td>31.1</td><td>33.7</td><td>29.0</td><td>29.9</td><td>32.0</td><td>24.0</td><td>32.0</td><td>46.7</td><td>25.6</td><td>28.7</td><td>30.0</td><td>34.0</td><td>26.7</td></tr><tr><td>Idefics2-8B</td><td>31.9</td><td>37.0</td><td>27.6</td><td>35.1</td><td>40.7</td><td>24.0</td><td>30.0</td><td>53.3</td><td>32.2</td><td>22.7</td><td>22.5</td><td>32.0</td><td>29.0</td></tr><tr><td>Phi-3.5v</td><td>32.4</td><td>34.3</td><td>30.8</td><td>39.2</td><td>37.3</td><td>27.3</td><td>35.3</td><td>37.3</td><td>27.8</td><td>31.3</td><td>30.0</td><td>36.7</td><td>28.1</td></tr><tr><td>†LLaVA CALM2</td><td>34.9</td><td>41.5</td><td>29.4</td><td>29.9</td><td>42.7</td><td>36.7</td><td>40.0</td><td>46.7</td><td>27.8</td><td>26.0</td><td>26.7</td><td>34.0</td><td>31.0</td></tr><tr><td>Mantis 8B</td><td>35.5</td><td>39.5</td><td>32.2</td><td>36.0</td><td>42.0</td><td>30.0</td><td>35.3</td><td>50.7</td><td>37.8</td><td>28.0</td><td>31.7</td><td>37.3</td><td>29.5</td></tr><tr><td>CogVLM2-19B</td><td>36.1</td><td>39.7</td><td>33.1</td><td>36.8</td><td>39.3</td><td>24.0</td><td>36.0</td><td>59.3</td><td>28.9</td><td>32.7</td><td>30.8</td><td>30.0</td><td>38.6</td></tr><tr><td>Idefics3-8B</td><td>37.3</td><td>42.8</td><td>32.8</td><td>36.9</td><td>43.3</td><td>24.7</td><td>42.0</td><td>61.3</td><td>34.4</td><td>28.0</td><td>26.7</td><td>38.0</td><td>35.2</td></tr><tr><td>†EvoVLM JP v2</td><td>38.1</td><td>45.2</td><td>32.2</td><td>33.9</td><td>44.0</td><td>40.0</td><td>42.0</td><td>54.7</td><td>32.2</td><td>28.7</td><td>28.3</td><td>38.7</td><td>32.4</td></tr><tr><td>Intern VL2-8B</td><td>38.3</td><td>42.5</td><td>34.7</td><td>43.3</td><td>41.3</td><td>38.0</td><td>35.3</td><td>55.3</td><td>40.0</td><td>36.0</td><td>34.2</td><td>34.0</td><td>32.4</td></tr><tr><td>LLaVA-1.6-34B</td><td>39.8</td><td>43.2</td><td>37.1</td><td>45.7</td><td>42.0</td><td>36.0</td><td>40.7</td><td>54.0</td><td>42.2</td><td>41.3</td><td>25.0</td><td>36.7</td><td>39.0</td></tr><tr><td>LLaVA-OV-7B</td><td>40.5</td><td>43.0</td><td>38.5</td><td>45.1</td><td>36.0</td><td>30.7</td><td>37.3 -</td><td>68.0</td><td>41.1</td><td>36.7 -</td><td>31.7</td><td>38.7</td><td>42.4</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Claude 3.5 Sonnet</td><td>50.8</td><td>51.0</td><td>50.6</td><td>52.1</td><td>39.3</td><td>46.7</td><td>54.7</td><td>63.3</td><td>53.3</td><td>56.7</td><td>51.7</td><td>55.3</td><td>41.0</td></tr><tr><td>Gemini 1.5 Pro</td><td>51.5</td><td>60.3</td><td>44.2</td><td>51.1</td><td>54.7</td><td>55.3</td><td>55.3</td><td>76.0</td><td>51.1</td><td>44.0</td><td>44.2</td><td>48.0</td><td>38.6</td></tr><tr><td>GPT-4o</td><td>58.6</td><td>66.7</td><td>51.8</td><td>52.1</td><td>60.7</td><td>70.7</td><td>58.7</td><td>76.7</td><td>53.3</td><td>55.3</td><td>45.8</td><td>61.3</td><td>45.2</td></tr><tr><td>Text Only</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GPT-4o text</td><td>38.1</td><td>35.5</td><td>40.3</td><td>44.9</td><td>32.7</td><td>32.0</td><td>35.3</td><td>42.0</td><td>38.9</td><td>36.0</td><td>41.7</td><td>45.3</td><td>39.5</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the overall performance of various Large Multimodal Models (LMMs) on the JMMMU benchmark, broken down by model type, subset (culture-agnostic and culture-specific), and individual subjects, showing overall performance scores and highlighting the best-performing models.


{{< table-caption >}}
<br><table id='6' style='font-size:14px'><tr><td>Model</td><td>IenTen</td><td>IenTjp(△1)</td><td>IjpTjp(△2)</td></tr><tr><td>LLaVA-1.6-13B</td><td>26.4</td><td>31.9 (+5.5)</td><td>29.2 (+2.8)</td></tr><tr><td>Phi-3.5v</td><td>39.2</td><td>33.6 (-5.6)</td><td>31.1 (-8.1)</td></tr><tr><td>LLaVA-CALM2</td><td>29.4</td><td>28.3 (-1.1)</td><td>31.4 (+2.0)</td></tr><tr><td>CogVLM2-19B</td><td>32.8</td><td>31.9 (-0.9)</td><td>34.4 (+1.6)</td></tr><tr><td>EvoVLM JP v2</td><td>30.0</td><td>30.8 (+0.8)</td><td>28.6 (-1.4)</td></tr><tr><td>Intern VL2-8B</td><td>43.9</td><td>38.3 (-5.6)</td><td>37.2 (-6.7)</td></tr><tr><td>LLaVA-1.6-34B</td><td>43.6</td><td>40.8 (-2.8)</td><td>38.9 (-4.7)</td></tr><tr><td>LLaVA-OV-7B</td><td>45.0</td><td>38.3 (-6.7)</td><td>35.6 (-9.4)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the effects of translating images and/or text from English to Japanese on various large multimodal models' performance.


{{< table-caption >}}
<table id='11' style='font-size:14px'><tr><td></td><td>JMMMU</td><td></td><td colspan="2">Japanese support</td></tr><tr><td>Model</td><td>Overall</td><td>Base LLM</td><td>LLM</td><td>LMM</td></tr><tr><td>Open Source</td><td></td><td></td><td></td><td></td></tr><tr><td>xGen-MM</td><td>28.6</td><td>Phi-3</td><td>X</td><td>X</td></tr><tr><td>Mantis 8B</td><td>35.5</td><td>Llama 3</td><td>X</td><td>X</td></tr><tr><td>Idefics2-8B</td><td>31.9</td><td>Mistral v0.1</td><td>?</td><td>X</td></tr><tr><td>Idefics3-8B</td><td>37.3</td><td>Llama 3</td><td>X</td><td>X</td></tr><tr><td>CogVLM2-19B</td><td>36.1</td><td>Llama 3</td><td>X</td><td>X</td></tr><tr><td>InternVL2-2B</td><td>28.3</td><td>InternLM2</td><td>X</td><td>X</td></tr><tr><td>InternVL2-8B</td><td>38.3</td><td>InternLM2</td><td>X</td><td>X</td></tr><tr><td>LLaVA-1.6 13B</td><td>31.1</td><td>Vicuna v1.5</td><td>X</td><td>X</td></tr><tr><td>LLaVA-1.6 34B</td><td>39.8</td><td>Nous Hermes 2 Yi</td><td>X</td><td>X</td></tr><tr><td>LLaVA-OneVision 0.5B</td><td>26.0</td><td>Qwen2</td><td></td><td>X</td></tr><tr><td>LLaVA-OneVision 7B</td><td>40.5</td><td>Qwen2</td><td></td><td>X</td></tr><tr><td>Phi-3 Vision</td><td>29.5</td><td>Phi-3</td><td>X</td><td>X</td></tr><tr><td>Phi-3.5 Vision</td><td>32.4</td><td>Phi-3.5</td><td></td><td>X</td></tr><tr><td>†LLaVA CALM2</td><td>34.9</td><td>CALM2</td><td></td><td>V</td></tr><tr><td>†EvoVLM JP v2</td><td>38.1</td><td>(merged model) -</td><td></td><td></td></tr><tr><td>Closed Source</td><td></td><td></td><td></td><td></td></tr><tr><td>Claude 3.5 Sonnet</td><td>50.8</td><td>?</td><td>?</td><td>V</td></tr><tr><td>Gemini 1.5 Pro</td><td>51.5</td><td>?</td><td>?</td><td>V</td></tr><tr><td>GPT-4o</td><td>58.6</td><td>?</td><td>?</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table summarizes the Japanese language support status for various large multimodal models (LMMs), indicating whether each model officially supports Japanese or not.


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td></td><td>IenTen</td><td>IenTjp(△1)</td><td>IjpTjp(△2)</td></tr><tr><td>Open source</td><td></td><td></td><td></td></tr><tr><td>LLaVA-OV-0.5B</td><td>28.9</td><td>28.9 (±0.0)</td><td>29.7 (+0.8)</td></tr><tr><td>Intern VL2-2B</td><td>32.5</td><td>29.7 (-2.8)</td><td>28.6 (-3.9)</td></tr><tr><td>xGen-MM</td><td>36.7</td><td>28.3 (-8.4)</td><td>28.3 (-8.4)</td></tr><tr><td>Phi-3v</td><td>35.0</td><td>31.7 (-3.3)</td><td>29.7 (-5.3)</td></tr><tr><td>LLaVA-1.6-13B</td><td>26.4</td><td>31.9 (+5.5)</td><td>29.2 (+2.8)</td></tr><tr><td>Idefics2-8b</td><td>28.9</td><td>28.1 (-0.8)</td><td>28.1 (-0.8)</td></tr><tr><td>Phi-3.5v</td><td>39.2</td><td>33.6 (-5.6)</td><td>31.1 (-8.1)</td></tr><tr><td>†LLaVA-CALM2</td><td>29.4</td><td>28.3 (-1.1)</td><td>31.4 (+2.0)</td></tr><tr><td>Mantis 8B</td><td>32.5</td><td>31.1 (-1.4)</td><td>31.4 (-1.1)</td></tr><tr><td>CogVLM2-19B</td><td>32.8</td><td>31.9 (-0.9)</td><td>34.4 (+1.6)</td></tr><tr><td>Idefics3-8b</td><td>33.1</td><td>31.7 (-1.4)</td><td>29.7 (-3.4)</td></tr><tr><td>†EvoVLM JP v2</td><td>30.0</td><td>30.8 (+0.8)</td><td>28.6 (-1.4)</td></tr><tr><td>Intern VL2-8B</td><td>43.9</td><td>38.3 (-5.6)</td><td>37.2 (-6.7)</td></tr><tr><td>LLaVA-1.6-34B</td><td>43.6</td><td>40.8 (-2.8)</td><td>38.9 (-4.7)</td></tr><tr><td>LLaVA-OV-7B</td><td>45.0</td><td>38.3 (-6.7)</td><td>35.6 (-9.4)</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td></tr><tr><td>Claude 3.5 Sonnet</td><td>53.6</td><td>56.4 (+2.8)</td><td>54.2 (+0.6)</td></tr><tr><td>Gemini1.5Pro</td><td>50.6</td><td>42.2 (-8.4)</td><td>42.2 (-8.4)</td></tr><tr><td>GPT-4o</td><td>48.1</td><td>55.3 (+7.2)</td><td>53.1 (+5.0)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the overall performance of various Large Multimodal Models (LMMs) on the JMMMU benchmark, broken down by model type, subset (culture-agnostic and culture-specific), and individual subject area, highlighting performance differences between English and Japanese and between open-source and proprietary models.


{{< table-caption >}}
<table id='40' style='font-size:14px'><tr><td colspan="2">on the stock market in 1932?) Options:</td><td>年度</td><td>インフレ率, %</td><td>株式市場の収益率, %</td><td>T-Bill 収益, %</td></tr><tr><td></td><td></td><td>1929</td><td>-0.2</td><td>-14.5</td><td>4.8</td></tr><tr><td>A.</td><td>-14.33%</td><td>1930</td><td>-6.0</td><td>-28.3</td><td>2.4</td></tr><tr><td>B.</td><td>-23.72%</td><td>1931</td><td>-9.5</td><td>-43.9</td><td>1.1</td></tr><tr><td>C.</td><td>0.45%</td><td>1932</td><td>-10.3</td><td>-9.9</td><td>1.0</td></tr><tr><td>D.</td><td>56.52%</td><td>1933</td><td>0.5</td><td>57.3</td><td>0.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the overall performance of various large multimodal models (LMMs) on the JMMMU benchmark, broken down by model type, subset (culture-agnostic, culture-specific), and individual subjects, showing performance gaps between English and Japanese and highlighting the need for improvement in cultural understanding.


{{< table-caption >}}
<table id='51' style='font-size:16px'><tr><td>A.</td><td>行列の通常の走査 (Normal traversal of the matrix.)</td><td>行列 : 1→ 2→③→4</td></tr><tr><td></td><td>行列の行ごとの走査 (Row-wise traversal of the matrix.)</td><td>5 →6→I ↑ 早 10←11</td></tr><tr><td></td><td>行列の列ごとの走査 (Column-wise traversal of the matrix.)</td><td>13←14← 15←16</td></tr><tr><td></td><td>行列のスパイ ラル走査 (spiral traversal of the matrix.)</td><td>出力 : 1,2,3,4,8,12,16,15,14,13,9,9,5,6, 7,11, 10</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 compares various Japanese LMM benchmarks based on their cultural focus, question type, and the number of questions and images.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}