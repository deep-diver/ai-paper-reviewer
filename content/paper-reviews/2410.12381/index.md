---
title: "HumanEval-V: Evaluating Visual Understanding and Reasoning Abilities of Large Multimodal Models Through Coding Tasks"
summary: "HumanEval-V: A new benchmark rigorously evaluates large multimodal models' visual understanding and reasoning abilities through carefully designed coding tasks, revealing significant limitations in cu..."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", "🤗 24-10-17"]
showSummary: true
date: 2024-10-16
draft: false
---

### TL;DR


{{< lead >}}

This research introduces HumanEval-V, a benchmark designed to rigorously test the visual understanding and reasoning capabilities of large multimodal models (LMMs) by using coding tasks.  These tasks require models to generate code solutions based on images and text prompts, emphasizing visual reasoning. The researchers carefully crafted 108 Python coding tasks, adapting existing problems and redrawing visuals to prevent data leakage.  They evaluated 19 state-of-the-art LMMs, including both proprietary and open-source models.  Results showed that even leading proprietary models struggled, achieving only around 13% accuracy on the first try and 36% accuracy after multiple attempts. Open-source models performed significantly worse.  The study also found that current LMMs struggle to integrate visual and textual information effectively, and often overfit to previous training data. This suggests that significant improvement is needed in visual reasoning and code generation capabilities of LMMs. The benchmark and code are publicly available.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12381" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12381" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large multimodal models (LMMs) and visual reasoning.  It introduces a novel benchmark, HumanEval-V, addressing a critical gap in evaluating LMM coding abilities with visual context. The findings highlight significant challenges in current LMMs' visual reasoning and coding skills, opening new avenues for research and model improvement.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HumanEval-V, a novel benchmark, evaluates LMMs' visual reasoning and coding abilities via code generation tasks incorporating visual contexts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current LMMs struggle significantly with visual reasoning in coding tasks, especially open-source models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark reveals a gap between proprietary and open-source LMMs in performance, highlighting areas for future research. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png)

> 🔼 The figure illustrates the four-stage HumanEval-V benchmark construction pipeline, which includes data collection, adaptation, mutation, and validation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The HumanEval-V construction pipeline, with representative examples for each stage.
> </details>





![](charts/charts_7_0.png)

> 🔼 The chart displays the correlation between HumanEval-V pass@10 scores and three other multimodal benchmarks (MMMU, MathVista, and MMVet), illustrating the unique challenges posed by HumanEval-V.
> <details>
> <summary>read the caption</summary>
> Figure 4: Correlation analysis between HumanEval-V pass@10 results and three popular multimodal benchmarks spanning multidisciplinary abilities.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td rowspan="2">LMMs</td><td rowspan="2">Params</td><td colspan="2">Pars. Rate</td><td colspan="2">pass@k</td></tr><tr><td>k=1</td><td>k=10</td><td>k=1</td><td>k=10</td></tr><tr><td colspan="6">Proprietary</td></tr><tr><td>GPT-4o</td><td></td><td>97.2</td><td>98.0</td><td>13.0</td><td>36.4</td></tr><tr><td>GPT-4o-mini</td><td></td><td>100</td><td>99.8</td><td>6.5</td><td>15.4</td></tr><tr><td>Claude 3.5 Sonnet</td><td></td><td>99.1</td><td>99.0</td><td>18.5</td><td>25.9</td></tr><tr><td>Gemini 1.5 Pro</td><td></td><td>97.2</td><td>97.5</td><td>10.2</td><td>22.2</td></tr><tr><td>Gemini 1.5 Flash</td><td></td><td>99.1</td><td>97.5</td><td>8.3</td><td>13.2</td></tr><tr><td colspan="6">Open-Weight</td></tr><tr><td rowspan="5">Intern VL-2</td><td>76.3B</td><td>81.5</td><td>77.8</td><td>3.7</td><td>12.8</td></tr><tr><td>40.1B</td><td>91.7</td><td>87.6</td><td>0.0</td><td>1.6</td></tr><tr><td>25.5B</td><td>74.1</td><td>69.8</td><td>0.0</td><td>3.2</td></tr><tr><td>8.1B</td><td>85.2</td><td>78.8</td><td>0.9</td><td>2.6</td></tr><tr><td>4.2B</td><td>91.7</td><td>92.1</td><td>0.0</td><td>2.3</td></tr><tr><td rowspan="2">Qwen2-VL</td><td>73.4B</td><td>100</td><td>97.2</td><td>3.7</td><td>16.0</td></tr><tr><td>8.3B</td><td>95.4</td><td>73.8</td><td>0.0</td><td>1.6</td></tr><tr><td rowspan="2">LLaVA-One Vision</td><td>73.2B</td><td>99.1</td><td>97.1</td><td>1.9</td><td>12.4</td></tr><tr><td>8.0B</td><td>83.3</td><td>85.3</td><td>0.9</td><td>1.9</td></tr><tr><td>Intern VL-V1.5</td><td>25.5B</td><td>70.4</td><td>71.5</td><td>0.0</td><td>2.1</td></tr><tr><td>MiniCPM-V 2.6</td><td>8.1B</td><td>85.2</td><td>79.9</td><td>0.9</td><td>2.2</td></tr><tr><td>MiniCPM-V 2.5</td><td>8.5B</td><td>94.4</td><td>85.1</td><td>0.0</td><td>2.3</td></tr><tr><td>Phi-3.5-Vision</td><td>4.2B</td><td>95.4</td><td>91.6</td><td>0.9</td><td>1.6</td></tr><tr><td>Phi-3-Vision</td><td>4.2B</td><td>87.0</td><td>82.2</td><td>0.0</td><td>2.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 presents the performance of 19 large multimodal models on the HumanEval-V benchmark, showing their pass rate at k=1 and k=10, model parameters, and code parsing success rate.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of 19 LMMs on HumanEval-V. Scores are shown as percentages, with the highest values highlighted in bold. We also include model size (Params) and code Parsing Success Rate (Pars. Rate).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_17_0.png)

> 🔼 The figure illustrates the four-stage pipeline (collect, adapt, mutate, and validate) used to construct the HumanEval-V benchmark, showing representative examples for each stage.
> <details>
> <summary>read the caption</summary>
> Figure 2: The HumanEval-V construction pipeline, with representative examples for each stage.
> </details>



![](figures/figures_22_0.png)

> 🔼 The figure shows an example coding task from the HumanEval-V benchmark that requires visual reasoning to complete a Python function.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_23_0.png)

> 🔼 The figure shows a selection of diverse visual elements used in HumanEval-V coding tasks, showcasing the variety of visual contexts used.
> <details>
> <summary>read the caption</summary>
> Figure 7: A curated selection of representative images in HumanEval-V, covering visual elements like trees, graphs, matrices, maps, grids, flowcharts, and more.
> </details>



![](figures/figures_23_1.png)

> 🔼 The figure illustrates the HumanEval-V construction pipeline, showing the steps involved in collecting, adapting, mutating, and validating coding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: The HumanEval-V construction pipeline, with representative examples for each stage.
> </details>



![](figures/figures_24_0.png)

> 🔼 The figure shows an example coding task from HumanEval-V which involves determining if two line segments ultimately intersect, based on visual input and a Python function signature.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_25_0.png)

> 🔼 The figure illustrates the four-stage HumanEval-V benchmark construction pipeline: collecting, adapting, mutating, and validating coding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: The HumanEval-V construction pipeline, with representative examples for each stage.
> </details>



![](figures/figures_26_0.png)

> 🔼 An example coding task in HumanEval-V that emphasizes the need for visual reasoning and cannot be solved by state-of-the-art large multimodal models.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_27_0.png)

> 🔼 The figure illustrates the HumanEval-V construction pipeline, showing the four main stages: collection, adaptation, mutation, and validation, with representative examples of each stage.
> <details>
> <summary>read the caption</summary>
> Figure 2: The HumanEval-V construction pipeline, with representative examples for each stage.
> </details>



![](figures/figures_28_0.png)

> 🔼 The figure shows an example coding task from the HumanEval-V benchmark, which requires LMMs to solve a geometric intersection problem using only visual information and a function signature.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_29_0.png)

> 🔼 The figure shows an example coding task from the HumanEval-V benchmark that requires visual reasoning to solve a geometric intersection problem.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_30_0.png)

> 🔼 The figure shows an example of a coding task from the HumanEval-V benchmark, which involves determining if two line segments intersect based on their coordinates shown in an image.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



![](figures/figures_31_0.png)

> 🔼 The figure shows an example coding task from HumanEval-V which requires LMMs to determine if two line segments intersect based on a visual context and textual description.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_16_0.png "🔼 Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.")

> 🔼 The chart shows an example coding task from the HumanEval-V benchmark, illustrating a problem that current state-of-the-art large multimodal models (LMMs) are unable to solve.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example coding task in HumanEval-V that all LMMs evaluated in this work cannot solve, including GPT-40 and Claude 3.5 Sonnet. Related error analysis can be found in Appendix A.
> </details>


![](charts/charts_20_0.png "🔼 Figure 8: The correlations between six multimodal benchmarks, including HumanEval-V. Each subplot, except on the diagonal, visualizes the relationship between two benchmarks.")

> 🔼 The chart visualizes the correlations between HumanEval-V and five other multimodal benchmarks, showing the relationships between benchmark pairs.
> <details>
> <summary>read the caption</summary>
> Figure 8: The correlations between six multimodal benchmarks, including HumanEval-V. Each subplot, except on the diagonal, visualizes the relationship between two benchmarks.
> </details>


![](charts/charts_21_0.png "🔼 Figure 16: A positive example in our data screening process, sourced from CodeForces (https://codeforces.com/problemset/problem/1996/B).")

> 🔼 The chart shows an example of a grid reduction problem where a larger grid is reduced to a smaller grid by a factor of k, where each k x k block is replaced by a single cell representing the value of the cells in that block.
> <details>
> <summary>read the caption</summary>
> Figure 16: A positive example in our data screening process, sourced from CodeForces (https://codeforces.com/problemset/problem/1996/B).
> </details>


![](charts/charts_24_0.png "🔼 Table 2: Performance of 19 LMMs on HumanEval-V. Scores are shown as percentages, with the highest values highlighted in bold. We also include model size (Params) and code Parsing Success Rate (Pars. Rate).")

> 🔼 The table shows the performance of 19 large multimodal models (LLMs) on the HumanEval-V benchmark, including pass rate at k=1 and k=10, model parameters, and parsing success rate.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of 19 LMMs on HumanEval-V. Scores are shown as percentages, with the highest values highlighted in bold. We also include model size (Params) and code Parsing Success Rate (Pars. Rate).
> </details>


![](charts/charts_26_0.png "🔼 Figure 20: A mutated version of the coding task from Figure 17.")

> 🔼 The chart shows a mutated version of a coding task, changing the image pattern from a five-pointed star to a six-pointed star while maintaining the overall task settings.
> <details>
> <summary>read the caption</summary>
> Figure 20: A mutated version of the coding task from Figure 17.
> </details>


![](charts/charts_26_1.png "🔼 Figure 4: Correlation analysis between HumanEval-V pass@10 results and three popular multimodal benchmarks spanning multidisciplinary abilities.")

> 🔼 The chart displays the correlation analysis between HumanEval-V pass@10 results and three other popular multimodal benchmarks that assess multidisciplinary abilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Correlation analysis between HumanEval-V pass@10 results and three popular multimodal benchmarks spanning multidisciplinary abilities.
> </details>


![](charts/charts_29_0.png "🔼 Figure 20: A mutated version of the coding task from Figure 17.")

> 🔼 The chart shows a mutated version of a coding task involving connecting points to form a six-pointed star instead of a five-pointed star, increasing the visual complexity.
> <details>
> <summary>read the caption</summary>
> Figure 20: A mutated version of the coding task from Figure 17.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='11' style='font-size:16px'><tr><td>","</td><td></td></tr><tr><td>Image Description: The image demonstrates the logical OR operation between segments of seven-segment displays. In each result, certain segments are highlighted in red. Here 's a detailed description of each example with the highlighted segments: ### First Example: Operation: 0 or 1, Result: Digit 0. ### Second Example: Operation: 5 or 3, Result: Digit 9. ### Third Example: · · · · Test Cases:</td><td>An Incorrect Solution Generated by InternVL-2-26B: def solution(numbers : List[int]) -> int: segment_map = { 0: [6, 2, 5], 1 : [5], 2: [2, 5, 3], 3: [5, 3], 4: [4, 2, 3], 5: [2, 3, 5], 6: [5, 4], 7: [2, 3], 8: [2, 3, 4, 5], 9: [2, 3, 5] } illuminated_segments = set() for num in numbers: num_segments = segment_map[num] illuminated_segments. update(num_segments) return len(illuminated_segments)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model parameters, and parsing success rates.


{{< table-caption >}}
<table id='14' style='font-size:20px'><tr><td rowspan="2">LMMs</td><td rowspan="2">LLM Decoders</td><td colspan="2">Params</td><td colspan="2">HumanEval+</td><td colspan="2">MBPP+</td></tr><tr><td>LLM</td><td>LMM</td><td>LLM</td><td>LMM</td><td>LLM</td><td>LMM</td></tr><tr><td>Intern VL-2</td><td>Nous-Hermes-2- Yi</td><td>34.4B</td><td>40.1B</td><td>66.5</td><td>38.4�28.1</td><td>57.9</td><td>47.1�10.8</td></tr><tr><td>Intern VL-2</td><td>InternLM2-Chat</td><td>19.9B</td><td>25.5B</td><td>65.2</td><td>54.9⌀10.3</td><td>55.4</td><td>51.913.5</td></tr><tr><td>InternVL-2</td><td>InternLM2.5-Chat</td><td>7.7B</td><td>8.1B</td><td>63.4</td><td>50.0⌀13.4</td><td>53.9</td><td>52.4↓1.5</td></tr><tr><td>InternVL-2</td><td>Phi-3-Mini-Instruct</td><td>3.8B</td><td>4.2B</td><td>64.0</td><td>57.3、6.7</td><td>57.1</td><td>57.1 0.0</td></tr><tr><td>Phi-3.5-Vision</td><td>Phi-3.5-Mini-Instruct</td><td>3.8B</td><td>4.2B</td><td>65.9</td><td>51.8⌀14.1</td><td>52.6</td><td>50.4↓2.2</td></tr><tr><td>Qwen2-VL</td><td>Qwen2</td><td>7.6B</td><td>8.3B</td><td>58.5</td><td>65.2 6.7</td><td>53.1</td><td>43.6�9.5</td></tr><tr><td>LLaVA-OneVision</td><td>Qwen2</td><td>7.6B</td><td>8.0B</td><td>58.5</td><td>59.1 0.6</td><td>53.1</td><td>51.6⌀1.5</td></tr><tr><td>MiniCPM-V 2.6</td><td>Qwen2</td><td>7.6B</td><td>8.1B</td><td>58.5</td><td>39.6�18.9</td><td>53.1</td><td>37.6⌀15.5</td></tr><tr><td>MiniCPM-V 2.5</td><td>Llama-3-Instruct</td><td>8.0B</td><td>8.5B</td><td>55.5</td><td>46.3�9.2</td><td>51.9</td><td>47.1 4.8</td></tr><tr><td>GPT-4o</td><td></td><td></td><td></td><td></td><td>86.0</td><td></td><td>68.7</td></tr><tr><td>GPT-4o-mini</td><td></td><td></td><td></td><td></td><td>84.8</td><td></td><td>65.7</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models (LMMs) on the HumanEval-V benchmark, showing their pass rate, model size, and parsing success rate.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">LMMs</td><td rowspan="2">Params</td><td rowspan="2">pass@1</td><td rowspan="2">pass@10</td><td colspan="4">pass@k (n = 100)</td></tr><tr><td>k=10</td><td>k=20</td><td>k=50</td><td>k=100</td></tr><tr><td colspan="8">Proprietary</td></tr><tr><td>GPT-4o</td><td></td><td>13.0</td><td>36.4</td><td>39.0</td><td>44.1</td><td>49.9</td><td>53.7</td></tr><tr><td>GPT-4o-mini</td><td></td><td>6.5</td><td>15.4</td><td>15.3</td><td>20.1</td><td>26.7</td><td>31.5</td></tr><tr><td colspan="8">Open-Weight</td></tr><tr><td>Intern VL-2</td><td>40.1B</td><td>0.0</td><td>1.6</td><td>3.0</td><td>4.9</td><td>8.0</td><td>10.2</td></tr><tr><td>InternVL-2</td><td>25.5B</td><td>0.0</td><td>3.2</td><td>3.2</td><td>4.9</td><td>7.7</td><td>10.2</td></tr><tr><td>InternVL-2</td><td>8.1B</td><td>0.9</td><td>2.6</td><td>3.0</td><td>5.0</td><td>8.4</td><td>10.2</td></tr><tr><td>InternVL-2</td><td>4.2B</td><td>0.0</td><td>2.3</td><td>2.3</td><td>4.4</td><td>9.4</td><td>14.8</td></tr><tr><td>Qwen2-VL</td><td>8.3B</td><td>0.0</td><td>1.6</td><td>3.1</td><td>5.2</td><td>8.7</td><td>11.1</td></tr><tr><td>LLaVA-OneVision</td><td>8.0B</td><td>0.9</td><td>1.9</td><td>1.9</td><td>3.4</td><td>6.7</td><td>10.2</td></tr><tr><td>Intern VL-Chat-V1.5</td><td>25.5B</td><td>0.0</td><td>2.1</td><td>3.1</td><td>5.3</td><td>9.3</td><td>13.0</td></tr><tr><td>MiniCPM-V 2.6</td><td>8.1B</td><td>0.9</td><td>2.2</td><td>1.7</td><td>2.8</td><td>4.8</td><td>7.4</td></tr><tr><td>MiniCPM-V 2.5</td><td>8.5B</td><td>0.0</td><td>2.3</td><td>1.3</td><td>2.4</td><td>5.5</td><td>9.3</td></tr><tr><td>Phi-3.5-Vision</td><td>4.2B</td><td>0.9</td><td>1.6</td><td>2.1</td><td>3.3</td><td>5.0</td><td>6.5</td></tr><tr><td>Phi-3-Vision</td><td>4.2B</td><td>0.0</td><td>2.6</td><td>1.8</td><td>3.3</td><td>6.6</td><td>9.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models (LMMs) on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model parameters, and parsing success rates.


{{< table-caption >}}
<table id='4' style='font-size:16px'><tr><td rowspan="2">LMMs</td><td rowspan="2">pass@1</td><td rowspan="2">pass@ 10</td><td colspan="6">pass@k (n = 1, 000)</td></tr><tr><td>k=100</td><td>k=200</td><td>k=400</td><td>k=600</td><td>k=800</td><td>k=1000</td></tr><tr><td>GPT-4o</td><td>13.0</td><td>36.4</td><td>55.3</td><td>59.9</td><td>64.3</td><td>66.4</td><td>67.7</td><td>68.5</td></tr><tr><td>GPT-4o-mini</td><td>6.5</td><td>15.4</td><td>31.3</td><td>36.0</td><td>40.5</td><td>43.0</td><td>44.9</td><td>46.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model sizes, and parsing success rates.


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td rowspan="2">Models</td><td rowspan="2">Params</td><td colspan="5">Multidisciplinary Multimodal Benchmarks</td><td colspan="2">HumanEval-V</td></tr><tr><td>MMMU</td><td>MathVista</td><td>MMVet</td><td>MME</td><td>RealWorldQA</td><td>pass@1</td><td>pass @ 10</td></tr><tr><td colspan="9">Proprietary</td></tr><tr><td>GPT-4o</td><td></td><td>69.2</td><td>61.3</td><td>69.1</td><td>2310.3</td><td>75.4</td><td>13.0</td><td>36.4</td></tr><tr><td>GPT-4o-mini</td><td></td><td>60.0</td><td>52.4</td><td>66.9</td><td>2003.4</td><td>67.1</td><td>6.5</td><td>15.4</td></tr><tr><td>Claude 3.5 Sonnet</td><td></td><td>65.9</td><td>61.6</td><td>66.0</td><td>1920.0</td><td>60.1</td><td>18.5</td><td>25.9</td></tr><tr><td>Gemini 1.5 Pro</td><td></td><td>60.6</td><td>57.7</td><td>64.0</td><td>2110.6</td><td>64.1</td><td>10.2</td><td>22.2</td></tr><tr><td>Gemini 1.5 Flash</td><td></td><td>58.2</td><td>51.2</td><td>63.2</td><td>2077.9</td><td>69.0</td><td>8.3</td><td>13.2</td></tr><tr><td colspan="9">Open-Weight</td></tr><tr><td rowspan="5">Intern VL-2</td><td>76.3B</td><td>58.3</td><td>65.6</td><td>64.4</td><td>2397.6</td><td>72.7</td><td>3.7</td><td>12.8</td></tr><tr><td>40.1B</td><td>55.2</td><td>64.0</td><td>61.8</td><td>2293.1</td><td>70.1</td><td>0.0</td><td>1.6</td></tr><tr><td>25.5B</td><td>50.7</td><td>59.4</td><td>60.0</td><td>2259.8</td><td>68.1</td><td>0.0</td><td>3.2</td></tr><tr><td>8.1B</td><td>51.2</td><td>58.3</td><td>54.3</td><td>2215.1</td><td>64.2</td><td>0.9</td><td>2.6</td></tr><tr><td>4.2B</td><td>48.3</td><td>58.1</td><td>50.9</td><td>2064.6</td><td>60.5</td><td>0.0</td><td>2.3</td></tr><tr><td rowspan="2">Qwen2-VL</td><td>73.4B</td><td>64.5</td><td>70.5</td><td>74.0</td><td>2482.7</td><td>77.8</td><td>3.7</td><td>16.0</td></tr><tr><td>8.3B</td><td>54.1</td><td>58.2</td><td>62.0</td><td>2326.8</td><td>70.1</td><td>0.0</td><td>1.6</td></tr><tr><td rowspan="2">LLaVA-One Vision</td><td>73.2B</td><td>56.8</td><td>67.5</td><td>63.7</td><td>2261.0</td><td>71.9</td><td>1.9</td><td>12.4</td></tr><tr><td>8.0B</td><td>48.8</td><td>63.2</td><td>57.5</td><td>1998.0</td><td>66.3</td><td>0.9</td><td>1.9</td></tr><tr><td>InternVL-Chat-V1.5</td><td>25.5B</td><td>46.8</td><td>54.7</td><td>55.4</td><td>2189.6</td><td>65.6</td><td>0.0</td><td>2.1</td></tr><tr><td>MiniCPM-V 2.6</td><td>8.1B</td><td>49.8</td><td>60.6</td><td>60.0</td><td>2268.7</td><td>65.0</td><td>0.9</td><td>2.2</td></tr><tr><td>MiniCPM-V 2.5</td><td>8.5B</td><td>45.8</td><td>54.3</td><td>52.8</td><td>2024.6</td><td>63.5</td><td>0.0</td><td>2.3</td></tr><tr><td>Phi-3.5-Vision</td><td>4.2B</td><td>44.6</td><td>43.2</td><td>43.2</td><td>1838.1</td><td>53.6</td><td>0.9</td><td>1.6</td></tr><tr><td>Phi-3- Vision</td><td>4.2B</td><td>46.1</td><td>44.6</td><td>44.1</td><td>1508.0</td><td>58.8</td><td>0.0</td><td>2.6</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model sizes, and parsing success rates.


{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td></td><td>MMMU</td><td>MathVista</td><td>MMVet</td><td>MME</td><td>RealWorldQA</td><td>HumanEval-V</td></tr><tr><td>MMMU</td><td>-</td><td>0.51</td><td>0.88</td><td>0.42</td><td>0.61</td><td>0.90</td></tr><tr><td>MathVista</td><td>0.51</td><td>-</td><td>0.72</td><td>0.77</td><td>0.73</td><td>0.28</td></tr><tr><td>MMVet</td><td>0.88</td><td>0.72</td><td>-</td><td>0.68</td><td>0.81</td><td>0.67</td></tr><tr><td>MME</td><td>0.42</td><td>0.77</td><td>0.68</td><td>-</td><td>0.80</td><td>0.17</td></tr><tr><td>RealWorldQA</td><td>0.61</td><td>0.73</td><td>0.81</td><td>0.80</td><td>-</td><td>0.38</td></tr><tr><td>HumanEval-V</td><td>0.90</td><td>0.28</td><td>0.67</td><td>0.17</td><td>0.38</td><td>-</td></tr><tr><td>Average</td><td>0.66</td><td>0.60</td><td>0.75</td><td>0.57</td><td>0.67</td><td>0.48</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 state-of-the-art large multimodal models (LMMs) on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model parameters, and parsing success rates.


{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td></td><td>dict</td><td>float</td><td>int</td><td>1D list</td><td>2D list</td><td>np.ndarray</td><td>str</td><td>tuple</td><td>pd.DataFrame</td><td>bool</td></tr><tr><td>Input</td><td>8</td><td>3</td><td>34</td><td>35</td><td>24</td><td>2</td><td>4</td><td>12</td><td>-</td><td>-</td></tr><tr><td>Output</td><td>-</td><td>3</td><td>5</td><td>34</td><td>6</td><td>6</td><td>3</td><td>3</td><td>3</td><td>45</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance of 19 large multimodal models on the HumanEval-V benchmark, showing their pass@1 and pass@10 scores, model sizes, and parsing success rates.


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
<img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}