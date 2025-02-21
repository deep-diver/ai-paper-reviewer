---
title: "Geolocation with Real Human Gameplay Data: A Large-Scale Dataset and Human-Like Reasoning Framework"
summary: "New geolocation dataset & reasoning framework enhance accuracy and interpretability by leveraging human gameplay data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 MBZUAI",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13759 {{< /keyword >}}
{{< keyword icon="writer" >}} Zirui Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13759" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13759" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13759/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Geolocation, critical for navigation and monitoring, suffers from datasets that are small, noisy, and inconsistent. Current methods often produce coarse, imprecise, and non-interpretable results, hindering advancements in the field. To solve these issues, this paper introduces **GeoComp**, a large-scale dataset collected from a geolocation game platform with 740K users, 25M metadata entries, and 3M geo-tagged locations. 



Leveraging GeoComp, they propose **GeoCoT**, a reasoning method enhancing Large Vision Model capabilities in geolocation tasks and **GeoEval**, an evaluation metric. GeoCoT integrates contextual and spatial cues, mimicking human reasoning. Experiments show that GeoCoT significantly boosts geolocation accuracy by up to 25% while enhancing interpretability, providing a comprehensive solution to critical challenges. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GeoComp, a large-scale geolocation dataset with real human gameplay data, is introduced to address the limitations of existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GeoCoT, a novel reasoning framework, is proposed to enhance the reasoning capabilities of LVMs in geolocation tasks by mimicking human geolocation reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Significant improvements in geolocation accuracy and interpretability are demonstrated through the use of GeoCoT and the GeoEval metric. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **large-scale, human-annotated geolocation dataset (GeoComp) and a reasoning framework (GeoCoT)**, addressing critical challenges in geolocation research and opening new avenues for developing more accurate and interpretable models. This is achieved with a novel evaluation metric. These contributions provide a valuable resource and methodology for advancing the field.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13759/x1.png)

> 🔼 The figure illustrates the gameplay of a geolocation game. Two players simultaneously view the same image and attempt to guess its location. The game awards points based on the accuracy of each player's guess, with higher scores given to those who pinpoint the location more precisely. This competitive element motivates users to carefully analyze the image for visual cues such as geographical features, landmarks, architectural styles, signage, and natural elements that can help determine the correct location.
> <details>
> <summary>read the caption</summary>
> Figure 1. The gaming logic of our platform: Two players independently guess the location based on the same image and their own hints, with scores determined by the distance between their predictions and the ground truth location.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.2.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.2.1">Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.3.1">Geographic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.4.1">Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.5.1">Open</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.6.1">Human</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.2.2.1.1">Coverage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.2.2.2.1">Access</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.T1.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.2.2.3.1">Annotation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.2.1.3.1.1">Im2GPS3K
 <cite class="ltx_cite ltx_citemacro_citep">(Vo et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib52" title="">2017b</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.2.1.3.1.2">2997</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.3.1.3">Local</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.3.1.4">Web-Scraped</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.3.1.5"><span class="ltx_text" id="S1.T1.2.1.3.1.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.2.1.3.1.6"><span class="ltx_text" id="S1.T1.2.1.3.1.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.4.2.1">YFCC4K
 <cite class="ltx_cite ltx_citemacro_citep">(Vo et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib52" title="">2017b</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.4.2.2">4536</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.2.3">Local</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.2.4">Web-Scraped</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.2.5"><span class="ltx_text" id="S1.T1.2.1.4.2.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.4.2.6"><span class="ltx_text" id="S1.T1.2.1.4.2.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.5.3.1">YFCC26K
 <cite class="ltx_cite ltx_citemacro_citep">(Theiner et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib48" title="">2022a</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.5.3.2">26k</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.3.3">Local</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.3.4">Web-Scraped</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.3.5"><span class="ltx_text" id="S1.T1.2.1.5.3.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.5.3.6"><span class="ltx_text" id="S1.T1.2.1.5.3.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.6.4.1">MP-16
 <cite class="ltx_cite ltx_citemacro_citep">(Larson et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib24" title="">2017</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.6.4.2">4.7M</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.4.3">Local</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.4.4">Web-Scraped</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.4.5"><span class="ltx_text" id="S1.T1.2.1.6.4.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.6.4.6"><span class="ltx_text" id="S1.T1.2.1.6.4.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.7.5.1">Google-WS-15k
 <cite class="ltx_cite ltx_citemacro_citep">(Clark et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib9" title="">2023a</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.7.5.2">15k</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.5.3"><span class="ltx_text" id="S1.T1.2.1.7.5.3.1" style="color:#99FF99;">Global</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.5.4">Map Service</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.7.5.5"><span class="ltx_text" id="S1.T1.2.1.7.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.7.5.6"><span class="ltx_text" id="S1.T1.2.1.7.5.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.8.6.1">GMCP <cite class="ltx_cite ltx_citemacro_citep">(Zamir and Shah, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib61" title="">2014</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.8.6.2">105K</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.6.3">Local</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.6.4">Map Service</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.8.6.5"><span class="ltx_text" id="S1.T1.2.1.8.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.8.6.6"><span class="ltx_text" id="S1.T1.2.1.8.6.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.9.7.1">StreetCLIP <cite class="ltx_cite ltx_citemacro_citep">(Haas et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib16" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.9.7.2">1M</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.7.3">Unknown</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.7.4">Map Service</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.9.7.5"><span class="ltx_text" id="S1.T1.2.1.9.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.9.7.6"><span class="ltx_text" id="S1.T1.2.1.9.7.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.10.8.1">OSV-5M <cite class="ltx_cite ltx_citemacro_citep">(Astruc et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13759v1#bib.bib2" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.10.8.2">5.1M</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.8.3"><span class="ltx_text" id="S1.T1.2.1.10.8.3.1" style="color:#8FCC8F;">Global</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.8.4">Map Service</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.10.8.5"><span class="ltx_text" id="S1.T1.2.1.10.8.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.10.8.6"><span class="ltx_text" id="S1.T1.2.1.10.8.6.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.11.9.1.1">GeoComp</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.2">3.3M</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.11.9.3.1" style="color:#006300;">Global</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.4">Map Service</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.5"><span class="ltx_text" id="S1.T1.2.1.11.9.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.9.6"><span class="ltx_text" id="S1.T1.2.1.11.9.6.1" style="color:#008000;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares GeoComp with other existing geolocation datasets.  It highlights key differences in dataset size, geographic coverage (local versus global), data source (web-scraped versus map services), and the availability of open access and human annotations.  A key advantage of GeoComp is that it is the first dataset to include real gameplay data from human players, providing rich performance information that other datasets lack. The shading of green cells visually represents the geographic coverage, with darker shades denoting wider geographical representation.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison of Existing Geolocation Datasets and GeoComp. GeoComp is the first to include real, rich player performance data. “Local” refers to city- or region-specific data, while “Global” spans multiple continents. Darker green shades indicate broader geographic coverage.
> </details>





### In-depth insights


#### GeoComp Dataset
**GeoComp is introduced as a large-scale geolocation dataset**. It was collected from a geolocation game platform with **740K users** over two years, offering **25 million metadata entries** and **3 million geotagged locations**. The dataset stands out due to its **real human gameplay data**, providing diverse difficulty levels and highlighting gaps in current models. **Unlike existing datasets, GeoComp features rich player performance data**, contributing to a more nuanced evaluation of geolocation models. It enables the evaluation of task difficulty and helps in filtering unreasonable cases. The dataset's spatial distribution is also analyzed, showing **dense clusters in urbanized regions** and sparse coverage in areas like Africa and Siberia, with a balanced distribution across countries, addressing biases found in other datasets like OSV-5M.

#### Human Geo Accuracy
While the provided document does not explicitly contain a section titled 'Human Geo Accuracy', several aspects relate to how humans perform geolocation tasks and the dataset's characteristics. The authors emphasize the **creation of a large-scale geolocation dataset (GeoComp) sourced from real human gameplay data**. This inherently captures human-level geolocation accuracy, as the dataset is populated with users' attempts to identify locations from images. The paper analyzes **performance scores across different player skill levels and countries**, revealing how expertise, geographic knowledge, and cultural awareness influence accuracy. Experts consistently outperform beginners, and performance varies significantly across countries due to language familiarity and climatic similarities. The authors uses the users' performance data to measure the difficulty and quality of the collected data. These measures shows insights to what factors the game players are relying on for accurate prediction.

#### GeoCoT Reasoning
The paper introduces GeoCoT, a novel reasoning framework. **GeoCoT emulates human geolocation reasoning**, progressing from broad geographic features to granular details, enabling precise localization. It surpasses traditional methods by generating natural language reasoning, guiding the model step-by-step to predict the location more accurately. The framework doesn't require explicit knowledge about location-specific features; instead, it's designed to **help LVMs identify relevant geographic cues leveraging existing knowledge**. GeoCoT's design is inspired by human's way to analyze and narrow down locations through a step-by-step reasoning process. It also avoids coarse classification and exhaustive image databases, providing a scalable, interpretable, and accurate location prediction.

#### Multi-Level Eval
**Multi-Level Evaluation is crucial for comprehensively assessing geolocation models.** It moves beyond simple accuracy, examining performance across different granularities (city, country, continent) to reveal specific strengths and weaknesses. This approach allows for a nuanced understanding of how well a model generalizes and adapts to varying levels of detail. **Models might excel at continent-level predictions but struggle with pinpointing precise locations within a city, highlighting the importance of multi-faceted assessment.** The evaluation considers varying geographic scales (street, city, country) to simulate real-world scenarios where different levels of precision are required. Furthermore, evaluating models on **both existing benchmarks and novel datasets** ensures robustness and prevents overfitting to specific training data. Finally, this approach could incorporate metrics that measure the uncertainty or confidence levels associated with predictions, offering valuable insights into the reliability of the model's output.

#### Generalizable LVM
While the document focuses on **geolocation** using Large Vision Models (LVMs), the concept of a "Generalizable LVM" isn't explicitly discussed. However, we can infer its relevance. A generalizable LVM in this context would be one capable of accurately geolocating images across diverse environments, datasets, and conditions. It would **avoid overfitting** to specific training data, a common pitfall highlighted in the paper where models like GeoCLIP, while performing well on traditional benchmarks, falter on the author's new dataset and finer-grained location tasks. The core of generalizability hinges on **robust feature extraction** and **reasoning capabilities**, allowing the LVM to interpret varied visual cues regardless of geographical context. Techniques like data augmentation, multi-modal training (incorporating text and other data), and architectural choices promoting invariant feature learning would be critical for building such a model. Furthermore, the success of GeoCoT, which guides the LVM through a step-by-step reasoning process, suggests that imparting **structured reasoning abilities** is key to enhancing the generalizability of LVMs in geolocation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13759/x2.png)

> 🔼 Figure 2 illustrates the spatial distribution of 3,238,919 geo-tagged locations within the GeoComp dataset.  Panel (a) presents a world map visualizing the density of these locations, revealing a clear spatial heterogeneity. Dense clusters are observed in highly urbanized regions of Europe and Asia, while significantly sparser coverage is noted in areas such as Africa and Siberia. Panel (b) provides a pie chart showing the proportional distribution of geo-tagged locations across continents, with North America and Asia exhibiting the highest proportions. Finally, panel (c) uses a bar chart to compare the dataset's country-level distribution with that of a previous dataset (OSV-5M). This comparison highlights a key difference: OSV-5M is heavily skewed, with a single country accounting for 25% of its data, whereas GeoComp demonstrates a more balanced representation across countries.
> <details>
> <summary>read the caption</summary>
> Figure 2. Spatial distribution of 3,238,919 geo-tagged locations in GeoComp: (a) The global map shows spatial heterogeneity, with dense clusters in more urbanized regions like Europe and Asia, and sparse coverage in areas like Africa and Siberia. (b) The pie chart highlights the proportional geo-tagged locations distribution, led by North America and Asia. (c) Unlike previous datasets like OSV-5M, where a single country (e.g., America) dominates 25% of the data, our dataset is balanced at country level.
> </details>



![](https://arxiv.org/html/2502.13759/x3.png)

> 🔼 This bar chart displays the average performance scores of game players categorized by skill level (Beginner, Overall, Expert) across various mainstream countries.  The scores reflect the accuracy of players in identifying locations within a geolocation game.  Higher scores indicate better accuracy.  The chart highlights the performance disparity between beginner and expert players, and also showcases variations in performance across different countries, potentially due to factors such as geographic familiarity, language, and cultural knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 3. Performance of game players of different levels in mainstream countries.
> </details>



![](https://arxiv.org/html/2502.13759/x4.png)

> 🔼 The figure illustrates the difference between traditional geolocation methods and the novel approach proposed in the paper.  Traditional methods, such as retrieval-based and classification-based approaches, are limited by the quality and scale of existing datasets, resulting in coarse-grained predictions. In contrast, the authors' generation and reasoning-based method leverages a new large-scale dataset and a chain-of-thought reasoning framework to achieve fine-grained, city-level predictions. The diagram visually compares these approaches, highlighting the limitations of older techniques and the advantages of the novel method.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comparison of previous geolocation tasks and our proposed paradigm: while previous works focused on coarse-grained predictions limited by dataset quality, our generation and reasoning-based method enables fine-grained city-level predictions.
> </details>



![](https://arxiv.org/html/2502.13759/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of three different large vision language models (LLaVAs, GPT-40, and GeoReasoner) on the task of image geolocation.  The figure shows example images and the reasoning process used by each model. Clues identified by each model are highlighted in blue, correct predictions in green, incorrect predictions in red, and uncertain or vague predictions in orange. This allows for a visual analysis of the strengths and weaknesses of each model's reasoning process and ability to identify relevant contextual information within images.
> <details>
> <summary>read the caption</summary>
> Figure 5. Qualitative comparison of LLaVA, GPT4o, and GeoReasoner. Clues are shown in blue, correct predictions in green, incorrect in red, and vague/uncertain guesses in orange.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.9.10.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.9.10.1.2">City</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.9.10.1.3">Country</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.9.10.1.4">Continent</th>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T2.9.9.10"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.1.1.1">Accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.2.2.2">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.3.3.3">F1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.4.4.4">Accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.5.5.5">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.6.6.6">F1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.m1.1.1" stretchy="false" xref="S3.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.m1.1b"><ci id="S3.T2.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.7.7.7">Accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.m1.1a"><mo id="S3.T2.7.7.7.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.m1.1b"><ci id="S3.T2.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.8.8.8">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.m1.1a"><mo id="S3.T2.8.8.8.m1.1.1" stretchy="false" xref="S3.T2.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.m1.1b"><ci id="S3.T2.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.9.9.9">F1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.9.9.9.m1.1"><semantics id="S3.T2.9.9.9.m1.1a"><mo id="S3.T2.9.9.9.m1.1.1" stretchy="false" xref="S3.T2.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.m1.1b"><ci id="S3.T2.9.9.9.m1.1.1.cmml" xref="S3.T2.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.9.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.9.11.1.1">LLaVA-1.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.2">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.3">0.001</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.4">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.5">0.041</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.6">0.019</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.7">0.028</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.8">0.175</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.9">0.067</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.11.1.10">0.056</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.12.2.1">LLama-3.2-Vision</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.2">0.081</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.3">0.037</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.4">0.030</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.5"><span class="ltx_text" id="S3.T2.9.12.2.5.1" style="background-color:#FEC89A;">0.630</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.6"><span class="ltx_text" id="S3.T2.9.12.2.6.1" style="background-color:#FFD7BA;">0.199</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.7"><span class="ltx_text" id="S3.T2.9.12.2.7.1" style="background-color:#FFD7BA;">0.217</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.8"><span class="ltx_text" id="S3.T2.9.12.2.8.1" style="background-color:#FFD7BA;">0.866</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.9"><span class="ltx_text" id="S3.T2.9.12.2.9.1" style="background-color:#FFD7BA;">0.643</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.12.2.10"><span class="ltx_text" id="S3.T2.9.12.2.10.1" style="background-color:#FFE5D9;">0.639</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.13.3.1">Qwen-VL</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.2">0.016</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.3">0.013</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.4">0.014</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.5">0.069</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.6">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.7">0.070</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.8">0.130</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.9">0.115</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.13.3.10">0.077</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.14.4.1">GeoCLIP</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.2">0.018</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.3">0.007</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.4">0.008</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.5">0.550</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.6"><span class="ltx_text" id="S3.T2.9.14.4.6.1" style="background-color:#FFE5D9;">0.197</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.7">0.204</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.8"><span class="ltx_text" id="S3.T2.9.14.4.8.1" style="background-color:#FEC89A;">0.872</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.9"><span class="ltx_text" id="S3.T2.9.14.4.9.1" style="background-color:#FEC89A;">0.746</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.14.4.10"><span class="ltx_text" id="S3.T2.9.14.4.10.1" style="background-color:#FEC89A;">0.731</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.15.5.1">GeoReasoner</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.2">0.018</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.3">0.014</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.4">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.5">0.092</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.6">0.053</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.7">0.085</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.8">0.208</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.9">0.161</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.15.5.10">0.144</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.16.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.16.6.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.2"><span class="ltx_text" id="S3.T2.9.16.6.2.1" style="background-color:#FFE5D9;">0.092</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.3"><span class="ltx_text" id="S3.T2.9.16.6.3.1" style="background-color:#FFE5D9;">0.048</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.4"><span class="ltx_text" id="S3.T2.9.16.6.4.1" style="background-color:#FFE5D9;">0.044</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.5">0.615</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.6">0.188</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.7">0.208</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.8">0.807</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.9">0.468</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.16.6.10">0.487</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.17.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.17.7.1">GPT-4o(CoT)</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.2"><span class="ltx_text" id="S3.T2.9.17.7.2.1" style="background-color:#FFD7BA;">0.094</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.3"><span class="ltx_text" id="S3.T2.9.17.7.3.1" style="background-color:#FFD7BA;">0.052</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.4"><span class="ltx_text" id="S3.T2.9.17.7.4.1" style="background-color:#FFD7BA;">0.042</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.5"><span class="ltx_text" id="S3.T2.9.17.7.5.1" style="background-color:#FFD7BA;">0.623</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.6">0.194</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.7"><span class="ltx_text" id="S3.T2.9.17.7.7.1" style="background-color:#FFD7BA;">0.212</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.8">0.819</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.9">0.430</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.17.7.10">0.449</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.18.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.9.18.8.1">GeoCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.2"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.2.1" style="background-color:#FEC89A;">0.118</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.3"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.3.1" style="background-color:#FEC89A;">0.089</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.4"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.4.1" style="background-color:#FEC89A;">0.086</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.5"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.5.1" style="background-color:#FEC89A;">0.640</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.6"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.6.1" style="background-color:#FEC89A;">0.260</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.7"><span class="ltx_text ltx_font_bold" id="S3.T2.9.18.8.7.1" style="background-color:#FEC89A;">0.291</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.8"><span class="ltx_text" id="S3.T2.9.18.8.8.1" style="background-color:#FFE5D9;">0.862</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.9"><span class="ltx_text" id="S3.T2.9.18.8.9.1" style="background-color:#FFE5D9;">0.638</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.18.8.10"><span class="ltx_text" id="S3.T2.9.18.8.10.1" style="background-color:#FFD7BA;">0.646</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of various models' performance in country-level and city-level geolocation tasks.  The metrics used are Precision, Recall, and F1-score, which are standard measures for evaluating the accuracy and effectiveness of classification models. The models compared include several state-of-the-art Large Vision Language Models (LLVMs) and other dedicated geolocation models. The results are presented showing the best, second best, and third-best performing model for each metric and task.  Bold values highlight the instances where the proposed GeoCoT model outperforms all others.
> <details>
> <summary>read the caption</summary>
> Table 2. Comparison of Precision, Recall and F1 scores in country-level and city-level geolocation. The scores are represented as follows: best, second, and third. Bold values indicate that our model achieves the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.4.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.2"><span class="ltx_text" id="S5.T3.4.1.1.2.1">Street</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.3"><span class="ltx_text" id="S5.T3.4.1.1.3.1">City</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.4"><span class="ltx_text" id="S5.T3.4.1.1.4.1">Country</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.4.2.2.1"><span class="ltx_text" id="S5.T3.4.2.2.1.1">1km</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.4.2.2.2"><span class="ltx_text" id="S5.T3.4.2.2.2.1">25km</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.4.2.2.3"><span class="ltx_text" id="S5.T3.4.2.2.3.1">750km</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.3.1.1">LLaVA-1.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.3.1.2">0.006</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.3.1.3">0.020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.3.1.4">0.082</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.2.1">Llama-3.2-Vision</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.2.2">0.018</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.2.3">0.104</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.2.4">0.638</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.5.3.1">Qwen-VL</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.5.3.2">0.004</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.5.3.3">0.014</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.5.3.4">0.090</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.6.4.1">GeoCLIP</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.6.4.2">0.035</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.6.4.3">0.077</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.6.4.4">0.625</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.7.5.1">GeoReasoner</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.7.5.2">0.010</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.7.5.3">0.020</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.7.5.4">0.128</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.8.6.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.8.6.2">0.045</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.8.6.3">0.147</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.8.6.4">0.678</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.9.7.1">GPT-4o(CoT)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.9.7.2">0.047</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.9.7.3">0.151</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.9.7.4">0.701</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.4.10.8.1">GeoCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.10.8.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.10.8.2.1">0.073</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.10.8.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.10.8.3.1">0.157</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.10.8.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.10.8.4.1">0.711</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive evaluation of various geolocation models' accuracy across different spatial scales.  It assesses the models' ability to pinpoint locations with varying degrees of precision. The accuracy is measured at three levels of granularity: street level (within 1 kilometer), city level (within 25 kilometers), and country level (within 750 kilometers).  This allows for a nuanced understanding of each model's performance in terms of its ability to perform both fine-grained and coarse-grained geolocation tasks. By presenting accuracy at these various scales, the table provides valuable insights into the strengths and limitations of each model in different geographical contexts and application scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3. Accuracy of different models on geolocation tasks at various scales.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.1.1.1.1"><span class="ltx_text" id="S5.T4.4.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.2"><span class="ltx_text" id="S5.T4.4.1.1.1.2.1" style="font-size:90%;">Similarity</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T4.4.1.1.1.3"><span class="ltx_text" id="S5.T4.4.1.1.1.3.1" style="font-size:90%;">GeoEval</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T4.4.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.1.2.2.2"><span class="ltx_text" id="S5.T4.4.1.2.2.2.1" style="font-size:90%;">GPTScore</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.1.2.2.3"><span class="ltx_text" id="S5.T4.4.1.2.2.3.1" style="font-size:90%;">CE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.1.2.2.4"><span class="ltx_text" id="S5.T4.4.1.2.2.4.1" style="font-size:90%;">AE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.1.2.2.5"><span class="ltx_text" id="S5.T4.4.1.2.2.5.1" style="font-size:90%;">AC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.1.2.2.6"><span class="ltx_text" id="S5.T4.4.1.2.2.6.1" style="font-size:90%;">LC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.4.1.3.1.1"><span class="ltx_text" id="S5.T4.4.1.3.1.1.1" style="font-size:90%;">LLaVA-1.6</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.3.1.2"><span class="ltx_text" id="S5.T4.4.1.3.1.2.1" style="font-size:90%;">0.478</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.3.1.3"><span class="ltx_text" id="S5.T4.4.1.3.1.3.1" style="font-size:90%;">1.262</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.3.1.4"><span class="ltx_text" id="S5.T4.4.1.3.1.4.1" style="font-size:90%;">1.271</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.3.1.5"><span class="ltx_text" id="S5.T4.4.1.3.1.5.1" style="font-size:90%;">1.446</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.3.1.6"><span class="ltx_text" id="S5.T4.4.1.3.1.6.1" style="font-size:90%;">1.490</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.1.4.2.1"><span class="ltx_text" id="S5.T4.4.1.4.2.1.1" style="font-size:90%;">Llama-3.2-Vision</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2.2"><span class="ltx_text" id="S5.T4.4.1.4.2.2.1" style="font-size:90%;">0.566</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2.3"><span class="ltx_text" id="S5.T4.4.1.4.2.3.1" style="font-size:90%;">2.203</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2.4"><span class="ltx_text" id="S5.T4.4.1.4.2.4.1" style="font-size:90%;">2.386</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2.5"><span class="ltx_text" id="S5.T4.4.1.4.2.5.1" style="font-size:90%;">2.558</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2.6"><span class="ltx_text" id="S5.T4.4.1.4.2.6.1" style="font-size:90%;">2.721</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.1.5.3.1"><span class="ltx_text" id="S5.T4.4.1.5.3.1.1" style="font-size:90%;">Qwen-VL</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3.2"><span class="ltx_text" id="S5.T4.4.1.5.3.2.1" style="font-size:90%;">0.371</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3.3"><span class="ltx_text" id="S5.T4.4.1.5.3.3.1" style="font-size:90%;">1.231</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3.4"><span class="ltx_text" id="S5.T4.4.1.5.3.4.1" style="font-size:90%;">1.255</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3.5"><span class="ltx_text" id="S5.T4.4.1.5.3.5.1" style="font-size:90%;">1.453</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3.6"><span class="ltx_text" id="S5.T4.4.1.5.3.6.1" style="font-size:90%;">1.484</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.1.6.4.1"><span class="ltx_text" id="S5.T4.4.1.6.4.1.1" style="font-size:90%;">GeoReasoner</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.4.2"><span class="ltx_text" id="S5.T4.4.1.6.4.2.1" style="font-size:90%;">0.424</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.4.3"><span class="ltx_text" id="S5.T4.4.1.6.4.3.1" style="font-size:90%;">1.421</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.4.4"><span class="ltx_text" id="S5.T4.4.1.6.4.4.1" style="font-size:90%;">1.533</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.4.5"><span class="ltx_text" id="S5.T4.4.1.6.4.5.1" style="font-size:90%;">1.719</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.4.6"><span class="ltx_text" id="S5.T4.4.1.6.4.6.1" style="font-size:90%;">2.038</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.1.7.5.1"><span class="ltx_text" id="S5.T4.4.1.7.5.1.1" style="font-size:90%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.7.5.2"><span class="ltx_text" id="S5.T4.4.1.7.5.2.1" style="font-size:90%;">0.613</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.7.5.3"><span class="ltx_text" id="S5.T4.4.1.7.5.3.1" style="font-size:90%;">2.320</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.7.5.4"><span class="ltx_text" id="S5.T4.4.1.7.5.4.1" style="font-size:90%;">2.891</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.7.5.5"><span class="ltx_text" id="S5.T4.4.1.7.5.5.1" style="font-size:90%;">2.809</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.7.5.6"><span class="ltx_text" id="S5.T4.4.1.7.5.6.1" style="font-size:90%;">3.143</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.1.8.6.1"><span class="ltx_text" id="S5.T4.4.1.8.6.1.1" style="font-size:90%;">GPT-4o(CoT)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.8.6.2"><span class="ltx_text" id="S5.T4.4.1.8.6.2.1" style="font-size:90%;">0.663</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.8.6.3"><span class="ltx_text" id="S5.T4.4.1.8.6.3.1" style="font-size:90%;">2.462</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.8.6.4"><span class="ltx_text" id="S5.T4.4.1.8.6.4.1" style="font-size:90%;">3.136</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.8.6.5"><span class="ltx_text" id="S5.T4.4.1.8.6.5.1" style="font-size:90%;">3.156</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.8.6.6"><span class="ltx_text" id="S5.T4.4.1.8.6.6.1" style="font-size:90%;">3.540</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.1.9.7.1"><span class="ltx_text" id="S5.T4.4.1.9.7.1.1" style="font-size:90%;">GeoCoT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.9.7.2"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.9.7.2.1" style="font-size:90%;">0.728</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.9.7.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.9.7.3.1" style="font-size:90%;">2.690</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.9.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.9.7.4.1" style="font-size:90%;">3.538</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.9.7.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.9.7.5.1" style="font-size:90%;">3.696</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.9.7.6"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.9.7.6.1" style="font-size:90%;">3.945</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a detailed evaluation of the GeoCoT model's reasoning process. It uses ground truth data as a benchmark for comparison, evaluating GeoCoT's performance along four key aspects of its reasoning capabilities: Completeness (CE), Accuracy (AE), Correspondence (AC), and Logical Coherence (LC) of feature extraction and reasoning. The evaluation metrics provide a comprehensive assessment of GeoCoT's ability to mimic human-like reasoning in geolocation tasks.
> <details>
> <summary>read the caption</summary>
> Table 4. Evaluation of GeoCoT’s reasoning process using ground truth-based metrics within the GeoEval framework.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.3.4.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.4.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.4.1.2">OH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.4.1.3">FH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.4.1.4">AH</th>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.1">Count<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.2.2.2">Count<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.3.3.3">Count<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.3.5.1.1">GeoReasoner</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.5.1.2">237</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.5.1.3">151</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.5.1.4">203</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.3.6.2.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.2.2">43</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.2.3">4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.6.2.4">35</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.3.7.3.1">GeoCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.3.2">5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.3.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.7.3.4">18</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of hallucination in the reasoning data generated by different large vision language models (LVMs).  Hallucination refers to the generation of inaccurate or fabricated information. The evaluation focuses on three types of hallucinations: Object Hallucination (OH), which assesses whether the generated data includes objects not present in the original image; Fact Hallucination (FH), which measures the accuracy of factual information within the generated data; and Attribution Hallucination (AH), which assesses whether the data incorrectly attributes properties or relationships to entities or objects.  The table shows the count of errors for each hallucination type for three models: GeoReasoner, GPT-40, and GeoCoT. Lower counts indicate better performance and fewer hallucinations.
> <details>
> <summary>read the caption</summary>
> Table 5. Hallucination Evaluation on Reasoning Data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.4.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.1.1.3.1">Im2GPS</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.1.1.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.1.1.1.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.1.1.6.1">Im2GPS3K</span></th>
<td class="ltx_td ltx_border_tt" id="S5.T6.4.1.1.1.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.1"><span class="ltx_text" id="S5.T6.4.1.2.2.1.1">Street</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.2"><span class="ltx_text" id="S5.T6.4.1.2.2.2.1">City</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.3"><span class="ltx_text" id="S5.T6.4.1.2.2.3.1">Country</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.4">Street</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.5">City</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.2.2.6">Country</th>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.1"><span class="ltx_text" id="S5.T6.4.1.3.3.1.1">1km</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.2"><span class="ltx_text" id="S5.T6.4.1.3.3.2.1">25km</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.3"><span class="ltx_text" id="S5.T6.4.1.3.3.3.1">750km</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.4">1km</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.5">25km</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.1.3.3.6">750km</th>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.4.1.4.4.1">LLaVA-1.6</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.2">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.3">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.4">0.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.5">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.6">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.1.4.4.7">0.32</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.5.5.1">Llama-3.2-Vision</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.2">0.09</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.3">0.37</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.4">0.65</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.5">0.07</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.6">0.27</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.5.5.7">0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.6.6.1">Qwen-VL</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.2">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.3">0.21</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.4">0.37</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.5">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.6">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.6.6.7">0.26</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.7.7.1">GeoCLIP</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.2">0.17</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.3">0.41</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.4">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.5">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.6">0.32</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.7.7.7">0.67</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.8.8.1">GeoReasoner</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.2">0.05</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.3">0.19</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.4">0.33</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.5">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.6">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.8.8.7">0.26</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.9.9.1">PlaNet</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.2">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.3">0.25</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.4">0.54</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.5">0.09</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.6">0.25</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.9.9.7">0.48</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.10.10.1">CPlaNet</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.2">0.17</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.3">0.37</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.4">0.62</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.5">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.6">0.27</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.10.10.7">0.49</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.11.11.1">Translocator</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.2">0.20</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.3">0.48</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.4">0.76</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.5">0.12</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.6">0.31</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.11.11.7">0.59</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.12.12.1">GeoDecoder</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.2">0.22</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.3">0.50</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.4">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.5">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.6">0.34</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.12.12.7">0.61</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.13.13.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.2">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.3">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.4">0.74</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.5">0.14</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.6">0.40</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.13.13.7">0.66</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.1.14.14.1">GPT-4o(ZS-CoT)</th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.2">0.16</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.3">0.49</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.4">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.5">0.14</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.6">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.1.14.14.7">0.69</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T6.4.1.15.15.1">GeoCoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.2"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.2.1">0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.3"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.3.1">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.4"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.4.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.5"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.5.1">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.6"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.6.1">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.4.1.15.15.7"><span class="ltx_text ltx_font_bold" id="S5.T6.4.1.15.15.7.1">0.74</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of GeoCoT against other state-of-the-art geolocation models on two widely used benchmark datasets: Im2GPS and Im2GPS3K.  The comparison is made across three levels of granularity: street (1km radius), city (25km radius), and country (750km radius).  Performance is measured by accuracy, showing the percentage of correctly localized predictions at each level for each model.
> <details>
> <summary>read the caption</summary>
> Table 6. Performance comparison of GeoCoT and state-of-the-art geolocation models on traditional benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13759/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13759/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}