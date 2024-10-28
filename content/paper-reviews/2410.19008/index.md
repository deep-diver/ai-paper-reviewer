---
title: "Teach Multimodal LLMs to Comprehend Electrocardiographic Images"
summary: "PULSE, a new MLLM, achieves state-of-the-art accuracy in ECG image interpretation, exceeding existing models by 15-30%, thanks to a novel million-sample instruction tuning dataset."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-28"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research introduces PULSE, a powerful new multimodal large language model (MLLM) designed to interpret electrocardiogram (ECG) images.  Existing methods for automatic ECG analysis have limitations, particularly in generalizability and reliance on raw signal data, often unavailable in resource-poor settings.  To overcome this, the researchers created ECGInstruct, a massive dataset (over one million samples) with a wide range of ECG-related tasks.  They also built ECGBench, a new benchmark to rigorously test such models.  PULSE, trained on ECGInstruct, showed impressive performance, surpassing other MLLMs by 15-30% in accuracy across various tasks. This improvement is significant because accurate and efficient ECG interpretation is vital for diagnosing cardiovascular issues, and PULSE's ability to handle diverse ECG image types and tasks makes it highly valuable for clinical applications and further research.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.19008" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.19008" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in medical AI and cardiology.  It introduces a large-scale, high-quality ECG image dataset and benchmark, addressing the lack of standardized resources in the field.  The development of PULSE, a state-of-the-art MLLM for ECG image analysis, opens new avenues for research into multimodal learning, clinical decision support, and resource-constrained healthcare settings.  The findings challenge current methods and provide a valuable resource for future advancements.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PULSE significantly outperforms existing models on ECG image interpretation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The new ECGInstruct dataset and ECGBench benchmark provide valuable resources for future research. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study highlights the potential of MLLMs for improving ECG interpretation in clinical practice. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure shows a comparison of the performance of the proposed PULSE model with other state-of-the-art models on ECG image interpretation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>





![](charts/charts_1_0.png)

> 🔼 The chart displays a comparison of the overall model performance on ECGBench for various models, highlighting PULSE's superior accuracy across multiple in-domain and out-of-domain ECG image interpretation tasks compared to existing MLLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Source Dataset</td><td>Task</td><td>Type</td><td># Samples</td></tr><tr><td>PTB-XL Wagner et al. 2020</td><td>Feature</td><td>Close/Open/Fill/MCQ</td><td>30K</td></tr><tr><td></td><td>Rhythm</td><td>Close/Open/Fill/MCQ</td><td>36K</td></tr><tr><td></td><td>Morphology</td><td>Close/Open/Fill/MCQ</td><td>67K</td></tr><tr><td></td><td>Report</td><td>Open</td><td>16K</td></tr><tr><td>ECG-QA Oh et al. 2024</td><td>Feature</td><td>Close</td><td>40K</td></tr><tr><td></td><td>Rhythm</td><td>Close</td><td>9K</td></tr><tr><td></td><td>Morphology</td><td>Close</td><td>90K</td></tr><tr><td>MIMIC-IV-ECG Gow et al. 2023</td><td>Feature</td><td>Close/Open/Fill/MCQ</td><td>29K</td></tr><tr><td></td><td>Rhythm</td><td>Close/Open/Fill/MCQ</td><td>115K</td></tr><tr><td></td><td>Morphology</td><td>Close/Open/Fill/MCQ</td><td>169K</td></tr><tr><td></td><td>Report</td><td>Open</td><td>487K</td></tr><tr><td>CODE-15% Ribeiro et al. 2021</td><td>Feature</td><td>Close</td><td>22K</td></tr><tr><td></td><td>Rhythm</td><td>Close</td><td>14K</td></tr><tr><td></td><td>Morphology</td><td>Close</td><td>31K</td></tr><tr><td>Total (ECGInstruct)</td><td></td><td></td><td>1.2M</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 summarizes the ECGInstruct dataset, detailing the task type and number of samples for each task category across different source datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of ECGInstruct. Feature: basic feature recognition, Rhythm: heart rhythm analysis, Morphology: morphology and pathology identification, Report: clinical report generation. Close: close-ended QA, Open: open-ended QA, Fill: fill-in-the-blank, MCQ: multi-choice QA. The full table of data statistics is provided in Appendix Table A1.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png)

> 🔼 The figure shows that PULSE outperforms other models on multiple ECG image interpretation tasks, highlighting the limitations of proprietary MLLMs in accurately interpreting ECG images.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure illustrates the data curation process for ECGBench, highlighting the four key tasks involved and their respective data sources.
> <details>
> <summary>read the caption</summary>
> Figure 3: The data curation process for ECGBench. There are four key tasks involved: (1) two repurposed tasks (abnormality detection and report generation) derived from existing ECG datasets, where ECG images are synthesized from raw signals, and queries/answers are extracted based on diagnostic and clinical reports; (2) Two newly developed tasks using external resources, where ECG images and associated questions and answers are collected and generated from real-world sources.
> </details>



![](figures/figures_5_1.png)

> 🔼 The figure shows a comparison of the performance of PULSE and other MLLMs on ECG image interpretation tasks across multiple datasets, highlighting PULSE's superior accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



![](figures/figures_5_2.png)

> 🔼 The figure compares the performance of PULSE against other MLLMs on various ECG image interpretation tasks, highlighting PULSE's superior accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



![](figures/figures_20_0.png)

> 🔼 The figure shows a comparison of the performance of PULSE and other MLLMs on ECG image interpretation tasks, highlighting PULSE's superior accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



![](figures/figures_20_1.png)

> 🔼 The figure shows a comparison of the performance of PULSE and other LLMs (GPT-40, Gemini, Claude) on various ECG interpretation tasks, highlighting PULSE's superior accuracy and the limitations of proprietary models.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



![](figures/figures_21_0.png)

> 🔼 The figure shows that PULSE outperforms other advanced multimodal LLMs on ECG image interpretation tasks across multiple datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_1_1.png "🔼 Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.")

> 🔼 The chart compares the performance of PULSE against other MLLMs on various ECG interpretation tasks, highlighting PULSE's superior accuracy across in-domain and out-of-domain datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>


![](charts/charts_10_0.png "🔼 Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.")

> 🔼 The chart compares the overall performance of PULSE against other advanced Multimodal Large Language Models (MLLMs) across multiple in-domain and out-of-domain datasets using the ECGBench benchmark, highlighting PULSE's superior accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>


![](charts/charts_20_0.png "🔼 Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.")

> 🔼 The chart compares the overall performance of PULSE against other MLLMs on various ECG interpretation tasks, highlighting PULSE's superior accuracy and the limitations of proprietary models.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed PULSE demonstrates superior performance across multiple in-domain and out-of-domain datasets on our constructed ECGBench compared with advanced proprietary MLLMs (e.g., GPT-40). Notably, the proprietary MLLMs often fail to accurately interpret ECG images, generating well-structured and contextually relevant responses but ultimately incorrect (with errors highlighted in red) compared to the ground truth diagnosis.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='6' style='font-size:14px'><tr><td rowspan="3">www Resource Selection ↓ → Question Quality Creation Control</td><td colspan="2">MMMU ECG</td><td>ECG Arena</td></tr><tr><td>ECG? (A) Sinus tachycardia with (B) Atrial fibrillation with right bundle branch aberrancy</td><td>Question: What is the rhythm shown in this Option: ventricular tachycardia -------------------------------- 나에 --- 竹 (C) Atrial tachycardia with right bundle branch aberrancy (D) Polymorphic ventricular tachycardia Answer: (D)</td><td>Question: Can you describe the features observed in this ECG, including the rhythm, waveforms, intervals, and any other notable findings? findings you've mentioned, 111* Follow-up Question: Given the especially the ST-segment changes and dual-chamber 111 pacing, what is the diagnosis? Answer: The ECG shows a dual-chamber paced rhythm at 60 bpm. There is ST-segment elevation (STE) in leads II...</td></tr><tr><td colspan="2">Question type: Multi-choice; Close-ended Image type: 6*2 layout; Rea-world ECG Image Source: Online Quiz</td><td>Question type: Multi-turn; Open-ended Image type: 4*3 layout; Rea-world ECG Image Source: Textbook</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Evaluation Dataset</td><td>Task</td><td>Type</td><td># Samples</td><td>In-Domain?</td></tr><tr><td>PTB-XL Super</td><td>Abnormality Detection</td><td>Close-ended</td><td>2,082</td><td>YES</td></tr><tr><td>PTB-XL Report</td><td>Report Generation</td><td>Open-ended</td><td>500</td><td>YES</td></tr><tr><td>CODE-15%</td><td>Abnormality Detection</td><td>Close-ended</td><td>1,400</td><td>YES</td></tr><tr><td>ECG-QA</td><td>Abnormality Detection</td><td>Close-ended</td><td>1,317</td><td>YES</td></tr><tr><td>CPSC 2018</td><td>Abnormality Detection</td><td>Close-ended</td><td>2,061</td><td>NO</td></tr><tr><td>CSN</td><td>Abnormality Detection</td><td>MCQ (8-option)</td><td>1,611</td><td>NO</td></tr><tr><td>G12EC</td><td>Abnormality Detection</td><td>MCQ (8-option)</td><td>2,026</td><td>NO</td></tr><tr><td>MMMU ECG</td><td>Multimodal Understanding</td><td>MCQ (4-option)</td><td>200</td><td>NO</td></tr><tr><td>ECG Arena</td><td>Multi-turn Conversation</td><td>Open-ended</td><td>50</td><td>NO</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents an overview of the nine datasets used in the ECGBench evaluation benchmark, specifying their task type, number of samples, and whether they are in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Datasets</td><td colspan="3">PTB-XL Super</td><td>PTB-XL Report</td><td colspan="3">CODE-15%</td><td>ECG-QA</td></tr><tr><td>Metric</td><td>AUC</td><td>F1</td><td>HL</td><td>Report Score</td><td>AUC</td><td>F1</td><td>HL</td><td>Accuracy</td></tr><tr><td>Random</td><td>50.3</td><td>33.2</td><td>50.1</td><td>0</td><td>48.8</td><td>15.0</td><td>32.1</td><td>16.2</td></tr><tr><td colspan="9">Domain-specific Methods</td></tr><tr><td>METS</td><td>-</td><td>65.7†</td><td>-</td><td>N/A</td><td>-</td><td>-</td><td>-</td><td>N/A</td></tr><tr><td>MERL</td><td>74.2t</td><td>-</td><td>-</td><td>N/A</td><td>-</td><td>-</td><td>、</td><td>N/A</td></tr><tr><td>ST-MEM</td><td>71.4†</td><td>-</td><td>-</td><td>N/A</td><td>-</td><td>-</td><td>-</td><td>N/A</td></tr><tr><td>ECG-GPT</td><td>69.5*</td><td>53.9*</td><td>20.1*</td><td>47.8*</td><td>68.9*</td><td>40.1*</td><td>17.4*</td><td>N/A</td></tr><tr><td colspan="9">Proprietary MLLMs</td></tr><tr><td>GPT-4o</td><td>55.6</td><td>28.3</td><td>26.2</td><td>50.2</td><td>59.9</td><td>24.9</td><td>15.7</td><td>35.2</td></tr><tr><td>GPT-4o mini</td><td>52.0</td><td>20.4</td><td>31.7</td><td>37.1</td><td>57.5</td><td>22.0</td><td>15.1</td><td>14.9</td></tr><tr><td>Gemini 1.5 Pro</td><td>50.7</td><td>15.3</td><td>27.9</td><td>35.9</td><td>56.7</td><td>20.0</td><td>15.9</td><td>33.2</td></tr><tr><td>Claude 3.5 Sonnet</td><td>54.0</td><td>27.5</td><td>29.6</td><td>43.7</td><td>58.3</td><td>20.3</td><td>17.8</td><td>34.2</td></tr><tr><td colspan="9">Open-source MLLMs</td></tr><tr><td>LLaVA-Med</td><td>50.0</td><td>12.3</td><td>28.1</td><td>24.3</td><td>69.2</td><td>27.0</td><td>33.4</td><td>29.5</td></tr><tr><td>LLaVA-1.5-7B</td><td>50.0</td><td>12.3</td><td>28.1</td><td>27.2</td><td>63.9</td><td>19.2</td><td>25.3</td><td>25.2</td></tr><tr><td>LLaVA-1.5-13B</td><td>50.0</td><td>35.2</td><td>48.4</td><td>20.7</td><td>53.9</td><td>13.1</td><td>13.6</td><td>21.2</td></tr><tr><td>LLaVA-1.6- Vicuna-7B</td><td>50.0</td><td>15.8</td><td>29.4</td><td>16.5</td><td>50.1</td><td>1.0</td><td>13.6</td><td>13.3</td></tr><tr><td>LLaVA-1.6- Vicuna-13B</td><td>50.0</td><td>20.1</td><td>38.3</td><td>5.9</td><td>53.0</td><td>3.6</td><td>16.6</td><td>22.0</td></tr><tr><td>LLaVA-1.6-34B</td><td>50.2</td><td>19.9</td><td>36.0</td><td>17.0</td><td>57.2</td><td>12.8</td><td>16.6</td><td>22.4</td></tr><tr><td>LLaVA-One Vision-7B</td><td>49.8</td><td>11.4</td><td>34.5</td><td>30.0</td><td>58.7</td><td>17.0</td><td>20.6</td><td>20.4</td></tr><tr><td>LLaVA-OneVision-72B</td><td>50.6</td><td>29.6</td><td>50.4</td><td>40.6</td><td>52.3</td><td>7.0</td><td>13.1</td><td>25.0</td></tr><tr><td>Deepseek-VL-Chat-7B</td><td>50.9</td><td>15.7</td><td>27.9</td><td>15.6</td><td>63.7</td><td>27.5</td><td>22.4</td><td>21.1</td></tr><tr><td>Idefics2-8B</td><td>50.7</td><td>21.9</td><td>31.2</td><td>10.6</td><td>49.0</td><td>17.9</td><td>47.9</td><td>26.1</td></tr><tr><td>Mantis-8B-siglip-Llama3</td><td>50.6</td><td>20.4</td><td>30.0</td><td>16.0</td><td>57.5</td><td>17.9</td><td>15.7</td><td>23.8</td></tr><tr><td>MiniCPM-V-2.6</td><td>49.0</td><td>37.7</td><td>63.8</td><td>15.4</td><td>56.6</td><td>25.3</td><td>22.0</td><td>20.8</td></tr><tr><td>Phi-3- Vision-128k-Instruct</td><td>50.0</td><td>29.6</td><td>48.4</td><td>20.2</td><td>69.6</td><td>22.6</td><td>38.8</td><td>28.4</td></tr><tr><td>Qwen2-VL-7B</td><td>51.3</td><td>22.4</td><td>30.8</td><td>43.0</td><td>60.7</td><td>24.8</td><td>20.5</td><td>20.4</td></tr><tr><td>Qwen2-VL-72B</td><td>54.0</td><td>28.3</td><td>30.2</td><td>48.9</td><td>60.6</td><td>23.6</td><td>16.1</td><td>23.7</td></tr><tr><td>Intern VL2-8B</td><td>50.6</td><td>14.3</td><td>27.8</td><td>38.1</td><td>55.8</td><td>16.1</td><td>17.7</td><td>22.3</td></tr><tr><td>Intern VL2-40B</td><td>51.2</td><td>18.7</td><td>34.6</td><td>41.8</td><td>56.7</td><td>16.2</td><td>17.4</td><td>18.2</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>50.4</td><td>9.4</td><td>35.6</td><td>41.4</td><td>59.0</td><td>20.2</td><td>20.5</td><td>21.8</td></tr><tr><td>PULSE-7B (Ours)</td><td>82.4</td><td>74.8</td><td>11.0</td><td>61.3</td><td>90.7</td><td>85.4</td><td>5.0</td><td>73.8</td></tr><tr><td>△ over best proprietary MLLM</td><td>+27</td><td>+47</td><td>+15</td><td>+11</td><td>+30</td><td>+61</td><td>+10</td><td>+39</td></tr><tr><td>△ over best open-source MLLM</td><td>+28</td><td>+37</td><td>+17</td><td>+12</td><td>+21</td><td>+58</td><td>+8</td><td>+44</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the in-domain evaluation results of different methods on several ECG interpretation tasks, comparing their performance in terms of AUC, F1 score, Hamming Loss, and Accuracy.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Datasets</td><td colspan="3">CPSC 2018</td><td>CSN</td><td>G12EC</td><td>MMMU ECG</td><td>ECG Arena</td></tr><tr><td>Metric</td><td>AUC</td><td>F1</td><td>HL</td><td>Accuracy</td><td>Accuracy</td><td>Accuracy</td><td>Arena Score</td></tr><tr><td>Random</td><td>51.2</td><td>15.1</td><td>28.8</td><td>11.6</td><td>12.1</td><td>24.2</td><td>0</td></tr><tr><td colspan="8">Domain-specific Methods</td></tr><tr><td>METS</td><td>-</td><td>-</td><td>-</td><td>N/A</td><td>N/A</td><td>N/A</td><td>N/A</td></tr><tr><td>MERL</td><td>82.8†</td><td>-</td><td>-</td><td>N/A</td><td>N/A</td><td>N/A</td><td>N/A</td></tr><tr><td>ST-MEM</td><td>70.4†</td><td>-</td><td>-</td><td>N/A</td><td>N/A</td><td>N/A</td><td>N/A</td></tr><tr><td>ECG-GPT</td><td>69.3*</td><td>44.0*</td><td>9.9*</td><td>N/A</td><td>N/A</td><td>N/A</td><td>N/A</td></tr><tr><td colspan="8">Proprietary MLLMs</td></tr><tr><td>GPT-4o</td><td>50.9</td><td>10.6</td><td>18.2</td><td>57.5</td><td>49.2</td><td>43.5</td><td>33.5</td></tr><tr><td>GPT-4o mini</td><td>49.2</td><td>11.0</td><td>25.5</td><td>32.1</td><td>33.2</td><td>39.5</td><td>30.1</td></tr><tr><td>Gemini-1.5-Pro</td><td>50.1</td><td>7.4</td><td>20.5</td><td>50.5</td><td>36.0</td><td>40.0</td><td>31.2</td></tr><tr><td>Claude 3.5 Sonnet</td><td>52.8</td><td>11.5</td><td>18.9</td><td>51.5</td><td>51.4</td><td>42.0</td><td>37.1</td></tr><tr><td colspan="8">Open-source MLLMs</td></tr><tr><td>LLaVA-Med</td><td>50.0</td><td>2.5</td><td>20.2</td><td>13.8</td><td>14.1</td><td>27.0</td><td>15.9</td></tr><tr><td>LLaVA-1.5-7B</td><td>50.0</td><td>2.5</td><td>20.0</td><td>32.1</td><td>25.4</td><td>33.0</td><td>12.7</td></tr><tr><td>LLaVA-1.5-13B</td><td>50.4</td><td>13.3</td><td>30.1</td><td>30.7</td><td>30.7</td><td>35.0</td><td>13.1</td></tr><tr><td>LLaVA-1.6-Vicuna-7B</td><td>50.5</td><td>19.7</td><td>66.0</td><td>23.7</td><td>23.3</td><td>28.0</td><td>16.0</td></tr><tr><td>LLaVA-1.6-Vicuna-13B</td><td>50.0</td><td>19.3</td><td>62.8</td><td>31.4</td><td>35.0</td><td>38.0</td><td>17.9</td></tr><tr><td>LLaVA-1.6-34B</td><td>49.6</td><td>19.3</td><td>62.8</td><td>44.3</td><td>45.9</td><td>31.0</td><td>17.5</td></tr><tr><td>LLaVA-OneVision-7B</td><td>49.6</td><td>8.0</td><td>28.3</td><td>23.3</td><td>25.7</td><td>26.0</td><td>22.5</td></tr><tr><td>LLaVA-OneVision-72B</td><td>51.5</td><td>12.8</td><td>29.4</td><td>44.0</td><td>42.6</td><td>35.0</td><td>15.5</td></tr><tr><td>Deepseek-VL-Chat-7B</td><td>50.7</td><td>6.0</td><td>20.0</td><td>35.7</td><td>32.9</td><td>34.5</td><td>15.3</td></tr><tr><td>Idefics2-8B</td><td>49.0</td><td>17.9</td><td>47.9</td><td>22.8</td><td>26.2</td><td>36.0</td><td>4.9</td></tr><tr><td>Mantis-8B-siglip-Llama3</td><td>51.3</td><td>19.1</td><td>48.5</td><td>17.6</td><td>22.6</td><td>38.5</td><td>13.6</td></tr><tr><td>MiniCPM-2.6</td><td>50.0</td><td>18.0</td><td>48.4</td><td>12.7</td><td>19.6</td><td>34.5</td><td>20.4</td></tr><tr><td>Phi-3-Vision-128k-Instruct</td><td>50.6</td><td>19.0</td><td>70.2</td><td>14.8</td><td>18.4</td><td>31.0</td><td>11.3</td></tr><tr><td>Qwen2-VL-7B</td><td>49.4</td><td>17.5</td><td>46.3</td><td>25.5</td><td>32.9</td><td>31.5</td><td>8.5</td></tr><tr><td>Qwen2-VL-72B</td><td>50.7</td><td>9.8</td><td>18.9</td><td>35.5</td><td>42.9</td><td>35.0</td><td>10.3</td></tr><tr><td>Intern VL2-8B</td><td>52.1</td><td>8.2</td><td>22.2</td><td>47.7</td><td>37.5</td><td>30.0</td><td>22.9</td></tr><tr><td>Intern VL2-40B</td><td>52.4</td><td>8.2</td><td>21.4</td><td>41.0</td><td>45.0</td><td>30.5</td><td>28.0</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>51.3</td><td>6.5</td><td>20.4</td><td>26.6</td><td>34.7</td><td>38.0</td><td>22.5</td></tr><tr><td>PULSE-7B (Ours)</td><td>76.9</td><td>57.6</td><td>8.6</td><td>85.2</td><td>78.2</td><td>58.0</td><td>38.9</td></tr><tr><td>D over best proprietary MLLM</td><td>+24</td><td>+46</td><td>+10</td><td>+28</td><td>+27</td><td>+15</td><td>+2</td></tr><tr><td>D over best open-source MLLM</td><td>+25</td><td>+38</td><td>+10</td><td>+38</td><td>+33</td><td>+20</td><td>+11</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Training Data</td><td>PTB-XL Super</td><td>PTB-XL Report</td><td>CSN</td><td>CODE-15</td><td>ECQ-QA</td><td>CPSC</td><td>G12</td><td>MMMU ECG</td><td>ECG Arena</td><td>AVG</td></tr><tr><td>P</td><td>68.2</td><td>56.7</td><td>82.8</td><td>31.5</td><td>31.8</td><td>23.4</td><td>65.4</td><td>40.0</td><td>28.4</td><td>-20.6</td></tr><tr><td>P + M</td><td>74.1</td><td>62.4</td><td>88.7</td><td>48.5</td><td>35.8</td><td>52.4</td><td>78.8</td><td>58.5</td><td>37.0</td><td>-8.6</td></tr><tr><td>P + M + C</td><td>74.1</td><td>63.8</td><td>87.5</td><td>85.8</td><td>43.4</td><td>51.0</td><td>75.5</td><td>55.5</td><td>39.4</td><td>-4.1</td></tr><tr><td>P + M + C + E</td><td>74.8</td><td>61.3</td><td>85.2</td><td>85.4</td><td>73.8</td><td>57.6</td><td>78.2</td><td>58.0</td><td>38.9</td><td>68.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 shows the details of each evaluation dataset in ECGBench, which contains both repurposed tasks from six existing datasets and newly created tasks from external resources.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Source Dataset</td><td>Task</td><td>Type</td><td># Samples</td></tr><tr><td rowspan="4">PTB-XL</td><td>Basic Feature Recognition</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>22,759 906 449 5,716</td></tr><tr><td>Heart Rhythm Analysis</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>19,550 201 436 16,179</td></tr><tr><td>Morphology and Pathology Identification</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>50,166 2,649 680 13,432</td></tr><tr><td>Clinical Report</td><td>Open-ended QA</td><td>16,302</td></tr><tr><td colspan="3">PTB-XL Total</td><td>149,425</td></tr><tr><td>ECG-QA</td><td>Basic Feature Recognition Heart Rhythm Analysis Morphology and Pathology Identification</td><td>Close-ended QA Close-ended QA Close-ended QA</td><td>40,154 8,993 90,211</td></tr><tr><td colspan="3">ECG-QA Total</td><td>139,358</td></tr><tr><td rowspan="4">MIMIC-ECG</td><td>Basic Feature Recognition</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>759 4,759 6,470 17,186</td></tr><tr><td>Heart Rhythm Analysis</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>48,625 5,262 11,487 49,352</td></tr><tr><td>Morphology and Pathology Identification</td><td>Close-ended QA Open-ended QA Fill-in-blank Multi-choice QA</td><td>8,241 81,080 18,264 61,456</td></tr><tr><td>Clinical</td><td>Open-ended QA</td><td>486,746</td></tr><tr><td colspan="3">MIMIC-ECG Total</td><td>799,687</td></tr><tr><td>CODE-15%</td><td>Basic Feature Recognition Heart Rhythm Analysis Morphology and Pathology Identification</td><td>Close-ended QA Close-ended QA Close-ended QA</td><td>22,177 13,893 31,570</td></tr><tr><td colspan="3">CODE-15% Total</td><td></td></tr><tr><td colspan="3"></td><td>67,640</td></tr><tr><td colspan="3">ECGInstruct Total</td><td>1,156,110</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 summarizes the ECGInstruct dataset, detailing the tasks, question types, and the number of samples for each task type across four different data sources.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Training Data Examples: Basic Feature Recognition</td></tr><tr><td>Instruction: What are the main ECG features I'm seeing here? Response: Let's break it down. We have a rhythm that appears to be irregular, with varying P-P intervals. The heart rate is not explicitly stated, but based on the ECG tracing, it seems to be within the normal range. The cardiac axis appears to be normal as well. One notable T T feature is the presence of an rSr' pattern in lead V1, which is likely a normal variant.  I + I  Additionally, we can see some nonspecific T wave changes in the septal leads. Follow-up Instruction: Can you explain the significance of the rSr' pattern in lead V1? Is it a cause for concern? Response: The rSr' pattern in lead V1 is often seen in healthy individuals, especially in younger people. It's considered a normal variant because it doesn't necessarily indicate any underlying cardiac pathology. The "r" represents a small initial positive deflection, followed by a larger negative deflection (the "S" wave), and then a secondary positive deflection (the "r'"). This pattern is thought to be related to the normal activation sequence of the right ventricle. Since it's isolated to lead V1 and doesn't appear to be associated with any other abnormalities, it's unlikely to be a cause for concern in this case.</td></tr><tr><td>Sub-task: Basic Waveform Understanding; Question type: Open-ended; Source dataset: MIMIC-IV-ECG</td></tr><tr><td>Instruction: What can be inferred about the heart's electrical conduction system based on this ECG? Options: A. There is a block in the electrical conduction pathway B. There is an abnormality in the heart's electrical conduction system C. The heart's electrical conduction system is functioning normally D. There is a rhythm disturbance Response: This image indicates that the heart's electrical conduction system is functioning normally, as there are no apparent abnormalities or disturbances in the electrical activity. The presence of a sinus rhythm and a normal axis suggests that the heart's electrical conduction system is operating within normal limits, without any significant defects or anomalies. This ECG image is consistent with a normal heart, and there is no evidence of any conduction system abnormalities. We can conclude that the answer is C. The heart's electrical conduction system is functioning normally</td></tr><tr><td>Sub-task: Conduction System Interpretation; Question type: Multi-choice QA; Source dataset: PTB-XL</td></tr><tr><td>Instruction: You are reviewing an ECG tracing in a clinical setting. Based on the ECG morphology, fill in the blanks: - This ECG tracing is most consistent with a rhythm of with a - cardiac axis of and a bundle branch block of the bundle. Response: ~ This ECG tracing is most consistent with a rhythm of atrial fibrillation, with a cardiac axis of left axis deviation, and a bundle branch block of the left bundle.</td></tr><tr><td>Sub-task: Axis and Rhythm Determination; Question type: Fill-in-the-blank; Source dataset: MIMIC-IV-ECG</td></tr><tr><td>Instruction: Given this ECG image, please answer the following question. From the provided options, select all that apply. List your selections, separated by slashes. Question: Which ECG leads are affected by baseline drift? Options: llead III, lead V2, none, lead V4, lead aVL, lead V5, lead V6, lead aVF, lead V3, lead aVR, lead V1, lead I, lead II. Provide the accurate response without additional details. Response:</td></tr><tr><td>lead aVF /lead V3</td></tr><tr><td>Sub-task: Lead Placement Determination; Question type: Close-ended QA; Source dataset: ECG-QA</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td colspan="2">Training Data Examples: Heart Rhythm Analysis</td></tr><tr><td>Instruction: Analyze the ECG image and identify the combination of cardiac rhythm abnormalities that can be diagnosed simultaneously in this patient. Rank the abnormalities in order of their potential impact on the patient's hemodynamic stability, with 1 being the most critical. Use a semicolon-separated list with the rhythm abnormality followed by its severity ranking Response: Sinus tachycardia; 1; Right bundle branch block; 3; Premature atrial contraction; 2; Premature ventricular contraction; 2. Justification: Sinus tachycardia is ranked as the most critical abnormality since it can output, increased myocardial oxygen demand, and potentially exacerbate underlying cardiac atrial contractions and premature ventricular contractions are ranked equally as they can both disrupt normal cardiac function, although their individual impact might be less severe than sinus tachycardia. Right bundle block, while still a significant abnormality, is ranked last as it may not have an immediate on hemodynamic stability, but rather serves as an indicator of underlying cardiac pathology.</td><td>lead to decreased cardiac conditions. Premature branch impact</td></tr><tr><td colspan="2">Sub-task: Rhythm Analysis; Question Type: Open-ended; Source Dataset: PTB-XL</td></tr><tr><td>Instruction: Imagine you're an ER doctor reviewing this ECG, what would be your primary concern regarding the patient's heart rhythm? Directly output one of the following options without explanation: Options: A) Tachycardia; B) Ventricular Fibrillation; C) Atrial Fibrillation; D) Bradycardia; E) Long QT Syndrome; F) First-Degree AV Block; G) Second-Degree AV Block; H) Normal Sinus Rhythm Response: D) Bradycardia</td><td></td></tr><tr><td colspan="2">Sub-task: Arrhythmia Identification; Question Type: Multi-choice QA; Source Dataset: MIMIC-IV-ECG</td></tr><tr><td>Instruction: If you were to categorize the ECG rhythm of this patient into one of the following options: Normal Sinus Rhythm, Atrial Fibrillation, Ventricular Tachycardia, or Sinus Rhythm with Premature Atrial Contractions, which one would you choose? Response: Sinus Rhythm with Premature Atrial Contractions</td><td>用 用 Tain Laugh  I</td></tr><tr><td colspan="2">Sub-task: Rhythm Classification; Question Type: Fill-in-the-blank; Source Dataset: PTB-XL</td></tr><tr><td>Instruction: As part of a heart health assessment, your task is to examine the ECG, identify all fitting options from the provided list, and enumerate them using semic⌀lon: 1dAVb(1st degree av block), RBBB(right bundle branch block), LBBB(left bundle branch block), SB(sinus bradycardia), ST(sinus tachycardia), 5 AF(atrial fibrillation). Only answer based on the given options without any explanation. Response: Don'th RBBB(right bundle branch block)</td><td>to 业 V5 Jown</td></tr><tr><td colspan="2">Sub-task: Conduction Abnormality Detection; Question Type: Close-ended QA; Source Dataset: CODE-15%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Prompt: Multi-task Data Synthesizing ECG Report: {report} Task Type: Present your work in this format: Task: [Concise content of the ECG tasks, including required output format. Do not include phrases like "Output format:... " or like "[Insert image here]", but in more natural expression. ] Response: [Comprehensive response following the task's requirements, strictly based on the report] Do not include any content outside of the Task and Response sections.</td></tr><tr><td>Your task: Create a complex ECG visual task based on the given report and target task type: Guidelines for task creation: 1. Design a concise yet challenging graduate-level task that requires deep reasoning. 2. Frame the task as interacting with an actual ECG image, without mentioning the report. Make the task visually centric, assuming direct ECG image analysis. 3. Strictly base all information on the given ECG report only. Avoid tasks and answers that are inconsistent with the report. 4. Avoid restating the report or using phrases like "As described in the report." 5. Generate one task from a diverse range of task types, including but not limited to: Direct questions (e.g. "What is the heart rhythm?") Hypothetical scenarios (e.g. "Imagine you're an ER doctor reviewing this ECG... ") Comparative tasks (e.g. "How does this ECG differ from a normal sinus rhythm?") Explanation requests (e.g. "Explain the significance of the QS complexes seen in V2. ") Problem-solving scenarios (e.g. "Given these ECG findings, what further tests might you order?") Educational prompts (e.g. "Teach a medical student about the key features of this ECG. ") Role-playing scenarios (e.g. "You're consulting with a cardiologist about this ECG. What do you tell them?") Decision-making tasks (e.g. "Based on this ECG, would you clear this patient for surgery? Why or why not?") 6. Specify a clear, appropriate output format within the task instructions(free-form, "think-step-by-step", direct output the short answer(in one phrase or one sentence), JSON format, table, list, different delimiters(such as commas, semicolons, numeric order), etc.). Do not limited to the given task type and format, you have the freedom to design any type of task you deem appropriate. 7. Focus the task on one or more of the following ECG analysis aspects: a. Basic ECG feature interpretation (e.g. heart rate, rhythm, cardiac axis) b. Diagnosis and classification (e.g. diagnosis identification, waveform classification, rhythm classification) c. Waveform and interval analysis (e.g. P wave morphology, PR interval, QT interval, QRS complexes, T wave morphology) 8. Ensure the task complexity aligns with the given report's information. After creating the task: 1. Provide a detailed, accurate answer to your own task. 2. Ensure your answer is comprehensive and strictly based on the report. 3. Strictly follow the output format and requirements specified in your task instructions. Target {target}</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt: Multi-turn Dialogue Synthesizing</td></tr><tr><td>Your task: Create a 2-4 turn dialogue between a medical professional and an AI assistant analyzing an ECG, based on the given report:</td></tr><tr><td>Guidelines for dialogue creation: 1. Design a series of questions and answers that progressively explore the ECG findings in depth, suitable for graduate-level medical professionals. 2. Frame the dialogue as if the medical professional is directly analyzing an actual ECG image, without mentioning the report. Make the conversation visually centric, assuming direct ECG image analysis. 3. Strictly base all information on the given ECG report only. Avoid including details inconsistent with the report. 4. Do not use phrases like "As described in the report, " "The report mentions," or "The term... " The dialogue should not appear to reference an external report. 5. Begin with direct questions about basic ECG features, then progress to more complex interpretations and clinical implications. 6. Include a mix of question types, with an emphasis on direct questions: - Direct questions (e.g., "What are the main ECG features?", "What is the heart rhythm?") - Requests for explanations (e.g., "Can you explain the significance of the QS complexes?", "What the cause of these features?") - Clinical reasoning questions (e.g., "Given these findings, what's your diagnosis?") - Hypothetical scenarios (e.g., "How would you manage a patient presenting with this ECG?") 7. Focus the dialogue on one or more of the following ECG analysis aspects: a. Basic ECG feature interpretation (e.g., heart rate, rhythm, cardiac axis) b. Diagnosis and classification (e.g. diagnosis identification, waveform classification, rhythm classification) C. Waveform and interval analysis (e.g. P wave morphology, PR interval, QT interval, QRS complexes, T wave morphology) d. Clinical implications and management 8. Ensure the dialogue complexity aligns with the given report's information. After creating the dialogue: 1. Provide extremely comprehensive and detailed answers from the AI assistant's perspective. Each response should thoroughly cover all relevant aspects of the question asked. 2. Ensure all answers are comprehensive and strictly based on the report, without explicitly referencing it. 3. Make the dialogue flow naturally, as if a real user is progressively exploring the ECG findings. 4. Structure the AI assistant's responses to be highly readable: - Break down complex information into digestible parts. - Use bullet points or numbered lists to organize information - Include brief explanations of medical terms or concepts when necessary - Provide context for why certain findings are significant Aim for a balance between depth of information and clarity of presentation in each response.</td></tr><tr><td></td></tr><tr><td>ECG Report: {report}</td></tr><tr><td>Present your work in this format: Human: [First question about the ECG]</td></tr><tr><td>Assistant: [Comprehensive response based strictly on the report]</td></tr><tr><td>Human: [Follow-up question delving deeper into the ECG analysis]</td></tr><tr><td>Assistant: [Detailed answer providing further insights]</td></tr><tr><td></td></tr><tr><td>[Continue the dialogue for up to 2 more turns if necessary, ensuring a natural progression of inquiry] Do not include any content outside of the dialogue format. Ensure that the entire conversation appears to be about analyzing an actual ECG image, without any indication that the information comes from a written report.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in the ECGBench benchmark, specifying the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Prompt: Report Revision</td></tr><tr><td>I will provide you with an ECG report. Please expand the report into a comprehensive and detailed version, considering all aspects mentioned in the original report. The expanded version should be at least 4 sentences long. Ensure that you elaborate on each point from the original report, providing more context and explanation where possible. Do not add any new content, interpretations, or conclusions beyond what is explicitly stated in the original report. Avoid using phrases like "Here is the revised report" or similar introductions. Simply begin with the expanded content.</td></tr><tr><td>Original Report: {report}</td></tr><tr><td>Expanded Report:</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, specifying the task type, number of samples, and whether each dataset is considered in-domain or out-of-domain for evaluation.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Prompt: Instruction Data Scoring</td></tr><tr><td>Task: Given an ECG report and a corresponding question-answer pair, score the quality of the answer based on the guidelines provided. The score should range from 0 to 5, where 0 represents poor quality and 5 represents excellent quality. You should be strict when giving the final assessment if some of the criteria are not satisfied. Please consider the following criteria for scoring: 1. Relevance: Does the answer directly address the question asked? 4. Constructed Information: Does the answer invent details not present in the ECG report? 5. Presence of Direct Report Quotation: A good answer does not simply quote or directly replicate phrases from the ECG report. It should assume that the questioner does not know the report's specific content. The presence of direct report quotations is not allowed in the answer, otherwise, the overall scores should be at most 2.</td></tr><tr><td>2. Accuracy: Is the information in the answer accurate and consistent with the ECG report? 3. Usefulness: Does the answer provide helpful information that would aid understanding or decision-making based on the ECG report?</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>Output format: Please first output a single line containing a comprehensive explanation of your evaluation, avoiding any potential bias. In the subsequent line, please provide the value indicating the scores in the format: "Score: [your rating score]"</td></tr><tr><td>the following ECG report and question-answer</td></tr><tr><td>Please apply the above scoring guide to pair:</td></tr><tr><td>ECG Report: {report}</td></tr><tr><td>Question: {question}</td></tr><tr><td>Answer: {answer}</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, specifying the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt: Evaluation of Report Generation</td></tr><tr><td>Evaluate the alignment and quality of a generated ECG report by comparing it to a ground truth clinician's report. The evaluation will focus on three key aspects: Diagnosis, Waveform, and Rhythm. Use specific criteria for each aspect and be precise in comparing medical terminologies. Only focus on information present in the ground truth report, identifying any mistakes. Remain objective and do not let the response length affect your evaluation. Evaluation Criteria: 1. Diagnosis (0-10): Assess how well the generated ECG report matches the clinical diagnoses in the ground truth report. Focus on conditions like conduction disturbances, ischemia, hypertrophy, and other abnormalities as presented in the ground truth report. - 10: All key diagnoses are correctly identified with no errors or omissions. - 5: Partially accurate, with some diagnoses identified correctly but key conditions missing or incorrect. - 0: Fails to identify key diagnoses, with multiple critical errors.</td></tr><tr><td>2. Waveform (0-10): Evaluate the accuracy and quality of the ECG waveform morphology in the generated report compared to the ground truth. Focus on abnormalities in P-wave, QRS complex, ST changes, T-wave, and intervals (PR, QT), ensuring waveform morphology is consistent with the ground truth. - 10: All waveform abnormalities are correctly identified without errors. - 5: Some waveform abnormalities are identified, but key issues are missed or misinterpreted. - 0: Fails to identify key waveform abnormalities, with multiple critical errors.</td></tr><tr><td>3. Rhythm (0-10): Assess the accuracy and clarity of rhythm interpretation in the generated report. Focus on identifying and describing normal and abnormal rhythms (e.g., sinus rhythm, atrial fibrillation, ventricular tachycardia) as presented in the ground truth report. - 10: Rhythm interpretation is fully accurate and clearly described. - 5: Rhythm interpretation is partially accurate but contains notable errors or omissions. - 0: Rhythm interpretation is largely incorrect, with critical errors. Please organize your output in a JSON format of diagnosis, form and rhythm, with a brief explanation of each aspect. For example: {Diagnosis: {Score: $SCORE$, Explanation: $EXPLANATION$}} [The Start of Ground Truth Report] {ground_ truth_report} [The End of Ground Truth Report] [The Start of Generated Report] {generated_report} [The End of Generated Report]</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, categorized by task type (abnormality detection, report generation, multimodal understanding, and multi-turn conversation) and whether they are in-domain or out-of-domain datasets.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt: Evaluation of ECG Arena</td></tr><tr><td>Evaluate the quality of a model's response to an ECG-related question by comparing it with a given ground truth answer. Focus on three aspects: accuracy, completeness, and instruction adherence. Be precise and objective, especially when identifying errors in medical terminology. Do not let the response length affect your evaluation. Evaluation Criteria: 1. Accuracy (0-10): How well does the model's response match the ground truth, particularly in ECG interpretation and diagnosis? This score emphasizes whether the key information is correct, such as the correct identification of waveforms, intervals, and clinical diagnoses. - 10: Fully accurate, with correct ECG interpretation, terminology, and diagnosis. - 5: Partially accurate, with some correct information but notable errors or omissions. - 0: Largely inaccurate or misleading.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>2. Completeness (0-10): points missing. - 0: Instruction Adherence (0-10):</td></tr><tr><td>Does the response cover essential aspects of ECG interpretation (e.g., rhythm, axis, waveforms, clinical causes) mentioned in the ground truth? This score focuses on whether the answer is comprehensive and includes as much essential information as possible. - 10: Comprehensive, covering all key details. - 5: Partially complete, with important Incomplete, lacking critical information.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>3. Does the model follow the specific in the question (e.g., listing features, suggesting well the model follows the</td></tr><tr><td>instructions a diagnosis)? This score focuses on how task instructions, regardless of the correctness of the answer. - 10: Fully follows instructions. - 5: Partially follows instructions, with some deviations. - 0: Fails to follow instructions or provides an irrelevant response. Please organize your output in a JSON format of accuracy, completeness, and instruction adherence, with a brief explanation of each aspect. For example: {Accuracy: {Score: $SCORE$, Explanation: $EXPLANATION$}}</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>[The Start of Ground Truth Answer] {ground_ truth_answer} [The End of Ground Truth Answer]</td></tr><tr><td></td></tr><tr><td>[The of Model's Response]</td></tr><tr><td>Start</td></tr><tr><td>{model_response}</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>[The End of Model's Response</td></tr><tr><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, specifying their task type, number of samples, and whether they are in-domain or out-of-domain.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Case Study: PTB-XL Report</td></tr><tr><td>Question: Please write a clinical report based on this ECG image. 11 Ground Truth Report: Sinus rhythm. Prolonged PR interval. R-S transition zone in V leads displaced to the left. Voltages  are high in limb leads suggesting left ventricular hypertrophy (LVH). ST segments are depressed in leads I, II, aVL, V5, and V6. T waves are flat in these leads. Non-specific but consistent with myocardial changes.</td></tr><tr><td>PULSE Response: The electrocardiogram (ECG) reveals a sinus rhythm, indicating that the heart is beating in a regular, rhythmic pattern, with a normal heart rate and P-wave morphology. The PR interval is prolonged, measuring longer than the normal range of 120-200 milliseconds, suggesting a delay in the conduction of electrical impulses from the atria to the ventricles. This prolongation may be indicative of a first-degree atrioventricular (AV) block, which can be a benign finding but may also be associated with underlying cardiac conditions. The ECG also demonstrates high voltages in the limb leads, specifically leads I, II, and III, which is suggestive of left ventricular hypertrophy (LVH). This finding is consistent with an increase in the thickness of the left ventricular wall, which can be a response to chronic pressure overload or volume overload. The ST segments are depressed in leads I, II, aVL, V5, and V6, indicating a possible alteration in the repolarization pattern of the ventricles. This depression may be indicative of left ventricular strain or ischemia, which can be a sign of myocardial injury or infarction. Furthermore, the T waves are low or flat in leads I, II, aVL, V5, and V6, which may be a manifestation of left ventricular strain or ischemia. The combination of these findings, including the prolonged PR interval, high voltages in the limb leads, and ST segment depression, suggests that the patient may be experiencing myocardial ischemia, which is a condition where the heart muscle does not receive sufficient blood flow, leading to a mismatch between oxygen demand and supply. In conclusion, based on the ECG findings, the diagnosis is consistent with myocardial ischemia, left ventricular hypertrophy, T wave abnormality, prolonged PR interval, and sinus rhythm.</td></tr><tr><td>LLM-as-Judge Feedback for PULSE Response: 1. Diagnosis Score: 10. Explanation: The generated report correctly identifies all key diagnoses present in the ground truth report, including sinus rhythm, prolonged PR interval, left ventricular hypertrophy (LVH), ST segment depression, and T wave abnormalities. The interpretation of these findings as consistent with myocardial ischemia is also accurate. 2. Form Score: 10. Explanation: The generated report accurately describes the waveform abnormalities, including the prolonged PR interval, high voltages in the limb leads, ST segment depression in leads I, II, aVL, V5, and V6, and flat T waves in these leads. These descriptions match the ground truth report precisely. 3. Rhythm Score: 10. Explanation: The generated report correctly identifies the rhythm as sinus rhythm, which is consistent with the ground truth report. The description of the rhythm is clear and accurate. Final Score: (10+10+10)/3 * 10 = 100</td></tr><tr><td>GPT-4o Response: Clinical Report: Electrocardiogram (ECG) ECG Interpretation: Heart Rate: The heart rate appears to be within normal limits. Precise calculation of the heart rate is recommended for confirmation. Rhythm: The rhythm appears to be regular. There are consistent R-R intervals, suggesting a regular sinus rhythm. P Waves: P waves are present before each QRS complex, indicating sinus rhythm. The morphology of the P waves appears normal. PR Interval: The PR interval appears to be within normal limits (120-200 ms). QRS Complex: The QRS duration appears to be within normal limits (less than 120 ms). There is no evidence of significant QRS complex abnormalities such as bundle branch block. ST Segment: The ST segments appear to be is⌀electric (flat) in most leads, with no significant elevation or depression noted. T Waves: T waves appear to be upright in leads I, II, V3-V6, and inverted in aVR, which is normal. There are no significant T wave abnormalities noted. Axis: The QRS axis appears to be normal. The exact axis calculation is recommended for confirmation. Additional Observations: There are no significant signs of ischemia, infarction, or other acute changes. No evidence of left ventricular hypertrophy or other chamber enlargement. Conclusion: This ECG shows a normal sinus rhythm with no significant abnormalities. The patient's ECG is within normal limits for her age and clinical presentation.</td></tr><tr><td>LLM-as-Judge Feedback for GPT-4o Response: 1. Diagnosis Score: 0. Explanation: The generated report fails to identify key diagnoses present in the ground truth report. It does not mention the prolonged PR interval, left ventricular hypertrophy (LVH), ST segment depression, or flat T waves. Instead, it incorrectly states that there are no significant signs of ischemia, infarction, or other acute changes, and no evidence of left ventricular hypertrophy. 2. Form Score: 0. Explanation: The generated report inaccurately describes the waveform morphology. It incorrectly states that the PR interval is within normal limits, fails to identify the high voltages in limb leads, and does not mention the ST segment depression or flat T waves. These are critical waveform abnormalities that are present in the ground truth report. 3. Rhythm Score: 5. Explanation: The generated report correctly identifies a regular sinus rhythm, which is consistent with</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, detailing the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Case Study: PTB-XL Report</td></tr><tr><td>Question: Please write a clinical report based on this ECG image. Ground Truth Report: Sinus rhythm. T waves are low or flat in V3, V4, V5 and slightly inverted in V2. Non-specific but consistent with myocardial ischemia. The age of the changes is uncertain.</td></tr><tr><td>PULSE Response: The electrocardiogram (ECG) reveals a normal sinus rhythm, characterized by a regular heartbeat with a rate between 60-100 beats per minute, indicating that the heart's natural pacemaker, the sin⌀atrial (SA) node, is functioning properly. The axis of the heart's electrical activity is also within normal limits, suggesting that the electrical impulses are being conducted through the heart in a normal and coordinated manner. However, the ST segment and T waves exhibit abnormalities, which may be indicative of myocardial ischemia or strain, particularly in the anterior region of the heart. This could be a sign of reduced blood flow to the heart muscle, potentially leading to damage or even necrosis of the myocardial tissue. The presence of these abnormalities in the ST segment and T waves suggests that the heart is under stress, which may be caused by a variety of factors, including coronary artery disease, hypertension, or cardiomyopathy. Overall, the diagnosis based on this ECG report is sinus rhythm with ST changes, indicating that the heart is functioning normally in terms of rhythm, but is exhibiting signs of potential myocardial ischemia or strain.</td></tr><tr><td>LLM-as-Judge Feedback for PULSE Response: 1. Diagnosis Score: 8. Explanation: The generated report correctly identifies the sinus rhythm and the presence of abnormalities in the ST segment and T waves, which are consistent with myocardial ischemia. However, it does not specifically mention the low or flat T waves in V3, V4, V5, and the slightly inverted T wave in V2, which are key details in the ground truth report. 2. Form Score: 7. Explanation: The generated report accurately identifies the presence of ST segment and T wave abnormalities, which are indicative of myocardial ischemia. However, it lacks the specific details about the T wave morphology in V2, V3, V4, and V5, which are crucial for a precise comparison with the ground truth report. 3. Rhythm Score: 10. Explanation: The generated report correctly identifies the sinus rhythm and provides a clear and accurate description of the heart's rhythm, matching the ground truth report. Final Score: (8+7+10)/3 * 10 = 83.3</td></tr><tr><td>GPT-4⌀ Response: ECG Interpretation: 1. Heart Rate: The heart rate is approximately 75 beats per minute, which is within the normal range (60-100 bpm). 2. Rhythm: The rhythm appears to be regular with consistent R-R intervals, indicating a normal sinus rhythm. 3. P Waves: P waves are present before each QRS complex, indicating normal atrial depolarization. The P wave morphology is normal. 4. PR Interval: The PR interval is within the normal range (120-200 ms), suggesting normal atrioventricular conduction. 5. QRS Complex: The QRS duration is within the normal range (less than 120 ms), indicating normal ventricular depolarization. There are no significant Q waves observed, which rules out previous myocardial infarction. 6. ST Segment: The ST segments are is⌀electric (flat) in all leads, indicating no signs of acute ischemia or injury. 7. T Waves: T waves are upright in leads I, II, V3-V6, and inverted in aVR, which is a normal finding. There are no signs of T wave inversion or hyperacute T waves. 8. QT Interval: The QT interval appears to be within the normal range (less than 440 ms for males and less than 460 ms for females), indicating no prolonged QT syndrome. 9. Axis: The QRS axis is normal, approximately 0 to +90 degrees. 10. Additional Observations: No evidence of left or right ventricular hypertrophy. No signs of bundle branch block or other conduction abnormalities. Conclusion: The ECG findings are within normal limits. There are no signs of acute ischemia, infarction, or other significant cardiac abnormalities. The patient has a normal sinus rhythm with normal atri⌀ventricular and intraventricular conduction.</td></tr><tr><td>LLM-as-Judge Feedback for GPT-4o Response: 1. Diagnosis Score: 0. Explanation: The generated report fails to identify the key diagnosis of myocardial ischemia indicated by the T wave abnormalities in the ground truth report. It incorrectly concludes that there are no signs of acute ischemia or other significant cardiac abnormalities. 2. Form Score: 0. Explanation: The generated report does not mention the low or flat T waves in V3, V4, V5, and the slightly inverted T waves in V2, which are critical waveform abnormalities noted in the ground truth report. Instead, it incorrectly states that T waves are upright in V3-V6 and does not acknowledge any T wave inversion. 3. Rhythm Score: 10. Explanation: The generated report correctly identifies the rhythm as normal sinus rhythm, which is consistent with the ground truth report. Final Score: (0+0+10)/3 * 10 = 33.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, specifying the type of task, number of samples, and whether each dataset is in-domain or out-of-domain.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Case Study: PTB XL Report</td></tr><tr><td>Question: Please write a clinical report based on this ECG image. 5~1~ thanderning Ground Truth Report: 小 FREENTING sinus arrhythmia, left axis deviation, left anterior hemiblock, right bundle branch block, bifascicular block, abnormal QRS(T), possible lateral myocardial damage ? 1011 ����</td></tr><tr><td>PULSE Response: The electrocardiogram (ECG) reveals a sinus arrhythmia, characterized by an irregular heart rhythm with varying intervals between beats, originating from the sin⌀atrial node. This arrhythmia is often benign and can be influenced by factors such as respiration, with heart rate increasing during inhalation and decreasing during exhalation. The ECG also demonstrates an overdriven left type, indicating that the left ventricle is dominant in the cardiac conduction system, which can be a normal variant or associated with certain cardiac conditions. Furthermore, the ECG shows evidence of left anterior hemiblock, a conduction defect affecting the anterior fascicle of the left bundle branch, resulting in delayed activation of the anterior wall of the left ventricle. This can be a sign of underlying cardiac disease or injury. Additionally, the presence of right bundle branch block is noted, indicating a conduction defect affecting the right bundle branch, leading to delayed activation of the right ventricle. The combination of left anterior hemiblock and RBBB is consistent with bifascicular block, a condition where two of the three main fascicles of the cardiac conduction system are affected. The ECG also reveals a left axis deviation, indicating that the electrical axis of the heart is shifted to the left, which can be a normal variant or associated with certain cardiac conditions such as left ventricular hypertrophy or cardiomyopathy. Overall, the ECG findings are consistent with a diagnosis of left axis deviation, sinus arrhythmia, left anterior fascicular block, and right bundle branch block.</td></tr><tr><td>LLM as Judge Feedback for PULSE Response: 1. Diagnosis Score: 7. Explanation: The generated report correctly identifies sinus arrhythmia, left axis deviation, left anterior hemiblock, and right bundle branch block. It also correctly identifies the combination of left anterior hemiblock and RBBB as bifascicular block. However, it fails to mention 'abnormal QRS(T)' and 'possible lateral myocardial damage,' which are key diagnoses. 2. Form Score: 5. Explanation: The generated report accurately describes the conduction defects (left anterior hemiblock, right bundle branch block) and left axis deviation. However, it does not address 'abnormal QRS(T)' and 'possible lateral myocardial damage,' which are critical waveform abnormalities mentioned in the ground truth report. 3. Rhythm Score: 10. Explanation: The generated report provides a detailed and accurate description of sinus arrhythmia, including its characteristics and potential influences. This matches the rhythm interpretation in the ground truth report. Final Score: (7+6+10)/3 * 10 = 73</td></tr><tr><td>GPT 4o Response: Clinical Report: Electrocardiogram (ECG) Analysis: 1. Heart Rate and Rhythm: Heart Rate: Approximately 75 beats per minute (bpm). Rhythm: Sinus rhythm is present, as indicated by the presence of P waves before each QRS complex and a consistent PR interval. 2. Intervals and Durations: PR Interval: 152 ms (within normal range: 120 200 ms). QRS Duration: 125 ms (slightly prolonged; normal range: 80 120 ms). QT Interval: 421 ms (QT interval, QTcB: 447.5 ms, QTcF: 439.0 ms; within normal limits for QTc). 3. Axis: QRS Axis: 72.0 degrees (left axis deviation). P Axis: 71.5 degrees. T Axis: 73.0 degrees. 4. Waveform Analysis: P Waves: Normal morphology, consistent in all leads. QRS Complexes: Slightly widened, indicating a possible intraventricular conduction delay. ST Segment: No significant elevation or depression noted. T Waves: Normal morphology, no inversion or significant abnormalities observed. 5. Additional Observations: Lead V1 V6: Normal R wave progression. No evidence of acute ischemia or infarction. No significant arrhythmias detected. Conclusion: The ECG shows a sinus rhythm with a heart rate of approximately 75 bpm. There is a slight prolongation of the QRS duration, suggesting a possible intraventricular conduction delay. The QRS axis is deviated to the left. No acute ischemic changes or significant arrhythmias are noted. The overall findings are within normal limits, with minor deviations that may warrant further clinical correlation and follow up.</td></tr><tr><td>LLM as Judge Feedback for GPT 4o Response: 1. Diagnosis Score: 5. Explanation: The generated report correctly identifies left axis deviation but misses several key diagnoses present in the ground truth report, such as sinus arrhythmia, left anterior hemiblock, right bundle branch block, bifascicular block, abnormal QRS(T), and possible lateral myocardial damage. The generated report mentions a possible intraventricular conduction delay, which is not explicitly stated in the ground truth report. 2. Form Score: 5. Explanation: The generated report correctly identifies the left axis deviation and slightly prolonged QRS duration. However, it fails to identify the abnormal QRS(T) and possible lateral myocardial damage mentioned in the ground truth report. The generated report also does not mention any abnormalities in the P-wave, ST changes, or T-wave, which are critical for a comprehensive waveform analysis. 3. Rhythm Score: 5. Explanation: The generated report identifies a sinus rhythm but misses the sinus arrhythmia mentioned in the ground truth report. The generated report does not identify any significant arrhythmias, which is a notable omission given the ground truth report's mention of sinus arrhythmia. Final Score: (5+5+5)/3 * 10 = 50</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the nine datasets used in ECGBench, specifying the task type, number of samples, and whether each dataset is in-domain or out-of-domain.


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
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}