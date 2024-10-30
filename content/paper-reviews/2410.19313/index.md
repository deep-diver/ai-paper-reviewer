---
title: "COAT: Compressing Optimizer states and Activation for Memory-Efficient FP8 Training"
summary: "COAT achieves memory-efficient FP8 training by compressing optimizer states and activations, resulting in 1.54x memory footprint reduction and 1.43x speedup."
categories: ["AI Generated"]
tags: ["🔖 24-10-25", "🤗 24-10-29"]
showSummary: true
date: 2024-10-25
draft: false
---

{{< keyword >}} 2410.19313 {{< /keyword >}}

### TL;DR


{{< lead >}}

Training large foundation models is memory-intensive.  Current FP8 training methods often leave optimizer states and activations in higher precision, limiting efficiency.  This hinders the full potential of FP8's speed and memory benefits, especially for large models and distributed training where memory becomes a major constraint.



This paper introduces COAT, a novel framework addressing these limitations. COAT employs two key techniques: Dynamic Range Expansion to improve optimizer state quantization and Mixed-Granularity Activation Quantization for efficient activation memory management.  Experiments demonstrate that COAT significantly reduces memory usage (1.54x) and improves training speed (1.43x) compared to BF16 without sacrificing accuracy across several tasks. **This contribution significantly advances the state-of-the-art in memory-efficient FP8 training for large models.**

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.19313" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.19313" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because **it presents a novel and effective solution to the memory bottleneck in large-scale model training using FP8 precision**.  The techniques introduced, particularly Dynamic Range Expansion and Mixed-Granularity Activation Quantization, are highly relevant to the current focus on efficient and low-precision training methods. The results demonstrating significant memory reduction and speed improvements will likely inspire further research in this area.  The open-sourced code also makes it easily accessible and reproducible.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} COAT reduces memory footprint by 1.54x compared to BF16 training while maintaining performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dynamic Range Expansion and Mixed-Granularity Activation Quantization improve FP8 quantization accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} COAT enables training larger models on fewer GPUs and allows for larger batch sizes. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.19313/figures_1_0.png)

> 🔼 The figure compares the quantization flow of Transformer Engine and COAT, highlighting COAT's reduction in memory footprint by quantizing both optimizer states and activations to FP8.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a,b) Comparing the quantization flow of Transformer Engine and COAT. Both the optimizer states and activations are quantized to FP8 in COAT. (c) End-to-end per-GPU memory comparison when training Llama-2-13B on 8×80G H100 using FSDP.
> </details>





![](https://ai-paper-reviewer.com/2410.19313/charts_4_0.png)

> 🔼 The chart visualizes how dynamic range expansion improves the utilization of the FP8 representation range for optimizer states quantization, reducing quantization errors.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Visualization of optimizer states' dynamic range under per-group quantization. FP8 E4M3's representation range is under-utilized in this case. (b) After dynamic range expansion, FP8's representation range is well utilized. (c) Distribution of k for optimizer states. The second order's k is larger than first-order's k, since the second-order momentum's dynamic range is smaller.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td colspan="5">Table 1: Quantization error of m under different Vv Before quantization settings. +Expand means applying our Dynamic Range Expansion method.</td><td>1e6 First order le6 Second order 6 5 Expand Before Expand 4- After Expand After Expand · FP8 Representation 3</td></tr><tr><td>MSE of m Vv</td><td colspan="4">Second Order</td><td>Range FP8 Representation Range- 4 2 2</td></tr><tr><td>First Order</td><td>E4M3</td><td>E4M3+Expand</td><td>E5M2</td><td>E5M2+Expand</td><td>1 0</td></tr><tr><td>E4M3</td><td>20.10</td><td>18.08</td><td>25.65</td><td>18.16</td><td>0 2-9 2-6 2-3 20 23 26 29 2-9 2-6 2-3 20 23 26 29</td></tr><tr><td>E4M3+Expand</td><td>15.13</td><td>12.31</td><td>21.96</td><td>12.43</td><td></td></tr><tr><td>E5M2</td><td>37.02</td><td>35.96</td><td>40.30</td><td>36.00</td><td>Figure 3: Dynamic Range Expansion can</td></tr><tr><td>E5M2+Expand</td><td>17.79</td><td>15.48</td><td>23.84</td><td>15.57</td><td>better utilize E4M3 representation range.</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the quantization error of the first-order momentum (m) under different quantization settings, both before and after applying the Dynamic Range Expansion method.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantization error of m under different quantization settings. +Expand means applying our Dynamic Range Expansion method.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.19313/figures_15_0.png)

> 🔼 The figure compares the quantization flow of Transformer Engine and COAT, highlighting COAT's quantization of both optimizer states and activations to FP8, resulting in reduced memory usage.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a,b) Comparing the quantization flow of Transformer Engine and COAT. Both the optimizer states and activations are quantized to FP8 in COAT. (c) End-to-end per-GPU memory comparison when training Llama-2-13B on 8×80G H100 using FSDP.
> </details>



![](https://ai-paper-reviewer.com/2410.19313/figures_15_1.png)

> 🔼 The figure shows a comparison of captions generated by BF16 and COAT for the same image, highlighting COAT's ability to produce more accurate and concise summaries.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison of BF16 and COAT on VLM captioning. COAT can accurately summarize the figure and identify the key points in the figure.
> </details>



![](https://ai-paper-reviewer.com/2410.19313/figures_16_0.png)

> 🔼 The figure visualizes the distribution of optimizer states before and after applying dynamic range expansion, showing how the expansion improves the utilization of the FP8 representation range.
> <details>
> <summary>read the caption</summary>
> Figure 9: Axis is of base 2.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.19313/charts_7_0.png)

> 🔼 The chart compares quantization error and time usage for various scaling methods in the forward pass of a neural network, including 4x4 and 1x16 quantization of LayerNorm's input, TransformerEngine's method, and the proposed Mixed Granularity method.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) Quantization Error in forward pass. (b) Time comparison of various scaling methods.
> </details>


![](https://ai-paper-reviewer.com/2410.19313/charts_8_0.png)

> 🔼 The chart displays the training loss curves for OLMo-1B using BF16, TransformerEngine, and COAT, showing that COAT maintains nearly identical performance to BF16 and TransformerEngine.
> <details>
> <summary>read the caption</summary>
> Figure 5: OLMO-1B pretraining loss curve.
> </details>


![](https://ai-paper-reviewer.com/2410.19313/charts_8_1.png)

> 🔼 The chart displays the training loss curves for OLMo-7B using BF16 and the proposed COAT method, showing nearly identical performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: OLMo-7B training curve.
> </details>


![](https://ai-paper-reviewer.com/2410.19313/charts_9_0.png)

> 🔼 The chart displays the training loss curves for VILA-7B using BF16, TransformerEngine, and COAT methods during stage-3 SFT.
> <details>
> <summary>read the caption</summary>
> Figure 7: VILA1.5-7B Stage-3 SFT loss curve.
> </details>


![](https://ai-paper-reviewer.com/2410.19313/charts_16_0.png)

> 🔼 The chart visualizes the distribution of first-order and second-order momentum values before and after applying the dynamic range expansion technique, showing how the expansion improves the utilization of the FP8 representation range.
> <details>
> <summary>read the caption</summary>
> Figure 9: Axis is of base 2.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td></td><td colspan="2">Non-Linear</td><td colspan="2">Attention</td><td></td><td></td><td colspan="2">Reduction Ratio</td></tr><tr><td></td><td></td><td>RMSNorm</td><td>Act Func</td><td>RoPE</td><td>FlashAttn</td><td>Linear</td><td>Total</td><td>Ideal</td><td>Achieved</td></tr><tr><td rowspan="3">Llama-style</td><td>BF16</td><td>4U</td><td>8U</td><td>2U</td><td>3U</td><td>5.66U</td><td>22.66U</td><td>1.00x</td><td>1.00x</td></tr><tr><td>TE</td><td>2U</td><td>8U</td><td>2U</td><td>3U</td><td>3.33U</td><td>18.33U</td><td>1.23x</td><td>1.20x</td></tr><tr><td>COAT</td><td>1U</td><td>4U</td><td>2U</td><td>3U</td><td>3.33U</td><td>13.33U</td><td>1.69x</td><td>1.65x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 shows the memory footprint of different operators in BF16, TransformerEngine, and COAT, highlighting the memory reduction achieved by COAT through FP8 quantization.
> <details>
> <summary>read the caption</summary>
> Table 2: Activation memory footprint of different operators. U is a unit to measure memory usage, where 1U = Batch Size × Sequence Length × Hidden Size × 2 bytes (for BF16). For Llama-style model, Act Func refers to SiLU & Multiply, and Linear refers to the summation of QKV/Attn/Up/Gate/Down projection. RMSNorm is upcast to float32 in transformers implementation, so the memory usage of LayerNorm in BF16 is 4U. Our method reduces activation memory by quantizing them to FP8. More details about FlashAttention in Appendix D.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td></td><td>Train Loss</td><td>WikiText</td><td>C4</td><td>Pile</td><td>Avg ppl</td></tr><tr><td>BF16</td><td>2.995</td><td>30.499</td><td>27.966</td><td>17.405</td><td>25.290</td></tr><tr><td>TE</td><td>3.001</td><td>30.736</td><td>28.064</td><td>17.434</td><td>25.411</td></tr><tr><td>COAT</td><td>3.008</td><td>30.619</td><td>28.099</td><td>17.453</td><td>25.391</td></tr><tr><td></td><td>COPA</td><td>ARC(Easy)</td><td>SciQ</td><td>HellaSwag</td><td>Avg Acc</td></tr><tr><td>BF16</td><td>60.0%</td><td>45.6%</td><td>67.3%</td><td>33.7%</td><td>51.6%</td></tr><tr><td>TE</td><td>62.0%</td><td>45.4%</td><td>63.9%</td><td>33.8%</td><td>51.3%</td></tr><tr><td>COAT</td><td>61.0%</td><td>44.2%</td><td>67.6%</td><td>33.7%</td><td>51.5%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of OLMo-1B's performance on several downstream tasks using BF16, TransformerEngine, and COAT, showcasing the similar performance across all three methods.
> <details>
> <summary>read the caption</summary>
> Table 3: OLMo-1B pretraining performance on downstream tasks. TE refers to TransformerEngine.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:16px'><tr><td></td><td colspan="6">Table 4: Evaluation result of fine-tuning Llama-2-7B on math corpus. Ll ama-2-7B refers to the evaluation metric before fine-tuning. TE refers to TransformerEngine.</td></tr><tr><td></td><td></td><td>Mathmeticas</td><td>SVAMP</td><td>NumGLUE</td><td>GSM8k</td><td>Avg</td></tr><tr><td></td><td>Llama-2-7B</td><td>6.0</td><td>14.6</td><td>34.5</td><td>29.9</td><td>21.3</td></tr><tr><td></td><td>BF16</td><td>46.3</td><td>64.2</td><td>54.8</td><td>57.7</td><td>55.7</td></tr><tr><td></td><td>TE</td><td>45.3</td><td>66.1</td><td>53.5</td><td>57.7</td><td>55.6</td></tr><tr><td></td><td>COAT</td><td>47.8</td><td>64.4</td><td>53.3</td><td>56.6</td><td>55.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the evaluation results of fine-tuning Llama-2-7B on various mathematical reasoning datasets, comparing BF16, TransformerEngine, and COAT.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation result of fine-tuning Llama-2-7B on math corpus. Llama-2-7B refers to the evaluation metric before fine-tuning. TE refers to TransformerEngine.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Stage 3</td><td>VideoMME</td><td>POPE</td><td>VizWiz</td><td>GQA*</td><td>VQAv2*</td></tr><tr><td>BF16</td><td>42.96</td><td>86.90</td><td>61.42</td><td>64.55</td><td>81.47</td></tr><tr><td>TE</td><td>43.19</td><td>87.64</td><td>57.61</td><td>64.53</td><td>81.34</td></tr><tr><td>COAT</td><td>44.56</td><td>87.43</td><td>61.36</td><td>64.44</td><td>81.20</td></tr><tr><td></td><td></td><td colspan="2">SEED</td><td></td><td></td></tr><tr><td>Stage 3</td><td>TextVQA</td><td>Image</td><td>Video</td><td>MMMU Val</td><td>Average</td></tr><tr><td>BF16</td><td>65.60</td><td>73.40</td><td>45.65</td><td>38.56</td><td>62.80</td></tr><tr><td>TE</td><td>64.70</td><td>73.51</td><td>43.12</td><td>35.89</td><td>61.88</td></tr><tr><td>COAT</td><td>64.65</td><td>73.36</td><td>43.76</td><td>37.22</td><td>62.51</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the performance of VILA1.5-7B after Stage-3 SFT on various downstream tasks, comparing BF16, TransformerEngine, and COAT.
> <details>
> <summary>read the caption</summary>
> Table 5: VILA1.5-7B Stage-3 SFT performance on downstream tasks. * means it has seen the training data.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td colspan="13">Hidden Size = 2048, Batch Size = 4</td></tr><tr><td rowspan="2"></td><td colspan="6">Sequence Length = 2048</td><td colspan="6">Sequence Length = 4096</td></tr><tr><td>Forward</td><td>Backward</td><td>Total</td><td>Ratio</td><td>Memory</td><td>Ratio</td><td>Forward</td><td>Backward</td><td>Total</td><td>Ratio</td><td>Memory</td><td>Ratio</td></tr><tr><td>BF16</td><td>3.36</td><td>8.47</td><td>11.83</td><td>1.00x</td><td>1457 MB</td><td>1.00x</td><td>6.88</td><td>17.24</td><td>24.12</td><td>1.00x</td><td>2914 MB</td><td>1.00x</td></tr><tr><td>TE</td><td>2.96</td><td>5.32</td><td>8.28</td><td>1.42x</td><td>1210 MB</td><td>1.20x</td><td>5.94</td><td>11.29</td><td>17.23</td><td>1.39x</td><td>2420 MB</td><td>1.20x</td></tr><tr><td>COAT</td><td>2.88</td><td>5.16</td><td>8.04</td><td>1.47x</td><td>883 MB</td><td>1.65x</td><td>5.89</td><td>10.82</td><td>16.71</td><td>1.44x</td><td>1766 MB</td><td>1.65x</td></tr><tr><td colspan="13">Hidden Size = 4096, Batch Size = 4</td></tr><tr><td rowspan="2"></td><td colspan="6">Sequence Length = 2048</td><td colspan="6">Sequence Length = 4096</td></tr><tr><td>Forward</td><td>Backward</td><td>Total</td><td>Ratio</td><td>Memory</td><td>Ratio</td><td>Forward</td><td>Backward</td><td>Total</td><td>Ratio</td><td>Memory</td><td>Ratio</td></tr><tr><td>BF16</td><td>7.77</td><td>18.78</td><td>26.55</td><td>1.00x</td><td>2914 MB</td><td>1.00x</td><td>16.37</td><td>38.43</td><td>54.80</td><td>1.00x</td><td>5828 MB</td><td>1.00x</td></tr><tr><td>TE</td><td>6.19</td><td>11.79</td><td>17.98</td><td>1.47x</td><td>2420 MB</td><td>1.20x</td><td>12.66</td><td>24.58</td><td>37.24</td><td>1.47x</td><td>4840 MB</td><td>1.20x</td></tr><tr><td>COAT</td><td>5.89</td><td>10.96</td><td>16.85</td><td>1.57x</td><td>1766 MB</td><td>1.65x</td><td>12.16</td><td>23.44</td><td>35.6</td><td>1.53x</td><td>3533 MB</td><td>1.65x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 shows the memory saving and speedup results for a single transformer layer with different hidden sizes and sequence lengths, comparing BF16, TransformerEngine, and COAT.
> <details>
> <summary>read the caption</summary>
> Table 6: Memory Saving and Speedup for a single Transformer Layer. Memory refers to Activation Memory. Our method achieves better speedup than TransformerEngine and significantly reduces the activation memory footprint by 1.65×.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Llama-2-7B</td><td colspan="5">Context Length = 2048</td><td colspan="3">Maximum Batch Size, Context Length = 2048</td></tr><tr><td></td><td></td><td>Optimizer</td><td>Activations</td><td>Peak</td><td>Ratio</td><td>Max BS</td><td>Speed</td><td>Ratio</td></tr><tr><td rowspan="3">1 GPUBS=1</td><td>BF16</td><td>-</td><td>-</td><td>OOM</td><td></td><td>-</td><td>OOM</td><td></td></tr><tr><td>TE</td><td>-</td><td>-</td><td>OOM</td><td></td><td>-</td><td>OOM</td><td></td></tr><tr><td>COAT</td><td>13.1 GB</td><td>8.1 GB</td><td>79.3 GB</td><td></td><td>1</td><td>5906 token/s</td><td></td></tr><tr><td rowspan="3">2 GPUBS=2</td><td>BF16</td><td>-</td><td>-</td><td>OOM</td><td></td><td>1</td><td>6130 token/s</td><td>1.00x</td></tr><tr><td>TE</td><td>-</td><td>-</td><td>OOM</td><td></td><td>1</td><td>6842 token/s</td><td>1.11x</td></tr><tr><td>COAT</td><td>6.5GB</td><td>16.9 GB</td><td>52.8 GB</td><td></td><td>4</td><td>11351 token/s</td><td>1.85x</td></tr><tr><td rowspan="3">4 GPUBS=2</td><td>BF16</td><td>13.1 GB</td><td>25.8 GB</td><td>55.1 GB</td><td>1.00x</td><td>2</td><td>7730 token/s</td><td>1.00x</td></tr><tr><td>TE</td><td>13.1 GB</td><td>21.9 GB</td><td>51.1 GB</td><td>1.08x</td><td>2</td><td>9577 token/s</td><td>1.24x</td></tr><tr><td>COAT</td><td>3.2 GB</td><td>16.9 GB</td><td>35.6 GB</td><td>1.54x</td><td>4</td><td>11257 token/s</td><td>1.45x</td></tr><tr><td rowspan="3">8 GPUBS=2</td><td>BF16</td><td>6.5 GB</td><td>25.8 GB</td><td>41.2 GB</td><td>1.00x</td><td>4</td><td>8238 token/s</td><td>1.00x</td></tr><tr><td>TE</td><td>6.5 GB</td><td>21.9 GB</td><td>37.2 GB</td><td>1.11x</td><td>4</td><td>11704 token/s</td><td>1.42x</td></tr><tr><td>COAT</td><td>1.6 GB</td><td>16.9 GB</td><td>27.0 GB</td><td>1.52x</td><td>8</td><td>11241 token/s</td><td>1.36x</td></tr><tr><td>Llama-2-13B</td><td colspan="5">Context Length = 2048</td><td colspan="3">Maximum Batch Size, Context Length = 2048</td></tr><tr><td></td><td></td><td>Optimizer</td><td>Activations</td><td>Peak</td><td>Ratio</td><td>Max BS</td><td>Speed</td><td>Ratio</td></tr><tr><td rowspan="3">2 GPUBS=1</td><td>BF16</td><td>-</td><td>-</td><td>OOM</td><td></td><td></td><td>OOM</td><td></td></tr><tr><td>TE</td><td>-</td><td>-</td><td>OOM</td><td></td><td></td><td>OOM</td><td></td></tr><tr><td>COAT</td><td>12.6 GB</td><td>10.1 GB</td><td>73.2 GB</td><td>V</td><td>1</td><td>2137 token/s</td><td></td></tr><tr><td rowspan="3">4 GPUBS=1</td><td>BF16</td><td>25.1 GB</td><td>20.1 GB</td><td>76.1 GB</td><td>1.00x</td><td>1</td><td>2345 token/s</td><td>1.00x</td></tr><tr><td>TE</td><td>25.1 GB</td><td>17.2 GB</td><td>73.0 GB</td><td>1.04x</td><td>1</td><td>2851 token/s</td><td>1.21x</td></tr><tr><td>COAT</td><td>6.3 GB</td><td>13.2 GB</td><td>49.1 GB</td><td>1.55x</td><td>2</td><td>5295 token/s</td><td>2.25x</td></tr><tr><td rowspan="3">8 GPUBS=1</td><td>BF16</td><td>12.6 GB</td><td>20.1 GB</td><td>49.4 GB</td><td>1.00x</td><td>2</td><td>3907 token/s</td><td>1.00x</td></tr><tr><td>TE</td><td>12.6 GB</td><td>17.2 GB</td><td>46.5 GB</td><td>1.06x</td><td>2</td><td>5604 token/s</td><td>1.43x</td></tr><tr><td>COAT</td><td>3.1 GB</td><td>13.2 GB</td><td>32.5 GB</td><td>1.52x</td><td>4</td><td>5650 token/s</td><td>1.44x</td></tr><tr><td>Llama-30B</td><td colspan="5">Context Length = 2048</td><td colspan="3">Maximum Batch Size, Context Length = 2048</td></tr><tr><td></td><td></td><td>Optimizer</td><td>Activations</td><td>Peak</td><td>Ratio</td><td>Max BS</td><td>Speed</td><td>Ratio</td></tr><tr><td rowspan="3">8 GPUBS=1</td><td>BF16</td><td>-</td><td>-</td><td>OOM</td><td></td><td>-</td><td>OOM</td><td></td></tr><tr><td>TE</td><td>-</td><td>-</td><td>OOM</td><td></td><td>-</td><td>OOM</td><td></td></tr><tr><td>COAT</td><td>7.8 GB</td><td>24.2 GB</td><td>70.5 GB</td><td>V</td><td>1</td><td>1363 token/s</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents a detailed comparison of end-to-end memory reduction and speedup results across different configurations for transformer models, specifically Llama-2-7B, Llama-2-13B, and Llama-30B, with variations in the number of GPUs used (1, 2, 4, and 8).
> <details>
> <summary>read the caption</summary>
> Table 7: End-to-end memory reduction and speedup results. BS refers to batch size. CL refers to context length. We report token/s per GPU for speed results. ‡ means CL=1024.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td></td><td colspan="6">Second Order</td></tr><tr><td>First Order</td><td>E4M3</td><td>E4M3 + Expand</td><td>E5M2</td><td>E5M2 + Expand</td><td>DE8</td><td>DE8 + Expand</td></tr><tr><td>E4M3 + Expand</td><td>15.13</td><td>12.31</td><td>21.96</td><td>12.43</td><td>14.01</td><td>18.84</td></tr><tr><td>DE8</td><td>12.11</td><td>8.27</td><td>20.02</td><td>8.43</td><td>10.54</td><td>16.25</td></tr><tr><td>DE8 + Expand</td><td>11.57</td><td>7.47</td><td>19.69</td><td>7.65</td><td>9.91</td><td>15.81</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 presents quantization error of first and second order momentum under different quantization methods, showing that Dynamic Range Expansion consistently improves accuracy regardless of the underlying quantization method.
> <details>
> <summary>read the caption</summary>
> Table 8: Dynamic Range Expansion is compatible with DE8 (8-bit dynamic quantization).
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.19313/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19313/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}