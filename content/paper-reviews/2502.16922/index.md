---
title: "Benchmarking Temporal Reasoning and Alignment Across Chinese Dynasties"
summary: "CTM: A new benchmark for assessing temporal reasoning in LLMs across Chinese dynastic history."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Southeast University",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.16922 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenglin Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.16922" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.16922" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.16922/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Temporal reasoning is fundamental to human cognition and is crucial for various real-world applications. Existing benchmarks primarily rely on rule-based construction, lack contextual depth, and involve a limited range of temporal entities. To address these limitations, this paper focuses on building a new benchmark. 



This paper introduces **Chinese Time Reasoning (CTM)**, a new benchmark designed to evaluate LLMs on temporal reasoning within the extensive scope of Chinese dynastic chronology. It emphasizes cross-entity relationships, pairwise temporal alignment, and contextualized and culturally-grounded reasoning, providing a comprehensive evaluation. The experimental results reveal the challenges posed by CTM.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CTM benchmark emphasizes contextualization, cross-entity relationships, and pairwise temporal alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Experiments reveal LLMs struggle with nuanced temporal understanding across Chinese dynasties. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CTM provides a culturally rich resource for advancing temporal reasoning research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it **introduces a challenging new benchmark for temporal reasoning in LLMs**, pushing the boundaries of AI's understanding of historical context. It is relevant to current research trends and opens avenues for improved pretraining and structured knowledge integration.

------
#### Visual Insights



![](https://arxiv.org/html/2502.16922/x1.png)

> 🔼 Figure 1 presents two examples from the CTM benchmark. The first is a Question Answering (QA) task focusing on script error correction.  A scenario is presented, and the model must identify historical inaccuracies. The example shown includes a scene featuring Li Bai and Bai Juyi together, along with chili peppers and a Guqin, which is historically incorrect given the timelines of their lives and chili pepper introduction to China. The second example illustrates the Timeline Ito Game. This is a collaborative game where models have to infer the chronological order of historical entities, using a thematic metaphor to aid reasoning. In the example, the theme is 'fruit size,' and the models have to determine the order of three figures from Chinese history (represented by different fruit sizes) based on their historical timelines.
> <details>
> <summary>read the caption</summary>
> Figure 1: A QA pair from a script error correction task and an instance of the Timeline Ito Game with a “fruit size” theme from CTM. 333The English translation is presented in App. B.2.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1">
<tr class="ltx_tr" id="S1.T1.3.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.2.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.3.1">Construction</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.4.1">Time Scope</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.5.1">Contextualization</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.1.6"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.6.1">Temporal Alignment</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S1.T1.3.1.1.7"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.7.1">Complex Aspects</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.2.1.1">TimeQA</span> <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib4" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.4">1367–2018</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.5"><span class="ltx_text" id="S1.T1.3.1.2.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.6"><span class="ltx_text" id="S1.T1.3.1.2.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S1.T1.3.1.2.7"><span class="ltx_text" id="S1.T1.3.1.2.7.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.3.1.1">TempLAMA</span> <cite class="ltx_cite ltx_citemacro_cite">Dhingra et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib6" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.4">2010–2020</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.5"><span class="ltx_text" id="S1.T1.3.1.3.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.3.6"><span class="ltx_text" id="S1.T1.3.1.3.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.7"><span class="ltx_text" id="S1.T1.3.1.3.7.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.4.1.1">TempReason</span> <cite class="ltx_cite ltx_citemacro_cite">Tan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib16" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.4">634–2023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.5"><span class="ltx_text" id="S1.T1.3.1.4.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.4.6"><span class="ltx_text" id="S1.T1.3.1.4.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.4.7"><span class="ltx_text" id="S1.T1.3.1.4.7.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.5.1.1">SituatedGen</span> <cite class="ltx_cite ltx_citemacro_cite">Zhang and Wan (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib23" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.3">LLM-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.5"><span class="ltx_text" id="S1.T1.3.1.5.5.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.6"><span class="ltx_text" id="S1.T1.3.1.5.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.5.7"><span class="ltx_text" id="S1.T1.3.1.5.7.1" style="color:#009900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.6.1.1">CoTempQA</span> <cite class="ltx_cite ltx_citemacro_cite">Su et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib14" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.5"><span class="ltx_text" id="S1.T1.3.1.6.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.6.6"><span class="ltx_text" id="S1.T1.3.1.6.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.6.7"><span class="ltx_text" id="S1.T1.3.1.6.7.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.7.1.1">TimeBench</span> <cite class="ltx_cite ltx_citemacro_cite">Chu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib5" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.5"><span class="ltx_text" id="S1.T1.3.1.7.5.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.7.6"><span class="ltx_text" id="S1.T1.3.1.7.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.7.7"><span class="ltx_text" id="S1.T1.3.1.7.7.1" style="color:#009900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.8.1.1">TRAM</span> <cite class="ltx_cite ltx_citemacro_cite">Wang and Zhao (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib18" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.5"><span class="ltx_text" id="S1.T1.3.1.8.5.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.8.6"><span class="ltx_text" id="S1.T1.3.1.8.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.8.7"><span class="ltx_text" id="S1.T1.3.1.8.7.1" style="color:#009900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.3.1.9.1.1">ChronoSense</span> <cite class="ltx_cite ltx_citemacro_cite">Islakoglu and Kalo (<a class="ltx_ref" href="https://arxiv.org/html/2502.16922v1#bib.bib9" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.3">Rule-based</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.5"><span class="ltx_text" id="S1.T1.3.1.9.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.9.6"><span class="ltx_text" id="S1.T1.3.1.9.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.9.7"><span class="ltx_text" id="S1.T1.3.1.9.7.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.1"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.10.1.1">CTM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.2">Zh</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.3">LLM-based</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.4">-2100–1912</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.5"><span class="ltx_text" id="S1.T1.3.1.10.5.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.10.6"><span class="ltx_text" id="S1.T1.3.1.10.6.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.T1.3.1.10.7"><span class="ltx_text" id="S1.T1.3.1.10.7.1" style="color:#009900;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the Chinese Time Reasoning (CTM) benchmark with other existing temporal reasoning benchmarks across various aspects, including language, construction method, time scope covered, contextualization capabilities, temporal alignment abilities, and the complexity of aspects involved.  It highlights the unique features of CTM, such as its focus on Chinese dynastic chronology and its emphasis on contextualized and culturally-grounded reasoning.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between CTM and other benchmarks. Detailed discussion is presented in Appendix A.
> </details>





### In-depth insights


#### Chinese Dyn.
The paper extensively discusses temporal reasoning and alignment across Chinese dynasties. It introduces a new benchmark, CTM, designed to evaluate LLMs' ability to understand the nuances of Chinese dynastic chronology. **CTM emphasizes cross-entity relationships, pairwise temporal alignment, and contextualized reasoning, a significant step beyond existing benchmarks**. The focus on Chinese dynasties provides a rich cultural context, which allows for more complex temporal reasoning tasks. The tasks include dynasty determination, plausibility judgment, and script error correction. **The results reveal that current LLMs still struggle with nuanced temporal understanding and reasoning**, particularly when dealing with multiple entities or precise timestamp calculations. Further analysis suggests that improving pretraining strategies and knowledge integration are crucial for advancing temporal reasoning in LLMs.

#### CTM Benchmark
The CTM benchmark seems to be a novel contribution, **addressing the limitations of existing temporal reasoning benchmarks.** By focusing on the complexities of Chinese dynastic chronology, it introduces a deeper level of contextual and cultural grounding. This approach allows for a more comprehensive evaluation of LLMs' ability to handle nuanced temporal relationships. The benchmark's emphasis on **cross-entity relationships and pairwise temporal alignment** is particularly valuable. Introducing the **Timeline Ito Game is a creative way** to assess collaborative reasoning and temporal ordering skills. The curation of a **detailed Chinese cultural entity repository** with over 4,700 entities is commendable. The evaluation of LLMs using both zero-shot and CoT settings provides a thorough understanding of their capabilities. CTM promises to be a valuable resource for advancing temporal reasoning research, offering new challenges and insights into LLMs' abilities in this crucial area.

#### Temporal Tasks
**Temporal reasoning is fundamental to human cognition**. It has many applications in the real world. However, existing benchmarks are limited in contextual depth and the number of entities involved. LLMs have demonstrated abilities in this area. **Evaluating whether a model has a clear understanding of time within a temporal coordinate system is essential**. The Chinese dynastic chronology is suitable for temporal reasoning because of the wide historical scope and the culturally grounded knowledge it encompasses. Chinese culture has a vast timeline, with each dynasty rich in figures and cultural narratives. The design tasks examine LLMs' ability to perceive and reason about temporal relationships.

#### LLM Evaluation
**LLM evaluation is crucial** for understanding their capabilities and limitations, especially in complex tasks. Metrics like accuracy are common, but **nuanced evaluations are needed**. The paper utilizes GPT-4o as an evaluator, which helps determine correctness by comparing predictions with ground truth using Chain-of-Thought (CoT). Pass@K assesses sequential alignment, which is essential in tasks like the Timeline Ito Game. The evaluation setup influences the results, and the paper acknowledges potential variations in prompt effectiveness across tasks and models. Therefore, **careful consideration of evaluation settings is vital** for interpreting LLM performance.

#### Limited scope
While the current research offers valuable insights, it's acknowledged that the **scope has limitations**. The evaluation primarily uses direct prompting and chain-of-thought (CoT), and other prompt engineering techniques may yield varied results across tasks and LLMs. Future work should explore more adaptive prompting and diverse few-shot or zero-shot settings to provide a more robust evaluation. Also, the dataset, despite its diversity in Chinese temporal reasoning tasks, has **potential for expansion**. Enriching the dataset with more complex scenarios, longer historical events, and varied question types, along with the timeline Ito game will provide **greater challenges** for the model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.16922/x2.png)

> 🔼 Figure 2 presents a statistical overview of the Chinese Time Reasoning (CTM) benchmark dataset.  It visually summarizes the distribution of various question types within the dataset and also shows the breakdown of the Timeline Ito Game dataset into different difficulty levels based on the number of entities involved.
> <details>
> <summary>read the caption</summary>
> Figure 2: Statistic of CTM.
> </details>



![](https://arxiv.org/html/2502.16922/x3.png)

> 🔼 This figure displays the average performance across different LLMs in the Timeline Ito Game.  It shows the average accuracy of various LLMs in correctly ordering historical entities based on contextual clues and thematic metaphors.  The game involves multiple steps: describing an entity, inferring its rank based on the theme, and determining its order in the timeline.  The figure provides a summary of the overall performance, while the detailed results for each LLM are available in Appendix I.
> <details>
> <summary>read the caption</summary>
> Figure 3: Average performance of Ito’s Guessing Game. Detailed results can be found in Appendix I.
> </details>



![](https://arxiv.org/html/2502.16922/x4.png)

> 🔼 This figure displays the accuracy of various large language models (LLMs) in temporal reasoning tasks, specifically focusing on the ability to correctly identify temporal relationships between entities spanning different Chinese dynasties. The x-axis represents the minimum temporal span (in dynasties) between the entities involved in the task, while the y-axis shows the accuracy of the LLMs' predictions.  The graph illustrates how the difficulty of the task, and thus the model accuracy, changes as the time interval between entities increases.  More detailed breakdowns of this accuracy are presented in Figures 23, 24, and 25.
> <details>
> <summary>read the caption</summary>
> Figure 4: Accuracy across entity inter-dynastic intervals under direct prompting setting. The detailed results are shown in Figure 23, Figure 24 and Figure 25.
> </details>



![](https://arxiv.org/html/2502.16922/x5.png)

> 🔼 This figure compares the performance of different LLMs in temporal reasoning tasks under two settings: close-book (no external knowledge) and open-book (allowing access to external information via search engines).  The x-axis represents the different LLMs evaluated.  The y-axis displays the accuracy achieved.  The bars illustrate the performance difference between the two settings for each LLM, highlighting the impact of access to external information on temporal reasoning capabilities. More detailed results are available in Appendix J.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance in the close-book and open-book settings. Detailed results can be found in App. J.
> </details>



![](https://arxiv.org/html/2502.16922/x6.png)

> 🔼 This JSON data represents a structured format for storing information about a historical figure.  It includes fields for the person's name ('屈原'), the dynasty they lived in ('先秦'), their place of birth, birth and death years, and a list of their writings and associated sentences from their works.  Each work is listed with a title and a specific excerpt. This structured format is used to organize the data in a consistent manner for processing by a computer, allowing for easy data retrieval and analysis.
> <details>
> <summary>read the caption</summary>
> Figure 6: A JSON-format case for historical figure entity.
> </details>



![](https://arxiv.org/html/2502.16922/x7.png)

> 🔼 The figure displays a JSON-formatted example representing a place entity within the CTM benchmark dataset.  The JSON structure includes fields such as 'dynasty' (specifying the Chinese dynasty), 'id', 'begin' and 'end' (for temporal range), 'pre_address' (the modern equivalent of the location), and 'subordinate_units' (containing information about administrative divisions within the place during that period). This is a structured way of representing the data for historical places within the dataset, facilitating efficient processing and analysis by machine learning models during evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 7: A JSON-format case for place entity.
> </details>



![](https://arxiv.org/html/2502.16922/x8.png)

> 🔼 Figure 8 displays a JSON formatted example representing an event entity from the CTM dataset.  It shows the structure used to represent events in a standardized way, including fields like 'id', 'dynasty' (the historical dynasty in which the event occurred), and 'main_figures' (key individuals involved). This structured format facilitates data processing and analysis for tasks involving temporal reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 8: A JSON-format case for event entity.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.12.12">
<tr class="ltx_tr" id="S2.T2.12.12.13">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T2.12.12.13.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.13.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S2.T2.12.12.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.13.2.1">Cross Temp Count</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S2.T2.12.12.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.13.3.1">Question Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.12.12.13.4" rowspan="3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.13.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="=1" class="ltx_Math" display="inline" id="S2.T2.1.1.1.1.m1.1"><semantics id="S2.T2.1.1.1.1.m1.1a"><mrow id="S2.T2.1.1.1.1.m1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.cmml"><mi id="S2.T2.1.1.1.1.m1.1.1.2" xref="S2.T2.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S2.T2.1.1.1.1.m1.1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S2.T2.1.1.1.1.m1.1.1.3" xref="S2.T2.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.1.m1.1b"><apply id="S2.T2.1.1.1.1.m1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1"><eq id="S2.T2.1.1.1.1.m1.1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1"></eq><csymbol cd="latexml" id="S2.T2.1.1.1.1.m1.1.1.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.2">absent</csymbol><cn id="S2.T2.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.1.m1.1c">=1</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.1.m1.1d">= 1</annotation></semantics></math> (EDD)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="=2" class="ltx_Math" display="inline" id="S2.T2.2.2.2.2.m1.1"><semantics id="S2.T2.2.2.2.2.m1.1a"><mrow id="S2.T2.2.2.2.2.m1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.cmml"><mi id="S2.T2.2.2.2.2.m1.1.1.2" xref="S2.T2.2.2.2.2.m1.1.1.2.cmml"></mi><mo id="S2.T2.2.2.2.2.m1.1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S2.T2.2.2.2.2.m1.1.1.3" xref="S2.T2.2.2.2.2.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.2.2.m1.1b"><apply id="S2.T2.2.2.2.2.m1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1"><eq id="S2.T2.2.2.2.2.m1.1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1"></eq><csymbol cd="latexml" id="S2.T2.2.2.2.2.m1.1.1.2.cmml" xref="S2.T2.2.2.2.2.m1.1.1.2">absent</csymbol><cn id="S2.T2.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S2.T2.2.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.2.2.m1.1c">=2</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.2.2.m1.1d">= 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="=3" class="ltx_Math" display="inline" id="S2.T2.3.3.3.3.m1.1"><semantics id="S2.T2.3.3.3.3.m1.1a"><mrow id="S2.T2.3.3.3.3.m1.1.1" xref="S2.T2.3.3.3.3.m1.1.1.cmml"><mi id="S2.T2.3.3.3.3.m1.1.1.2" xref="S2.T2.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S2.T2.3.3.3.3.m1.1.1.1" xref="S2.T2.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S2.T2.3.3.3.3.m1.1.1.3" xref="S2.T2.3.3.3.3.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.3.3.m1.1b"><apply id="S2.T2.3.3.3.3.m1.1.1.cmml" xref="S2.T2.3.3.3.3.m1.1.1"><eq id="S2.T2.3.3.3.3.m1.1.1.1.cmml" xref="S2.T2.3.3.3.3.m1.1.1.1"></eq><csymbol cd="latexml" id="S2.T2.3.3.3.3.m1.1.1.2.cmml" xref="S2.T2.3.3.3.3.m1.1.1.2">absent</csymbol><cn id="S2.T2.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S2.T2.3.3.3.3.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.3.3.m1.1c">=3</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.3.3.m1.1d">= 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\geq 4" class="ltx_Math" display="inline" id="S2.T2.4.4.4.4.m1.1"><semantics id="S2.T2.4.4.4.4.m1.1a"><mrow id="S2.T2.4.4.4.4.m1.1.1" xref="S2.T2.4.4.4.4.m1.1.1.cmml"><mi id="S2.T2.4.4.4.4.m1.1.1.2" xref="S2.T2.4.4.4.4.m1.1.1.2.cmml"></mi><mo id="S2.T2.4.4.4.4.m1.1.1.1" xref="S2.T2.4.4.4.4.m1.1.1.1.cmml">≥</mo><mn id="S2.T2.4.4.4.4.m1.1.1.3" xref="S2.T2.4.4.4.4.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.4.4.m1.1b"><apply id="S2.T2.4.4.4.4.m1.1.1.cmml" xref="S2.T2.4.4.4.4.m1.1.1"><geq id="S2.T2.4.4.4.4.m1.1.1.1.cmml" xref="S2.T2.4.4.4.4.m1.1.1.1"></geq><csymbol cd="latexml" id="S2.T2.4.4.4.4.m1.1.1.2.cmml" xref="S2.T2.4.4.4.4.m1.1.1.2">absent</csymbol><cn id="S2.T2.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="S2.T2.4.4.4.4.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.4.4.m1.1c">\geq 4</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.4.4.m1.1d">≥ 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\geq 4_{L}" class="ltx_Math" display="inline" id="S2.T2.5.5.5.5.m1.1"><semantics id="S2.T2.5.5.5.5.m1.1a"><mrow id="S2.T2.5.5.5.5.m1.1.1" xref="S2.T2.5.5.5.5.m1.1.1.cmml"><mi id="S2.T2.5.5.5.5.m1.1.1.2" xref="S2.T2.5.5.5.5.m1.1.1.2.cmml"></mi><mo id="S2.T2.5.5.5.5.m1.1.1.1" xref="S2.T2.5.5.5.5.m1.1.1.1.cmml">≥</mo><msub id="S2.T2.5.5.5.5.m1.1.1.3" xref="S2.T2.5.5.5.5.m1.1.1.3.cmml"><mn id="S2.T2.5.5.5.5.m1.1.1.3.2" xref="S2.T2.5.5.5.5.m1.1.1.3.2.cmml">4</mn><mi id="S2.T2.5.5.5.5.m1.1.1.3.3" xref="S2.T2.5.5.5.5.m1.1.1.3.3.cmml">L</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.5.5.5.5.m1.1b"><apply id="S2.T2.5.5.5.5.m1.1.1.cmml" xref="S2.T2.5.5.5.5.m1.1.1"><geq id="S2.T2.5.5.5.5.m1.1.1.1.cmml" xref="S2.T2.5.5.5.5.m1.1.1.1"></geq><csymbol cd="latexml" id="S2.T2.5.5.5.5.m1.1.1.2.cmml" xref="S2.T2.5.5.5.5.m1.1.1.2">absent</csymbol><apply id="S2.T2.5.5.5.5.m1.1.1.3.cmml" xref="S2.T2.5.5.5.5.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.5.5.5.5.m1.1.1.3.1.cmml" xref="S2.T2.5.5.5.5.m1.1.1.3">subscript</csymbol><cn id="S2.T2.5.5.5.5.m1.1.1.3.2.cmml" type="integer" xref="S2.T2.5.5.5.5.m1.1.1.3.2">4</cn><ci id="S2.T2.5.5.5.5.m1.1.1.3.3.cmml" xref="S2.T2.5.5.5.5.m1.1.1.3.3">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.5.5.5.m1.1c">\geq 4_{L}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.5.5.5.m1.1d">≥ 4 start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math> (LSEC)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">PJ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">TOU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">RR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;">SEC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.10" style="padding-left:2.0pt;padding-right:2.0pt;">EEU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.5.5.11" style="padding-left:2.0pt;padding-right:2.0pt;">TIC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.5.5.5.12" style="padding-left:2.0pt;padding-right:2.0pt;">TES</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S2.T2.12.12.14.1" style="background-color:#9FC3E0;padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.14.1.1" style="background-color:#9FC3E0;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S2.T2.12.12.14.1.1.1">Closed-Sourced LLMs</span></span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.12.12.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.2" style="padding-left:2.0pt;padding-right:2.0pt;">56.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">44.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.15.6" style="padding-left:2.0pt;padding-right:2.0pt;">53.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.7" style="padding-left:2.0pt;padding-right:2.0pt;">58.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.9" style="padding-left:2.0pt;padding-right:2.0pt;">57.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.11" style="padding-left:2.0pt;padding-right:2.0pt;">40.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.12" style="padding-left:2.0pt;padding-right:2.0pt;">15.36</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.15.13" style="padding-left:2.0pt;padding-right:2.0pt;">59.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.15.14" style="padding-left:2.0pt;padding-right:2.0pt;">48.08</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.16.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.16.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.2.1">67.40</span><span class="ltx_text" id="S2.T2.12.12.16.2.2" style="color:#FF0000;">+10.88</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.3.1">58.08</span><span class="ltx_text" id="S2.T2.12.12.16.3.2" style="color:#FF0000;">+6.96</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">49.24<span class="ltx_text" id="S2.T2.12.12.16.4.1" style="color:#FF0000;">+4.48</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.60<span class="ltx_text" id="S2.T2.12.12.16.5.1" style="color:#FF0000;">+3.50</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.16.6" style="padding-left:2.0pt;padding-right:2.0pt;">31.60<span class="ltx_text" id="S2.T2.12.12.16.6.1" style="color:#206546;">-22.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.7.1">64.10</span><span class="ltx_text" id="S2.T2.12.12.16.7.2" style="color:#FF0000;">+5.46</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.8.1">44.71</span><span class="ltx_text" id="S2.T2.12.12.16.8.2" style="color:#FF0000;">+6.29</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.9.1">59.62</span><span class="ltx_text" id="S2.T2.12.12.16.9.2" style="color:#FF0000;">+2.36</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.10.1">47.09</span><span class="ltx_text" id="S2.T2.12.12.16.10.2" style="color:#FF0000;">+10.94</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.11" style="padding-left:2.0pt;padding-right:2.0pt;">44.06<span class="ltx_text" id="S2.T2.12.12.16.11.1" style="color:#FF0000;">+3.48</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.12" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.12.1">17.70</span><span class="ltx_text" id="S2.T2.12.12.16.12.2" style="color:#FF0000;">+2.34</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.16.13" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.13.1">61.68</span><span class="ltx_text" id="S2.T2.12.12.16.13.2" style="color:#FF0000;">+2.37</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.16.14" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.16.14.1">54.21</span><span class="ltx_text" id="S2.T2.12.12.16.14.2" style="color:#FF0000;">+6.13</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.12.12.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen-max</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.2" style="padding-left:2.0pt;padding-right:2.0pt;">60.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.3" style="padding-left:2.0pt;padding-right:2.0pt;">53.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.17.4.1">50.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.5" style="padding-left:2.0pt;padding-right:2.0pt;">30.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.17.6.1">62.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.17.7.1">64.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.8" style="padding-left:2.0pt;padding-right:2.0pt;">42.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.9" style="padding-left:2.0pt;padding-right:2.0pt;">59.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.10" style="padding-left:2.0pt;padding-right:2.0pt;">40.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.17.11.1">46.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.17.12.1">20.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.17.13" style="padding-left:2.0pt;padding-right:2.0pt;">60.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.17.14" style="padding-left:2.0pt;padding-right:2.0pt;">52.27</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.18.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.2.1">69.56</span><span class="ltx_text" id="S2.T2.12.12.18.2.2" style="color:#FF0000;">+9.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.3.1">59.32</span><span class="ltx_text" id="S2.T2.12.12.18.3.2" style="color:#FF0000;">+6.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.4.1">54.48</span><span class="ltx_text" id="S2.T2.12.12.18.4.2" style="color:#FF0000;">+3.94</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.18.5.1">31.90</span><span class="ltx_text" id="S2.T2.12.12.18.5.2" style="color:#FF0000;">+1.10</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.18.6" style="padding-left:2.0pt;padding-right:2.0pt;">39.60<span class="ltx_text" id="S2.T2.12.12.18.6.1" style="color:#206546;">-22.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.7" style="padding-left:2.0pt;padding-right:2.0pt;">63.29<span class="ltx_text" id="S2.T2.12.12.18.7.1" style="color:#FF0000;">-1.10</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.8.1">48.58</span><span class="ltx_text" id="S2.T2.12.12.18.8.2" style="color:#FF0000;">+6.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.9.1">63.75</span><span class="ltx_text" id="S2.T2.12.12.18.9.2" style="color:#FF0000;">+4.65</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.10.1">55.77</span><span class="ltx_text" id="S2.T2.12.12.18.10.2" style="color:#FF0000;">+15.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.11" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.11.1">53.91</span><span class="ltx_text" id="S2.T2.12.12.18.11.2" style="color:#FF0000;">+7.53</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.12" style="padding-left:2.0pt;padding-right:2.0pt;">15.19<span class="ltx_text" id="S2.T2.12.12.18.12.1" style="color:#FF0000;">-5.68</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.18.13" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.13.1">63.14</span><span class="ltx_text" id="S2.T2.12.12.18.13.2" style="color:#FF0000;">+2.92</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.18.14" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T2.12.12.18.14.1">57.24</span><span class="ltx_text" id="S2.T2.12.12.18.14.2" style="color:#FF0000;">+4.97</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.19" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.12.12.19.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.1.1" style="background-color:#F2F2F2;">o1-preview</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.2.1" style="background-color:#F2F2F2;">52.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.3.1" style="background-color:#F2F2F2;">46.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.4.1" style="background-color:#F2F2F2;">49.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.19.5.1" style="background-color:#F2F2F2;">32.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.19.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.19.6.1" style="background-color:#F2F2F2;">67.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.7.1" style="background-color:#F2F2F2;">58.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.8.1" style="background-color:#F2F2F2;">44.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.9.1" style="background-color:#F2F2F2;">53.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.10.1" style="background-color:#F2F2F2;">43.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.11.1" style="background-color:#F2F2F2;">40.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.12.1" style="background-color:#F2F2F2;">11.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.19.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.13.1" style="background-color:#F2F2F2;">56.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.19.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.19.14.1" style="background-color:#F2F2F2;">48.24</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S2.T2.12.12.20.1" style="background-color:#FFF0B4;padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.20.1.1" style="background-color:#FFF0B4;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S2.T2.12.12.20.1.1.1">Open-Sourced LLMs</span></span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">LLaMA3.1<math alttext="{}_{\text{8b}}" class="ltx_Math" display="inline" id="S2.T2.6.6.6.1.m1.1"><semantics id="S2.T2.6.6.6.1.m1.1a"><msub id="S2.T2.6.6.6.1.m1.1.1" xref="S2.T2.6.6.6.1.m1.1.1.cmml"><mi id="S2.T2.6.6.6.1.m1.1.1a" xref="S2.T2.6.6.6.1.m1.1.1.cmml"></mi><mtext id="S2.T2.6.6.6.1.m1.1.1.1" xref="S2.T2.6.6.6.1.m1.1.1.1a.cmml">8b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.6.6.6.1.m1.1b"><apply id="S2.T2.6.6.6.1.m1.1.1.cmml" xref="S2.T2.6.6.6.1.m1.1.1"><ci id="S2.T2.6.6.6.1.m1.1.1.1a.cmml" xref="S2.T2.6.6.6.1.m1.1.1.1"><mtext id="S2.T2.6.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.6.6.6.1.m1.1.1.1">8b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.6.6.6.1.m1.1c">{}_{\text{8b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.6.6.6.1.m1.1d">start_FLOATSUBSCRIPT 8b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">33.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">16.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">15.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">9.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">10.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;">19.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;">12.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;">18.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.10" style="padding-left:2.0pt;padding-right:2.0pt;">7.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.11" style="padding-left:2.0pt;padding-right:2.0pt;">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.12" style="padding-left:2.0pt;padding-right:2.0pt;">2.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.6.13" style="padding-left:2.0pt;padding-right:2.0pt;">37.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.6.14" style="padding-left:2.0pt;padding-right:2.0pt;">20.14</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.21.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.21.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.2" style="padding-left:2.0pt;padding-right:2.0pt;">35.05<span class="ltx_text" id="S2.T2.12.12.21.2.1" style="color:#FF0000;">+2.01</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.3" style="padding-left:2.0pt;padding-right:2.0pt;">26.44<span class="ltx_text" id="S2.T2.12.12.21.3.1" style="color:#FF0000;">+9.58</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.4" style="padding-left:2.0pt;padding-right:2.0pt;">19.96<span class="ltx_text" id="S2.T2.12.12.21.4.1" style="color:#FF0000;">+4.36</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.5" style="padding-left:2.0pt;padding-right:2.0pt;">10.70<span class="ltx_text" id="S2.T2.12.12.21.5.1" style="color:#FF0000;">+1.60</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.21.6" style="padding-left:2.0pt;padding-right:2.0pt;">12.40<span class="ltx_text" id="S2.T2.12.12.21.6.1" style="color:#FF0000;">+1.60</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.7" style="padding-left:2.0pt;padding-right:2.0pt;">26.48<span class="ltx_text" id="S2.T2.12.12.21.7.1" style="color:#FF0000;">+6.82</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.8" style="padding-left:2.0pt;padding-right:2.0pt;">19.55<span class="ltx_text" id="S2.T2.12.12.21.8.1" style="color:#FF0000;">+6.60</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.9" style="padding-left:2.0pt;padding-right:2.0pt;">23.20<span class="ltx_text" id="S2.T2.12.12.21.9.1" style="color:#FF0000;">+4.55</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.10" style="padding-left:2.0pt;padding-right:2.0pt;">20.02<span class="ltx_text" id="S2.T2.12.12.21.10.1" style="color:#FF0000;">+12.65</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.11" style="padding-left:2.0pt;padding-right:2.0pt;">15.70<span class="ltx_text" id="S2.T2.12.12.21.11.1" style="color:#FF0000;">+14.83</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.12" style="padding-left:2.0pt;padding-right:2.0pt;">5.51<span class="ltx_text" id="S2.T2.12.12.21.12.1" style="color:#FF0000;">+3.50</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.21.13" style="padding-left:2.0pt;padding-right:2.0pt;">34.37<span class="ltx_text" id="S2.T2.12.12.21.13.1" style="color:#206546;">-2.67</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.21.14" style="padding-left:2.0pt;padding-right:2.0pt;">24.91<span class="ltx_text" id="S2.T2.12.12.21.14.1" style="color:#FF0000;">+4.77</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">ChatGLM3<math alttext="{}_{\text{6b}}" class="ltx_Math" display="inline" id="S2.T2.7.7.7.1.m1.1"><semantics id="S2.T2.7.7.7.1.m1.1a"><msub id="S2.T2.7.7.7.1.m1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.cmml"><mi id="S2.T2.7.7.7.1.m1.1.1a" xref="S2.T2.7.7.7.1.m1.1.1.cmml"></mi><mtext id="S2.T2.7.7.7.1.m1.1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.1a.cmml">6b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.7.7.7.1.m1.1b"><apply id="S2.T2.7.7.7.1.m1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1"><ci id="S2.T2.7.7.7.1.m1.1.1.1a.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1"><mtext id="S2.T2.7.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.7.7.7.1.m1.1.1.1">6b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.7.7.7.1.m1.1c">{}_{\text{6b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.7.7.7.1.m1.1d">start_FLOATSUBSCRIPT 6b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">38.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">21.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">16.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">5.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">4.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">21.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">12.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">22.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.10" style="padding-left:2.0pt;padding-right:2.0pt;">12.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.11" style="padding-left:2.0pt;padding-right:2.0pt;">12.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.12" style="padding-left:2.0pt;padding-right:2.0pt;">1.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.7.7.7.13" style="padding-left:2.0pt;padding-right:2.0pt;">35.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.7.14" style="padding-left:2.0pt;padding-right:2.0pt;">22.52</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.22.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.22.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.2" style="padding-left:2.0pt;padding-right:2.0pt;">37.24<span class="ltx_text" id="S2.T2.12.12.22.2.1" style="color:#206546;">-1.16</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.3" style="padding-left:2.0pt;padding-right:2.0pt;">22.72<span class="ltx_text" id="S2.T2.12.12.22.3.1" style="color:#FF0000;">+1.12</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.4" style="padding-left:2.0pt;padding-right:2.0pt;">15.28<span class="ltx_text" id="S2.T2.12.12.22.4.1" style="color:#206546;">-0.76</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.5" style="padding-left:2.0pt;padding-right:2.0pt;">8.20<span class="ltx_text" id="S2.T2.12.12.22.5.1" style="color:#FF0000;">+2.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.22.6" style="padding-left:2.0pt;padding-right:2.0pt;">4.00<span class="ltx_text" id="S2.T2.12.12.22.6.1" style="color:#206546;">-0.80</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.7" style="padding-left:2.0pt;padding-right:2.0pt;">20.32<span class="ltx_text" id="S2.T2.12.12.22.7.1" style="color:#206546;">-1.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.8" style="padding-left:2.0pt;padding-right:2.0pt;">15.92<span class="ltx_text" id="S2.T2.12.12.22.8.1" style="color:#FF0000;">+3.64</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.9" style="padding-left:2.0pt;padding-right:2.0pt;">20.12<span class="ltx_text" id="S2.T2.12.12.22.9.1" style="color:#206546;">-2.55</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.10" style="padding-left:2.0pt;padding-right:2.0pt;">14.98<span class="ltx_text" id="S2.T2.12.12.22.10.1" style="color:#FF0000;">+2.73</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.11" style="padding-left:2.0pt;padding-right:2.0pt;">16.52<span class="ltx_text" id="S2.T2.12.12.22.11.1" style="color:#FF0000;">+3.77</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.12" style="padding-left:2.0pt;padding-right:2.0pt;">3.01<span class="ltx_text" id="S2.T2.12.12.22.12.1" style="color:#FF0000;">+1.17</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.22.13" style="padding-left:2.0pt;padding-right:2.0pt;">29.74<span class="ltx_text" id="S2.T2.12.12.22.13.1" style="color:#206546;">-5.84</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.22.14" style="padding-left:2.0pt;padding-right:2.0pt;">22.61<span class="ltx_text" id="S2.T2.12.12.22.14.1" style="color:#FF0000;">+0.09</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">InternLM2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="S2.T2.8.8.8.1.m1.1"><semantics id="S2.T2.8.8.8.1.m1.1a"><msub id="S2.T2.8.8.8.1.m1.1.1" xref="S2.T2.8.8.8.1.m1.1.1.cmml"><mi id="S2.T2.8.8.8.1.m1.1.1a" xref="S2.T2.8.8.8.1.m1.1.1.cmml"></mi><mtext id="S2.T2.8.8.8.1.m1.1.1.1" xref="S2.T2.8.8.8.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.8.8.8.1.m1.1b"><apply id="S2.T2.8.8.8.1.m1.1.1.cmml" xref="S2.T2.8.8.8.1.m1.1.1"><ci id="S2.T2.8.8.8.1.m1.1.1.1a.cmml" xref="S2.T2.8.8.8.1.m1.1.1.1"><mtext id="S2.T2.8.8.8.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.8.8.8.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.8.8.8.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.8.8.8.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">60.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">47.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">39.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">21.60</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;">42.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">51.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.8" style="padding-left:2.0pt;padding-right:2.0pt;">30.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.9" style="padding-left:2.0pt;padding-right:2.0pt;">48.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.10" style="padding-left:2.0pt;padding-right:2.0pt;">45.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.11" style="padding-left:2.0pt;padding-right:2.0pt;">42.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.12" style="padding-left:2.0pt;padding-right:2.0pt;">11.19</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.8.8.8.13" style="padding-left:2.0pt;padding-right:2.0pt;">50.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.8.8.8.14" style="padding-left:2.0pt;padding-right:2.0pt;">45.75</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.23.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.23.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.2" style="padding-left:2.0pt;padding-right:2.0pt;">61.44<span class="ltx_text" id="S2.T2.12.12.23.2.1" style="color:#FF0000;">+0.80</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.40<span class="ltx_text" id="S2.T2.12.12.23.3.1" style="color:#FF0000;">+4.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.4" style="padding-left:2.0pt;padding-right:2.0pt;">39.36<span class="ltx_text" id="S2.T2.12.12.23.4.1" style="color:#FF0000;">+0.00</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.5" style="padding-left:2.0pt;padding-right:2.0pt;">20.20<span class="ltx_text" id="S2.T2.12.12.23.5.1" style="color:#206546;">-1.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.23.6" style="padding-left:2.0pt;padding-right:2.0pt;">38.00<span class="ltx_text" id="S2.T2.12.12.23.6.1" style="color:#206546;">-4.00</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.7" style="padding-left:2.0pt;padding-right:2.0pt;">51.70<span class="ltx_text" id="S2.T2.12.12.23.7.1" style="color:#FF0000;">+0.31</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.8" style="padding-left:2.0pt;padding-right:2.0pt;">31.45<span class="ltx_text" id="S2.T2.12.12.23.8.1" style="color:#FF0000;">+1.29</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.9" style="padding-left:2.0pt;padding-right:2.0pt;">49.47<span class="ltx_text" id="S2.T2.12.12.23.9.1" style="color:#FF0000;">+0.83</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.10" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.23.10.1">52.86</span><span class="ltx_text" id="S2.T2.12.12.23.10.2" style="color:#FF0000;">+7.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.11" style="padding-left:2.0pt;padding-right:2.0pt;">44.19<span class="ltx_text" id="S2.T2.12.12.23.11.1" style="color:#FF0000;">+1.58</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.12" style="padding-left:2.0pt;padding-right:2.0pt;">11.52<span class="ltx_text" id="S2.T2.12.12.23.12.1" style="color:#FF0000;">+0.33</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.23.13" style="padding-left:2.0pt;padding-right:2.0pt;">48.54<span class="ltx_text" id="S2.T2.12.12.23.13.1" style="color:#206546;">-1.64</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.23.14" style="padding-left:2.0pt;padding-right:2.0pt;">46.90<span class="ltx_text" id="S2.T2.12.12.23.14.1" style="color:#FF0000;">+1.15</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="S2.T2.9.9.9.1.m1.1"><semantics id="S2.T2.9.9.9.1.m1.1a"><msub id="S2.T2.9.9.9.1.m1.1.1" xref="S2.T2.9.9.9.1.m1.1.1.cmml"><mi id="S2.T2.9.9.9.1.m1.1.1a" xref="S2.T2.9.9.9.1.m1.1.1.cmml"></mi><mtext id="S2.T2.9.9.9.1.m1.1.1.1" xref="S2.T2.9.9.9.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.9.9.9.1.m1.1b"><apply id="S2.T2.9.9.9.1.m1.1.1.cmml" xref="S2.T2.9.9.9.1.m1.1.1"><ci id="S2.T2.9.9.9.1.m1.1.1.1a.cmml" xref="S2.T2.9.9.9.1.m1.1.1.1"><mtext id="S2.T2.9.9.9.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.9.9.9.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.9.9.9.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.9.9.9.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">51.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">39.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">35.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">12.40</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">46.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">26.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.9" style="padding-left:2.0pt;padding-right:2.0pt;">46.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.10" style="padding-left:2.0pt;padding-right:2.0pt;">24.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.11" style="padding-left:2.0pt;padding-right:2.0pt;">36.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.12" style="padding-left:2.0pt;padding-right:2.0pt;">7.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.9.9.9.13" style="padding-left:2.0pt;padding-right:2.0pt;">52.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.9.9.14" style="padding-left:2.0pt;padding-right:2.0pt;">38.76</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.24.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.24.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.2" style="padding-left:2.0pt;padding-right:2.0pt;">59.96<span class="ltx_text" id="S2.T2.12.12.24.2.1" style="color:#FF0000;">+8.16</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.3" style="padding-left:2.0pt;padding-right:2.0pt;">47.60<span class="ltx_text" id="S2.T2.12.12.24.3.1" style="color:#FF0000;">+7.72</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.4" style="padding-left:2.0pt;padding-right:2.0pt;">36.64<span class="ltx_text" id="S2.T2.12.12.24.4.1" style="color:#FF0000;">+0.68</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.5" style="padding-left:2.0pt;padding-right:2.0pt;">18.30<span class="ltx_text" id="S2.T2.12.12.24.5.1" style="color:#FF0000;">+5.90</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.24.6" style="padding-left:2.0pt;padding-right:2.0pt;">30.80<span class="ltx_text" id="S2.T2.12.12.24.6.1" style="color:#FF0000;">+0.80</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.7" style="padding-left:2.0pt;padding-right:2.0pt;">52.46<span class="ltx_text" id="S2.T2.12.12.24.7.1" style="color:#FF0000;">+6.18</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.8" style="padding-left:2.0pt;padding-right:2.0pt;">29.95<span class="ltx_text" id="S2.T2.12.12.24.8.1" style="color:#FF0000;">+3.57</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.9" style="padding-left:2.0pt;padding-right:2.0pt;">52.18<span class="ltx_text" id="S2.T2.12.12.24.9.1" style="color:#FF0000;">+5.90</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.10" style="padding-left:2.0pt;padding-right:2.0pt;">34.13<span class="ltx_text" id="S2.T2.12.12.24.10.1" style="color:#FF0000;">+9.99</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.11" style="padding-left:2.0pt;padding-right:2.0pt;">40.58<span class="ltx_text" id="S2.T2.12.12.24.11.1" style="color:#FF0000;">+4.35</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.12" style="padding-left:2.0pt;padding-right:2.0pt;">8.18<span class="ltx_text" id="S2.T2.12.12.24.12.1" style="color:#FF0000;">+0.83</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.24.13" style="padding-left:2.0pt;padding-right:2.0pt;">49.64<span class="ltx_text" id="S2.T2.12.12.24.13.1" style="color:#FF0000;">-2.37</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.24.14" style="padding-left:2.0pt;padding-right:2.0pt;">44.22<span class="ltx_text" id="S2.T2.12.12.24.14.1" style="color:#FF0000;">+5.46</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{14b}}" class="ltx_Math" display="inline" id="S2.T2.10.10.10.1.m1.1"><semantics id="S2.T2.10.10.10.1.m1.1a"><msub id="S2.T2.10.10.10.1.m1.1.1" xref="S2.T2.10.10.10.1.m1.1.1.cmml"><mi id="S2.T2.10.10.10.1.m1.1.1a" xref="S2.T2.10.10.10.1.m1.1.1.cmml"></mi><mtext id="S2.T2.10.10.10.1.m1.1.1.1" xref="S2.T2.10.10.10.1.m1.1.1.1a.cmml">14b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.10.10.10.1.m1.1b"><apply id="S2.T2.10.10.10.1.m1.1.1.cmml" xref="S2.T2.10.10.10.1.m1.1.1"><ci id="S2.T2.10.10.10.1.m1.1.1.1a.cmml" xref="S2.T2.10.10.10.1.m1.1.1.1"><mtext id="S2.T2.10.10.10.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.10.10.10.1.m1.1.1.1">14b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.10.10.10.1.m1.1c">{}_{\text{14b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.10.10.10.1.m1.1d">start_FLOATSUBSCRIPT 14b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">54.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">42.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.10.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">42.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">57.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.8" style="padding-left:2.0pt;padding-right:2.0pt;">36.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">51.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.11" style="padding-left:2.0pt;padding-right:2.0pt;">39.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.12" style="padding-left:2.0pt;padding-right:2.0pt;">18.26</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.10.10.10.13" style="padding-left:2.0pt;padding-right:2.0pt;">58.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.14" style="padding-left:2.0pt;padding-right:2.0pt;">46.32</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.25.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.25.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.2" style="padding-left:2.0pt;padding-right:2.0pt;">57.92<span class="ltx_text" id="S2.T2.12.12.25.2.1" style="color:#FF0000;">+3.56</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.3" style="padding-left:2.0pt;padding-right:2.0pt;">45.44<span class="ltx_text" id="S2.T2.12.12.25.3.1" style="color:#206546;">-5.72</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.4" style="padding-left:2.0pt;padding-right:2.0pt;">41.24<span class="ltx_text" id="S2.T2.12.12.25.4.1" style="color:#206546;">-1.32</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.5" style="padding-left:2.0pt;padding-right:2.0pt;">22.50<span class="ltx_text" id="S2.T2.12.12.25.5.1" style="color:#206546;">-1.30</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.25.6" style="padding-left:2.0pt;padding-right:2.0pt;">30.80<span class="ltx_text" id="S2.T2.12.12.25.6.1" style="color:#206546;">-11.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.7" style="padding-left:2.0pt;padding-right:2.0pt;">52.73<span class="ltx_text" id="S2.T2.12.12.25.7.1" style="color:#206546;">-4.71</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.8" style="padding-left:2.0pt;padding-right:2.0pt;">34.36<span class="ltx_text" id="S2.T2.12.12.25.8.1" style="color:#206546;">-2.50</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.9" style="padding-left:2.0pt;padding-right:2.0pt;">46.52<span class="ltx_text" id="S2.T2.12.12.25.9.1" style="color:#206546;">-5.31</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.10" style="padding-left:2.0pt;padding-right:2.0pt;">42.57<span class="ltx_text" id="S2.T2.12.12.25.10.1" style="color:#FF0000;">+5.67</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.11" style="padding-left:2.0pt;padding-right:2.0pt;">36.81<span class="ltx_text" id="S2.T2.12.12.25.11.1" style="color:#206546;">-2.26</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.12" style="padding-left:2.0pt;padding-right:2.0pt;">10.02<span class="ltx_text" id="S2.T2.12.12.25.12.1" style="color:#206546;">-8.24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.25.13" style="padding-left:2.0pt;padding-right:2.0pt;">51.82<span class="ltx_text" id="S2.T2.12.12.25.13.1" style="color:#206546;">-6.76</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.25.14" style="padding-left:2.0pt;padding-right:2.0pt;">44.89<span class="ltx_text" id="S2.T2.12.12.25.14.1" style="color:#206546;">-1.43</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.11.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{32b}}" class="ltx_Math" display="inline" id="S2.T2.11.11.11.1.m1.1"><semantics id="S2.T2.11.11.11.1.m1.1a"><msub id="S2.T2.11.11.11.1.m1.1.1" xref="S2.T2.11.11.11.1.m1.1.1.cmml"><mi id="S2.T2.11.11.11.1.m1.1.1a" xref="S2.T2.11.11.11.1.m1.1.1.cmml"></mi><mtext id="S2.T2.11.11.11.1.m1.1.1.1" xref="S2.T2.11.11.11.1.m1.1.1.1a.cmml">32b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.11.11.11.1.m1.1b"><apply id="S2.T2.11.11.11.1.m1.1.1.cmml" xref="S2.T2.11.11.11.1.m1.1.1"><ci id="S2.T2.11.11.11.1.m1.1.1.1a.cmml" xref="S2.T2.11.11.11.1.m1.1.1.1"><mtext id="S2.T2.11.11.11.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.11.11.11.1.m1.1.1.1">32b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.11.11.11.1.m1.1c">{}_{\text{32b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.11.11.11.1.m1.1d">start_FLOATSUBSCRIPT 32b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;">56.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.3" style="padding-left:2.0pt;padding-right:2.0pt;">52.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.11.11.11.6" style="padding-left:2.0pt;padding-right:2.0pt;">46.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.7" style="padding-left:2.0pt;padding-right:2.0pt;">60.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.9" style="padding-left:2.0pt;padding-right:2.0pt;">56.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.10" style="padding-left:2.0pt;padding-right:2.0pt;">39.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.11" style="padding-left:2.0pt;padding-right:2.0pt;">43.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.12" style="padding-left:2.0pt;padding-right:2.0pt;">20.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.11.11.11.13" style="padding-left:2.0pt;padding-right:2.0pt;">60.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.11.11.14" style="padding-left:2.0pt;padding-right:2.0pt;">48.83</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.26.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.26.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.2" style="padding-left:2.0pt;padding-right:2.0pt;">60.80<span class="ltx_text" id="S2.T2.12.12.26.2.1" style="color:#FF0000;">+4.52</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.3" style="padding-left:2.0pt;padding-right:2.0pt;">49.32<span class="ltx_text" id="S2.T2.12.12.26.3.1" style="color:#206546;">-3.46</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.4" style="padding-left:2.0pt;padding-right:2.0pt;">45.32<span class="ltx_text" id="S2.T2.12.12.26.4.1" style="color:#206546;">-0.92</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.5" style="padding-left:2.0pt;padding-right:2.0pt;">24.80<span class="ltx_text" id="S2.T2.12.12.26.5.1" style="color:#206546;">-2.10</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.26.6" style="padding-left:2.0pt;padding-right:2.0pt;">31.20<span class="ltx_text" id="S2.T2.12.12.26.6.1" style="color:#206546;">-15.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.7" style="padding-left:2.0pt;padding-right:2.0pt;">50.67<span class="ltx_text" id="S2.T2.12.12.26.7.1" style="color:#206546;">-9.99</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.8" style="padding-left:2.0pt;padding-right:2.0pt;">40.65<span class="ltx_text" id="S2.T2.12.12.26.8.1" style="color:#FF0000;">+2.11</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.9" style="padding-left:2.0pt;padding-right:2.0pt;">51.12<span class="ltx_text" id="S2.T2.12.12.26.9.1" style="color:#206546;">-5.67</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.10" style="padding-left:2.0pt;padding-right:2.0pt;">43.40<span class="ltx_text" id="S2.T2.12.12.26.10.1" style="color:#FF0000;">+4.28</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.11" style="padding-left:2.0pt;padding-right:2.0pt;">40.29<span class="ltx_text" id="S2.T2.12.12.26.11.1" style="color:#206546;">-3.48</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.12" style="padding-left:2.0pt;padding-right:2.0pt;">17.03<span class="ltx_text" id="S2.T2.12.12.26.12.1" style="color:#206546;">-3.07</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.26.13" style="padding-left:2.0pt;padding-right:2.0pt;">57.12<span class="ltx_text" id="S2.T2.12.12.26.13.1" style="color:#206546;">-2.92</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.26.14" style="padding-left:2.0pt;padding-right:2.0pt;">48.14<span class="ltx_text" id="S2.T2.12.12.26.14.1" style="color:#206546;">-0.69</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.12.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{72b}}" class="ltx_Math" display="inline" id="S2.T2.12.12.12.1.m1.1"><semantics id="S2.T2.12.12.12.1.m1.1a"><msub id="S2.T2.12.12.12.1.m1.1.1" xref="S2.T2.12.12.12.1.m1.1.1.cmml"><mi id="S2.T2.12.12.12.1.m1.1.1a" xref="S2.T2.12.12.12.1.m1.1.1.cmml"></mi><mtext id="S2.T2.12.12.12.1.m1.1.1.1" xref="S2.T2.12.12.12.1.m1.1.1.1a.cmml">72b</mtext></msub><annotation-xml encoding="MathML-Content" id="S2.T2.12.12.12.1.m1.1b"><apply id="S2.T2.12.12.12.1.m1.1.1.cmml" xref="S2.T2.12.12.12.1.m1.1.1"><ci id="S2.T2.12.12.12.1.m1.1.1.1a.cmml" xref="S2.T2.12.12.12.1.m1.1.1.1"><mtext id="S2.T2.12.12.12.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T2.12.12.12.1.m1.1.1.1">72b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.12.12.12.1.m1.1c">{}_{\text{72b}}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.12.12.12.1.m1.1d">start_FLOATSUBSCRIPT 72b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;">58.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;">48.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.12.6.1">60.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;">61.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.8" style="padding-left:2.0pt;padding-right:2.0pt;">40.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.9" style="padding-left:2.0pt;padding-right:2.0pt;">54.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.11" style="padding-left:2.0pt;padding-right:2.0pt;">42.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.12" style="padding-left:2.0pt;padding-right:2.0pt;">11.52</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.12.12.12.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.12.13.1">62.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.12.12.12.14" style="padding-left:2.0pt;padding-right:2.0pt;">49.30</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.12.12.27.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="S2.T2.12.12.27.1.1">+ CoT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.2.1">69.00</span><span class="ltx_text" id="S2.T2.12.12.27.2.2" style="color:#FF0000;">+10.80</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.3.1">57.24</span><span class="ltx_text" id="S2.T2.12.12.27.3.2" style="color:#FF0000;">+8.48</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.4.1">49.88</span><span class="ltx_text" id="S2.T2.12.12.27.4.2" style="color:#FF0000;">+3.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.5.1">32.50</span><span class="ltx_text" id="S2.T2.12.12.27.5.2" style="color:#FF0000;">+1.20</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.27.6" style="padding-left:2.0pt;padding-right:2.0pt;">46.00<span class="ltx_text" id="S2.T2.12.12.27.6.1" style="color:#206546;">-14.80</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.7" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.7.1">61.50</span><span class="ltx_text" id="S2.T2.12.12.27.7.2" style="color:#FF0000;">+0.12</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.8" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.8.1">45.01</span><span class="ltx_text" id="S2.T2.12.12.27.8.2" style="color:#FF0000;">+4.24</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.9" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.9.1">61.51</span><span class="ltx_text" id="S2.T2.12.12.27.9.2" style="color:#FF0000;">+7.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.10" style="padding-left:2.0pt;padding-right:2.0pt;">50.18<span class="ltx_text" id="S2.T2.12.12.27.10.1" style="color:#FF0000;">+13.56</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.11" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.11.1">49.86</span><span class="ltx_text" id="S2.T2.12.12.27.11.2" style="color:#FF0000;">+7.83</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.12" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.12.1">17.53</span><span class="ltx_text" id="S2.T2.12.12.27.12.2" style="color:#FF0000;">+6.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.12.12.27.13" style="padding-left:2.0pt;padding-right:2.0pt;">59.85<span class="ltx_text" id="S2.T2.12.12.27.13.1" style="color:#206546;">-2.38</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.27.14" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.12.12.27.14.1">55.39</span><span class="ltx_text" id="S2.T2.12.12.27.14.2" style="color:#FF0000;">+6.09</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.28" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.12.12.28.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S2.T2.12.12.28.1.1" style="background-color:#F2F2F2;">Deepseek-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.2.1" style="background-color:#F2F2F2;">70.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.3.1" style="background-color:#F2F2F2;">67.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.4.1" style="background-color:#F2F2F2;">60.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.5.1" style="background-color:#F2F2F2;">45.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.12.12.28.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.6.1" style="background-color:#F2F2F2;">72.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.7.1" style="background-color:#F2F2F2;">76.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.8.1" style="background-color:#F2F2F2;">58.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.9.1" style="background-color:#F2F2F2;">67.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.10.1" style="background-color:#F2F2F2;">59.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.11.1" style="background-color:#F2F2F2;">61.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.12.1" style="background-color:#F2F2F2;">24.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.12.12.28.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.13.1" style="background-color:#F2F2F2;">67.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.12.12.28.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.12.12.28.14.1" style="background-color:#F2F2F2;">64.02</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the main results of the Question Answering tasks within the Chinese Time Reasoning (CTM) benchmark.  It shows the accuracy of various Large Language Models (LLMs) across eight different question types, categorized by the number of temporal entities involved.  The best performing model for each task is bolded, while the second-best is underlined, allowing for easy comparison of LLM performance on this challenging temporal reasoning benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2:  Main results on QA tasks within CTM benchmark. The best results among all backbones are bolded, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T3.1.1">
<tr class="ltx_tr" id="A3.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T3.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.1.1.1">Statistic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="A3.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.1.2.1">Question-Answering</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.1.1">EDD</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.2.1">PJ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.3.1">TOU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.4.1">RR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.5"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.5.1">SEC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.6"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.6.1">EEU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.7"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.7.1">TIC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.2.8"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.8.1">TES</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.1.1.2.9"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.2.9.1">LSEC</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.1"># Sample</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.2">2500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.3">1117</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.4">1653</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.5">847</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.6">841</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.7">345</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.8">599</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.3.9">548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.1.1.3.10">250</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.4.1">Cross Temp Count</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.4.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="7" id="A3.T3.1.1.4.3">2, 3, 4..10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.1.1.4.4">4..15</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T3.1.1.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.5.1.1">Statistic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="A3.T3.1.1.5.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.5.2.1">Timeline Ito Game</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.6.1"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.6.1.1">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.6.2"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.6.2.1">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T3.1.1.6.3"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.6.3.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.7.1"># Sample</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.7.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.7.3">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T3.1.1.7.4">20</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T3.1.1.8.1">Cross Temp Count</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.8.2">3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.8.3">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T3.1.1.8.4">5</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A3.T3.1.1.9.1">Agent Num</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.9.2">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" colspan="3" id="A3.T3.1.1.9.3">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="3" id="A3.T3.1.1.9.4">5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed statistical overview of the CTM (Chinese Time Reasoning) benchmark dataset.  It breaks down the number of samples for each of the eight question-answering tasks (EDD, PJ, TOU, RR, SEC, EEU, TIC, TES, and LSEC) within CTM.  Additionally, it provides the distribution of questions based on the number of temporal entities involved.  For the Timeline Ito Game component of the benchmark, the table shows the sample counts for the easy, medium, and hard difficulty levels, as categorized by the number of agents involved and cross-temporal entity counts.
> <details>
> <summary>read the caption</summary>
> Table 3:  The statistics of CTM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A7.T4.7">
<tr class="ltx_tr" id="A7.T4.7.8">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T4.7.8.1"><span class="ltx_text ltx_font_bold" id="A7.T4.7.8.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T4.7.8.2"><span class="ltx_text ltx_font_bold" id="A7.T4.7.8.2.1">Full Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T4.7.8.3"><span class="ltx_text ltx_font_bold" id="A7.T4.7.8.3.1">Open Source?</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T4.7.8.4"><span class="ltx_text ltx_font_bold" id="A7.T4.7.8.4.1">Model Size</span></td>
</tr>
<tr class="ltx_tr" id="A7.T4.7.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T4.7.9.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.7.9.2">gpt-4o-2024-08-06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.7.9.3"><span class="ltx_text" id="A7.T4.7.9.3.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.7.9.4">-</td>
</tr>
<tr class="ltx_tr" id="A7.T4.7.10">
<td class="ltx_td ltx_align_left" id="A7.T4.7.10.1">Qwen-max</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.10.2">qwen-max</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.10.3"><span class="ltx_text" id="A7.T4.7.10.3.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.10.4">-</td>
</tr>
<tr class="ltx_tr" id="A7.T4.7.11">
<td class="ltx_td ltx_align_left" id="A7.T4.7.11.1">o1-preview</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.11.2">o1-preview</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.11.3"><span class="ltx_text" id="A7.T4.7.11.3.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.11.4">-</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T4.1.1.1">LLaMA3.1<math alttext="{}_{\text{8b}}" class="ltx_Math" display="inline" id="A7.T4.1.1.1.m1.1"><semantics id="A7.T4.1.1.1.m1.1a"><msub id="A7.T4.1.1.1.m1.1.1" xref="A7.T4.1.1.1.m1.1.1.cmml"><mi id="A7.T4.1.1.1.m1.1.1a" xref="A7.T4.1.1.1.m1.1.1.cmml"></mi><mtext id="A7.T4.1.1.1.m1.1.1.1" xref="A7.T4.1.1.1.m1.1.1.1a.cmml">8b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.1.1.1.m1.1b"><apply id="A7.T4.1.1.1.m1.1.1.cmml" xref="A7.T4.1.1.1.m1.1.1"><ci id="A7.T4.1.1.1.m1.1.1.1a.cmml" xref="A7.T4.1.1.1.m1.1.1.1"><mtext id="A7.T4.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.1.1.1.m1.1.1.1">8b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.1.1.1.m1.1c">{}_{\text{8b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.1.1.1.m1.1d">start_FLOATSUBSCRIPT 8b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.1.1.2">Meta-Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.1.1.3"><span class="ltx_text" id="A7.T4.1.1.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T4.1.1.4">8B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.2.2">
<td class="ltx_td ltx_align_left" id="A7.T4.2.2.1">ChatGLM3<math alttext="{}_{\text{6b}}" class="ltx_Math" display="inline" id="A7.T4.2.2.1.m1.1"><semantics id="A7.T4.2.2.1.m1.1a"><msub id="A7.T4.2.2.1.m1.1.1" xref="A7.T4.2.2.1.m1.1.1.cmml"><mi id="A7.T4.2.2.1.m1.1.1a" xref="A7.T4.2.2.1.m1.1.1.cmml"></mi><mtext id="A7.T4.2.2.1.m1.1.1.1" xref="A7.T4.2.2.1.m1.1.1.1a.cmml">6b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.2.2.1.m1.1b"><apply id="A7.T4.2.2.1.m1.1.1.cmml" xref="A7.T4.2.2.1.m1.1.1"><ci id="A7.T4.2.2.1.m1.1.1.1a.cmml" xref="A7.T4.2.2.1.m1.1.1.1"><mtext id="A7.T4.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.2.2.1.m1.1.1.1">6b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.2.2.1.m1.1c">{}_{\text{6b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.2.2.1.m1.1d">start_FLOATSUBSCRIPT 6b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.2.2.2">chatglm3-6b</td>
<td class="ltx_td ltx_align_center" id="A7.T4.2.2.3"><span class="ltx_text" id="A7.T4.2.2.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.2.2.4">6B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.3.3">
<td class="ltx_td ltx_align_left" id="A7.T4.3.3.1">InternLM2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="A7.T4.3.3.1.m1.1"><semantics id="A7.T4.3.3.1.m1.1a"><msub id="A7.T4.3.3.1.m1.1.1" xref="A7.T4.3.3.1.m1.1.1.cmml"><mi id="A7.T4.3.3.1.m1.1.1a" xref="A7.T4.3.3.1.m1.1.1.cmml"></mi><mtext id="A7.T4.3.3.1.m1.1.1.1" xref="A7.T4.3.3.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.3.3.1.m1.1b"><apply id="A7.T4.3.3.1.m1.1.1.cmml" xref="A7.T4.3.3.1.m1.1.1"><ci id="A7.T4.3.3.1.m1.1.1.1a.cmml" xref="A7.T4.3.3.1.m1.1.1.1"><mtext id="A7.T4.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.3.3.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.3.3.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.3.3.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.3.3.2">internlm2_5-7b-chat</td>
<td class="ltx_td ltx_align_center" id="A7.T4.3.3.3"><span class="ltx_text" id="A7.T4.3.3.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.3.3.4">7B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.4.4">
<td class="ltx_td ltx_align_left" id="A7.T4.4.4.1">Qwen2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="A7.T4.4.4.1.m1.1"><semantics id="A7.T4.4.4.1.m1.1a"><msub id="A7.T4.4.4.1.m1.1.1" xref="A7.T4.4.4.1.m1.1.1.cmml"><mi id="A7.T4.4.4.1.m1.1.1a" xref="A7.T4.4.4.1.m1.1.1.cmml"></mi><mtext id="A7.T4.4.4.1.m1.1.1.1" xref="A7.T4.4.4.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.4.4.1.m1.1b"><apply id="A7.T4.4.4.1.m1.1.1.cmml" xref="A7.T4.4.4.1.m1.1.1"><ci id="A7.T4.4.4.1.m1.1.1.1a.cmml" xref="A7.T4.4.4.1.m1.1.1.1"><mtext id="A7.T4.4.4.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.4.4.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.4.4.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.4.4.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.4.4.2">qwen2.5-7b-instruct</td>
<td class="ltx_td ltx_align_center" id="A7.T4.4.4.3"><span class="ltx_text" id="A7.T4.4.4.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.4.4.4">7B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.5.5">
<td class="ltx_td ltx_align_left" id="A7.T4.5.5.1">Qwen2.5<math alttext="{}_{\text{14b}}" class="ltx_Math" display="inline" id="A7.T4.5.5.1.m1.1"><semantics id="A7.T4.5.5.1.m1.1a"><msub id="A7.T4.5.5.1.m1.1.1" xref="A7.T4.5.5.1.m1.1.1.cmml"><mi id="A7.T4.5.5.1.m1.1.1a" xref="A7.T4.5.5.1.m1.1.1.cmml"></mi><mtext id="A7.T4.5.5.1.m1.1.1.1" xref="A7.T4.5.5.1.m1.1.1.1a.cmml">14b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.5.5.1.m1.1b"><apply id="A7.T4.5.5.1.m1.1.1.cmml" xref="A7.T4.5.5.1.m1.1.1"><ci id="A7.T4.5.5.1.m1.1.1.1a.cmml" xref="A7.T4.5.5.1.m1.1.1.1"><mtext id="A7.T4.5.5.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.5.5.1.m1.1.1.1">14b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.5.5.1.m1.1c">{}_{\text{14b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.5.5.1.m1.1d">start_FLOATSUBSCRIPT 14b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.5.5.2">qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center" id="A7.T4.5.5.3"><span class="ltx_text" id="A7.T4.5.5.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.5.5.4">14B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.6.6">
<td class="ltx_td ltx_align_left" id="A7.T4.6.6.1">Qwen2.5<math alttext="{}_{\text{32b}}" class="ltx_Math" display="inline" id="A7.T4.6.6.1.m1.1"><semantics id="A7.T4.6.6.1.m1.1a"><msub id="A7.T4.6.6.1.m1.1.1" xref="A7.T4.6.6.1.m1.1.1.cmml"><mi id="A7.T4.6.6.1.m1.1.1a" xref="A7.T4.6.6.1.m1.1.1.cmml"></mi><mtext id="A7.T4.6.6.1.m1.1.1.1" xref="A7.T4.6.6.1.m1.1.1.1a.cmml">32b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.6.6.1.m1.1b"><apply id="A7.T4.6.6.1.m1.1.1.cmml" xref="A7.T4.6.6.1.m1.1.1"><ci id="A7.T4.6.6.1.m1.1.1.1a.cmml" xref="A7.T4.6.6.1.m1.1.1.1"><mtext id="A7.T4.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.6.6.1.m1.1.1.1">32b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.6.6.1.m1.1c">{}_{\text{32b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.6.6.1.m1.1d">start_FLOATSUBSCRIPT 32b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.6.6.2">qwen2.5-32b-instruct</td>
<td class="ltx_td ltx_align_center" id="A7.T4.6.6.3"><span class="ltx_text" id="A7.T4.6.6.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.6.6.4">32B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.7.7">
<td class="ltx_td ltx_align_left" id="A7.T4.7.7.1">Qwen2.5<math alttext="{}_{\text{72b}}" class="ltx_Math" display="inline" id="A7.T4.7.7.1.m1.1"><semantics id="A7.T4.7.7.1.m1.1a"><msub id="A7.T4.7.7.1.m1.1.1" xref="A7.T4.7.7.1.m1.1.1.cmml"><mi id="A7.T4.7.7.1.m1.1.1a" xref="A7.T4.7.7.1.m1.1.1.cmml"></mi><mtext id="A7.T4.7.7.1.m1.1.1.1" xref="A7.T4.7.7.1.m1.1.1.1a.cmml">72b</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T4.7.7.1.m1.1b"><apply id="A7.T4.7.7.1.m1.1.1.cmml" xref="A7.T4.7.7.1.m1.1.1"><ci id="A7.T4.7.7.1.m1.1.1.1a.cmml" xref="A7.T4.7.7.1.m1.1.1.1"><mtext id="A7.T4.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="A7.T4.7.7.1.m1.1.1.1">72b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.7.7.1.m1.1c">{}_{\text{72b}}</annotation><annotation encoding="application/x-llamapun" id="A7.T4.7.7.1.m1.1d">start_FLOATSUBSCRIPT 72b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.7.2">qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.7.3"><span class="ltx_text" id="A7.T4.7.7.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A7.T4.7.7.4">72B</td>
</tr>
<tr class="ltx_tr" id="A7.T4.7.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T4.7.12.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T4.7.12.2">deepseek-r1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T4.7.12.3"><span class="ltx_text" id="A7.T4.7.12.3.1" style="color:#009900;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T4.7.12.4">671B</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the twelve large language models (LLMs) used in the experiments presented in the paper.  It indicates whether each model is open-source or closed-source and provides the model size in billions of parameters.
> <details>
> <summary>read the caption</summary>
> Table 4: LLMs evaluated in our experiments
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A9.T5.7.7">
<tr class="ltx_tr" id="A9.T5.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T5.7.7.8.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A9.T5.7.7.8.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A9.T5.7.7.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A9.T5.7.7.8.2.1">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A9.T5.7.7.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A9.T5.7.7.8.3.1">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A9.T5.7.7.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A9.T5.7.7.8.4.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A9.T5.7.7.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A9.T5.7.7.8.5.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="A9.T5.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">Pass@8</td>
</tr>
<tr class="ltx_tr" id="A9.T5.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.7.7.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">55.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">80.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.10.8" style="padding-left:2.0pt;padding-right:2.0pt;">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.10.9" style="padding-left:2.0pt;padding-right:2.0pt;">40.00</td>
</tr>
<tr class="ltx_tr" id="A9.T5.7.7.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.7.7.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen-max</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.11.2" style="padding-left:2.0pt;padding-right:2.0pt;">25.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.11.3" style="padding-left:2.0pt;padding-right:2.0pt;">35.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.11.4" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.11.5" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.11.6" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.7.7.11.7" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.11.8" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.7.7.11.9" style="padding-left:2.0pt;padding-right:2.0pt;">20.00</td>
</tr>
<tr class="ltx_tr" id="A9.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">LLaMA3.1<math alttext="{}_{\text{8b}}" class="ltx_Math" display="inline" id="A9.T5.1.1.1.1.m1.1"><semantics id="A9.T5.1.1.1.1.m1.1a"><msub id="A9.T5.1.1.1.1.m1.1.1" xref="A9.T5.1.1.1.1.m1.1.1.cmml"><mi id="A9.T5.1.1.1.1.m1.1.1a" xref="A9.T5.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A9.T5.1.1.1.1.m1.1.1.1" xref="A9.T5.1.1.1.1.m1.1.1.1a.cmml">8b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.1.1.1.1.m1.1b"><apply id="A9.T5.1.1.1.1.m1.1.1.cmml" xref="A9.T5.1.1.1.1.m1.1.1"><ci id="A9.T5.1.1.1.1.m1.1.1.1a.cmml" xref="A9.T5.1.1.1.1.m1.1.1.1"><mtext id="A9.T5.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.1.1.1.1.m1.1.1.1">8b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.1.1.1.1.m1.1c">{}_{\text{8b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT 8b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.1.1.1.9" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
</tr>
<tr class="ltx_tr" id="A9.T5.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">ChatGLM3<math alttext="{}_{\text{6b}}" class="ltx_Math" display="inline" id="A9.T5.2.2.2.1.m1.1"><semantics id="A9.T5.2.2.2.1.m1.1a"><msub id="A9.T5.2.2.2.1.m1.1.1" xref="A9.T5.2.2.2.1.m1.1.1.cmml"><mi id="A9.T5.2.2.2.1.m1.1.1a" xref="A9.T5.2.2.2.1.m1.1.1.cmml"></mi><mtext id="A9.T5.2.2.2.1.m1.1.1.1" xref="A9.T5.2.2.2.1.m1.1.1.1a.cmml">6b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.2.2.2.1.m1.1b"><apply id="A9.T5.2.2.2.1.m1.1.1.cmml" xref="A9.T5.2.2.2.1.m1.1.1"><ci id="A9.T5.2.2.2.1.m1.1.1.1a.cmml" xref="A9.T5.2.2.2.1.m1.1.1.1"><mtext id="A9.T5.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.2.2.2.1.m1.1.1.1">6b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.2.2.2.1.m1.1c">{}_{\text{6b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.2.2.2.1.m1.1d">start_FLOATSUBSCRIPT 6b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.2.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">1.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.2.2.2.9" style="padding-left:2.0pt;padding-right:2.0pt;">1.67</td>
</tr>
<tr class="ltx_tr" id="A9.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">InternLM2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="A9.T5.3.3.3.1.m1.1"><semantics id="A9.T5.3.3.3.1.m1.1a"><msub id="A9.T5.3.3.3.1.m1.1.1" xref="A9.T5.3.3.3.1.m1.1.1.cmml"><mi id="A9.T5.3.3.3.1.m1.1.1a" xref="A9.T5.3.3.3.1.m1.1.1.cmml"></mi><mtext id="A9.T5.3.3.3.1.m1.1.1.1" xref="A9.T5.3.3.3.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.3.3.3.1.m1.1b"><apply id="A9.T5.3.3.3.1.m1.1.1.cmml" xref="A9.T5.3.3.3.1.m1.1.1"><ci id="A9.T5.3.3.3.1.m1.1.1.1a.cmml" xref="A9.T5.3.3.3.1.m1.1.1.1"><mtext id="A9.T5.3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.3.3.3.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.3.3.3.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.3.3.3.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.3.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">1.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.3.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
</tr>
<tr class="ltx_tr" id="A9.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="A9.T5.4.4.4.1.m1.1"><semantics id="A9.T5.4.4.4.1.m1.1a"><msub id="A9.T5.4.4.4.1.m1.1.1" xref="A9.T5.4.4.4.1.m1.1.1.cmml"><mi id="A9.T5.4.4.4.1.m1.1.1a" xref="A9.T5.4.4.4.1.m1.1.1.cmml"></mi><mtext id="A9.T5.4.4.4.1.m1.1.1.1" xref="A9.T5.4.4.4.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.4.4.4.1.m1.1b"><apply id="A9.T5.4.4.4.1.m1.1.1.cmml" xref="A9.T5.4.4.4.1.m1.1.1"><ci id="A9.T5.4.4.4.1.m1.1.1.1a.cmml" xref="A9.T5.4.4.4.1.m1.1.1.1"><mtext id="A9.T5.4.4.4.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.4.4.4.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.4.4.4.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.4.4.4.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.4.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;">1.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.4.4.4.9" style="padding-left:2.0pt;padding-right:2.0pt;">6.67</td>
</tr>
<tr class="ltx_tr" id="A9.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{14b}}" class="ltx_Math" display="inline" id="A9.T5.5.5.5.1.m1.1"><semantics id="A9.T5.5.5.5.1.m1.1a"><msub id="A9.T5.5.5.5.1.m1.1.1" xref="A9.T5.5.5.5.1.m1.1.1.cmml"><mi id="A9.T5.5.5.5.1.m1.1.1a" xref="A9.T5.5.5.5.1.m1.1.1.cmml"></mi><mtext id="A9.T5.5.5.5.1.m1.1.1.1" xref="A9.T5.5.5.5.1.m1.1.1.1a.cmml">14b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.5.5.5.1.m1.1b"><apply id="A9.T5.5.5.5.1.m1.1.1.cmml" xref="A9.T5.5.5.5.1.m1.1.1"><ci id="A9.T5.5.5.5.1.m1.1.1.1a.cmml" xref="A9.T5.5.5.5.1.m1.1.1.1"><mtext id="A9.T5.5.5.5.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.5.5.5.1.m1.1.1.1">14b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.5.5.5.1.m1.1c">{}_{\text{14b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.5.5.5.1.m1.1d">start_FLOATSUBSCRIPT 14b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.5.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;">6.67</td>
</tr>
<tr class="ltx_tr" id="A9.T5.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A9.T5.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{32b}}" class="ltx_Math" display="inline" id="A9.T5.6.6.6.1.m1.1"><semantics id="A9.T5.6.6.6.1.m1.1a"><msub id="A9.T5.6.6.6.1.m1.1.1" xref="A9.T5.6.6.6.1.m1.1.1.cmml"><mi id="A9.T5.6.6.6.1.m1.1.1a" xref="A9.T5.6.6.6.1.m1.1.1.cmml"></mi><mtext id="A9.T5.6.6.6.1.m1.1.1.1" xref="A9.T5.6.6.6.1.m1.1.1.1a.cmml">32b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.6.6.6.1.m1.1b"><apply id="A9.T5.6.6.6.1.m1.1.1.cmml" xref="A9.T5.6.6.6.1.m1.1.1"><ci id="A9.T5.6.6.6.1.m1.1.1.1a.cmml" xref="A9.T5.6.6.6.1.m1.1.1.1"><mtext id="A9.T5.6.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.6.6.6.1.m1.1.1.1">32b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.6.6.6.1.m1.1c">{}_{\text{32b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.6.6.6.1.m1.1d">start_FLOATSUBSCRIPT 32b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A9.T5.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T5.6.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;">21.67</td>
</tr>
<tr class="ltx_tr" id="A9.T5.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A9.T5.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{72b}}" class="ltx_Math" display="inline" id="A9.T5.7.7.7.1.m1.1"><semantics id="A9.T5.7.7.7.1.m1.1a"><msub id="A9.T5.7.7.7.1.m1.1.1" xref="A9.T5.7.7.7.1.m1.1.1.cmml"><mi id="A9.T5.7.7.7.1.m1.1.1a" xref="A9.T5.7.7.7.1.m1.1.1.cmml"></mi><mtext id="A9.T5.7.7.7.1.m1.1.1.1" xref="A9.T5.7.7.7.1.m1.1.1.1a.cmml">72b</mtext></msub><annotation-xml encoding="MathML-Content" id="A9.T5.7.7.7.1.m1.1b"><apply id="A9.T5.7.7.7.1.m1.1.1.cmml" xref="A9.T5.7.7.7.1.m1.1.1"><ci id="A9.T5.7.7.7.1.m1.1.1.1a.cmml" xref="A9.T5.7.7.7.1.m1.1.1.1"><mtext id="A9.T5.7.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="A9.T5.7.7.7.1.m1.1.1.1">72b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T5.7.7.7.1.m1.1c">{}_{\text{72b}}</annotation><annotation encoding="application/x-llamapun" id="A9.T5.7.7.7.1.m1.1d">start_FLOATSUBSCRIPT 72b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A9.T5.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A9.T5.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">55.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A9.T5.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A9.T5.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A9.T5.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="A9.T5.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A9.T5.7.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A9.T5.7.7.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">23.33</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on the Timeline Ito Game, a task within the Chinese Time Reasoning (CTM) benchmark.  It shows the accuracy (Pass@3 and Pass@8) of each LLM across different difficulty levels of the game, categorized by the number of entities involved (easy, medium, hard).  Pass@K indicates whether the correct temporal ordering of entities was achieved within K attempts.
> <details>
> <summary>read the caption</summary>
> Table 5:  Main results on Timeline Ito Game within CTM benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A10.T6.9.9">
<tr class="ltx_tr" id="A10.T6.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A10.T6.9.9.10.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.9.9.10.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="A10.T6.9.9.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.9.9.10.2.1">Cross Temp Count</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="A10.T6.9.9.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.9.9.10.3.1">Question Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T6.9.9.10.4" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A10.T6.9.9.10.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A10.T6.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="=1" class="ltx_Math" display="inline" id="A10.T6.1.1.1.1.m1.1"><semantics id="A10.T6.1.1.1.1.m1.1a"><mrow id="A10.T6.1.1.1.1.m1.1.1" xref="A10.T6.1.1.1.1.m1.1.1.cmml"><mi id="A10.T6.1.1.1.1.m1.1.1.2" xref="A10.T6.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="A10.T6.1.1.1.1.m1.1.1.1" xref="A10.T6.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="A10.T6.1.1.1.1.m1.1.1.3" xref="A10.T6.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="A10.T6.1.1.1.1.m1.1b"><apply id="A10.T6.1.1.1.1.m1.1.1.cmml" xref="A10.T6.1.1.1.1.m1.1.1"><eq id="A10.T6.1.1.1.1.m1.1.1.1.cmml" xref="A10.T6.1.1.1.1.m1.1.1.1"></eq><csymbol cd="latexml" id="A10.T6.1.1.1.1.m1.1.1.2.cmml" xref="A10.T6.1.1.1.1.m1.1.1.2">absent</csymbol><cn id="A10.T6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="A10.T6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.1.1.1.1.m1.1c">=1</annotation><annotation encoding="application/x-llamapun" id="A10.T6.1.1.1.1.m1.1d">= 1</annotation></semantics></math> (EDD)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="=2" class="ltx_Math" display="inline" id="A10.T6.2.2.2.2.m1.1"><semantics id="A10.T6.2.2.2.2.m1.1a"><mrow id="A10.T6.2.2.2.2.m1.1.1" xref="A10.T6.2.2.2.2.m1.1.1.cmml"><mi id="A10.T6.2.2.2.2.m1.1.1.2" xref="A10.T6.2.2.2.2.m1.1.1.2.cmml"></mi><mo id="A10.T6.2.2.2.2.m1.1.1.1" xref="A10.T6.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="A10.T6.2.2.2.2.m1.1.1.3" xref="A10.T6.2.2.2.2.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="A10.T6.2.2.2.2.m1.1b"><apply id="A10.T6.2.2.2.2.m1.1.1.cmml" xref="A10.T6.2.2.2.2.m1.1.1"><eq id="A10.T6.2.2.2.2.m1.1.1.1.cmml" xref="A10.T6.2.2.2.2.m1.1.1.1"></eq><csymbol cd="latexml" id="A10.T6.2.2.2.2.m1.1.1.2.cmml" xref="A10.T6.2.2.2.2.m1.1.1.2">absent</csymbol><cn id="A10.T6.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="A10.T6.2.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.2.2.2.2.m1.1c">=2</annotation><annotation encoding="application/x-llamapun" id="A10.T6.2.2.2.2.m1.1d">= 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="=3" class="ltx_Math" display="inline" id="A10.T6.3.3.3.3.m1.1"><semantics id="A10.T6.3.3.3.3.m1.1a"><mrow id="A10.T6.3.3.3.3.m1.1.1" xref="A10.T6.3.3.3.3.m1.1.1.cmml"><mi id="A10.T6.3.3.3.3.m1.1.1.2" xref="A10.T6.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="A10.T6.3.3.3.3.m1.1.1.1" xref="A10.T6.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="A10.T6.3.3.3.3.m1.1.1.3" xref="A10.T6.3.3.3.3.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A10.T6.3.3.3.3.m1.1b"><apply id="A10.T6.3.3.3.3.m1.1.1.cmml" xref="A10.T6.3.3.3.3.m1.1.1"><eq id="A10.T6.3.3.3.3.m1.1.1.1.cmml" xref="A10.T6.3.3.3.3.m1.1.1.1"></eq><csymbol cd="latexml" id="A10.T6.3.3.3.3.m1.1.1.2.cmml" xref="A10.T6.3.3.3.3.m1.1.1.2">absent</csymbol><cn id="A10.T6.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="A10.T6.3.3.3.3.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.3.3.3.3.m1.1c">=3</annotation><annotation encoding="application/x-llamapun" id="A10.T6.3.3.3.3.m1.1d">= 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\geq 4" class="ltx_Math" display="inline" id="A10.T6.4.4.4.4.m1.1"><semantics id="A10.T6.4.4.4.4.m1.1a"><mrow id="A10.T6.4.4.4.4.m1.1.1" xref="A10.T6.4.4.4.4.m1.1.1.cmml"><mi id="A10.T6.4.4.4.4.m1.1.1.2" xref="A10.T6.4.4.4.4.m1.1.1.2.cmml"></mi><mo id="A10.T6.4.4.4.4.m1.1.1.1" xref="A10.T6.4.4.4.4.m1.1.1.1.cmml">≥</mo><mn id="A10.T6.4.4.4.4.m1.1.1.3" xref="A10.T6.4.4.4.4.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A10.T6.4.4.4.4.m1.1b"><apply id="A10.T6.4.4.4.4.m1.1.1.cmml" xref="A10.T6.4.4.4.4.m1.1.1"><geq id="A10.T6.4.4.4.4.m1.1.1.1.cmml" xref="A10.T6.4.4.4.4.m1.1.1.1"></geq><csymbol cd="latexml" id="A10.T6.4.4.4.4.m1.1.1.2.cmml" xref="A10.T6.4.4.4.4.m1.1.1.2">absent</csymbol><cn id="A10.T6.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="A10.T6.4.4.4.4.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.4.4.4.4.m1.1c">\geq 4</annotation><annotation encoding="application/x-llamapun" id="A10.T6.4.4.4.4.m1.1d">≥ 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\geq 4_{L}" class="ltx_Math" display="inline" id="A10.T6.5.5.5.5.m1.1"><semantics id="A10.T6.5.5.5.5.m1.1a"><mrow id="A10.T6.5.5.5.5.m1.1.1" xref="A10.T6.5.5.5.5.m1.1.1.cmml"><mi id="A10.T6.5.5.5.5.m1.1.1.2" xref="A10.T6.5.5.5.5.m1.1.1.2.cmml"></mi><mo id="A10.T6.5.5.5.5.m1.1.1.1" xref="A10.T6.5.5.5.5.m1.1.1.1.cmml">≥</mo><msub id="A10.T6.5.5.5.5.m1.1.1.3" xref="A10.T6.5.5.5.5.m1.1.1.3.cmml"><mn id="A10.T6.5.5.5.5.m1.1.1.3.2" xref="A10.T6.5.5.5.5.m1.1.1.3.2.cmml">4</mn><mi id="A10.T6.5.5.5.5.m1.1.1.3.3" xref="A10.T6.5.5.5.5.m1.1.1.3.3.cmml">L</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="A10.T6.5.5.5.5.m1.1b"><apply id="A10.T6.5.5.5.5.m1.1.1.cmml" xref="A10.T6.5.5.5.5.m1.1.1"><geq id="A10.T6.5.5.5.5.m1.1.1.1.cmml" xref="A10.T6.5.5.5.5.m1.1.1.1"></geq><csymbol cd="latexml" id="A10.T6.5.5.5.5.m1.1.1.2.cmml" xref="A10.T6.5.5.5.5.m1.1.1.2">absent</csymbol><apply id="A10.T6.5.5.5.5.m1.1.1.3.cmml" xref="A10.T6.5.5.5.5.m1.1.1.3"><csymbol cd="ambiguous" id="A10.T6.5.5.5.5.m1.1.1.3.1.cmml" xref="A10.T6.5.5.5.5.m1.1.1.3">subscript</csymbol><cn id="A10.T6.5.5.5.5.m1.1.1.3.2.cmml" type="integer" xref="A10.T6.5.5.5.5.m1.1.1.3.2">4</cn><ci id="A10.T6.5.5.5.5.m1.1.1.3.3.cmml" xref="A10.T6.5.5.5.5.m1.1.1.3.3">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.5.5.5.5.m1.1c">\geq 4_{L}</annotation><annotation encoding="application/x-llamapun" id="A10.T6.5.5.5.5.m1.1d">≥ 4 start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math> (LSEC)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">PJ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">TOU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">RR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;">SEC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.10" style="padding-left:2.0pt;padding-right:2.0pt;">EEU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.5.5.5.11" style="padding-left:2.0pt;padding-right:2.0pt;">TIC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.5.5.5.12" style="padding-left:2.0pt;padding-right:2.0pt;">TES</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A10.T6.9.9.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.2" style="padding-left:2.0pt;padding-right:2.0pt;">56.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.4" style="padding-left:2.0pt;padding-right:2.0pt;">44.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.9.9.11.6" style="padding-left:2.0pt;padding-right:2.0pt;">53.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.7" style="padding-left:2.0pt;padding-right:2.0pt;">58.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.9" style="padding-left:2.0pt;padding-right:2.0pt;">57.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.11" style="padding-left:2.0pt;padding-right:2.0pt;">40.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.12" style="padding-left:2.0pt;padding-right:2.0pt;">15.36</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.9.9.11.13" style="padding-left:2.0pt;padding-right:2.0pt;">59.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.11.14" style="padding-left:2.0pt;padding-right:2.0pt;">46.20</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A10.T6.9.9.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="A10.T6.9.9.12.1.1">+ Openbook</span></td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.2" style="padding-left:2.0pt;padding-right:2.0pt;">57.76<span class="ltx_text" id="A10.T6.9.9.12.2.1" style="color:#FF0000;">+1.24</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.3" style="padding-left:2.0pt;padding-right:2.0pt;">53.40<span class="ltx_text" id="A10.T6.9.9.12.3.1" style="color:#FF0000;">+2.28</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.4" style="padding-left:2.0pt;padding-right:2.0pt;">45.52<span class="ltx_text" id="A10.T6.9.9.12.4.1" style="color:#FF0000;">+0.76</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.90<span class="ltx_text" id="A10.T6.9.9.12.5.1" style="color:#FF0000;">+0.80</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.12.6" style="padding-left:2.0pt;padding-right:2.0pt;">56.80<span class="ltx_text" id="A10.T6.9.9.12.6.1" style="color:#FF0000;">+3.20</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.7" style="padding-left:2.0pt;padding-right:2.0pt;">59.00<span class="ltx_text" id="A10.T6.9.9.12.7.1" style="color:#FF0000;">+0.36</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.72<span class="ltx_text" id="A10.T6.9.9.12.8.1" style="color:#FF0000;">+0.30</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.9" style="padding-left:2.0pt;padding-right:2.0pt;">54.66<span class="ltx_text" id="A10.T6.9.9.12.9.1" style="color:#206546;">-2.60</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.10" style="padding-left:2.0pt;padding-right:2.0pt;">45.30<span class="ltx_text" id="A10.T6.9.9.12.10.1" style="color:#FF0000;">+9.15</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.11" style="padding-left:2.0pt;padding-right:2.0pt;">42.61<span class="ltx_text" id="A10.T6.9.9.12.11.1" style="color:#FF0000;">+2.03</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.12" style="padding-left:2.0pt;padding-right:2.0pt;">17.20<span class="ltx_text" id="A10.T6.9.9.12.12.1" style="color:#FF0000;">+1.84</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.12.13" style="padding-left:2.0pt;padding-right:2.0pt;">58.39<span class="ltx_text" id="A10.T6.9.9.12.13.1" style="color:#206546;">-0.92</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.12.14" style="padding-left:2.0pt;padding-right:2.0pt;">49.41<span class="ltx_text" id="A10.T6.9.9.12.14.1" style="color:#FF0000;">+3.21</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A10.T6.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{7b}}" class="ltx_Math" display="inline" id="A10.T6.6.6.6.1.m1.1"><semantics id="A10.T6.6.6.6.1.m1.1a"><msub id="A10.T6.6.6.6.1.m1.1.1" xref="A10.T6.6.6.6.1.m1.1.1.cmml"><mi id="A10.T6.6.6.6.1.m1.1.1a" xref="A10.T6.6.6.6.1.m1.1.1.cmml"></mi><mtext id="A10.T6.6.6.6.1.m1.1.1.1" xref="A10.T6.6.6.6.1.m1.1.1.1a.cmml">7b</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T6.6.6.6.1.m1.1b"><apply id="A10.T6.6.6.6.1.m1.1.1.cmml" xref="A10.T6.6.6.6.1.m1.1.1"><ci id="A10.T6.6.6.6.1.m1.1.1.1a.cmml" xref="A10.T6.6.6.6.1.m1.1.1.1"><mtext id="A10.T6.6.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="A10.T6.6.6.6.1.m1.1.1.1">7b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.6.6.6.1.m1.1c">{}_{\text{7b}}</annotation><annotation encoding="application/x-llamapun" id="A10.T6.6.6.6.1.m1.1d">start_FLOATSUBSCRIPT 7b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">51.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">39.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">35.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">12.40</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;">46.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;">26.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;">46.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.10" style="padding-left:2.0pt;padding-right:2.0pt;">24.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.11" style="padding-left:2.0pt;padding-right:2.0pt;">36.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.12" style="padding-left:2.0pt;padding-right:2.0pt;">7.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.6.6.6.13" style="padding-left:2.0pt;padding-right:2.0pt;">52.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.6.6.6.14" style="padding-left:2.0pt;padding-right:2.0pt;">38.76</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A10.T6.9.9.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="A10.T6.9.9.13.1.1">+ Openbook</span></td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">48.64<span class="ltx_text" id="A10.T6.9.9.13.2.1" style="color:#206546;">-3.16</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.3" style="padding-left:2.0pt;padding-right:2.0pt;">39.92<span class="ltx_text" id="A10.T6.9.9.13.3.1" style="color:#FF0000;">+0.04</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.4" style="padding-left:2.0pt;padding-right:2.0pt;">31.88<span class="ltx_text" id="A10.T6.9.9.13.4.1" style="color:#206546;">-4.08</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.5" style="padding-left:2.0pt;padding-right:2.0pt;">17.90<span class="ltx_text" id="A10.T6.9.9.13.5.1" style="color:#FF0000;">+5.50</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.13.6" style="padding-left:2.0pt;padding-right:2.0pt;">31.60<span class="ltx_text" id="A10.T6.9.9.13.6.1" style="color:#FF0000;">+1.60</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.7" style="padding-left:2.0pt;padding-right:2.0pt;">47.63<span class="ltx_text" id="A10.T6.9.9.13.7.1" style="color:#FF0000;">+1.35</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.8" style="padding-left:2.0pt;padding-right:2.0pt;">27.89<span class="ltx_text" id="A10.T6.9.9.13.8.1" style="color:#FF0000;">+1.51</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.9" style="padding-left:2.0pt;padding-right:2.0pt;">42.15<span class="ltx_text" id="A10.T6.9.9.13.9.1" style="color:#206546;">-4.13</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.10" style="padding-left:2.0pt;padding-right:2.0pt;">26.04<span class="ltx_text" id="A10.T6.9.9.13.10.1" style="color:#FF0000;">+1.90</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.11" style="padding-left:2.0pt;padding-right:2.0pt;">31.88<span class="ltx_text" id="A10.T6.9.9.13.11.1" style="color:#206546;">-4.35</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.12" style="padding-left:2.0pt;padding-right:2.0pt;">5.84<span class="ltx_text" id="A10.T6.9.9.13.12.1" style="color:#206546;">-1.51</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.13.13" style="padding-left:2.0pt;padding-right:2.0pt;">44.53<span class="ltx_text" id="A10.T6.9.9.13.13.1" style="color:#206546;">-7.48</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.13.14" style="padding-left:2.0pt;padding-right:2.0pt;">37.39<span class="ltx_text" id="A10.T6.9.9.13.14.1" style="color:#206546;">-1.37</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A10.T6.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{14b}}" class="ltx_Math" display="inline" id="A10.T6.7.7.7.1.m1.1"><semantics id="A10.T6.7.7.7.1.m1.1a"><msub id="A10.T6.7.7.7.1.m1.1.1" xref="A10.T6.7.7.7.1.m1.1.1.cmml"><mi id="A10.T6.7.7.7.1.m1.1.1a" xref="A10.T6.7.7.7.1.m1.1.1.cmml"></mi><mtext id="A10.T6.7.7.7.1.m1.1.1.1" xref="A10.T6.7.7.7.1.m1.1.1.1a.cmml">14b</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T6.7.7.7.1.m1.1b"><apply id="A10.T6.7.7.7.1.m1.1.1.cmml" xref="A10.T6.7.7.7.1.m1.1.1"><ci id="A10.T6.7.7.7.1.m1.1.1.1a.cmml" xref="A10.T6.7.7.7.1.m1.1.1.1"><mtext id="A10.T6.7.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="A10.T6.7.7.7.1.m1.1.1.1">14b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.7.7.7.1.m1.1c">{}_{\text{14b}}</annotation><annotation encoding="application/x-llamapun" id="A10.T6.7.7.7.1.m1.1d">start_FLOATSUBSCRIPT 14b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">54.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">42.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">42.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">57.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;">36.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.9" style="padding-left:2.0pt;padding-right:2.0pt;">51.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.11" style="padding-left:2.0pt;padding-right:2.0pt;">39.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.12" style="padding-left:2.0pt;padding-right:2.0pt;">18.26</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.7.7.7.13" style="padding-left:2.0pt;padding-right:2.0pt;">58.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.7.7.7.14" style="padding-left:2.0pt;padding-right:2.0pt;">46.32</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A10.T6.9.9.14.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="A10.T6.9.9.14.1.1">+ Openbook</span></td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">54.32<span class="ltx_text" id="A10.T6.9.9.14.2.1" style="color:#206546;">-0.04</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.3" style="padding-left:2.0pt;padding-right:2.0pt;">51.28<span class="ltx_text" id="A10.T6.9.9.14.3.1" style="color:#FF0000;">+0.12</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.4" style="padding-left:2.0pt;padding-right:2.0pt;">41.76<span class="ltx_text" id="A10.T6.9.9.14.4.1" style="color:#206546;">-0.80</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.60<span class="ltx_text" id="A10.T6.9.9.14.5.1" style="color:#206546;">-0.20</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.14.6" style="padding-left:2.0pt;padding-right:2.0pt;">44.40<span class="ltx_text" id="A10.T6.9.9.14.6.1" style="color:#FF0000;">+2.40</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.7" style="padding-left:2.0pt;padding-right:2.0pt;">58.82<span class="ltx_text" id="A10.T6.9.9.14.7.1" style="color:#FF0000;">+1.38</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.8" style="padding-left:2.0pt;padding-right:2.0pt;">36.48<span class="ltx_text" id="A10.T6.9.9.14.8.1" style="color:#206546;">-0.38</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.9" style="padding-left:2.0pt;padding-right:2.0pt;">51.83<span class="ltx_text" id="A10.T6.9.9.14.9.1" style="color:#FF0000;">+0.00</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.10" style="padding-left:2.0pt;padding-right:2.0pt;">39.95<span class="ltx_text" id="A10.T6.9.9.14.10.1" style="color:#FF0000;">+3.05</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.11" style="padding-left:2.0pt;padding-right:2.0pt;">39.71<span class="ltx_text" id="A10.T6.9.9.14.11.1" style="color:#FF0000;">+0.64</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.12" style="padding-left:2.0pt;padding-right:2.0pt;">13.86<span class="ltx_text" id="A10.T6.9.9.14.12.1" style="color:#206546;">-4.40</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.14.13" style="padding-left:2.0pt;padding-right:2.0pt;">52.92<span class="ltx_text" id="A10.T6.9.9.14.13.1" style="color:#206546;">-5.66</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.14.14" style="padding-left:2.0pt;padding-right:2.0pt;">46.14<span class="ltx_text" id="A10.T6.9.9.14.14.1" style="color:#206546;">-0.18</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A10.T6.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{32b}}" class="ltx_Math" display="inline" id="A10.T6.8.8.8.1.m1.1"><semantics id="A10.T6.8.8.8.1.m1.1a"><msub id="A10.T6.8.8.8.1.m1.1.1" xref="A10.T6.8.8.8.1.m1.1.1.cmml"><mi id="A10.T6.8.8.8.1.m1.1.1a" xref="A10.T6.8.8.8.1.m1.1.1.cmml"></mi><mtext id="A10.T6.8.8.8.1.m1.1.1.1" xref="A10.T6.8.8.8.1.m1.1.1.1a.cmml">32b</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T6.8.8.8.1.m1.1b"><apply id="A10.T6.8.8.8.1.m1.1.1.cmml" xref="A10.T6.8.8.8.1.m1.1.1"><ci id="A10.T6.8.8.8.1.m1.1.1.1a.cmml" xref="A10.T6.8.8.8.1.m1.1.1.1"><mtext id="A10.T6.8.8.8.1.m1.1.1.1.cmml" mathsize="70%" xref="A10.T6.8.8.8.1.m1.1.1.1">32b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.8.8.8.1.m1.1c">{}_{\text{32b}}</annotation><annotation encoding="application/x-llamapun" id="A10.T6.8.8.8.1.m1.1d">start_FLOATSUBSCRIPT 32b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">56.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">52.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;">46.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">60.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.8" style="padding-left:2.0pt;padding-right:2.0pt;">38.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.9" style="padding-left:2.0pt;padding-right:2.0pt;">56.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.10" style="padding-left:2.0pt;padding-right:2.0pt;">39.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.11" style="padding-left:2.0pt;padding-right:2.0pt;">43.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.12" style="padding-left:2.0pt;padding-right:2.0pt;">20.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.8.8.8.13" style="padding-left:2.0pt;padding-right:2.0pt;">60.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.8.8.8.14" style="padding-left:2.0pt;padding-right:2.0pt;">48.83</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A10.T6.9.9.15.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="A10.T6.9.9.15.1.1">+ Openbook</span></td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.2" style="padding-left:2.0pt;padding-right:2.0pt;">57.92<span class="ltx_text" id="A10.T6.9.9.15.2.1" style="color:#FF0000;">+1.64</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">53.32<span class="ltx_text" id="A10.T6.9.9.15.3.1" style="color:#FF0000;">+0.54</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.16<span class="ltx_text" id="A10.T6.9.9.15.4.1" style="color:#206546;">-0.08</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.80<span class="ltx_text" id="A10.T6.9.9.15.5.1" style="color:#206546;">-0.10</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.15.6" style="padding-left:2.0pt;padding-right:2.0pt;">50.80<span class="ltx_text" id="A10.T6.9.9.15.6.1" style="color:#FF0000;">+4.40</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.7" style="padding-left:2.0pt;padding-right:2.0pt;">61.15<span class="ltx_text" id="A10.T6.9.9.15.7.1" style="color:#FF0000;">+0.49</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.8" style="padding-left:2.0pt;padding-right:2.0pt;">39.93<span class="ltx_text" id="A10.T6.9.9.15.8.1" style="color:#FF0000;">+1.39</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.9" style="padding-left:2.0pt;padding-right:2.0pt;">55.61<span class="ltx_text" id="A10.T6.9.9.15.9.1" style="color:#206546;">-1.18</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.10" style="padding-left:2.0pt;padding-right:2.0pt;">40.67<span class="ltx_text" id="A10.T6.9.9.15.10.1" style="color:#FF0000;">+1.55</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.11" style="padding-left:2.0pt;padding-right:2.0pt;">45.22<span class="ltx_text" id="A10.T6.9.9.15.11.1" style="color:#FF0000;">+1.45</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.12" style="padding-left:2.0pt;padding-right:2.0pt;">16.86<span class="ltx_text" id="A10.T6.9.9.15.12.1" style="color:#206546;">-3.24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A10.T6.9.9.15.13" style="padding-left:2.0pt;padding-right:2.0pt;">58.21<span class="ltx_text" id="A10.T6.9.9.15.13.1" style="color:#206546;">-1.83</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T6.9.9.15.14" style="padding-left:2.0pt;padding-right:2.0pt;">49.51<span class="ltx_text" id="A10.T6.9.9.15.14.1" style="color:#FF0000;">+0.68</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A10.T6.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5<math alttext="{}_{\text{72b}}" class="ltx_Math" display="inline" id="A10.T6.9.9.9.1.m1.1"><semantics id="A10.T6.9.9.9.1.m1.1a"><msub id="A10.T6.9.9.9.1.m1.1.1" xref="A10.T6.9.9.9.1.m1.1.1.cmml"><mi id="A10.T6.9.9.9.1.m1.1.1a" xref="A10.T6.9.9.9.1.m1.1.1.cmml"></mi><mtext id="A10.T6.9.9.9.1.m1.1.1.1" xref="A10.T6.9.9.9.1.m1.1.1.1a.cmml">72b</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T6.9.9.9.1.m1.1b"><apply id="A10.T6.9.9.9.1.m1.1.1.cmml" xref="A10.T6.9.9.9.1.m1.1.1"><ci id="A10.T6.9.9.9.1.m1.1.1.1a.cmml" xref="A10.T6.9.9.9.1.m1.1.1.1"><mtext id="A10.T6.9.9.9.1.m1.1.1.1.cmml" mathsize="70%" xref="A10.T6.9.9.9.1.m1.1.1.1">72b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T6.9.9.9.1.m1.1c">{}_{\text{72b}}</annotation><annotation encoding="application/x-llamapun" id="A10.T6.9.9.9.1.m1.1d">start_FLOATSUBSCRIPT 72b end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">58.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">48.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.9.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">60.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">61.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">40.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.9" style="padding-left:2.0pt;padding-right:2.0pt;">54.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.10" style="padding-left:2.0pt;padding-right:2.0pt;">36.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.11" style="padding-left:2.0pt;padding-right:2.0pt;">42.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.12" style="padding-left:2.0pt;padding-right:2.0pt;">11.52</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A10.T6.9.9.9.13" style="padding-left:2.0pt;padding-right:2.0pt;">62.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T6.9.9.9.14" style="padding-left:2.0pt;padding-right:2.0pt;">49.30</td>
</tr>
<tr class="ltx_tr" id="A10.T6.9.9.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r" id="A10.T6.9.9.16.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_slanted" id="A10.T6.9.9.16.1.1">+ Openbook</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">57.96<span class="ltx_text" id="A10.T6.9.9.16.2.1" style="color:#206546;">-0.24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">52.00<span class="ltx_text" id="A10.T6.9.9.16.3.1" style="color:#FF0000;">+3.24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">48.04<span class="ltx_text" id="A10.T6.9.9.16.4.1" style="color:#FF0000;">+1.20</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">30.60<span class="ltx_text" id="A10.T6.9.9.16.5.1" style="color:#206546;">-0.70</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="A10.T6.9.9.16.6" style="padding-left:2.0pt;padding-right:2.0pt;">63.60<span class="ltx_text" id="A10.T6.9.9.16.6.1" style="color:#FF0000;">+2.80</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.7" style="padding-left:2.0pt;padding-right:2.0pt;">62.67<span class="ltx_text" id="A10.T6.9.9.16.7.1" style="color:#FF0000;">+1.29</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.8" style="padding-left:2.0pt;padding-right:2.0pt;">42.86<span class="ltx_text" id="A10.T6.9.9.16.8.1" style="color:#FF0000;">+2.09</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.9" style="padding-left:2.0pt;padding-right:2.0pt;">54.07<span class="ltx_text" id="A10.T6.9.9.16.9.1" style="color:#206546;">-0.24</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.10" style="padding-left:2.0pt;padding-right:2.0pt;">41.26<span class="ltx_text" id="A10.T6.9.9.16.10.1" style="color:#FF0000;">+4.64</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.11" style="padding-left:2.0pt;padding-right:2.0pt;">44.64<span class="ltx_text" id="A10.T6.9.9.16.11.1" style="color:#FF0000;">+2.61</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.12" style="padding-left:2.0pt;padding-right:2.0pt;">18.03<span class="ltx_text" id="A10.T6.9.9.16.12.1" style="color:#FF0000;">+6.51</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="A10.T6.9.9.16.13" style="padding-left:2.0pt;padding-right:2.0pt;">56.75<span class="ltx_text" id="A10.T6.9.9.16.13.1" style="color:#206546;">-5.48</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="A10.T6.9.9.16.14" style="padding-left:2.0pt;padding-right:2.0pt;">50.51<span class="ltx_text" id="A10.T6.9.9.16.14.1" style="color:#FF0000;">+1.21</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of various Large Language Models (LLMs) on the Chinese Time Reasoning (CTM) benchmark, specifically focusing on the results obtained under the 'open-book' setting.  The open-book setting allows the LLMs to access external knowledge resources during the evaluation, potentially improving their performance on temporal reasoning tasks. The table shows the accuracy of each model across different question types within the CTM benchmark.  Each question type assesses different aspects of temporal understanding.  The 'Cross Temp Count' column likely refers to the number of temporal entities involved in the question, and an 'Avg.' column probably reflects an average accuracy across all question types for each model.
> <details>
> <summary>read the caption</summary>
> Table 6:  Detailed results under the open-book setting.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.16922/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16922/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}