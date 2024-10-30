---
title: "The Curse of Multi-Modalities: Evaluating Hallucinations of Large Multimodal Models across Language, Visual, and Audio"
summary: "Large multimodal models are prone to hallucinations; this work systematically investigates these, pinpointing key causes and introducing a benchmark for improved model reliability."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12787 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper delves into the problem of hallucinations in large multimodal models (LMMs), which often produce outputs that don't accurately reflect the combined language, visual, and audio inputs.  The study reveals two main causes: models over-relying on a single input type (e.g., only focusing on the image while ignoring the audio) and learning incorrect relationships between different input types.  To address this, the researchers created a new benchmark called 'The Curse of Multi-Modalities' to systematically evaluate and analyze LMM hallucinations.  This benchmark helps identify specific vulnerabilities and suggests improvements such as more balanced training data and better strategies for combining information from multiple inputs.  The findings are highly relevant for anyone working with LMMs and suggest important research directions for future work in creating more reliable and robust multimodal AI systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12787" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12787" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working with large multimodal models (LMMs). It introduces a novel benchmark and identifies key issues like unimodal over-reliance and spurious correlations, paving the way for more reliable and robust LMMs.  The findings directly address current limitations and suggest promising avenues for future research.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large multimodal models (LMMs) frequently hallucinate (generate outputs not reflecting inputs). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Hallucinations stem from over-reliance on single input types and spurious correlations between them. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The 'Curse of Multi-Modalities' benchmark systematically assesses these issues, enabling better model evaluation and future improvements. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12787/figures_3_0.png)

> 🔼 Figure 1 shows three examples of how large multimodal models (LMMs) hallucinate due to over-reliance on a single modality (language, visual, or audio).
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstrations of overreliance on unimodal priors.
> </details>





![](https://ai-paper-reviewer.com/2410.12787/charts_4_0.png)

> 🔼 The chart displays the impact of reducing information from a dominant modality (language, visual, or audio) on the probability of hallucinatory and correct responses in Large Multimodal Models (LMMs).
> <details>
> <summary>read the caption</summary>
> Figure 2: Validation experiments on overreliance on unimodal priors.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="6">Spurious Inter-modality Correlation</td><td colspan="6">Uni-modality Overreliance</td><td colspan="2">Overall</td></tr><tr><td colspan="2">VL pa ↑ hr ↑</td><td colspan="2">AL pa ↑ hr ↑</td><td colspan="2">VAL pa ↑ hr↑</td><td colspan="2">Visual Dom pa ↑ hr ↑</td><td colspan="2">Audio Dom pa ↑ hr ↑</td><td colspan="2">Lang Dom pa ↑ hr ↑</td><td colspan="2">pa ↑ hr ↑</td></tr><tr><td colspan="15">Proprietary Models</td></tr><tr><td>Gemini-1.5-pro</td><td>91.0</td><td>90.5</td><td>94.0</td><td>14.5</td><td>86.0</td><td>67.0</td><td>82.5</td><td>34.0</td><td>90.5</td><td>82.0</td><td>78.5</td><td>61.5</td><td>87.1</td><td>58.3</td></tr><tr><td>Gemini-1.5-flash</td><td>93.5</td><td>90.0</td><td>88.5</td><td>39.5</td><td>88.5</td><td>70.5</td><td>79.0</td><td>36.5</td><td>90.5</td><td>86.5</td><td>90.5</td><td>62.0</td><td>88.4</td><td>64.2</td></tr><tr><td>Reka-core</td><td>87.0</td><td>94.5</td><td>25.0</td><td>76.0</td><td>76.7</td><td>85.1</td><td>35.6</td><td>69.4</td><td>80.8</td><td>82.7</td><td>75.0</td><td>76.0</td><td>63.7</td><td>80.9</td></tr><tr><td colspan="15">Open-source Models</td></tr><tr><td>GroundingGPT</td><td>95.5</td><td>36.5</td><td>100</td><td>0.0</td><td>97.5</td><td>18.0</td><td>99.5</td><td>1.0</td><td>98.5</td><td>23.5</td><td>88.5</td><td>7.0</td><td>96.6</td><td>14.3</td></tr><tr><td>FAVOR</td><td>91.0</td><td>55.0</td><td>94.5</td><td>45.0</td><td>94.5</td><td>69.0</td><td>89.0</td><td>21.5</td><td>92.0</td><td>43.5</td><td>92.0</td><td>18.5</td><td>92.2</td><td>42.1</td></tr><tr><td>VideoLLaMA2</td><td>75.0</td><td>86.0</td><td>77.5</td><td>94.0</td><td>78.0</td><td>98.0</td><td>62.0</td><td>75.5</td><td>80.0</td><td>90.0</td><td>57.5</td><td>43.0</td><td>71.7</td><td>81.1</td></tr></table>{{< /table-caption >}}

> 🔼 This table presents the performance of various Large Multimodal Models (LMMs) across different tasks involving language, visual, and audio modalities, evaluating their perception accuracy and hallucination resistance.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12787/charts_5_0.png)

> 🔼 The chart displays the frequency of hallucinatory and non-hallucinatory answers against the co-occurrence score for visual-language, audio-language, and visual-audio spurious correlations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Validation experiments on spurious inter-modality correlations caused by co-occurrences.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_0.png)

> 🔼 The chart displays the top 10 most frequent existent and non-existent objects and events in the object-level and event-level probing data used for evaluating large multimodal models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_1.png)

> 🔼 The chart visualizes the frequency distribution of existent and non-existent objects and events used in the probing questions across different modalities in the CMM benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_2.png)

> 🔼 The chart displays the frequencies of top 10 existent and non-existent objects and events in object-level and event-level data for visual and audio modalities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_3.png)

> 🔼 The chart displays the top 10 most frequent existent and non-existent objects and events in the visual and audio modalities used in the study's probing questions, illustrating the distribution of queries across different types of objects and events.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_4.png)

> 🔼 The chart displays the top 10 most frequent existent and non-existent objects and events used in object-level and event-level probing questions across visual and audio modalities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


![](https://ai-paper-reviewer.com/2410.12787/charts_20_5.png)

> 🔼 The chart displays the top 10 most frequent existent and non-existent objects and events used in the object-level and event-level probing questions across visual and audio modalities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistics of object and event frequencies in our probing questions.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="2">VL Correlations</td><td colspan="2">Lang Dominance</td></tr><tr><td>pa ↑</td><td>hr ↑</td><td>pa ↑</td><td>hr ↑</td></tr><tr><td>CogVLM2-Video</td><td>99.50</td><td>44.00</td><td>98.00</td><td>5.00</td></tr><tr><td>VideoChat2</td><td>97.00</td><td>66.00</td><td>88.00</td><td>34.50</td></tr><tr><td>InternLM-XComposer 2.5</td><td>99.00</td><td>73.00</td><td>94.50</td><td>46.50</td></tr><tr><td>PLLaVA</td><td>89.50</td><td>93.00</td><td>75.00</td><td>52.00</td></tr><tr><td>ShareGPT4Video</td><td>87.50</td><td>85.50</td><td>79.50</td><td>58.00</td></tr><tr><td>LLaVA-OneVision</td><td>94.00</td><td>88.00</td><td>87.50</td><td>69.50</td></tr><tr><td>GPT4o</td><td>87.50</td><td>95.50</td><td>83.00</td><td>84.00</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the benchmarking results of various large multimodal models (LMMs) across different tasks involving language, visual, and audio modalities, evaluating their performance on perception accuracy and hallucination resistance.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="2">AL Correlations</td></tr><tr><td>pa ↑</td><td>hr ↑</td></tr><tr><td>Qwen2-Audio</td><td>98.50</td><td>34.50</td></tr><tr><td>Audio-Flamingo</td><td>89.50</td><td>39.00</td></tr><tr><td>GAMA-IT</td><td>94.50</td><td>52.00</td></tr><tr><td>SALMONN</td><td>93.00</td><td>59.00</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of various Large Multimodal Models (LMMs) on the Curse of Multi-Modalities (CMM) benchmark, categorized by their ability to handle visual, audio, and combinations of these modalities, showing their perception accuracy and hallucination resistance in different subcategories.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="4">VL Correlations</td><td colspan="4">Language Dominance</td></tr><tr><td colspan="2">object-level (pa/hr)</td><td colspan="2">event-level (pa/hr)</td><td colspan="2">object-level (pa/hr)</td><td colspan="2">event-level (pa/hr)</td></tr><tr><td colspan="9">Visual-Audio LMMs</td></tr><tr><td>Reka-core</td><td>93.0</td><td>92.0</td><td>81.0</td><td>97.0</td><td>73.0</td><td>91.0</td><td>77.0</td><td>61.0</td></tr><tr><td>Gemini-1.5-flash</td><td>98.0</td><td>85.0</td><td>89.0</td><td>95.0</td><td>93.0</td><td>74.0</td><td>88.0</td><td>50.0</td></tr><tr><td>Gemini-1.5-pro</td><td>97.0</td><td>88.0</td><td>85.0</td><td>93.0</td><td>88.0</td><td>63.0</td><td>69.0</td><td>60.0</td></tr><tr><td>FAVOR</td><td>99.0</td><td>35.0</td><td>83.0</td><td>75.0</td><td>100</td><td>3.0</td><td>84.0</td><td>34.0</td></tr><tr><td>GroundingGPT</td><td>98.0</td><td>31.0</td><td>93.0</td><td>42.0</td><td>91.0</td><td>6.0</td><td>86.0</td><td>8.0</td></tr><tr><td>VideoLLaMA2</td><td>76.0</td><td>85.0</td><td>74.0</td><td>87.0</td><td>69.0</td><td>37.0</td><td>46.0</td><td>49.0</td></tr><tr><td colspan="9">Visual-Only LMMs</td></tr><tr><td>VideoChat2</td><td>98.0</td><td>60.0</td><td>96.0</td><td>72.0</td><td>92.0</td><td>30.0</td><td>84.0</td><td>39.0</td></tr><tr><td>ShareGPT4Video</td><td>88.0</td><td>90.0</td><td>87.0</td><td>81.0</td><td>81.0</td><td>67.0</td><td>78.0</td><td>49.0</td></tr><tr><td>PLLaVA</td><td>91.0</td><td>92.0</td><td>88.0</td><td>94.0</td><td>76.0</td><td>70.0</td><td>74.0</td><td>34.0</td></tr><tr><td>CogVLM2-Video</td><td>99.0</td><td>48.0</td><td>100</td><td>40.0</td><td>99.0</td><td>5.0</td><td>97.0</td><td>5.0</td></tr><tr><td>InternLM-XComposer 2.5</td><td>99.0</td><td>89.0</td><td>99.0</td><td>57.0</td><td>97.0</td><td>62.0</td><td>99.0</td><td>57.0</td></tr><tr><td>LLaVA-One Vision</td><td>98.0</td><td>89.0</td><td>90.0</td><td>87.0</td><td>92.0</td><td>82.0</td><td>83.0</td><td>57.0</td></tr><tr><td>GPT4o</td><td>97.0</td><td>94.0</td><td>78.0</td><td>97.0</td><td>90.0</td><td>91.0</td><td>76.0</td><td>77.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the benchmarking results of various Large Multimodal Models (LMMs) across different tasks involving language, visual, and audio modalities, evaluating their performance on perception accuracy and hallucination resistance.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="4">VAL Correlations</td></tr><tr><td colspan="2">object-level (pa/hr)</td><td colspan="2">event-level (pa/hr)</td></tr><tr><td>Reka-core</td><td>96.6</td><td>86.7</td><td>57.1</td><td>83.5</td></tr><tr><td>Gemini-1.5-flash</td><td>94.0</td><td>92.0</td><td>83.0</td><td>49.0</td></tr><tr><td>Gemini-1.5-pro</td><td>92.0</td><td>90.0</td><td>80.0</td><td>44.0</td></tr><tr><td>FAVOR</td><td>94.0</td><td>85.0</td><td>95.0</td><td>53.0</td></tr><tr><td>GroundingGPT</td><td>96.0</td><td>35.0</td><td>99.0</td><td>1.0</td></tr><tr><td>VideoLLaMA2</td><td>84.0</td><td>99.0</td><td>72.0</td><td>97.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the benchmarking results for LMMs across visual-audio modalities, showing the performance of various models on different subcategories of spurious inter-modality correlations and unimodal overreliance.
> <details>
> <summary>read the caption</summary>
> Table 4: Effects of probing modalities.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td colspan="2">Model Specs</td><td colspan="2">VL Cor</td><td colspan="2">Lang Dom</td></tr><tr><td>Name</td><td>LLM Size</td><td colspan="2">(pa/hr)</td><td colspan="2">(pa/hr)</td></tr><tr><td>PLLaVA</td><td>Vicuna 7B</td><td>89.5</td><td>93.0</td><td>75.0</td><td>52.0</td></tr><tr><td>PLLaVA</td><td>Vicuna 13B</td><td>86.5</td><td>96.5</td><td>75.5</td><td>65.0</td></tr><tr><td>PLLaVA</td><td>Yi 34B</td><td>91.0</td><td>94.5</td><td>75.5</td><td>74.0</td></tr><tr><td>LLaVA-OneVision</td><td>Qwen2 0.5B</td><td>96.5</td><td>91.5</td><td>81.0</td><td>55.0</td></tr><tr><td>LLa VA-One Vision</td><td>Qwen2 7B</td><td>94.0</td><td>88.0</td><td>87.5</td><td>69.5</td></tr><tr><td>LLaVA-One Vision</td><td>Qwen2 72B</td><td>84.5</td><td>93.5</td><td>89.5</td><td>75.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the benchmarking results for three different sizes of LLMs across two subcategories of the Curse of Multi-Modalities benchmark: Visual-Language spurious correlations and Language Dominance.
> <details>
> <summary>read the caption</summary>
> Table 5: Effects of LLM decoder sizes in LMMs.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Category</td><td colspan="3">Overreliance on Unimodal Priors</td></tr><tr><td>Sub-category</td><td>Visual Dominance</td><td>Audio Dominance</td><td>Language Dominance</td></tr><tr><td>Modality</td><td>Visual+Audio</td><td>Visual+Audio</td><td>Visual</td></tr><tr><td>Granularities</td><td>event-level</td><td>object-level</td><td>object-, event-level</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the performance of various large multimodal models (LMMs) on a benchmark evaluating hallucinations across language, visual, and audio modalities, categorized by spurious inter-modality correlations and unimodal overreliance.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:20px'><tr><td>Category</td><td colspan="3">Spurious Inter-modality Correlations</td></tr><tr><td>Sub-category</td><td>Visual-Language</td><td>Audio-Language</td><td>Visual-Audio-Language</td></tr><tr><td>Modality</td><td>Visual</td><td>Audio</td><td>Visual+Audio</td></tr><tr><td>Granularities</td><td>object-, event-level</td><td>event-level</td><td>object-, event-level</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the benchmarking results of various Large Multimodal Models (LMMs) across different tasks involving language, visual, and audio modalities, evaluating their performance using Perception Accuracy and Hallucination Resistance metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarking results for LMMs across language, visual, and audio modalities.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12787/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12787/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}