---
title: "WorldCuisines: A Massive-Scale Benchmark for Multilingual and Multicultural Visual Question Answering on Global Cuisines"
summary: "WORLDCUISINES: a massive multilingual VQA benchmark on global cuisines, reveals cultural knowledge gaps in current vision-language models and provides a valuable resource for advancing research in thi..."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12705 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces WORLDCUISINES, a huge new benchmark dataset for testing how well computer models understand pictures and questions about food from around the world.  It includes a million examples in 30 different languages, making it much bigger and more diverse than previous datasets.  The study shows that current models struggle to understand cultural differences in food, especially in lesser-known languages, highlighting the need for more advanced models that can understand cultural context better.  The whole WORLDCUISINES project is open-source, meaning that the data and code are freely available for other researchers to use and build upon.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12705" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12705" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in multilingual and multicultural VQA because it introduces WORLDCUISINES, a massive-scale benchmark dataset surpassing existing resources in size and diversity.  The findings highlight the challenges faced by current VLMs in handling cultural nuances, opening avenues for improved model development and fairer evaluation methods.  The open-source nature of WORLDCUISINES ensures broad accessibility and fosters collaborative research.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WORLDCUISINES is the largest multilingual and multicultural VQA benchmark to date, containing over 1 million data points across 30 languages and dialects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Vision-language models struggle with culture-specific knowledge, particularly in less-represented languages and cultures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The open-source nature of WORLDCUISINES, including its datasets, code, and leaderboard, promotes further research in multilingual and multicultural visual question answering. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12705/figures_1_0.png)

> 🔼 Figure 1 shows various images of stuffed pasta and dumplings from different cultures highlighting the similar culinary concept across different regions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Images of stuffed pasta and dumplings from our dataset showcase a similar culinary concept across different cultures: wrapping meat, dairy (such as cheese), or vegetables in dough. These dishes can be prepared in various ways, including pan-frying, deep-frying, steaming, or boiling.
> </details>





![](https://ai-paper-reviewer.com/2410.12705/charts_4_0.png)

> 🔼 The bar chart visualizes the top 50 countries with the most number of food dishes in the WORLDCUISINES dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Countries by number of assigned dishes, showing the top 50 countries.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td></td><td># VQA</td><td># Lang./Dialect†</td><td># Countries</td><td># Food Entries</td><td># Images</td><td>Parallel Data</td><td>License</td></tr><tr><td>FoodieQA (Li et al⌀, 2024b)</td><td>659</td><td>2</td><td>1</td><td>60</td><td>389</td><td>X</td><td>CC BY-NC-ND 4.0</td></tr><tr><td>World Wide Dishes (Magomere et al., 2024)</td><td>765</td><td>131</td><td>63</td><td>765</td><td>301</td><td>X</td><td>CC-BY 4.0</td></tr><tr><td>xGQA (Pfeiffer et al., 2022)</td><td>12,578</td><td>8</td><td>8</td><td>N/A</td><td>398</td><td>V</td><td>CC-BY 4.0</td></tr><tr><td>MaXM± (Changpinyo et al., 2023)</td><td>2,142</td><td>7</td><td>7</td><td>N/A</td><td>335</td><td>x</td><td>Custom</td></tr><tr><td>EVJVQA (Nguyen et al., 2023)</td><td>33,790</td><td>3</td><td>1</td><td>N/A</td><td>4,909</td><td>X</td><td>N/A</td></tr><tr><td>CulturalVQA (Nayak et al., 2024)</td><td>2,378</td><td>1</td><td>11</td><td>N/A</td><td>2,328</td><td>X</td><td>N/A</td></tr><tr><td>SEA-VQA (Urailertprasert et al., 2024)</td><td>1,999</td><td>1</td><td>8</td><td>N/A</td><td>515</td><td>X</td><td>Custom</td></tr><tr><td>CVQA (Romero et al., 2024)</td><td>9,000</td><td>26</td><td>28</td><td>1,834</td><td>4,560</td><td>V</td><td>Various</td></tr><tr><td>IndiFoodVQA (Agarwal et al., 2024)</td><td>16,716</td><td>1</td><td>1</td><td>255</td><td>414</td><td>X</td><td>N/A</td></tr><tr><td>WC-VQA</td><td>1,152,000</td><td>30</td><td>189</td><td>2,414</td><td>6,045</td><td>V</td><td>CC BY-SA 4.0</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering (VQA) dataset (WC-VQA) with other existing VQA datasets in terms of various attributes such as the number of visual question answering pairs, languages, countries, food entries, and images.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.12705/figures_3_1.png)

> 🔼 The figure shows examples of the two primary tasks in the WORLDCUISINES benchmark: dish name prediction and location prediction, with variations in context and question type.
> <details>
> <summary>read the caption</summary>
> Figure 2: WC-VQA in WORLDCUISINES comprises two primary tasks: (1) predicting dish names and (2) predicting regional cuisines. Task 1 is further divided into three subtasks: (a) no-context, (b) contextualized, and (c) adversarial. We also include two answer types: multiple-choice question (MCQ) and open-ended question (OEQ).
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_3_2.png)

> 🔼 The figure shows examples of stuffed pasta and dumplings from various cultures to illustrate a shared culinary concept across different regions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Images of stuffed pasta and dumplings from our dataset showcase a similar culinary concept across different cultures: wrapping meat, dairy (such as cheese), or vegetables in dough. These dishes can be prepared in various ways, including pan-frying, deep-frying, steaming, or boiling.
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_3_3.png)

> 🔼 The figure shows examples of the two primary tasks in the WORLDCUISINES benchmark: dish name prediction and regional cuisine prediction, with variations in context and question type.
> <details>
> <summary>read the caption</summary>
> Figure 2: WC-VQA in WORLDCUISINES comprises two primary tasks: (1) predicting dish names and (2) predicting regional cuisines. Task 1 is further divided into three subtasks: (a) no-context, (b) contextualized, and (c) adversarial. We also include two answer types: multiple-choice question (MCQ) and open-ended question (OEQ).
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_3_4.png)

> 🔼 Figure 1 shows images of various stuffed pasta and dumplings from different cultures to illustrate the similar culinary concept.
> <details>
> <summary>read the caption</summary>
> Figure 1: Images of stuffed pasta and dumplings from our dataset showcase a similar culinary concept across different cultures: wrapping meat, dairy (such as cheese), or vegetables in dough. These dishes can be prepared in various ways, including pan-frying, deep-frying, steaming, or boiling.
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_4_0.png)

> 🔼 The figure is a world map showing the geographical distribution of food entries in the WORLDCUISINES dataset, with darker colors representing higher concentrations of food entries.
> <details>
> <summary>read the caption</summary>
> Figure 3: WORLDCUISINES distribution of food entries by country in the World Map. The food entries are distributed across 189 countries, with the highest concentration found in Asia, Europe, and North America. There are also some entries from the continents of Africa, Oceania, and Central and South America.
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_7_0.png)

> 🔼 The figure shows the accuracy of different language models on a visual question answering task, broken down by language, language vitality, and language family.
> <details>
> <summary>read the caption</summary>
> Figure 5: Accuracy (%) categorized by language (left), language vitality (center), and language family (right). We classify the language vitality by following the classification from Joshi et al. (2020).
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_15_0.png)

> 🔼 Figure 5 is a set of radar charts showing the accuracy of different language models on visual question answering tasks, categorized by language, language vitality, and language family.
> <details>
> <summary>read the caption</summary>
> Figure 5: Accuracy (%) categorized by language (left), language vitality (center), and language family (right). We classify the language vitality by following the classification from Joshi et al. (2020).
> </details>



![](https://ai-paper-reviewer.com/2410.12705/figures_17_0.png)

> 🔼 The figure shows examples of visual question answering (VQA) tasks in the WORLDCUISINES benchmark, including dish name prediction and location prediction, with variations in context and question type.
> <details>
> <summary>read the caption</summary>
> Figure 2: WC-VQA in WORLDCUISINES comprises two primary tasks: (1) predicting dish names and (2) predicting regional cuisines. Task 1 is further divided into three subtasks: (a) no-context, (b) contextualized, and (c) adversarial. We also include two answer types: multiple-choice question (MCQ) and open-ended question (OEQ).
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12705/charts_8_0.png)

> 🔼 The chart displays the relationship between model performance (accuracy) and the number of parameters in various vision language models for multiple choice and open-ended questions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scaling matters for MCQ (6a) and OEQ (6b).
> </details>


![](https://ai-paper-reviewer.com/2410.12705/charts_8_1.png)

> 🔼 The chart displays the relationship between model parameters and accuracy for multiple-choice and open-ended questions on the WORLDCUISINES benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scaling matters for MCQ (6a) and OEQ (6b).
> </details>


![](https://ai-paper-reviewer.com/2410.12705/charts_15_0.png)

> 🔼 The chart displays the accuracy of various models on open-ended questions using single, dual, and multi-reference answers.
> <details>
> <summary>read the caption</summary>
> Figure 8: Model performance evaluated with different references on open-ended question.
> </details>


![](https://ai-paper-reviewer.com/2410.12705/charts_17_0.png)

> 🔼 The chart displays the correlation between BERTScore and accuracy for open-ended questions across various language models.
> <details>
> <summary>read the caption</summary>
> Figure 9: Regression Analysis for BERTScore OE vs. Accuracy OE.
> </details>


![](https://ai-paper-reviewer.com/2410.12705/charts_17_1.png)

> 🔼 The chart displays the accuracy of various vision-language models on open-ended questions using single, dual (single + English), and multi-reference evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 10: Model performance with different references on open-ended question.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='11' style='font-size:16px'><tr><td>Type: Multiple-Choice</td><td>Japanese (formal)</td></tr><tr><td colspan="2">こ の料理は何と言いま すか?</td></tr><tr><td>1) シュトゥルーデル</td><td>4) New York roll</td></tr><tr><td>2) ミルフィーユ</td><td>5) Milk roll</td></tr><tr><td colspan="2">3) ミルヒラーム・シュトゥルーデル</td></tr><tr><td colspan="2">Print only the answer with a single answer id (1,2,3,4,5),</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering dataset (WC-VQA) with other existing VQA datasets, highlighting WC-VQA's scale and multilingual nature.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="3">Data Split</td><td colspan="6">Task 1 (Dish Name)</td><td rowspan="2" colspan="2">Task 2 (Location)</td><td rowspan="3">Total # VQA</td></tr><tr><td colspan="2">(a) no-context</td><td colspan="2">(b) contextualized</td><td colspan="2">(c) adversarial</td></tr><tr><td># VQA</td><td># Images</td><td># VQA</td><td># Images</td><td># VQA</td><td># Images</td><td># VQA</td><td># Images</td></tr><tr><td>Train (1M)</td><td>270,300</td><td>3,383</td><td>267,930</td><td>3,555</td><td>271,770</td><td>3,589</td><td>270,000</td><td>3,361</td><td>1,080,000</td></tr><tr><td>Test Small (12k)</td><td>3,000</td><td>100</td><td>3,000</td><td>100</td><td>3,000</td><td>100</td><td>3,000</td><td>100</td><td>12,000</td></tr><tr><td>Test Large (60k)</td><td>15,000</td><td>500</td><td>15,000</td><td>500</td><td>15,000</td><td>499</td><td>15,000</td><td>499</td><td>60,000</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the dataset statistics of WC-VQA, including the number of visual questions and images for training and testing datasets in three different splits: train, test small, and test large, and the distribution of the data across three subtasks of Task 1 (dish name prediction) and Task 2 (location prediction).
> <details>
> <summary>read the caption</summary>
> Table 2: Dataset statistics for WC-VQA tasks for train, test small, and test large data splits. Total #VQA represents the total number of VQA from Task 1 and Task 2.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="3">Model</td><td colspan="6">Task 1 (Dish Name)</td><td rowspan="2" colspan="2">Task 2 (Location)</td><td rowspan="2" colspan="2">Average</td></tr><tr><td colspan="2">(a) no-context</td><td colspan="2">(b) contextualized</td><td colspan="2">(c) adversarial</td></tr><tr><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td></tr><tr><td>Open-Source</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Llaval.6 Vicuna 7B</td><td>34.57</td><td>1.59</td><td>43.48</td><td>4.03</td><td>34.84</td><td>1.41</td><td>32.24</td><td>9.29</td><td>36.28</td><td>4.08</td></tr><tr><td>Llaval.6 Vicuna 13B</td><td>40.17</td><td>2.79</td><td>48.17</td><td>5.85</td><td>39.05</td><td>2.57</td><td>37.79</td><td>10.16</td><td>41.30</td><td>5.34</td></tr><tr><td>Qwen2 VL Instruct 2B</td><td>41.65</td><td>7.98</td><td>42.29</td><td>8.13</td><td>39.69</td><td>6.74</td><td>47.85</td><td>14.55</td><td>42.87</td><td>9.35</td></tr><tr><td>Qwen2 VL Instruct 7B</td><td>61.48</td><td>6.76</td><td>67.85</td><td>10.36</td><td>53.52</td><td>6.12</td><td>55.90</td><td>21.03</td><td>59.69</td><td>11.07</td></tr><tr><td>Qwen2 VL Instruct 72B</td><td>74.19</td><td>12.67</td><td>80.79</td><td>21.31</td><td>62.43</td><td>8.37</td><td>61.90</td><td>27.27</td><td>69.83</td><td>17.40</td></tr><tr><td>Llama 3.2 Instruct 11B</td><td>59.93</td><td>18.75</td><td>64.12</td><td>22.96</td><td>53.17</td><td>13.39</td><td>57.93</td><td>31.58</td><td>58.79</td><td>21.67</td></tr><tr><td>Llama 3.2 Instruct 90B</td><td>77.69</td><td>16.93</td><td>82.92</td><td>23.60</td><td>63.96</td><td>10.87</td><td>67.87</td><td>31.31</td><td>73.11</td><td>20.68</td></tr><tr><td>Molmo-E 1B</td><td>18.81</td><td>0.01</td><td>24.22</td><td>0.23</td><td>19.55</td><td>0.01</td><td>18.97</td><td>1.54</td><td>20.39</td><td>0.45</td></tr><tr><td>Molmo-D 7B</td><td>46.01</td><td>2.89</td><td>55.95</td><td>3.66</td><td>41.61</td><td>2.31</td><td>33.35</td><td>11.45</td><td>44.23</td><td>5.08</td></tr><tr><td>Molmo-O 7B</td><td>39.96</td><td>5.15</td><td>44.93</td><td>6.03</td><td>38.41</td><td>3.51</td><td>29.81</td><td>10.07</td><td>38.28</td><td>6.19</td></tr><tr><td>Pangea 7B‡</td><td>52.35</td><td>1.52</td><td>63.07</td><td>2.73</td><td>49.17</td><td>1.57</td><td>48.71</td><td>20.15</td><td>53.33</td><td>6.49</td></tr><tr><td>Aria 25B</td><td>58.61</td><td>4.99</td><td>69.29</td><td>9.17</td><td>52.82</td><td>3.39</td><td>42.82</td><td>16.20</td><td>55.89</td><td>8.44</td></tr><tr><td>Phi-3.5 Vision 4B</td><td>43.37</td><td>2.91</td><td>48.71</td><td>4.23</td><td>40.87</td><td>2.07</td><td>35.01</td><td>9.22</td><td>41.99</td><td>4.61</td></tr><tr><td>Pixtral 12B</td><td>56.65</td><td>1.22</td><td>70.69</td><td>2.94</td><td>52.12</td><td>1.09</td><td>46.67</td><td>14.43</td><td>56.53</td><td>4.92</td></tr><tr><td>NVLM-D 72B</td><td>69.82</td><td>4.71</td><td>78.93</td><td>10.29</td><td>52.12</td><td>2.89</td><td>51.97</td><td>16.68</td><td>63.21</td><td>8.64</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GPT-4o</td><td>88.45</td><td>21.88</td><td>91.57</td><td>37.51</td><td>82.29</td><td>14.79</td><td>66.52</td><td>37.13</td><td>82.21</td><td>27.83</td></tr><tr><td>GPT-4o Mini</td><td>72.80</td><td>10.28</td><td>81.65</td><td>20.87</td><td>57.76</td><td>5.72</td><td>52.37</td><td>25.79</td><td>66.14</td><td>15.66</td></tr><tr><td>Gemini 1.5 Flash</td><td>77.05</td><td>12.81</td><td>80.97</td><td>15.16</td><td>69.13</td><td>6.46</td><td>71.53</td><td>30.03</td><td>74.67</td><td>16.12</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of various vision-language models on the WorldCuisines visual question answering benchmark's Test Large dataset, categorized by task type (multiple-choice or open-ended) and model type (open-source or proprietary).
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy (%) results of WC-VQA for Test Large (60k). MCQ and OEQ indicate multiple-choice question and open-ended question, respectively. Best and second-best are bolded and underlined, respectively. #We employ an optimized prompt provided by the authors (see Subsection D.1 in the Appendix for further details).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Attribute</td><td>Value</td><td>Description</td><td>Example</td></tr><tr><td>Image</td><td>Image</td><td>Image of the dish in jpg/png/gif format.</td><td></td></tr><tr><td>Name</td><td>String</td><td>Name of the dish.</td><td>Dorayaki</td></tr><tr><td>Alias</td><td>String</td><td>Alias name of the dish (i.e., the name in the original language).</td><td>ど ら焼き</td></tr><tr><td>Coarse-grained categories</td><td>List<String></td><td>Coarse-level categories.</td><td>["Pancake"]</td></tr><tr><td>Fine-grained categories</td><td>List<String></td><td>Fine-level categories.</td><td>["Wagashi Pancake"]</td></tr><tr><td>Cuisines</td><td>String</td><td>Name of cuisine.</td><td>Japanese</td></tr><tr><td>Associated Cuisines</td><td>String</td><td>Associated cuisines to the dish.</td><td>Japanese</td></tr><tr><td>Area</td><td>String</td><td>Specific region where the dish is originated</td><td>Ueno</td></tr><tr><td>Countries</td><td>String</td><td>Specific region where the dish is originated</td><td>Japan</td></tr><tr><td>Continents</td><td>String</td><td>Specific continent where the dish is originated</td><td>Eastern Asia</td></tr><tr><td>Text Description</td><td>String</td><td>Short description of the dish, including the ingredients used to prepare the dish or the cooking method.</td><td>The dish consists of two small pancake-like patties made from castella wrapped around a filling of sweet bean paste.</td></tr><tr><td>Image License</td><td>String</td><td>License of the image</td><td>CC BY-SA 3.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering dataset (WC-VQA) with other existing VQA datasets, highlighting its size, multilingual coverage, and other key features.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Language Name</td><td>Language Vitality+</td><td>Resource Classification+</td><td>Linguistic Register</td><td>Additional Notes</td></tr><tr><td>Austronesian</td><td></td><td></td><td></td><td></td></tr><tr><td>Indonesian</td><td>Institutional</td><td>3 - Rising Star</td><td>Formal Casual</td><td></td></tr><tr><td>Tagalog</td><td>Institutional</td><td>3 - Rising Star</td><td></td><td></td></tr><tr><td>Sundanese</td><td>Stable</td><td>1 - Scraping by</td><td>Loma</td><td>Common speech form</td></tr><tr><td>Javanese</td><td>Institutional</td><td>1 - Scraping by</td><td>Krama Ngoko</td><td>Central-Java dialect, polite form Central-Java dialect, casual form</td></tr><tr><td>Japonic</td><td></td><td></td><td></td><td></td></tr><tr><td>Japanese</td><td>Institutional</td><td>5 - Winners</td><td>Formal Casual</td><td>Polite form or teinei-go Daily conversation</td></tr><tr><td>Sino-Tibetan</td><td></td><td></td><td></td><td></td></tr><tr><td>Chinese</td><td>Institutional</td><td>5 - Winners</td><td></td><td>Standard Mandarin</td></tr><tr><td>Cantonese</td><td>Institutional</td><td>1 - Scraping by</td><td></td><td></td></tr><tr><td>Hokkien</td><td>Institutional</td><td>0- Left Behind</td><td>Written Spoken</td><td>Medan dialect Medan dialect</td></tr><tr><td>Koreanic</td><td></td><td></td><td></td><td></td></tr><tr><td>Korean</td><td>Institutional</td><td>4- Underdog</td><td>Formal Casual</td><td></td></tr><tr><td>Kra-Dai</td><td></td><td></td><td></td><td></td></tr><tr><td>Thai</td><td>Institutional</td><td>3 - Rising Star</td><td></td><td></td></tr><tr><td>Indo-European</td><td></td><td></td><td></td><td></td></tr><tr><td>English</td><td>Institutional</td><td>5 - Winners</td><td></td><td rowspan="9">Latin-American dialect</td></tr><tr><td>Spanish</td><td>Institutional</td><td>5 - Winners</td><td></td></tr><tr><td>French</td><td>Institutional</td><td>5 - Winners</td><td></td></tr><tr><td>Russian</td><td>Institutional</td><td>4 - Underdog</td><td>Formal Casual</td></tr><tr><td>Czech</td><td>Institutional</td><td>4 - Underdog</td><td></td></tr><tr><td>Italian</td><td>Institutional</td><td>4 - Underdog</td><td></td></tr><tr><td>Hindi</td><td>Institutional</td><td>4 - Underdog</td><td></td></tr><tr><td>Bengali</td><td>Institutional</td><td>3 - Rising Star</td><td></td></tr><tr><td>Marathi</td><td>Institutional</td><td>2 - Hopeful</td><td></td></tr><tr><td>Sardinian</td><td>Endangered</td><td>1 - Scraping by</td><td></td><td>Logudorese (src)</td></tr><tr><td>Sinhala</td><td>Institutional</td><td>0 - Left Behind</td><td>Formal</td><td>Spoken form</td></tr><tr><td>Afro-Asiatic</td><td></td><td></td><td></td><td></td></tr><tr><td>Arabic (MSA)</td><td>Institutional</td><td>5 - Winners</td><td></td><td></td></tr><tr><td>Niger-Congo Yoruba</td><td>Institutional</td><td>2 - Hopeful</td><td></td><td></td></tr><tr><td>Turkic</td><td></td><td></td><td></td><td></td></tr><tr><td>Azerbaijani</td><td>Institutional</td><td>1 - Scraping by</td><td></td><td>North Variety (azj)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering dataset (WC-VQA) with other existing VQA datasets across various metrics, such as the number of languages, dialects, countries, food entries, images, and parallel data.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:22px'><tr><td>Japanese speaker then proofreads the translated sen-</td><td>from Western Japan in the 16-25 age range gives</td></tr><tr><td>tences. Additionally, one native Japanese speaker</td><td>input for the casual form.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the data statistics of the WORLDCUISINES benchmark (WC-VQA) with those of other existing visual question answering (VQA) datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Language</td><td colspan="3">Question Prompt</td></tr><tr><td>Multi-choice question (MCQ)</td><td>Open-ended question (OEQ)</td><td>Answer ID Text</td></tr><tr><td>English</td><td>Yesterday I had a nice lunch at a Japanese restaurant. I am about to have this dish now. What is this dish called? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Egg foo young Print only the answer with a single answer id (1,2,3,4,5),</td><td>Yesterday I had a nice lunch at a Japanese restaurant. I am about to have this dish now. What is this dish called? Print only the answer.</td><td>5 Egg foo young</td></tr><tr><td>French</td><td>Hier, j'ai pris un bon dejeuner dans un restaurant japonais. Je suis sur le point de manger ce plat maintenant. Comment appelle-t-on ce plat ? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Fu yung hai Print only the answer with a single answer id (1,2,3,4,5),</td><td>Hier, j'ai pris un bon dejeuner dans un restaurant japonais. Je suis sur le point de manger ce plat maintenant. Comment appelle-t-on ce plat ? Print only the answer.</td><td>5 Fu yung hai</td></tr><tr><td>Indonesian (Formal)</td><td>Kemarin, saya menyantap makan siang yg nikmat di restoran Jepang. Sekarang saya akan menyantap hidangan ini. Disebut apakah hidangan ini? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Puyunghai Print only the answer with a single answer id (1,2,3,4,5),</td><td>Kemarin, saya menyantap makan siang yg nikmat di restoran Jepang. Sekarang saya akan menyantap hidangan ini. Disebut apakah hidangan ini? Print only the answer.</td><td>5 Puyunghai</td></tr><tr><td>Indonesian (Casual)</td><td>Kemarin aku makan siang enak di restoran Jepang. Sekarang mau makan makanan ini. Makanan ini disebut apa? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Puyunghai Print only the answer with a single answer id (1,2,3,4,5),</td><td>Kemarin aku makan siang enak di restoran Jepang. Sekarang mau makan makanan ini. Makanan ini disebut apa? Print only the answer.</td><td>5 Puyunghai</td></tr><tr><td>Japanese (Formal)</td><td>昨日、 私は日本料理店で美味しい昼食を食べました。 今まさにこの料理を食べようとしています。 こ の料理の名前は何ですか? 1. Hangtown fry 2. Zucchini slice 3. 茶碗蒸し 4. Rolex 5. 芙蓉蛋 Print only the answer with a single answer id (1,2,3,4,5),</td><td>昨日、 私は日本料理店で美味しい昼食を食べました。 今まさにこの料理を食べようとしています。 この料理の名前は何ですか? Print only the answer.</td><td>5 芙蓉蛋</td></tr><tr><td>Japanese (Casual)</td><td>昨日日本料理のお店で美味しいランチを食べたんだけど、 今ま さに食べてるこの料理の名前は何? 1. Hangtown fry 2. Zucchini slice 3. 茶碗蒸 し 4. Rolex 5. 芙蓉蛋 Print only the answer with a single answer id (1,2,3,4,5),</td><td>昨日日本料理のお店で美味しいランチを食べたんだけど、 今まさに食べてるこの料理の名前は何? Print only the answer.</td><td>5 芙蓉蛋</td></tr><tr><td>Javanese (Krama)</td><td>Kaping wingi kula nedha nikmat ing restoran Jepang. Kula kepengin nedha menika malih sakmenika. Naminipun nopo dhaharan menika? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Endhog foo young Print only the answer with a single answer id (1,2,3,4,5),</td><td>Kaping wingi kula nedha nikmat ing restoran Jepang. Kula kepengin nedha menika malih sakmenika. Naminipun nopo dhaharan menika? Print only the answer.</td><td>5 Endhog foo young</td></tr><tr><td>Javanese (Ngoko)</td><td>Wingi aku mangan enak ndek restoran Jepang. Aku pengen mangan neh saiki. Opo jenenge panganan iki? 1. Hangtown fry 2. Zucchini slice 3. Chawanmushi 4. Rolex 5. Endhog foo young Print only the answer with a single answer id (1,2,3,4,5),</td><td>Wingi aku mangan enak ndek restoran Jepang. Aku pengen mangan neh saiki. Opo jenenge panganan iki? Print only the answer.</td><td>5 Endhog foo young</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering (VQA) dataset with other existing VQA datasets, highlighting key statistics such as the number of visual question answering pairs, languages, countries, food entries, and images.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td rowspan="2">Model (Accuracy %)</td><td colspan="2"></td><td colspan="2">Task 1 (Dish Name) (b) contextualized</td><td colspan="2">(c) adversarial</td><td colspan="2">Task 2 (Location)</td><td colspan="2">Average</td></tr><tr><td>(a) no-context MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td><td>MCQ</td><td>OEQ</td></tr><tr><td>Test Small (12k)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Open-Source</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Llaval.6 Vicuna 7B</td><td>33.63</td><td>0.87</td><td>43.13</td><td>2.83</td><td>28.67 30.03</td><td>0.60</td><td>27.77</td><td>7.93</td><td>33.30</td><td>3.06</td></tr><tr><td>Llaval.6 Vicuna 13B</td><td>40.87</td><td>1.00</td><td>50.30</td><td>4.17</td><td>38.37</td><td>1.60</td><td>31.07</td><td>8.63</td><td>40.15</td><td>3.85</td></tr><tr><td>Qwen2 VL Instruct 2B</td><td>40.97</td><td>3.33</td><td>44.40</td><td>4.60</td><td>47.07</td><td>3.43</td><td>48.37</td><td>12.50</td><td>45.20</td><td>5.96</td></tr><tr><td>Qwen2 VL Instruct 7B</td><td>63.83</td><td>4.07</td><td>67.20</td><td>8.57</td><td>57.00</td><td>3.90</td><td>56.80</td><td>21.23</td><td>61.21</td><td>9.44</td></tr><tr><td>Qwen2 VL Instruct 72B</td><td>76.13</td><td>10.40</td><td>81.63</td><td>17.43</td><td>67.23</td><td>6.27</td><td>56.73</td><td>26.07</td><td>70.43</td><td>15.04</td></tr><tr><td>Llama 3.2 Instruct 11B</td><td>57.93</td><td>14.37</td><td>65.57</td><td>19.20</td><td>56.27</td><td>9.50</td><td>46.60</td><td>27.23</td><td>56.59</td><td>17.58</td></tr><tr><td>Llama 3.2 Instruct 90B</td><td>77.33</td><td>14.27</td><td>83.43</td><td>22.30</td><td>71.23</td><td>9.00</td><td>64.70</td><td>29.73</td><td>74.17</td><td>18.82</td></tr><tr><td>Molmo-E 1B</td><td>21.87</td><td>0.00</td><td>24.53</td><td>0.13</td><td>20.23</td><td>0.00</td><td>19.60</td><td>1.27</td><td>21.56</td><td>0.35</td></tr><tr><td>Molmo-D 7B</td><td>50.67</td><td>1.00</td><td>57.00</td><td>2.23</td><td>48.67</td><td>1.73</td><td>36.73</td><td>11.70</td><td>48.27</td><td>4.16</td></tr><tr><td>Molmo-O 7B</td><td>46.03</td><td>2.13</td><td>43.27</td><td>4.37</td><td>41.60</td><td>2.10</td><td>26.83</td><td>9.03</td><td>39.43</td><td>4.41</td></tr><tr><td>Pangea 7B</td><td>45.33</td><td>0.43</td><td>59.40</td><td>1.33</td><td>22.17</td><td>0.63</td><td>34.10</td><td>17.90</td><td>40.25</td><td>5.07</td></tr><tr><td>Pangea 7B‡</td><td>54.87</td><td>0.43</td><td>65.77</td><td>1.33</td><td>55.00</td><td>0.63</td><td>48.47</td><td>17.90</td><td>56.03</td><td>5.07</td></tr><tr><td>Aria 25B</td><td>65.77</td><td>2.67</td><td>71.43</td><td>6.47</td><td>57.13</td><td>1.80</td><td>39.60</td><td>15.70</td><td>58.48</td><td>6.66</td></tr><tr><td>Phi-3.5 Vision 4B</td><td>49.27</td><td>1.90</td><td>53.03</td><td>3.03</td><td>42.90</td><td>1.33</td><td>31.23</td><td>8.43</td><td>44.11</td><td>3.67</td></tr><tr><td>Pixtral 12B</td><td>57.57</td><td>0.60</td><td>72.33</td><td>1.83</td><td>55.40</td><td>0.57</td><td>44.73</td><td>12.83</td><td>57.51</td><td>3.96</td></tr><tr><td>NVLM-D 72B</td><td>75.50</td><td>3.13</td><td>78.20</td><td>7.37</td><td>54.67</td><td>1.37</td><td>54.13</td><td>17.40</td><td>65.62</td><td>7.32</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GPT-4o</td><td>88.40</td><td>16.60</td><td>90.43</td><td>35.47</td><td>82.23</td><td>12.60</td><td>63.60</td><td>35.53</td><td>81.17</td><td>25.05</td></tr><tr><td>GPT-4o Mini</td><td>75.33</td><td>7.30</td><td>83.00</td><td>17.67</td><td>64.83</td><td>3.53</td><td>52.87</td><td>26.90</td><td>69.01</td><td>13.85</td></tr><tr><td>Gemini 1.5 Flash</td><td>78.17</td><td>16.30</td><td>82.07</td><td>23.53 10.29</td><td>71.33</td><td>7.33 2.89</td><td>66.00</td><td>32.30</td><td>74.39 71.53</td><td>19.86 8.64</td></tr><tr><td>Test Large (60k)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Open-Source</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Llaval.6 Vicuna 7B</td><td>34.57</td><td>1.59 69.13</td><td>43.48</td><td>4.03 37.51</td><td>34.84</td><td>1.41 88.45 14.79</td><td>32.24</td><td>9.29 37.13</td><td>36.28</td><td>4.08</td></tr><tr><td>Llaval.6 Vicuna 13B</td><td>40.17</td><td>2.79</td><td>48.17</td><td>5.85</td><td>39.05 82.29</td><td>2.57</td><td>37.79</td><td>10.16</td><td>41.30 82.21</td><td>5.34 27.83</td></tr><tr><td>Qwen2 VL Instruct 2B</td><td>41.65</td><td>7.98</td><td>42.29</td><td>8.13</td><td>39.69 57.76</td><td>6.74 5.72</td><td>47.85 52.37</td><td>14.55 25.79</td><td>42.87 66.14</td><td>9.35</td></tr><tr><td>Qwen2 VL Instruct 7B GPT-4o Mini</td><td>61.48 72.80</td><td>6.76 10.28</td><td>67.85</td><td>10.36</td><td>53.52</td><td>6.12</td><td>55.90</td><td>21.03</td><td>59.69 GPT-4o</td><td>11.07</td></tr><tr><td>Qwen2 VL Instruct 72B</td><td>74.19</td><td>12.67</td><td>80.79</td><td>21.31</td><td>62.43</td><td>8.37 6.46</td><td>61.90</td><td>27.27</td><td>69.83</td><td>17.40 16.12</td></tr><tr><td>Llama 3.2 Instruct 11B Gemini 1.5 Flash</td><td>59.93 77.05</td><td>18.75</td><td>64.12</td><td>22.96</td><td>53.17</td><td>13.39</td><td>57.93</td><td>31.58</td><td>58.79</td><td>21.67</td></tr><tr><td>Llama 3.2 Instruct 90B</td><td>77.69</td><td>16.93</td><td>82.92</td><td>23.60</td><td>63.96</td><td>10.87</td><td>67.87</td><td>31.31</td><td>73.11</td><td>20.68</td></tr><tr><td>Molmo-E 1B</td><td>18.81</td><td>0.01</td><td>24.22</td><td>0.23</td><td>19.55</td><td>0.01</td><td>18.97</td><td>1.54</td><td>20.39</td><td>0.45</td></tr><tr><td>Molmo-D 7B</td><td>46.01</td><td>2.89</td><td>55.95</td><td>3.66</td><td>41.61</td><td>2.31</td><td>33.35</td><td>11.45</td><td>44.23</td><td>5.08</td></tr><tr><td>Molmo-O 7B</td><td>39.96</td><td>5.15</td><td>44.93</td><td>6.03</td><td>38.41</td><td>3.51</td><td>29.81</td><td>10.07</td><td>38.28</td><td>6.19</td></tr><tr><td>Pangea 7B</td><td>41.38</td><td>1.52</td><td>57.95</td><td>2.73</td><td>21.77</td><td>1.57</td><td>37.15</td><td>20.15</td><td>39.56</td><td>6.49</td></tr><tr><td>Pangea 7B‡</td><td>52.35</td><td>1.52</td><td>63.07</td><td>2.73</td><td>49.17</td><td>1.57</td><td>48.71</td><td>20.15</td><td>53.33</td><td>6.49</td></tr><tr><td>Aria 25B</td><td>58.61</td><td>4.99</td><td>69.29</td><td>9.17</td><td>52.82</td><td>3.39</td><td>42.82</td><td>16.20</td><td>55.89</td><td>8.44</td></tr><tr><td>Phi-3.5 Vision 4B</td><td>43.37</td><td></td><td>91.57</td><td>4.23</td><td>40.87</td><td>2.07</td><td>35.01</td><td>9.22</td><td>41.99</td><td>4.61</td></tr><tr><td>Pixtral 12B</td><td>56.65</td><td>21.88</td><td>81.65 80.97</td><td>20.87</td><td></td><td></td><td></td><td></td><td></td><td>4.92</td></tr><tr><td></td><td>69.82</td><td>2.91 1.22 12.81</td><td>48.71 70.69 78.93</td><td>2.94 15.16</td><td>52.12 52.12</td><td>1.09</td><td>46.67 51.97 66.52</td><td>14.43 16.68</td><td>56.53 63.21 74.67</td><td>15.66</td></tr><td>NVLM-D 72B Proprietary</td><td></td><td>4.71</td></table>{{< /table-caption >}}
> 🔼 Table 3 presents the accuracy results of various vision-language models on the WorldCuisines visual question answering benchmark's large test set.
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy (%) results of WC-VQA for Test Large (60k). MCQ and OEQ indicate multiple-choice question and open-ended question, respectively. Best and second-best are bolded and underlined, respectively. #We employ an optimized prompt provided by the authors (see Subsection D.1 in the Appendix for further details).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Model (BERTScore)</td><td colspan="3">Task 1 (Dish Name)</td><td rowspan="2">Task 2 (Location)</td><td rowspan="2">Average</td></tr><tr><td>(a) no-context</td><td>(b) contextualized</td><td>(c) adversarial</td></tr><tr><td colspan="6">Test Small (12k)</td></tr><tr><td>Open-Source</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Llaval.6 Vicuna 7B</td><td>81.49</td><td>82.13</td><td>81.56</td><td>85.45</td><td>82.66</td></tr><tr><td>Llaval.6 Vicuna 13B</td><td>80.50</td><td>80.65</td><td>80.14</td><td>81.77</td><td>80.77</td></tr><tr><td>Qwen2 VL Instruct 2B</td><td>82.48</td><td>82.75</td><td>82.34</td><td>84.29</td><td>82.97</td></tr><tr><td>Qwen2 VL Instruct 7B</td><td>82.65</td><td>83.13</td><td>82.10</td><td>87.22</td><td>83.78</td></tr><tr><td>Qwen2 VL Instruct 72B</td><td>83.78</td><td>84.63</td><td>83.06</td><td>87.10</td><td>84.64</td></tr><tr><td>Llama 3.2 Instruct 11B</td><td>82.45</td><td>82.93</td><td>81.64</td><td>82.59</td><td>82.40</td></tr><tr><td>Llama 3.2 Instruct 90B</td><td>82.82</td><td>83.44</td><td>81.98</td><td>85.70</td><td>83.48</td></tr><tr><td>Molmo-E 1B</td><td>81.17</td><td>81.12</td><td>81.24</td><td>83.58</td><td>81.78</td></tr><tr><td>Molmo-D 7B</td><td>81.26</td><td>81.65</td><td>80.55</td><td>84.87</td><td>82.08</td></tr><tr><td>Molmo-O 7B</td><td>82.14</td><td>82.24</td><td>81.44</td><td>84.38</td><td>82.55</td></tr><tr><td>Pangea 7B</td><td>81.29</td><td>81.78</td><td>80.19</td><td>86.31</td><td>82.39</td></tr><tr><td>Aria 25B</td><td>79.85</td><td>80.26</td><td>79.86</td><td>80.53</td><td>80.12</td></tr><tr><td>Phi-3.5 Vision 4B</td><td>80.82</td><td>79.66</td><td>76.77</td><td>83.25</td><td>80.12</td></tr><tr><td>Pixtral 12B</td><td>78.84</td><td>79.12</td><td>78.90</td><td>86.40</td><td>80.81</td></tr><tr><td>NVLM-D 72B</td><td>81.39</td><td>82.05</td><td>79.98</td><td>85.64</td><td>82.27</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GPT-4o</td><td>84.86</td><td>86.92</td><td>83.89</td><td>88.98</td><td>86.16</td></tr><tr><td>GPT-4o Mini</td><td>83.10</td><td>83.91</td><td>82.16</td><td>87.34</td><td>84.13</td></tr><tr><td>Gemini 1.5 Flash</td><td>84.68</td><td>85.09</td><td>83.11</td><td>89.15</td><td>85.51</td></tr><tr><td colspan="6">Test Large (60k)</td></tr><tr><td>Open-Source</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Llaval.6 Vicuna 7B</td><td>81.63</td><td>82.10</td><td>81.58</td><td>85.81</td><td>82.78</td></tr><tr><td>Llaval.6 Vicuna 13B</td><td>80.65</td><td>80.70</td><td>80.12</td><td>81.86</td><td>80.83</td></tr><tr><td>Qwen2 VL Instruct 2B</td><td>82.95</td><td>83.10</td><td>82.81</td><td>84.51</td><td>83.34</td></tr><tr><td>Qwen2 VL Instruct 7B</td><td>82.92</td><td>83.42</td><td>82.30</td><td>87.39</td><td>84.01</td></tr><tr><td>Qwen2 VL Instruct 72B</td><td>83.72</td><td>85.10</td><td>83.11</td><td>87.42</td><td>84.84</td></tr><tr><td>Llama 3.2 Instruct 11B</td><td>82.54</td><td>82.79</td><td>81.64</td><td>82.88</td><td>82.46</td></tr><tr><td>Llama 3.2 Instruct 90B</td><td>83.05</td><td>83.51</td><td>81.95</td><td>85.85</td><td>83.59</td></tr><tr><td>Molmo-E 1B</td><td>81.17</td><td>81.10</td><td>81.13</td><td>83.87</td><td>81.82</td></tr><tr><td>Molmo-D 7B</td><td>81.39</td><td>81.63</td><td>80.73</td><td>85.10</td><td>82.21</td></tr><tr><td>Molmo-O 7B</td><td>82.27</td><td>82.21</td><td>81.52</td><td>84.63</td><td>82.66</td></tr><tr><td>Pangea 7B</td><td>81.40</td><td>81.91</td><td>80.23</td><td>86.79</td><td>82.58</td></tr><tr><td>Aria 25B</td><td>79.89</td><td>80.20</td><td>79.83</td><td>80.63</td><td>80.14</td></tr><tr><td>Phi-3.5 Vision 4B</td><td>80.98</td><td>79.55</td><td>77.61</td><td>83.31</td><td>80.36</td></tr><tr><td>Pixtral 12B</td><td>79.00</td><td>79.33</td><td>78.98</td><td>86.75</td><td>81.02</td></tr><tr><td>NVLM-D 72B</td><td>81.54</td><td>82.17</td><td>80.05</td><td>85.67</td><td>82.36</td></tr><tr><td>Proprietary</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GPT-4o</td><td>85.04</td><td>86.93</td><td>83.92</td><td>89.06</td><td>86.24</td></tr><tr><td>GPT-4o Mini</td><td>83.19</td><td>84.05</td><td>82.38</td><td>87.30</td><td>84.23</td></tr><tr><td>Gemini 1.5 Flash</td><td>84.47</td><td>84.97</td><td>83.14</td><td>89.43</td><td>85.50</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of various vision-language models on the WC-VQA benchmark's test set, categorized by question type (multiple-choice or open-ended) and model type (open-source or proprietary).
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy (%) results of WC-VQA for Test Large (60k). MCQ and OEQ indicate multiple-choice question and open-ended question, respectively. Best and second-best are bolded and underlined, respectively. #We employ an optimized prompt provided by the authors (see Subsection D.1 in the Appendix for further details).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Continents/Regions</td><td># Countries</td><td># Food Entries</td><td>% in Our Data</td></tr><tr><td>Global*</td><td>N/A</td><td>96</td><td>3.98%</td></tr><tr><td>Africa</td><td>52</td><td>190</td><td>7.87%</td></tr><tr><td>Eastern Africa</td><td>18</td><td>40</td><td>1.7%</td></tr><tr><td>Middle Africa</td><td>6</td><td>17</td><td>0.7%</td></tr><tr><td>Northern Africa</td><td>7</td><td>67</td><td>2.8%</td></tr><tr><td>Southern Africa</td><td>5</td><td>33</td><td>1.4%</td></tr><tr><td>Western Africa</td><td>16</td><td>60</td><td>2.5%</td></tr><tr><td>America</td><td>37</td><td>472</td><td>19.55%</td></tr><tr><td>Caribbean</td><td>15</td><td>60</td><td>2.5%</td></tr><tr><td>Central America</td><td>8</td><td>134</td><td>5.6%</td></tr><tr><td>Northern America</td><td>2</td><td>230</td><td>9.5%</td></tr><tr><td>South America</td><td>12</td><td>109</td><td>4.5%</td></tr><tr><td>Europe</td><td>47</td><td>808</td><td>33.47%</td></tr><tr><td>Eastern Europe</td><td>10</td><td>164</td><td>6.8%</td></tr><tr><td>Northern Europe</td><td>15</td><td>237</td><td>9.8%</td></tr><tr><td>Southern Europe</td><td>13</td><td>300</td><td>12.4%</td></tr><tr><td>Western Europe</td><td>9</td><td>233</td><td>9.7%</td></tr><tr><td>Asia</td><td>53</td><td>1,052</td><td>43.58%</td></tr><tr><td>Central Asia</td><td>5</td><td>10</td><td>0.4%</td></tr><tr><td>Eastern Asia</td><td>9</td><td>420</td><td>17.4%</td></tr><tr><td>South Eastern Asia</td><td>12</td><td>362</td><td>15.0%</td></tr><tr><td>Southern Asia</td><td>9</td><td>200</td><td>8.3%</td></tr><tr><td>Western Asia</td><td>18</td><td>155</td><td>6.4%</td></tr><tr><td>Oceania</td><td>3</td><td>37</td><td>1.53%</td></tr><tr><td>Australia & New Zealand</td><td>2</td><td>33</td><td>1.4%</td></tr><tr><td>Melanesia</td><td>1</td><td>4</td><td>0.2%</td></tr><tr><td>Micronesia</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Polynesia</td><td>-</td><td>-</td><td>-</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comparison of the WORLDCUISINES visual question answering (VQA) dataset (WC-VQA) with other existing VQA datasets, highlighting WC-VQA's size, multilingual capabilities, and cultural diversity.
> <details>
> <summary>read the caption</summary>
> Table 1: Data statistics for WC-VQA compared to existing VQA datasets. The data samples are sourced from their respective publications. The reported numbers are based on their human-annotated test set. This entry includes the language variations we collected for all languages.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12705/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12705/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}