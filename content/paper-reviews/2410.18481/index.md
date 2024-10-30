---
title: "Dialog2Flow: Pre-training Soft-Contrastive Action-Driven Sentence Embeddings for Automatic Dialog Flow Extraction"
summary: "Dialog2Flow (D2F) pre-trains soft-contrastive action-driven sentence embeddings to automatically extract dialog workflows, achieving superior performance on diverse datasets."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-29"]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18481 {{< /keyword >}}

### TL;DR


{{< lead >}}

Many conversational AI systems struggle to efficiently extract structured workflows from unlabeled dialogs, hindering the development of efficient systems and large language models.  This manual process is time-consuming and limits scalability. This paper tackles this problem by introducing Dialog2Flow (D2F), a novel approach to automatically extracting workflows.



D2F uses **sentence embeddings** that map utterances to a latent space where they're grouped according to their communicative functions (actions).  A **novel soft contrastive loss** is introduced, leveraging semantic action information to guide representation learning.  The **results show D2F outperforms existing methods** across various domains, both qualitatively and quantitatively, using a comprehensive dataset of task-oriented dialogs with normalized action annotations. This makes workflow extraction significantly more efficient and scalable.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18481" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18481" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in conversational AI and dialogue systems.  It addresses the challenge of automatically extracting workflows from dialogs, which is critical for improving dialog system design, data augmentation, and training human agents.  **The introduction of Dialog2Flow (D2F) embeddings and a novel soft contrastive loss significantly advance the field**, offering a new approach to representation learning and a large, standardized dataset for training and evaluation. This opens avenues for further research on more complex dialog structures and grounded LLMs.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dialog2Flow (D2F) embeddings map utterances to a latent space grouped by communicative functions, enabling workflow extraction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel soft contrastive loss leverages semantic action information, outperforming standard supervised contrastive loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} D2F achieves superior qualitative and quantitative results across diverse domains compared to existing sentence embeddings. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18481/figures_1_0.png)

> 🔼 The figure shows an example of a dialog segment from the Spoken WOZ dataset, illustrating the annotation of utterances with their corresponding dialog acts and slots.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example segment of the dialog SNG1533 from the hospital domain of the Spoken WOZ dataset. Actions are defined by concatenating the dialog act label (in bold) with the slot label(s) associated to each utterance.
> </details>





![](https://ai-paper-reviewer.com/2410.18481/charts_17_0.png)

> 🔼 The chart displays the impact of the label temperature parameter τ' on the F1 score and anisotropy of D2F single and joint models, comparing them to D2F-Hard models.
> <details>
> <summary>read the caption</summary>
> Figure A3: Change in F₁ score (top) and ▲ Anisotropy (bottom) with respect to the label temperature τ' (x-axis). The blue and orange curves represent D2Fsingle and D2Fjoint, respectively. Horizontal lines indicate the performance of their D2F-Hard counterparts using the standard hard supervised contrastive loss.
> </details>





{{< table-caption >}}
<br><table id='12' style='font-size:14px'><tr><td>Dataset</td><td>#U</td><td>#D</td><td>#DA</td><td>#S</td></tr><tr><td>ABCD (Chen et al., 2021)</td><td>20.4K</td><td>10</td><td>0</td><td>10</td></tr><tr><td>BiTOD (Lin et al., 2021)</td><td>72.5K</td><td>6</td><td>13</td><td>33</td></tr><tr><td>Disambiguation (Qian et al., 2022)</td><td>114.3K</td><td>8</td><td>9</td><td>28</td></tr><tr><td>DSTC2-Clean (Mrk�i� et al., 2017)</td><td>25K</td><td>1</td><td>2</td><td>8</td></tr><tr><td>FRAMES (E1 Asri et al., 2017)</td><td>20K</td><td>1</td><td>21</td><td>46</td></tr><tr><td>GECOR (Quan et al., 2019)</td><td>2.5K</td><td>1</td><td>2</td><td>10</td></tr><tr><td>HDSA-Dialog (Chen et al., 2019)</td><td>91.9K</td><td>8</td><td>6</td><td>24</td></tr><tr><td>KETOD (Chen et al., 2022)</td><td>107.7K</td><td>20</td><td>15</td><td>182</td></tr><tr><td>MS-DC (Li et al., 2018)</td><td>71.9K</td><td>3</td><td>11</td><td>56</td></tr><tr><td>MulDoGO (Peskov et al., 2019)</td><td>74.8K</td><td>6</td><td>0</td><td>63</td></tr><tr><td>MultiWOZ2.1 (Eric et al., 2020)</td><td>108.3K</td><td>8</td><td>9</td><td>27</td></tr><tr><td>MultiWOZ2.2 (Zang et al., 2020)</td><td>55.9K</td><td>8</td><td>2</td><td>26</td></tr><tr><td>SGD (Rastogi et al., 2020)</td><td>479.5K</td><td>20</td><td>15</td><td>184</td></tr><tr><td>Taskmaster1 (Byrne et al., 2019)</td><td>30.7K</td><td>6</td><td>1</td><td>59</td></tr><tr><td>Taskmaster2 (Byrne et al., 2019)</td><td>147K</td><td>11</td><td>1</td><td>117</td></tr><tr><td>Taskmaster3 (Byrne et al., 2019)</td><td>589.7K</td><td>1</td><td>1</td><td>21</td></tr><tr><td>WOZ2.0 (Mrk�i� et al., 2017)</td><td>4.4K</td><td>1</td><td>2</td><td>10</td></tr><tr><td>SimJointMovie (Shah et al., 2018)</td><td>7.2K</td><td>1</td><td>14</td><td>5</td></tr><tr><td>SimJointRestaurant (Shah et al., 2018)</td><td>20K</td><td>1</td><td>15</td><td>9</td></tr><tr><td>SimJointGEN (Zhang et al., 2024)</td><td>1.3M</td><td>1</td><td>16</td><td>5</td></tr><tr><td>Total</td><td>3.4M</td><td>52</td><td>44</td><td>524</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 details twenty task-oriented dialog datasets used in the study, providing the number of utterances, unique domains, dialog act labels, and slot labels for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Details of used TOD datasets, including the number of utterances (#U), unique domains (#D), dialog act labels (#DA), and slot labels (#S).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18481/figures_2_0.png)

> 🔼 The figure is a directed graph showing the workflow of a hospital domain extracted from the SpokenWOZ dataset, where nodes represent actions and edge thickness indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_6_0.png)

> 🔼 The figure shows a visualization of sentence embeddings projected onto a unit sphere using UMAP, illustrating how different models cluster embeddings of system utterances from the police domain of MultiWOZ2.1 based on their associated actions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Spherical Voronoi diagram of embeddings projected onto the unit sphere using UMAP with cosine distance as the metric. The embeddings represent system utterances from the police domain of the MultiWOZ2.1 dataset. Legends indicate the ground-truth action associated to each embedding and the centroids used to generate the partitions for all the actions in this domain.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_9_0.png)

> 🔼 This figure shows a directed graph representing the workflow of a hospital domain extracted from the SpokenWOZ dataset, where nodes represent actions and edge thickness indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_15_0.png)

> 🔼 This figure is a directed graph showing the workflow for the hospital domain from the SpokenWOZ dataset, where nodes represent actions and edge width indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_16_0.png)

> 🔼 The figure is a directed graph showing the workflow of a hospital domain extracted from dialogs in the SpokenWOZ dataset, where nodes represent actions and edge thickness indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_16_1.png)

> 🔼 Figure 2 is a directed graph showing the workflow of a hospital domain, derived from the SpokenWOZ dataset, where nodes represent actions and edge thickness indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_18_0.png)

> 🔼 The figure shows a visualization of sentence embeddings projected onto a unit sphere, illustrating how different actions cluster based on their semantic similarity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Spherical Voronoi diagram of embeddings projected onto the unit sphere using UMAP with cosine distance as the metric. The embeddings represent system utterances from the police domain of the MultiWOZ2.1 dataset. Legends indicate the ground-truth action associated to each embedding and the centroids used to generate the partitions for all the actions in this domain.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_18_1.png)

> 🔼 The figure shows a visualization of embeddings projected onto a unit sphere using UMAP, illustrating the grouping of embeddings by action type.
> <details>
> <summary>read the caption</summary>
> Figure 3: Spherical Voronoi diagram of embeddings projected onto the unit sphere using UMAP with cosine distance as the metric. The embeddings represent system utterances from the police domain of the MultiWOZ2.1 dataset. Legends indicate the ground-truth action associated to each embedding and the centroids used to generate the partitions for all the actions in this domain.
> </details>



![](https://ai-paper-reviewer.com/2410.18481/figures_19_0.png)

> 🔼 The figure is a directed graph showing the workflow of a hospital domain, extracted from the SpokenWOZ dataset, where nodes represent actions and edge thickness indicates frequency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Directed graph representing the hospital domain workflow obtained from all the hospital dialogs in the SpokenWOZ dataset. Nodes correspond to individual actions. The width of edges and the underline thickness of nodes indicate their frequency. User actions are colored to distinguish them from system actions.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td></td><td colspan="2">F1 score</td><td colspan="2">Accuracy</td><td colspan="3">Anisotropy</td></tr><tr><td>Embeddings</td><td>1-shot</td><td>5-shot</td><td>1-shot</td><td>5-shot</td><td>intra(↑)</td><td>inter(↓)</td><td>△ (↑)</td></tr><tr><td>GloVe</td><td>23.24 士 0.87</td><td>24.45 士 0.94</td><td>26.04 士 0.81</td><td>30.01 士 0.86</td><td>0.674</td><td>0.633</td><td>0.041</td></tr><tr><td>BERT</td><td>23.85 士 0.47</td><td>28.22 士 0.60</td><td>26.32 士 0.62</td><td>32.92 士 0.38</td><td>0.737</td><td>0.781</td><td>-0.044</td></tr><tr><td>Sentence-BERT</td><td>27.86 土 0.93</td><td>33.30 士 0.68</td><td>30.55 士 0.82</td><td>38.22 土 0.46</td><td>0.527</td><td>0.433</td><td>0.094</td></tr><tr><td>GTR-T5</td><td>30.86 士 0.39</td><td>38.38 士 0.64</td><td>33.34 士 0.29</td><td>42.96 士 0.60</td><td>0.694</td><td>0.706</td><td>-0.012</td></tr><tr><td>OpenAI</td><td>32.12 士 0.87</td><td>41.06 士 0.68</td><td>34.95 土 0.84</td><td>45.51 土 0.60</td><td>0.541</td><td>0.424</td><td>0.117</td></tr><tr><td>DSE</td><td>35.43 土 0.96</td><td>42.21 土 0.90</td><td>38.12 土 0.77</td><td>46.85 土 0.79</td><td>0.649</td><td>0.541</td><td>0.108</td></tr><tr><td>SPACE-2</td><td>26.93 士 0.64</td><td>37.04 士 0.66</td><td>28.95 士 0.62</td><td>41.32 士 0.57</td><td>0.664</td><td>0.646</td><td>0.018</td></tr><tr><td>TOD-BERT</td><td>27.58 土 0.92</td><td>33.35 士 0.58</td><td>29.63 土 1.06</td><td>36.88 土 0.87</td><td>0.840</td><td>0.864</td><td>-0.024</td></tr><tr><td>DialoGPT</td><td>25.86 士 0.34</td><td>31.34 士 0.73</td><td>28.24 士 0.53</td><td>36.15 土 0.83</td><td>0.734</td><td>0.758</td><td>-0.024</td></tr><tr><td>SBD-BERT</td><td>24.31 士 0.95</td><td>27.71 士 0.38</td><td>26.40 士 0.96</td><td>31.53 土 0.44</td><td>0.687</td><td>0.604</td><td>0.083</td></tr><tr><td>D2F-Hardsingle</td><td>58.84 士 0.62</td><td>67.82 士 0.52</td><td>61.52 土 0.54</td><td>70.69 土 0.43</td><td>0.646</td><td>0.313</td><td>0.332</td></tr><tr><td>D2F-Hardjoint</td><td>56.25 士 1.16</td><td>66.22 士 0.62</td><td>I 58.98 土 1.08</td><td>69.23 土 0.48</td><td>0.629</td><td>0.399</td><td>0.230</td></tr><tr><td>D2F single</td><td>- 65.36 士 0.91</td><td>70.89 士 0.30</td><td>68.06 士 0.87</td><td>74.15 土 0.40</td><td>0.782</td><td>0.186</td><td>- 0.597</td></tr><tr><td>D2Fjoint</td><td>63.70 土 1.35</td><td>70.94 土 0.41</td><td>66.53 土 1.15</td><td>74.03 土 0.31</td><td>0.741</td><td>0.289</td><td>0.451</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the similarity-based few-shot classification results and anisotropy values of different sentence embedding models on the unified TOD evaluation set, showing the superiority of D2F embeddings.
> <details>
> <summary>read the caption</summary>
> Table 2: Similarity-based few-shot classification results on our unified TOD evaluation set. The intra- and inter-action anisotropy are also provided along their difference (Δ). Bold indicates the best values in each group while underlined the global best.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td></td><td colspan="2">F1 score</td><td colspan="2">Accuracy</td><td colspan="3">Anisotropy</td></tr><tr><td>Embeddings</td><td>1-shot</td><td>5-shot</td><td>1-shot</td><td>5-shot</td><td>intra(↑)</td><td>inter(↓)</td><td>△ (↑)</td></tr><tr><td>GloVe</td><td>19.47 士 2.47</td><td>24.54 士 2.45</td><td>26.07 土 4.52</td><td>33.30 士 4.19</td><td>0.653</td><td>0.642</td><td>0.010</td></tr><tr><td>BERT</td><td>21.93 士 2.40</td><td>31.11 士 2.56</td><td>28.33 士 3.76</td><td>39.98 士 3.56</td><td>0.711</td><td>0.761</td><td>-0.049</td></tr><tr><td>Sentence-BERT</td><td>23.48 土 2.62</td><td>35.71 士 2.94</td><td>33.03 土 4.70</td><td>47.47 土 3.60</td><td>0.440</td><td>0.404</td><td>0.036</td></tr><tr><td>GTR-T5</td><td>26.53 士 2.29</td><td>41.10 士 2.37</td><td>35.76 土 4.00</td><td>52.73 士 3.16</td><td>0.681</td><td>0.714</td><td>-0.033</td></tr><tr><td>OpenAI</td><td>28.67 土 2.33</td><td>42.49 士 2.54</td><td>39.98 土 3.77</td><td>55.37 土 3.24</td><td>0.496</td><td>0.468</td><td>0.029</td></tr><tr><td>DSE</td><td>27.53 土 2.70</td><td>39.90 土 3.08</td><td>35.93 土 4.54</td><td>51.73 土 3.41</td><td>0.633</td><td>0.608</td><td>0.026</td></tr><tr><td>SPACE-2</td><td>25.07 士 2.06</td><td>38.31 士 2.38</td><td>34.00 士 3.91</td><td>48.45 士 3.21</td><td>0.653</td><td>0.650</td><td>0.003</td></tr><tr><td>TOD-BERT</td><td>21.23 土 2.03</td><td>32.28 土 2.33</td><td>29.26 土 3.99</td><td>41.71 土 3.68</td><td>0.848</td><td>0.885</td><td>-0.038</td></tr><tr><td>DialoGPT</td><td>21.74 士 2.10</td><td>32.01 士 2.38</td><td>27.65 土 3.47</td><td>41.05 土 3.64</td><td>0.700</td><td>0.726</td><td>-0.026</td></tr><tr><td>SBD-BERT</td><td>19.09 土 2.10</td><td>23.83 士 2.22</td><td>25.80 士 3.56</td><td>32.14 土 3.62</td><td>0.651</td><td>0.596</td><td>0.055</td></tr><tr><td>D2F-Hardsingle</td><td>34.64 土 2.90</td><td>49.63 士 2.87</td><td>42.77 土 4.61</td><td>58.63 土 3.27</td><td>0.526</td><td>0.424</td><td>0.103</td></tr><tr><td>D2F-Hardjoint</td><td>31.46 土 2.61</td><td>46.89 士 2.50</td><td>39.45 土 4.22</td><td>56.43 土 2.98</td><td>0.514</td><td>0.481</td><td>0.033</td></tr><tr><td>D2F single</td><td>- 35.55 士 3.51</td><td>49.75 士 2.48</td><td>43.15 士 5.24</td><td>59.93 士 3.06</td><td>0.516</td><td>0.321</td><td>- 0.195</td></tr><tr><td>D2Fjoint</td><td>33.19 土 2.95</td><td>46.90 士 2.66</td><td>41.22 土 4.40</td><td>57.07 土 2.92</td><td>0.545</td><td>0.429</td><td>0.116</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of similarity-based few-shot classification and anisotropy analysis on the SpokenWOZ dataset, comparing various sentence embedding models.
> <details>
> <summary>read the caption</summary>
> Table 3: Similarity-based few-shot classification results on SpokenWOZ. The intra- and inter-action anisotropy are also provided along their difference (Δ).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Embeddings</td><td>NDCG @10⌀</td><td>NDCG@10★</td></tr><tr><td>GloVe</td><td>26.55 士 0.57</td><td>25.09 士 2.28</td></tr><tr><td>BERT</td><td>26.98 士 0.80</td><td>27.74 土 2.00</td></tr><tr><td>Sentence-BERT</td><td>30.88 士 0.70</td><td>30.07 士 2.23</td></tr><tr><td>GTR-T5</td><td>33.21 士 0.60</td><td>32.74 士 2.44</td></tr><tr><td>OpenAI</td><td>35.82 士 0.62</td><td>34.52 士 2.01</td></tr><tr><td>DSE</td><td>38.09 士 0.71</td><td>33.94 士 2.47</td></tr><tr><td>SPACE-2</td><td>30.01 士 0.48</td><td>30.58 土 2.01</td></tr><tr><td>TOD-BERT</td><td>30.55 士 0.74</td><td>25.63 士 1.88</td></tr><tr><td>DialoGPT</td><td>28.86 士 0.71</td><td>27.92 士 2.01</td></tr><tr><td>SBD-BERT</td><td>27.20 士 0.83</td><td>22.24 土 1.93</td></tr><tr><td>D2F-Hard single</td><td>60.87 士 0.47</td><td>42.48 土 2.77</td></tr><tr><td>D2F-Hardjoint</td><td>58.38 士 0.72 -</td><td>40.03 士 2.52 - - - -</td></tr><tr><td>D2Fsingle</td><td>67.31 土 0.42</td><td>43.12 土 2.92</td></tr><tr><td>D2Fjoint</td><td>66.50 士 0.49</td><td>40.97 土 2.61</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the ranking-based results on two evaluation sets, Unified TOD and SpokenWOZ, showing the performance of different embedding models in terms of Normalized Discounted Cumulative Gain (NDCG@10).
> <details>
> <summary>read the caption</summary>
> Table 4: Ranking-based results on the unified TOD evaluation set and Spoken WOZ
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Rank</td><td>DSE</td><td>Sentence-BERT</td><td>D2F single</td></tr><tr><td>1.</td><td>-uh my phone number is 7 4</td><td> -okay may i have your phone number please</td><td>-please get their phone number</td></tr><tr><td>2.</td><td>-okay okay now please get your number</td><td>-may i get your phone number</td><td>■ -okay may i have your phone number please</td></tr><tr><td>3.</td><td>-okay may i have your phone number please</td><td>-okay may i know your telephone number please</td><td>-okay may i know your telephone number please</td></tr><tr><td>4.</td><td>□ -thank you on the phone number</td><td>number⌀ -okay can i please get your id</td><td>-may i get your phone number</td></tr><tr><td>5.</td><td>-okay may i know your telephone number please</td><td>-okay may i have your phone name in case for cooking the table ★</td><td>-um can i please have their phone number □</td></tr><tr><td>6.</td><td>-okay great emma please have your contact number</td><td>-okay and may i have your number please</td><td>-okay so may i have the phone number with me □</td></tr><tr><td>7.</td><td>-my number is 2 10</td><td>-okay and may i have your number please</td><td>-okay i'm i also need phone number</td></tr><tr><td>8.</td><td>-the number is you see</td><td>-okay and may i have your number please</td><td>-no problem um but for the information can i have your phone number □</td></tr><tr><td>9.</td><td>-okay and may i have your number please</td><td>-okay and your car number</td><td>-thank you on the phone number</td></tr><tr><td>10.</td><td>-okay and may i have your number please</td><td>-this product uh may i have your phone number please</td><td>-okay can i get your phone number please to make that booking</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the top 10 utterances retrieved by different embedding models for the query 'your phone please', highlighting the errors made by each model in retrieving relevant utterances with the correct action label.
> <details>
> <summary>read the caption</summary>
> Table 5: Top-10 retrieved utterances on SpokenWOZ for the query 'your phone please' with action label [request phone_number]. Errors are highlighted in red with wrong action marked as: [inform phone_number]; [inform plate_number]; [request id_number]; ★[request name]; [request plate_number]; [request phone].
> </details>

{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Embeddings</td><td>Taxi (31)</td><td>Police (23)</td><td>Hospital (18)</td><td>Train (49)</td><td>Restaurant (59)</td><td>Attraction (45)</td><td>AVG.</td></tr><tr><td>D2F single</td><td>9.68% (+3)</td><td>4.35% (-1)</td><td>11.11% (-2)</td><td>2.04% (+1)</td><td>5.08% (-3)</td><td>8.89% (+4)</td><td>6.86%</td></tr><tr><td>D2Fjoint</td><td>3.23% (+1)</td><td>8.70% (-2)</td><td>5.56% (-1)</td><td>10.20% (-5)</td><td>23.73% (-14)</td><td>0.00% (0)</td><td>8.57%</td></tr><tr><td>D2F-Hardsingle</td><td>12.90% (-4)</td><td>26.09% (-6)</td><td>16.67% (-3)</td><td>10.20% (-5)</td><td>10.17% (-6)</td><td>15.56% (+7)</td><td>15.26%</td></tr><tr><td>D2F-Hardjoint</td><td>0.00% (0)</td><td>8.70% (-2)</td><td>33.33% (-6)</td><td>20.41% (-10)</td><td>25.42% (-15)</td><td>13.33% (-6)</td><td>16.87%</td></tr><tr><td>DSE</td><td>32.26% (-10)</td><td>17.39% (-4)</td><td>33.33% (-6)</td><td>30.61% (-15)</td><td>27.12% (-16)</td><td>26.67% (-12)</td><td>27.90%</td></tr><tr><td>SPACE-2</td><td>32.26% (-10)</td><td>30.43% (-7)</td><td>38.89% (-7)</td><td>18.37% (-9)</td><td>32.20% (-19)</td><td>33.33% (-15)</td><td>30.91%</td></tr><tr><td>DialoGPT</td><td>32.26% (-10)</td><td>34.78% (-8)</td><td>22.22% (-4)</td><td>44.90% (-22)</td><td>64.41% (-38)</td><td>51.11% (-23)</td><td>41.61%</td></tr><tr><td>BERT</td><td>54.84% (-17)</td><td>30.43% (-7)</td><td>22.22% (-4)</td><td>46.94% (-23)</td><td>59.32% (-35)</td><td>42.22% (-19)</td><td>42.66%</td></tr><tr><td>OpenAI</td><td>54.84% (-17)</td><td>52.17% (-12)</td><td>55.56% (-10)</td><td>42.86% (-21)</td><td>49.15% (-29)</td><td>44.44% (-20)</td><td>49.84%</td></tr><tr><td>Sentence-BERT</td><td>48.39% (-15)</td><td>43.48% (-10)</td><td>55.56% (-10)</td><td>57.14% (-28)</td><td>50.85% (-30)</td><td>55.56% (-25)</td><td>51.83%</td></tr><tr><td>GTR-T5</td><td>41.94% (-13)</td><td>43.48% (-10)</td><td>66.67% (-12)</td><td>51.02% (-25)</td><td>61.02% (-36)</td><td>53.33% (-24)</td><td>52.91%</td></tr><tr><td>SBD-BERT</td><td>77.42% (-24)</td><td>43.48% (-10)</td><td>38.89% (-7)</td><td>71.43% (-35)</td><td>86.44% (-51)</td><td>86.67% (-39)</td><td>67.39%</td></tr><tr><td>TOD-BERT</td><td>74.19% (-23)</td><td>78.26% (-18)</td><td>55.56% (-10)</td><td>85.71% (-42)</td><td>83.05% (-49)</td><td>82.22% (-37)</td><td>76.50%</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the size of induced dialog flow graphs generated using different embedding models against their corresponding reference graphs for seven domains in the SpokenWOZ dataset, evaluating the models' ability to accurately capture the complexity of the dialog flow.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of induced graph size vs. reference graph size for each single-domain in SpokenWOZ, measured by the number of nodes (actions). The table shows the normalized absolute difference (%) and raw difference in parentheses. Column headers indicate the size of each reference graph (GD). Lower differences suggest a better match in graph complexity.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:16px'><tr><td>DF2 Variation</td><td>F1 score</td><td>△ Anisotropy (↑)</td></tr><tr><td>D2F-Hard single</td><td>67.82 -</td><td>0.332 - -</td></tr><tr><td>* DSE Backbone</td><td>+2.66</td><td>+0.011</td></tr><tr><td>+ Self-Supervision</td><td>-7.41</td><td>-0.002</td></tr><tr><td>D2F-Hard joint</td><td>66.22</td><td>0.230</td></tr><tr><td>* DSE Backbone</td><td>- - +1.97</td><td>ーバー・ +0.010</td></tr><tr><td>+ Self-Supervision</td><td>-6.01</td><td>-0.064</td></tr><tr><td>D2F single</td><td>70.89</td><td>0.597 - - -</td></tr><tr><td>* DSE Backbone</td><td>- - +0.97</td><td>- +0.012</td></tr><tr><td>* all-mpnet-base-v2 Label</td><td>-0.60</td><td>-0.038</td></tr><tr><td>+ Self-Supervision</td><td>-6.65</td><td>-0.189</td></tr><tr><td>- Contrastive Head</td><td>-1.13</td><td>-0.047</td></tr><tr><td>D2F joint</td><td>70.94</td><td>0.451</td></tr><tr><td></td><td>- - 一</td><td>- - ーバー・</td></tr><tr><td>* DSE Backbone</td><td>+0.65</td><td>+0.011 -0.038</td></tr><tr><td>* all-mpnet-base-v2 Label</td><td>-0.34 -8.06</td><td></td></tr><tr><td>+ Self-Supervision - Contrastive Head</td><td>-3.78</td><td>-0.126 -0.073</td></tr></table>{{< /table-caption >}}
> 🔼 Table A2 presents ablation study results showing the impact of different variations on D2F model performance, including changes to the backbone, self-supervision, and contrastive head.
> <details>
> <summary>read the caption</summary>
> Table A2: Ablation study results for various D2F configurations. Additions, subtractions, and replacements of components are marked with +, -, and * symbols, respectively. Values show the impact on 5-shot classification F₁ score and anisotropy as reported in Table 2.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Original</td><td>Standardized</td><td>Parent</td></tr><tr><td rowspan="2">inform notify_fail notify_failure no_result nobook nooffer sorry cant_understand canthelp reject</td><td>inform (slots)</td><td rowspan="3">inform</td></tr><tr><td>inform_failure</td></tr><tr><td>book offerbooked notify_success</td><td>inform_success</td></tr><tr><td>request request_alt request_compare request_update</td><td>request (slots) request_alternative request_compare request_update</td><td rowspan="2">request</td></tr><tr><td>req_more request_more moreinfo hearmore</td><td>request_more</td></tr><tr><td>confirm confirm_answer confirm_question</td><td>confirm (slots) confirm_answer confirm_question</td><td>confirmation</td></tr><tr><td>affirm affirm_intent</td><td>agreement</td><td>agreement</td></tr><tr><td>negate negate_intent deny</td><td>disagreement</td><td>disagreement</td></tr><tr><td>offer select multiple_choice offerbook</td><td>offer</td><td>offer</td></tr><tr><td>suggest recommend</td><td>recommendation</td><td>- recommendation</td></tr><tr><td>greeting welcome</td><td>greeting</td><td>greeting</td></tr><tr><td>thank_you thanks thankyou</td><td>thank_you</td><td>thank_you</td></tr><tr><td>good_bye goodbye closing</td><td>good_bye</td><td>- good_bye</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 details twenty task-oriented dialog datasets used in the Dialog2Flow model training, providing the number of utterances, unique domains, dialog act labels, and slot labels for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Details of used TOD datasets, including the number of utterances (#U), unique domains (#D), dialog act labels (#DA), and slot labels (#S).
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18481/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18481/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}