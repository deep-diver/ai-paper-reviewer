---
title: "CAMEL-Bench: A Comprehensive Arabic LMM Benchmark"
summary: "CAMEL-Bench: a new Arabic LMM benchmark enabling comprehensive evaluation of large multimodal models across eight diverse domains, revealing significant room for improvement even in state-of-the-art m..."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Researchers have developed CAMEL-Bench, the first large-scale benchmark for evaluating large multimodal models (LLMs) that understand and reason using Arabic.  Most existing benchmarks focus on English, limiting their applicability to other languages. CAMEL-Bench includes eight diverse domains (like image understanding, video understanding, and medical image analysis) and 38 sub-domains, covering various tasks with around 29,000 questions.  The questions were carefully checked by native Arabic speakers for quality. They tested both open-source and closed-source LLMs and found that even advanced models struggled, particularly with tasks involving Arabic script nuances and remote sensing.  The benchmark reveals a crucial need for further research and development in this area, as it showcases the limitations of current LLMs when it comes to handling the nuances of the Arabic language.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18976" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br>
<br>
{{< button href="https://huggingface.co/papers/2410.18976" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; discuss on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in natural language processing and computer vision because it introduces CAMEL-Bench, the first comprehensive Arabic LMM benchmark.  This addresses a critical gap in existing benchmarks, which are largely English-centric, opening avenues for research on multilingual and culturally diverse models. The findings highlight the challenges in Arabic multimodal understanding and underscore the need for improved models, guiding future research directions.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CAMEL-Bench, a new benchmark for evaluating large multimodal models (LMMs) in Arabic, was developed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark includes eight diverse domains and 38 sub-domains with over 29,000 questions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluations reveal a significant need for improvement in Arabic LMMs, even for the best existing models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 Figure 1 is a visual representation of the CAMEL-Bench benchmark, illustrating its eight diverse domains and 38 sub-domains, along with the number of questions in each.
> <details>
> <summary>read the caption</summary>
> Figure 1. The proposed CAMEL-Bench covers eight diverse and challenging domains: multimodal understanding and reasoning, OCR and documents, charts and diagrams, videos, cultural-specific content, medical images, agricultural images, and remote sensing understanding in Arabic. CAMEL-Bench covers 38 sub-domains with over 29K questions carefully curated by native Arabic speakers to rigorously evaluate essential skills desired in Arabic LMMs.
> </details>







{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td>Domain/Characteristics</td><td>Exams-V*</td><td>CVQA*</td><td>Henna</td><td>KHATT</td><td>CAMEL-Bench (ours)</td></tr><tr><td>Multimodal Und. & Reasoning</td><td>V</td><td>X</td><td></td><td>X</td><td></td></tr><tr><td>OCR & Docs Und.</td><td>X</td><td>X</td><td>X</td><td>V</td><td></td></tr><tr><td>Charts & Diagrams Und.</td><td>V</td><td>X</td><td>X</td><td>X</td><td></td></tr><tr><td>Video Und.</td><td>X</td><td>X</td><td>X</td><td>X</td><td></td></tr><tr><td>Medical Image Und.</td><td>X</td><td>X</td><td>X</td><td>X</td><td></td></tr><tr><td>Agricultural Image Und.</td><td>X</td><td>X</td><td>X</td><td>X</td><td></td></tr><tr><td>Remote-Sensing Und.</td><td>X</td><td>X</td><td>X</td><td>X</td><td></td></tr><tr><td>Cultural-Specific Und.</td><td>X</td><td></td><td>V</td><td>X</td><td></td></tr><tr><td>Open Source Question Numbers</td><td>823</td><td>V 200</td><td>X 1.1K</td><td>V 5K</td><td>29K</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the CAMEL-Bench with other existing Arabic LMM benchmarks, highlighting its comprehensiveness and the number of questions.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison of our CAMEL-Bench with existing Arabic LMM benchmarks: Exams-V [13], CVQA [46], Henna[4], and KHATT [34]. Here * denotes that only Arabic part of benchmark is counted.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_0.png)

> 🔼 Figure 1 is a diagram showing the eight diverse domains and 38 sub-domains of the CAMEL-Bench, a comprehensive Arabic LMM benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 1. The proposed CAMEL-Bench covers eight diverse and challenging domains: multimodal understanding and reasoning, OCR and documents, charts and diagrams, videos, cultural-specific content, medical images, agricultural images, and remote sensing understanding in Arabic. CAMEL-Bench covers 38 sub-domains with over 29K questions carefully curated by native Arabic speakers to rigorously evaluate essential skills desired in Arabic LMMs.
> </details>



![](figures/figures_4_0.png)

> 🔼 This figure illustrates the two-path pipeline for filtering and verifying data in the CAMEL-Bench, including manual verification for original Arabic data and automated verification with the Qwen7B model for translated Arabic data.
> <details>
> <summary>read the caption</summary>
> Figure 3. The CAMEL-Bench Filtering and Verification Pipeline consists of two paths: Original Arabic and translated Arabic. For original Arabic (top row), a 20% random sample undergoes manual verification; if errors are below 40%, the data passes; otherwise, the entire sub-category is reviewed. For Translated Arabic (bottom row), We employ Qwen7B model [8] to assess semantic similarity between the original and translated question-answer pairs on fuzzy-basis evaluation. Pairs passing the evaluation proceed, while those that fail undergo manual review. Based on this, data may require Manual Handling for manual re-translation, Refine & Verify for refinement through the model, or Non-Translated Review where the data is re-sent for translation due to the absence of an Arabic version.
> </details>



![](figures/figures_5_0.png)

> 🔼 Figure 4 presents qualitative examples illustrating challenges faced by different closed-weight models across various tasks within the CAMEL-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 4. Qualitative example highlighting different scenarios where different closed-weight models struggle on CAMEL-Bench. The correct response is shown in green, and the incorrect one in the red box.
> </details>



![](figures/figures_5_1.png)

> 🔼 Figure 5 shows examples of open-source LLMs failing to correctly answer questions about cultural identity, medical images, and agricultural images in Arabic.
> <details>
> <summary>read the caption</summary>
> Figure 5. Qualitative example highlighting different scenarios where different open-weight models struggle on CAMEL-Bench. The correct response is shown in green, and the incorrect one in the red box.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Domains</td><td>Sub-Domains</td><td>Source</td><td>Number of Questions</td></tr><tr><td rowspan="10">Multimodal Understanding and Reasoning</td><td>Visual Understanding/ Reasoning</td><td>MME, MMBench, MMT-Bench-MI, SEED, MMMU</td><td>3,971</td></tr><tr><td>Object Hallucination Evaluation</td><td>CountBench, MMT-Bench-MI, POPE</td><td>997</td></tr><tr><td>Math and Logic Reasoning</td><td>MathVista</td><td>531</td></tr><tr><td>Scientific Reasoning</td><td>ScienceQA-IMG, Exams-V</td><td>1,624</td></tr><tr><td>Visual Question Answering</td><td>GQA, VizWiz, VQAv2</td><td>3,840</td></tr><tr><td>InforGrahpics VQA</td><td>AI-Generated (GPT-4o), Pinterest</td><td>120</td></tr><tr><td>Complex Visual Perception</td><td>BLINK</td><td>1,422</td></tr><tr><td>Real-world Spatial Understanding</td><td>RealWorldQA</td><td>624</td></tr><tr><td>Multi-image Understanding</td><td>MMT-Bench-MI, MuirBench</td><td>1,062</td></tr><tr><td>Object-level Perception</td><td>COCO, ImageNet, Mocheg, Snli-Ve</td><td>60</td></tr><tr><td rowspan="9">OCR and Document Understanding</td><td>Scanned Documents (OCR)</td><td>ArabicDatasetOCR</td><td>480</td></tr><tr><td>Scanned Documents (VQA)</td><td>MTVQA</td><td>703</td></tr><tr><td>Scene Text (OCR)</td><td>EvArEST</td><td>1,217</td></tr><tr><td>Books (OCR)</td><td>Historical Arabic Handwritten Text Recognition Dataset</td><td>40</td></tr><tr><td>PowerPoint Slides (OCR)</td><td>ISI-PPT-Dataset</td><td>2,354</td></tr><tr><td>PowerPoint Slides (VQA)</td><td>ISI-PPT-Dataset</td><td>711</td></tr><tr><td>Handwriting (OCR)</td><td>KHATT Line</td><td>1,400</td></tr><tr><td>Newsletters (OCR)</td><td>PATD</td><td>506</td></tr><tr><td>Lines (OCR)</td><td>PATS-01</td><td>520</td></tr><tr><td rowspan="3">Chart and Diagram Understanding</td><td>Charts</td><td>ChartQA</td><td>745</td></tr><tr><td>Diagrams Understanding</td><td>MMMU (diagrams), ICON-QA, AI-Generated, Pinterest, BCE-Arabic</td><td>1,994</td></tr><tr><td>Tables</td><td>BCE-Arabic, Excel</td><td>81</td></tr><tr><td rowspan="3">Video Understanding</td><td>Countries/ Landmarks</td><td>Pexel</td><td>87</td></tr><tr><td>Cultural-Specific Occasions</td><td>Pexel</td><td>24</td></tr><tr><td>General Video Scenes</td><td>Video-MME</td><td>654</td></tr><tr><td rowspan="3">Cultural Specific Understanding</td><td>Celebrities</td><td>arab-celeb-dataset</td><td>444</td></tr><tr><td>Food</td><td>arabic-food-101, Pexel</td><td>347</td></tr><tr><td>Countries/ Landmarks</td><td>Pexel</td><td>494</td></tr><tr><td rowspan="7">Medical Imaging Understanding</td><td>Basic Medical Science</td><td>MMMU, MMMU Pro</td><td>89</td></tr><tr><td>Clinical Medicine</td><td>MMMU, MMMU Pro</td><td>83</td></tr><tr><td>Public Health</td><td>MMMU, MMMU Pro</td><td>87</td></tr><tr><td>Pharmacy</td><td>MMMU, MMMU Pro</td><td>82</td></tr><tr><td>Diagnosis</td><td>MMMU, MMMU Pro</td><td>87</td></tr><tr><td></td><td>MMT-MI-Bench</td><td>78</td></tr><tr><td>Medical Understanding</td><td></td><td>769</td></tr><tr><td>Agricultural Image Understanding</td><td>Agriculture Image Understanding Remote Sensing Understanding</td><td>AgroGPT GeoChat</td><td>709</td></tr><tr><td colspan="3">Remote Sensing Understanding Total</td><td>29,036</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 details the different data sources and the number of questions used for each of the 38 sub-domains across eight domains in the CAMEL-Bench benchmark.


{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Method</td><td>MM Understanding & Reasoning</td><td>OCR & Document Understanding</td><td>Charts & Diagram Understanding</td><td>Video Understanding</td><td>Cultural Specific Understanding</td><td>Medical Imaging</td><td>Agro Specific</td><td>Remote Sensing Understanding</td></tr><tr><td>GPT-4o</td><td>57.90</td><td>59.11</td><td>73.57</td><td>74.27</td><td>80.86</td><td>49.90</td><td>80.75</td><td>22.85</td></tr><tr><td>GPT-4o-mini</td><td>48.82</td><td>42.89</td><td>64.98</td><td>68.11</td><td>65.92</td><td>47.37</td><td>79.58</td><td>16.93</td></tr><tr><td>Gemini-1.5-Pro</td><td>46.67</td><td>36.59</td><td>47.06</td><td>42.94</td><td>56.24</td><td>33.77</td><td>72.12</td><td>17.07</td></tr><tr><td>Gemini-1.5-Flash</td><td>45.58</td><td>33.59</td><td>48.25</td><td>53.31</td><td>46.54</td><td>42.86</td><td>76.06</td><td>14.95</td></tr><tr><td>Pangea-7B</td><td>40.09</td><td>26.47</td><td>38.87</td><td>49.01</td><td>20.34</td><td>31.99</td><td>74.51</td><td>6.67</td></tr><tr><td>Qwen2-VL-2B</td><td>40.59</td><td>25.68</td><td>27.83</td><td>38.90</td><td>34.27</td><td>29.12</td><td>52.02</td><td>12.56</td></tr><tr><td>Intern VL2-8B</td><td>30.41</td><td>15.91</td><td>30.27</td><td>51.42</td><td>20.88</td><td>29.48</td><td>44.47</td><td>5.36</td></tr><tr><td>LLaVa-NeXt-7B</td><td>26.33</td><td>19.12</td><td>27.56</td><td>44.90</td><td>28.30</td><td>22.54</td><td>42.00</td><td>8.33</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 compares the performance of seven different large multimodal models (LLMs) across eight diverse domains in the CAMEL-Bench benchmark, highlighting strengths and weaknesses of both closed-source and open-source models.


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
{{< /gallery >}}