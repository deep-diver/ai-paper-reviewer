---
title: "Minimum Tuning to Unlock Long Output from LLMs with High Quality Data as the Key"
summary: "High-quality data, not sheer volume, is key to unlocking LLMs' potential for generating long, coherent outputs, as demonstrated by significant performance improvements with minimal tuning."
categories: ["AI Generated"]
tags: ["🔖 24-10-14", ]
showSummary: true
date: 2024-10-14
draft: false
---

{{< keyword >}} 2410.10210 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper investigates the challenge of generating long, coherent text outputs from large language models (LLMs).  The authors argue that the current limitation stems from a lack of high-quality, long-output data in the training datasets.  They demonstrate that by carefully curating a small dataset that aligns well with the task of long-form text generation, they can achieve significant performance improvements with minimal tuning effort.  They tested their approach on several LLMs, consistently showing notable improvements in both the length and quality of generated text.  The study's key contribution is identifying data quality as a critical factor for long-output generation, suggesting a more efficient approach than existing methods which prioritize data quantity.  Their findings suggest that human-aligned models provide a good starting point for tuning towards the long-output task, and show that the quality of data trumps quantity in achieving this goal.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.10210" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.10210" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it offers a novel approach to improving LLMs' ability to generate long outputs.  It challenges the existing methods by highlighting the importance of data quality over quantity, which could significantly reduce the computational cost and improve efficiency in model training.  The findings also open avenues for further investigation into data curation techniques for specific LLM tasks and explore alternative model training strategies.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} High-quality data is crucial for training LLMs to generate long outputs, even more so than a large amount of data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Starting with a human-aligned model for fine-tuning reduces training costs and achieves better performance in long-form text generation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A small, carefully curated dataset (666 samples) can significantly improve an LLM's long-form writing capabilities. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.10210/figures_7_0.png)

> 🔼 The figure compares the correlation between required and actual output lengths for different datasets after data refinement steps.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different dataset's 'length-following' characteristics.
> </details>





![](https://ai-paper-reviewer.com/2410.10210/charts_3_0.png)

> 🔼 The chart shows the dataset size reduction of LongWriter-6K after removing two categories of suboptimal data entries, resulting in LongWriter-6K-filtered.
> <details>
> <summary>read the caption</summary>
> Figure 1: Two-Stage Data Refinement on LongWriter-6K
> </details>





{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td>Training data and epoch setup</td><td>s (avg)</td><td>SL</td><td>SQ</td><td>Improvement</td></tr><tr><td>Qwen2-7B-Instruct</td><td>-</td><td>67.4</td><td>48.92</td><td>85.87</td><td>-</td></tr><tr><td>Setup 1</td><td>LongWriter-6k with 1:1 mixing ratio of alignment data(6k), trained for 2 epochs</td><td>66.38</td><td>52.76</td><td>80.00</td><td>-1.02 pt</td></tr><tr><td>Setup 2</td><td>LongWriter-6k with 1:30 mixing ratio of alignment data(180k), trained for 1 epoch</td><td>72.02</td><td>64.59</td><td>79.44</td><td>+4.62 pt</td></tr><tr><td>Setup 3</td><td>LongWriter-6k-filtered only, trained for 4 epochs</td><td>76.62</td><td>70.44</td><td>82.8</td><td>+9.22 pt</td></tr><tr><td>Setup 4</td><td>LongWriter-6k-filtered with 1:20 mixing ratio of alignment data(13k), trained for 2 epochs</td><td>79.51</td><td>75.61</td><td>83.4</td><td>+12.1 pt</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of tuning the Qwen2-7B-Instruct model using different training data and epoch setups, showing the average score (S), output length score (SL), output quality score (SQ), and performance improvement compared to a baseline.
> <details>
> <summary>read the caption</summary>
> Table 1: Tuning Qwen2-7B-Instruct with various setups for long-writing task.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.10210/charts_3_1.png)

> 🔼 Figure 2 shows a comparison of the length-following characteristics of different datasets after applying filtration of Category 1 and 2 data entries, illustrating the improved correlation between required and actual output lengths after data refinement.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different dataset's 'length-following' characteristics.
> </details>


![](https://ai-paper-reviewer.com/2410.10210/charts_5_0.png)

> 🔼 The chart compares the length-following characteristics of the original Qwen2-7B-Instruct model and the fine-tuned MS-LongWriter-Qwen2-7B-Instruct model, showing improved adherence to the instructed length in the latter.
> <details>
> <summary>read the caption</summary>
> Figure 3: Improvement on \'length-following\' characteristics on Qwen2-7B-Instruct.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td></td><td>Training data and epoch setup</td><td>s (avg) SL SQ</td><td>Improvement</td></tr><tr><td>GLM4-9b-Chat</td><td>-</td><td>67.8 52.8 82.78</td><td>-</td></tr><tr><td>LongWriter-GLM4-9B[7, 8]</td><td>Trained from GLM-4-9B[11] with LongWrite-6k plus 1:30 mixing ratio using entire GLM chat SFT dataset (180k), trained for 4 epochs</td><td>80.5 78.6 82.3</td><td>+12.7 pt</td></tr><tr><td>Setup 4</td><td>LongWriter-6k-filtered with 1:20 mixing ratio of alignment data (13k), trained for 2 epochs</td><td>79.88 77.42 82.33</td><td>+12.08 pt</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of tuning the GLM4-9b-Chat model using different training data setups and compares the performance to the original LongWriter model.
> <details>
> <summary>read the caption</summary>
> Table 2: Tuning GLM4-9b-Chat with various setups for long-writing task.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td></td><td>Training data and epoch setup</td><td>s (avg)</td><td>SL</td><td>SQ</td><td>Improvement</td></tr><tr><td>Qwen2. 5-7B-Instruct</td><td>-</td><td>75.79</td><td>66.4</td><td>85.17</td><td>-</td></tr><tr><td>Setup 4</td><td>LongWriter-6k-filtered with 1:20 mixing ratio of alignment data (13k), trained for 2 epochs</td><td>79.88</td><td>77.42</td><td>82.33</td><td>+4.75 pt</td></tr><tr><td>Setup 5</td><td>Based on Setup 4, introduce additional annealing with learning rate of 2e - 6 using LongWriter-6k-filtered for another 2 epochs</td><td>82.84</td><td>81.24</td><td>84.44</td><td>+7.05 pt</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the performance of the Qwen2.5-7B-Instruct model fine-tuned using different training data and epoch setups for long-form text generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Tuning Qwen2.5-7B-Instruct with various setups for long-writing task.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.10210/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.10210/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}