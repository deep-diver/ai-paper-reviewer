---
title: "$γ-$MoD: Exploring Mixture-of-Depth Adaptation for Multimodal Large Language Models"
summary: "γ-MoD efficiently adapts Mixture-of-Depths to existing MLLMs, drastically reducing computational costs without significant performance loss, paving the way for more practical multimodal AI."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13859 {{< /keyword >}}

### TL;DR


{{< lead >}}

Multimodal Large Language Models (MLLMs) are powerful but computationally expensive. This paper introduces γ-MoD, a new method to make MLLMs more efficient.  γ-MoD uses a clever metric called ARank to identify parts of the model that don't do much work. These parts are then replaced with a more efficient design called Mixture-of-Depths (MoD).  Experiments show γ-MoD significantly speeds up training and inference (up to 53.2% faster inference) with only a small drop in accuracy (-1.5%).  The method works well across different MLLMs, making it a broadly applicable technique for improving the efficiency of multimodal AI.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13859" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13859" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly relevant to researchers working on efficient multimodal large language models (MLLMs).  The proposed γ-MoD method offers a practical solution to the high computational cost of MLLMs, a major bottleneck in real-world applications.  It opens up new avenues for research in model compression and efficient training of MLLMs, impacting various downstream tasks and potentially leading to more widely accessible and powerful multimodal AI systems.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} γ-MoD significantly improves the training and inference efficiency of existing MLLMs with minimal performance degradation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The novel ARank metric effectively identifies redundant layers in MLLMs, guiding efficient MoD deployment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} γ-MoD's plug-and-play design and shared vision-language router ensure seamless integration into current MLLM architectures. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13859/figures_4_0.png)

> 🔼 Figure 2 illustrates the γ-MoD adaptation process on the LLaVA-HR model, showing how it replaces redundant layers with MoD layers based on rank estimation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of our γ-MoD adaptation on LLaVA-HR. γ-MoD is a plug-and-play approach that can be directly applied in existing MLLMs. After vision-language alignment, γ-MoD can replace most redundant layers with MoD ones via the rank-based redundancy estimation.
> </details>





![](https://ai-paper-reviewer.com/2410.13859/charts_2_0.png)

> 🔼 The chart visualizes attention maps in a multimodal large language model (MLLM) to illustrate layer redundancy and compares the Mixture-of-Expert (MoE) and Mixture-of-Depth (MoD) approaches for achieving computational sparsity.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of attention maps in the MLLM and comparison of MoE with MoD. (a) Lower-rank layers often exhibit redundancy in their attention computation. (b) Different from MoE, MoD achieves the computational sparsity from the perspective of “activated token”, where the computational budget is dynamically allocated to each token.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Methods</td><td colspan="2">GQA Acc. Skip</td><td colspan="2">SQA Acc. Skip</td><td colspan="2">MMMU Acc. Skip</td><td colspan="2">TextVQA Acc. Skip</td><td colspan="3">Average Acc. TFlops Skip</td></tr><tr><td>LLaVA-HR (Luo et al., 2024b)</td><td>64.2</td><td>0%</td><td>67.9</td><td>0%</td><td>34.6</td><td>0%</td><td>67.1</td><td>0%</td><td>58.5</td><td>19.2</td><td>0%</td></tr><tr><td>MoD layer:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>All layers</td><td>45.9</td><td>38.2%</td><td>42.6</td><td>33.7%</td><td>25.9</td><td>32.8%</td><td>33.8</td><td>34.1%</td><td>37.1</td><td>12.3</td><td>34.7%</td></tr><tr><td>1 MoD per 2 layers</td><td>57.8</td><td>19.1%</td><td>52.3</td><td>16.5%</td><td>26.9</td><td>16.6%</td><td>54.0</td><td>17.9%</td><td>47.8</td><td>16.1</td><td>17.5%</td></tr><tr><td>2 MoDs per 3 layers</td><td>38.1</td><td>26.8%</td><td>46.5</td><td>24.6%</td><td>24.3</td><td>24.4%</td><td>42.1</td><td>24.9%</td><td>37.8</td><td>15.9</td><td>25.2%</td></tr><tr><td>ARank-based deployment</td><td>63.7</td><td>40.7%</td><td>68.5</td><td>35.9%</td><td>35.6</td><td>36.8%</td><td>65.3</td><td>38.2%</td><td>58.3</td><td>12.6</td><td>37.9%</td></tr><tr><td>Masked token:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>None</td><td>63.2 52.0%</td><td></td><td>66.8</td><td>46.9%</td><td>33.9</td><td>47.0%</td><td>64.7</td><td>49.8%</td><td>57.2</td><td>10.7</td><td>48.9%</td></tr><tr><td>Q</td><td>63.7</td><td>40.7%</td><td>68.5</td><td>35.9%</td><td>35.6</td><td>36.8%</td><td>65.3</td><td>38.2%</td><td>58.3</td><td>12.6</td><td>37.9%</td></tr><tr><td>Q+A</td><td>62.8</td><td>38.8%</td><td>68.6</td><td>30.5%</td><td>34.7</td><td>35.4%</td><td>62.0</td><td>37.2%</td><td>57.0</td><td>13.0</td><td>35.5%</td></tr><tr><td>Shared router:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Not Share</td><td>60.6</td><td>55.8%</td><td>64.5</td><td>48.2%</td><td>32.1</td><td>48.9%</td><td>58.4</td><td>52.9%</td><td>53.9</td><td>10.3</td><td>51.5%</td></tr><tr><td>Share</td><td>63.1</td><td>60.3%</td><td>67.9</td><td>56.9%</td><td>34.7</td><td>56.6%</td><td>64.9</td><td>57.1%</td><td>57.6</td><td>9.3</td><td>57.7%</td></tr><tr><td>Routing ratio:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>17%</td><td>63.6</td><td>18.9%</td><td>68.9</td><td>15.5%</td><td>34.7</td><td>14.7%</td><td>66.1</td><td>16.5%</td><td>58.3</td><td>16.3</td><td>16.4%</td></tr><tr><td>34%</td><td>63.7</td><td>40.7%</td><td>68.5</td><td>35.9%</td><td>35.6</td><td>36.8%</td><td>65.3</td><td>38.2%</td><td>58.3</td><td>12.6</td><td>37.9%</td></tr><tr><td>51%</td><td>63.1</td><td>60.3%</td><td>67.9</td><td>56.9%</td><td>34.7</td><td>56.6%</td><td>64.9</td><td>57.1%</td><td>57.6</td><td>9.3</td><td>57.7%</td></tr><tr><td>68%</td><td>59.1</td><td>77.8%</td><td>70.1</td><td>73.5%</td><td>33.7</td><td>71.8%</td><td>58.4</td><td>74.1%</td><td>55.3</td><td>6.5</td><td>74.3%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of various γ-MoD configurations on the LLaVA-HR model across different metrics, including accuracy and the proportion of skipped tokens.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different γ-MoD configurations on LLaVA-HR. The default setting used in the table is colored in gray. “Q” and “A” refer to question and answer tokens.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13859/figures_10_4.png)

> 🔼 Figure 4 visualizes how the routing mechanism in γ-MoD selectively skips less important tokens (colored gray) in both image and text data, focusing computation on key elements for improved efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_5.png)

> 🔼 Figure 4 visualizes the routing results of γ-MoD, showing how different tokens are skipped during computation in different MoD layers, with a focus on question, image, and answer tokens.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_6.png)

> 🔼 Figure 4 visualizes how the proposed γ-MoD model routes tokens in different layers, highlighting the skipped tokens (in gray) and demonstrating how the model focuses on key information for generating answers.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_7.png)

> 🔼 The figure visualizes how the γ-MoD model routes tokens (keeps or skips) in different layers, highlighting the skipped tokens in gray to show the model's focus on relevant information for efficient computation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_8.png)

> 🔼 Figure 4 visualizes how the routing mechanism of γ-MoD selectively skips less important tokens (colored gray) in both image and text data across different layers, focusing computation on key elements.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_9.png)

> 🔼 Figure 4 visualizes how the γ-MoD model routes tokens (keeps or skips) at different layers, illustrating the model's focus on key information and discarding of redundant parts in both image and text data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_10.png)

> 🔼 Figure 4 visualizes how the proposed γ-MoD model routes tokens through different layers, highlighting which tokens are skipped and which are processed.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.13859/figures_10_12.png)

> 🔼 Figure 4 visualizes how γ-MoD’s routing mechanism skips less important tokens (colored in gray) in both images and text, focusing computation on key elements for accurate responses.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.13859/charts_5_0.png)

> 🔼 The chart visualizes the rank of attention maps (ARank) across different layers of the LLaVA-HR model for various tasks and sample sizes.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of ARank based on different tasks (left) and sample sizes (right). The horizontal axis represents the layer index of LLaVA-HR. The darker color indicates the larger ARank.
> </details>


![](https://ai-paper-reviewer.com/2410.13859/charts_10_0.png)

> 🔼 The chart visualizes the routing results of different MoD layers, showing which tokens are skipped (gray) and kept during processing.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of routing results for different MoD layers. “Q”, “I” and “A” denote the question, image and response, respectively. The skipped tokens in sub-figure (b) are colored in gray.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td rowspan="2">Methods</td><td rowspan="2">Param</td><td rowspan="2" colspan="2">GQA Acc. Skip</td><td rowspan="2" colspan="2">SQA Acc. Skip</td><td rowspan="2" colspan="2">MMMU Acc. Skip</td><td rowspan="2" colspan="2">TextVQA Acc. Skip</td><td colspan="3">Average</td></tr><tr><td>Acc.</td><td>TFlops</td><td>Skip</td></tr><tr><td>LLaVA-HR (Luo et al., 2024b)</td><td>7.4B</td><td>64.2</td><td>0%</td><td>67.9</td><td>0%</td><td>34.6</td><td>0%</td><td>67.1</td><td>0%</td><td>58.5</td><td>19.2</td><td>0%</td></tr><tr><td>+ Default MoD (Raposo et al., 2024)</td><td>7.4B</td><td>45.9</td><td>38.2%</td><td>42.6</td><td>33.7%</td><td>25.9</td><td>32.8%</td><td>33.8</td><td>34.1%</td><td>37.1</td><td>12.3</td><td>34.7%</td></tr><tr><td>+ ARank-based deployment (ours)</td><td>7.4B</td><td>63.2</td><td>52.0%</td><td>66.8</td><td>46.9%</td><td>33.9</td><td>47.0%</td><td>64.7</td><td>49.8%</td><td>57.2</td><td>10.7</td><td>48.9%</td></tr><tr><td>+ Masked routing learning (ours)</td><td>7.4B</td><td>63.1</td><td>60.3%</td><td>67.9</td><td>56.9%</td><td>34.7</td><td>56.6%</td><td>64.9</td><td>57.1%</td><td>57.6</td><td>9.3</td><td>57.7%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 shows the ablation study of the proposed γ-MoD on LLaVA-HR model by varying different components of the model and measuring its impact on the performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of γ-MoD on LLaVA-HR. “Param”, “Acc.” and “Skip” indicate the parameter, accuracy, and skip ratio, respectively.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td rowspan="2">Methods</td><td rowspan="2">Param</td><td colspan="2">GQA</td><td colspan="2">SQA</td><td colspan="2">MMMU</td><td colspan="2">TextVQA</td><td colspan="3">Average</td></tr><tr><td>Acc.</td><td>Skip</td><td>Acc.</td><td>Skip</td><td>Acc.</td><td>Skip</td><td>Acc.</td><td>Skip</td><td>Acc.</td><td>TFlops</td><td>Skip</td></tr><tr><td colspan="2">MLLM architecture:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>LLaVA</td><td>7B</td><td>62.0</td><td>0%</td><td>66.8</td><td>0%</td><td>34.3</td><td>0%</td><td>58.2</td><td>0%</td><td>55.3</td><td>10.7</td><td>0%</td></tr><tr><td>+�-MoD-0.3</td><td>7B</td><td>61.1</td><td>34.1%</td><td>64.7</td><td>29.4%</td><td>35.4</td><td>29.8%</td><td>56.3</td><td>30.7%</td><td>54.4</td><td>7.7</td><td>31.0%</td></tr><tr><td>+�-MoD-0.5</td><td>7B</td><td>41.4</td><td>60.9%</td><td>62.3</td><td>54.8%</td><td>31.0</td><td>53.6%</td><td>42.9</td><td>56.2%</td><td>44.4</td><td>5.3</td><td>56.4%</td></tr><tr><td>LLaVA-HR</td><td>7B</td><td>64.2</td><td>0%</td><td>67.9</td><td>0%</td><td>34.6</td><td>0%</td><td>67.1</td><td>0%</td><td>58.5</td><td>19.2</td><td>0%</td></tr><tr><td>+�-MoD-0.3</td><td>7B</td><td>63.7</td><td>40.7%</td><td>68.5</td><td>35.9%</td><td>35.6</td><td>36.8%</td><td>65.3</td><td>38.2%</td><td>58.3</td><td>12.6</td><td>37.9%</td></tr><tr><td>+�-MoD-0.5</td><td>7B</td><td>63.1</td><td>60.3%</td><td>67.9</td><td>56.9%</td><td>34.7</td><td>56.6%</td><td>64.9</td><td>57.1%</td><td>57.6</td><td>9.3</td><td>57.7%</td></tr><tr><td>Mini-Gemini-HD</td><td>7B</td><td>62.9</td><td>0%</td><td>69.6</td><td>0%</td><td>36.8</td><td>0%</td><td>66.5</td><td>0%</td><td>59.0</td><td>60.2</td><td>0%</td></tr><tr><td>+�-MoD-0.3</td><td>7B</td><td>62.1</td><td>37.1%</td><td>69.0</td><td>34.6%</td><td>34.1</td><td>36.4%</td><td>66.4</td><td>36.6%</td><td>57.9</td><td>39.4</td><td>36.2%</td></tr><tr><td>+�-MoD-0.5</td><td>7B</td><td>62.2</td><td>59.2%</td><td>70.4</td><td>56.8%</td><td>33.9</td><td>58.6%</td><td>67.0</td><td>57.7%</td><td>58.4</td><td>27.8</td><td>58.1%</td></tr><tr><td colspan="2">Model scales:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>LLaVA-HR</td><td>7B</td><td>64.2</td><td>0%</td><td>67.9</td><td>0%</td><td>34.6</td><td>0%</td><td>67.1</td><td>0%</td><td>58.5</td><td>19.2</td><td>0%</td></tr><tr><td>+�-MoD-0.3</td><td>7B</td><td>63.7</td><td>40.7%</td><td>68.5</td><td>35.9%</td><td>35.6</td><td>36.8%</td><td>65.3</td><td>38.2%</td><td>58.3</td><td>12.6</td><td>37.9%</td></tr><tr><td>+�-MoD-0.5</td><td>7B</td><td>63.1</td><td>60.3%</td><td>67.9</td><td>56.9%</td><td>34.7</td><td>56.6%</td><td>64.9</td><td>57.1%</td><td>57.6</td><td>9.3</td><td>57.7%</td></tr><tr><td>LLaVA-HR</td><td>13B</td><td>64.8</td><td>0%</td><td>68.1</td><td>0%</td><td>36.7</td><td>0%</td><td>68.1</td><td>0%</td><td>59.4</td><td>37.1</td><td>0%</td></tr><tr><td>+�-MoD-0.3</td><td>13B</td><td>64.5</td><td>38.1%</td><td>70.5</td><td>33.1%</td><td>37.8</td><td>32.5%</td><td>67.0</td><td>36.0%</td><td>60.0</td><td>25.1</td><td>34.9%</td></tr><tr><td>+�-MoD-0.5</td><td>13B</td><td>64.8</td><td>58.8%</td><td>69.5</td><td>52.2%</td><td>35.8</td><td>53.8%</td><td>66.8</td><td>55.4%</td><td>59.2</td><td>18.4</td><td>55.1%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of different γ-MoD configurations on the LLaVA-HR model across various metrics, including accuracy and the proportion of skipped tokens.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different γ-MoD configurations on LLaVA-HR. The default setting used in the table is colored in gray. “Q” and “A” refer to question and answer tokens.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Methods</td><td>Training Time ↓</td><td>Inference Throughput ↑</td><td>Inference Memory ↓</td><td>Inference TFlops ↓</td><td>Avg. Acc. ↑</td></tr><tr><td>LLaVA-HR</td><td>20.7 h</td><td>4.7 samples/s</td><td>19 G</td><td>19.2</td><td>58.5</td></tr><tr><td>+�-MoD-0.3</td><td>15.4 h</td><td>5.9 samples/s</td><td>15 G</td><td>12.6</td><td>58.3</td></tr><tr><td>+�-MoD-0.5</td><td>14.3 h</td><td>7.2 samples/s</td><td>14 G</td><td>9.3</td><td>57.6</td></tr><tr><td>Gains</td><td>-31.0%</td><td>+53.2%</td><td>-26.3%</td><td>-51.6%</td><td>-1.5%</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the training and inference efficiency gains achieved by applying the γ-MoD model to the LLaVA-HR model, showing reductions in training time, memory usage, and computational cost while maintaining similar accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Training and inference efficiency of γ-MoD on LLaVA-HR. The inference efficiency is tested on an NVIDIA A100 GPU, which is the average value of GQA, SQA, MMMU, and TextVQA.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td rowspan="2">Methods</td><td rowspan="2">Param.</td><td colspan="4">Image Question Answering</td><td colspan="5">Benchmark Toolkit</td><td rowspan="2">Speed</td></tr><tr><td>TextVQA</td><td>VQA v2</td><td>GQA</td><td>SQAI</td><td>POPE</td><td>MME</td><td>MMB</td><td>MMMU</td><td>MM-Vet</td></tr><tr><td>Dense Model:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>I-80B (Lauren�on et al., 2024)</td><td>65B</td><td>-</td><td>60.0</td><td>45.2</td><td>-</td><td>-</td><td>-</td><td>54.5</td><td>-</td><td>-</td><td>-</td></tr><tr><td>InstructBLIP (Dai et al., 2023)</td><td>14B</td><td>50.7</td><td>-</td><td>49.5</td><td>63.1</td><td>78.9</td><td>1212.8</td><td>-</td><td>-</td><td>25.6</td><td>-</td></tr><tr><td>VILA (Lin et al., 2024b)</td><td>7B</td><td>64.4</td><td>79.9</td><td>62.3</td><td>68.2</td><td>85.5</td><td>1533.0</td><td>68.9</td><td>-</td><td>34.9</td><td>-</td></tr><tr><td>Qwen-VL (Bai et al., 2023b)</td><td>10B</td><td>63.8</td><td>78.8</td><td>59.3</td><td>67.1</td><td>-</td><td>1487.6</td><td>38.2</td><td>、</td><td>-</td><td>4.6</td></tr><tr><td>LLaVA-1.5 (Liu et al., 2024b)</td><td>7B</td><td>58.2</td><td>78.5</td><td>62.0</td><td>66.8</td><td>85.9</td><td>1510.7</td><td>64.3</td><td>34.3</td><td>30.5</td><td>8.1</td></tr><tr><td>LLaVA-HR (Luo et al., 2024b)</td><td>7B</td><td>67.1</td><td>81.9</td><td>64.2</td><td>67.9</td><td>87.6</td><td>1554.9</td><td>66.8</td><td>35.2</td><td>31.2</td><td>4.7</td></tr><tr><td>LLaVA-HR (Luo et al., 2024b)</td><td>13B</td><td>68.1</td><td>82.3</td><td>64.8</td><td>68.1</td><td>87.8</td><td>1540.9</td><td>64.5</td><td>36.3</td><td>34.8</td><td>3.1</td></tr><tr><td>Sparse Model:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>MoE-LLaVA (Lin et al., 2024a)</td><td>3B</td><td>50.1</td><td>76.7</td><td>60.3</td><td>62.6</td><td>85.7</td><td>1318.2</td><td>60.2</td><td>-</td><td>26.9</td><td>8.5</td></tr><tr><td>MoE-LLaVA (Lin et al., 2024a)</td><td>5B</td><td>51.4</td><td>77.6</td><td>61.4</td><td>68.5</td><td>86.3</td><td>1423.0</td><td>65.2</td><td>-</td><td>34.3</td><td>5.6</td></tr><tr><td>y-MoD-LLaVA(ours)</td><td>7B</td><td>56.3</td><td>77.6</td><td>61.1</td><td>64.7</td><td>86.0</td><td>1342.1</td><td>59.4</td><td>35.4</td><td>29.8</td><td>10.3</td></tr><tr><td>y-MoD-LLaVA-HR(ours)</td><td>7B</td><td>64.9</td><td>80.6</td><td>63.1</td><td>67.9</td><td>87.3</td><td>1516.0</td><td>63.4</td><td>34.7</td><td>31.5</td><td>7.2</td></tr><tr><td>y-MoD-LLaVA-HR(ours)</td><td>13B</td><td>66.8</td><td>82.0</td><td>64.8</td><td>69.5</td><td>86.7</td><td>1515.4</td><td>65.2</td><td>35.8</td><td>34.0</td><td>4.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of different γ-MoD configurations on the LLaVA-HR model across various metrics, including accuracy and token skip rate, for different layer configurations, masked tokens and shared routing.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different γ-MoD configurations on LLaVA-HR. The default setting used in the table is colored in gray. “Q” and “A” refer to question and answer tokens.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13859/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13859/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}