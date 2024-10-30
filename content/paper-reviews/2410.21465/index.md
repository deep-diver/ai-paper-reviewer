---
title: "ShadowKV: KV Cache in Shadows for High-Throughput Long-Context LLM Inference"
summary: "SHADOWKV boosts long-context LLM inference throughput by up to 3x and supports 6x larger batch sizes using a novel low-rank key cache and value cache offloading strategy."
categories: ["AI Generated"]
tags: ["🔖 24-10-28", "🤗 24-10-30"]
showSummary: true
date: 2024-10-28
draft: false
---

{{< keyword >}} 2410.21465 {{< /keyword >}}

### TL;DR


{{< lead >}}

Serving long-context LLMs efficiently is challenging due to the expanding key-value (KV) cache, leading to high memory usage and slow inference.  Existing solutions like dynamic sparse attention methods either fail to reduce GPU memory sufficiently or introduce high latency by offloading to the CPU. This issue limits the throughput and scalability of serving long-context LLMs.



To address these challenges, SHADOWKV introduces a novel system that leverages low-rank key cache and offloads the value cache to reduce memory usage.  **An accurate KV selection strategy minimizes decoding latency.**  Benchmarks show SHADOWKV supports up to 6x larger batch sizes and a 3.04x throughput improvement on an A100 GPU without sacrificing accuracy, even surpassing the performance with infinite batch size and memory. **The efficient design of SHADOWKV offers a significant advancement in high-throughput long-context LLM inference**.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.21465" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.21465" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs), particularly those focused on efficient inference and long-context processing.  **SHADOWKV offers a significant advancement in LLM serving by dramatically increasing throughput and reducing memory usage.**  The findings directly impact the scalability and efficiency of deploying LLMs in various applications, pushing the boundaries of long-context capabilities.  The innovative approach of leveraging low-rank properties of key caches and offloading value caches opens new avenues for optimization and inspires further research into efficient memory management and sparse attention techniques.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SHADOWKV significantly improves the throughput of long-context LLM inference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses a low-rank key cache and offloads the value cache to reduce memory usage and latency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SHADOWKV achieves high accuracy with a minimal sparse KV cache budget (1.56%). {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21465/figures_3_0.png)

> 🔼 This figure illustrates the SHADOWKV system architecture, highlighting its key components and workflow for both pre-filling and decoding phases, and shows its performance gain in throughput.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: SHADOWKV enhances long-context LLM inference throughput by offloading the value cache to the CPU while maintaining a low-rank key cache, landmarks, and outliers on the GPU. During decoding, it employs landmarks for efficient sparse attention, reducing computation and data movement. Right: SHADOWKV effectively utilizes a limited KV budget to achieve high accuracy, theoretically reaching over 7 TB/s equivalent bandwidth on an A100, and empirically boosts generation throughput by 3.04× for Llama-3.1-8B with on a batch of 122K contexts.
> </details>





![](https://ai-paper-reviewer.com/2410.21465/charts_2_0.png)

> 🔼 The chart displays the low-rank properties of pre-RoPE keys, subspace similarity between sequences, and the relative overhead of SVD for different sequence lengths.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) For a sample from PG-19 [12, 40] fed into Llama-3.1-8B, the pre-RoPE keys are the most low-rank, as indicated by the sharpest decay in singular values. (b) Average similarities, defined in Section 3.1, between rank-256 truncated SVD projections of pre-RoPE keys from PG-19 sequences using Llama-3.1-8B. Similarity is measured between a length 16K 'Context' and either a 16K+2K continuation on 'Context' ('Extended context') or a new length 16K sequence ('Inter-context'). Pre-RoPE keys within sequences exhibit similar low-rank subspaces, while those between sequences show different patterns. (c) The relative overhead of singular value decomposition (SVD) decreases as sequence length scales for the pre-filling stage.
> </details>





{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Methods</td><td>N-S1</td><td>N-S2</td><td>N-MK1</td><td>N-MK2</td><td>N-MQ</td><td>N-MV</td><td>QA-1</td><td>QA-2</td><td>VT</td><td>FWE</td><td>Avg.</td></tr><tr><td>Llama-3-8B-1M</td><td>100.00</td><td>100.00</td><td>98.96</td><td>98.96</td><td>98.96</td><td>95.57</td><td>75.00</td><td>48.96</td><td>78.54</td><td>71.85</td><td>86.68</td></tr><tr><td>Loki</td><td>18.75</td><td>1.04</td><td>2.08</td><td>0.00</td><td>1.56</td><td>0.78</td><td>4.17</td><td>13.54</td><td>26.04</td><td>25.35</td><td>9.33</td></tr><tr><td>Loki (V only)</td><td>41.67</td><td>6.25</td><td>37.50</td><td>1.04</td><td>8.07</td><td>30.73</td><td>10.42</td><td>19.79</td><td>51.67</td><td>37.50</td><td>24.46</td></tr><tr><td>Quest</td><td>100.00</td><td>100.00</td><td>98.96</td><td>77.08</td><td>97.65</td><td>93.49</td><td>60.42</td><td>50.00</td><td>77.08</td><td>65.63</td><td>82.03</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>100.00</td><td>98.96</td><td>85.42</td><td>97.92</td><td>95.49</td><td>70.83</td><td>46.88</td><td>78.75</td><td>65.63</td><td>83.99</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>97.92</td><td>98.96</td><td>96.88</td><td>95.83</td><td>72.92</td><td>52.08</td><td>81.67</td><td>72.57</td><td>86.88</td></tr><tr><td>GLM-4-9B-1M</td><td>100.00</td><td>100.00</td><td>94.79</td><td>87.50</td><td>99.74</td><td>93.75</td><td>67.71</td><td>55.21</td><td>97.29</td><td>72.22</td><td>86.82</td></tr><tr><td>Loki</td><td>71.88</td><td>27.08</td><td>22.92</td><td>2.08</td><td>9.90</td><td>11.46</td><td>28.13</td><td>27.08</td><td>31.04</td><td>54.17</td><td>28.57</td></tr><tr><td>Loki (V only)</td><td>96.88</td><td>55.21</td><td>56.25</td><td>18.75</td><td>51.04</td><td>50.52</td><td>45.83</td><td>39.58</td><td>72.71</td><td>59.72</td><td>54.65</td></tr><tr><td>Quest</td><td>100.00</td><td>95.83</td><td>90.62</td><td>54.17</td><td>94.01</td><td>76.30</td><td>55.21</td><td>52.08</td><td>95.83</td><td>64.58</td><td>77.86</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>96.88</td><td>93.75</td><td>72.92</td><td>95.83</td><td>83.07</td><td>56.25</td><td>53.13</td><td>96.88</td><td>65.97</td><td>81.47</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>95.83</td><td>83.33</td><td>98.70</td><td>87.76</td><td>69.79</td><td>55.21</td><td>97.50</td><td>68.06</td><td>85.62</td></tr><tr><td>Llama-3.1-8B</td><td>100.00</td><td>100.00</td><td>98.96</td><td>91.67</td><td>98.96</td><td>95.31</td><td>82.29</td><td>47.92</td><td>68.96</td><td>71.18</td><td>85.53</td></tr><tr><td>Loki</td><td>68.75</td><td>32.29</td><td>32.29</td><td>20.83</td><td>42.71</td><td>28.65</td><td>41.67</td><td>33.33</td><td>24.79</td><td>29.86</td><td>35.52</td></tr><tr><td>Loki (V only)</td><td>95.83</td><td>36.46</td><td>57.29</td><td>62.50</td><td>77.86</td><td>70.83</td><td>69.79</td><td>39.58</td><td>35.21</td><td>37.50</td><td>58.29</td></tr><tr><td>Quest</td><td>100.00</td><td>98.96</td><td>97.92</td><td>34.38</td><td>93.49</td><td>88.54</td><td>70.83</td><td>44.79</td><td>65.63</td><td>68.40</td><td>76.29</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>98.96</td><td>98.96</td><td>56.25</td><td>95.83</td><td>90.63</td><td>76.04</td><td>46.88</td><td>66.25</td><td>67.36</td><td>79.72</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>100.00</td><td>83.33</td><td>97.92</td><td>92.19</td><td>81.25</td><td>48.96</td><td>67.08</td><td>64.93</td><td>83.57</td></tr><tr><td>Yi-9B-200K</td><td>100.00</td><td>100.00</td><td>86.46</td><td>62.50</td><td>64.58</td><td>32.55</td><td>44.79</td><td>39.58</td><td>36.87</td><td>89.93</td><td>65.73</td></tr><tr><td>Loki</td><td>34.38</td><td>2.08</td><td>2.08</td><td>0.00</td><td>0.00</td><td>0.52</td><td>22.92</td><td>21.88</td><td>0.00</td><td>25.00</td><td>10.89</td></tr><tr><td>Loki (V only)</td><td>59.38</td><td>11.46</td><td>18.75</td><td>5.21</td><td>4.43</td><td>2.08</td><td>22.92</td><td>31.25</td><td>0.00</td><td>35.07</td><td>19.06</td></tr><tr><td>Quest</td><td>100.00</td><td>98.96</td><td>79.17</td><td>26.04</td><td>56.51</td><td>31.77</td><td>32.29</td><td>31.25</td><td>51.04</td><td>71.88</td><td>57.89</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>100.00</td><td>80.21</td><td>45.83</td><td>59.37</td><td>31.90</td><td>36.45</td><td>34.37</td><td>53.54</td><td>71.88</td><td>61.36</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>82.29</td><td>67.71</td><td>63.28</td><td>31.51</td><td>43.75</td><td>38.54</td><td>56.04</td><td>72.22</td><td>65.53</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison of various methods (Loki, Quest, and SHADOWKV) on the RULER benchmark for Llama-3.8B-1M, GLM-4-9B-1M, Llama-3.1-8B, and Yi-9B-200K models, showcasing SHADOWKV's superior accuracy with a minimal sparse budget.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models and different methods on RULER [20] evaluated at length of 128K. SHADOWKV outperforms other methods with a 1.56% sparse budget.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.21465/figures_5_0.png)

> 🔼 The figure illustrates the pre-filling stage of the SHADOWKV system, showing how low-rank key caches, landmarks, and outlier chunks are created and stored.
> <details>
> <summary>read the caption</summary>
> Figure 4: SHADOWKV pre-filling.
> </details>



![](https://ai-paper-reviewer.com/2410.21465/figures_6_0.png)

> 🔼 This figure illustrates the SHADOWKV system architecture, showing how it enhances long-context LLM inference throughput by offloading the value cache to the CPU and employing a low-rank key cache with landmarks and outliers for efficient sparse attention.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: SHADOWKV enhances long-context LLM inference throughput by offloading the value cache to the CPU while maintaining a low-rank key cache, landmarks, and outliers on the GPU. During decoding, it employs landmarks for efficient sparse attention, reducing computation and data movement. Right: SHADOWKV effectively utilizes a limited KV budget to achieve high accuracy, theoretically reaching over 7 TB/s equivalent bandwidth on an A100, and empirically boosts generation throughput by 3.04× for Llama-3.1-8B with on a batch of 122K contexts.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.21465/charts_4_0.png)

> 🔼 The chart displays the low-rank properties of the pre-RoPE keys, the small number of outlier chunks, and the high hit rate of the KV cache, supporting the design choices of SHADOWKV.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Accuracy on the needle retrieval task across various ranks shows that the pre-RoPE key cache can be compressed by over 6 times without a drop in accuracy. (b) The number of notable outlier chunks is small, taking only 0.2-0.3%. (c) The KV cache has a high hit rate, reducing computations and data movements by over 60% for each decoding step.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_9_0.png)

> 🔼 The chart visualizes the performance of different LLMs on the Needle In A Haystack benchmark with and without the SHADOWKV optimization.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_9_1.png)

> 🔼 The chart displays the accuracy of different methods (Full Attention, SnapKV, StreamingLLM, and ShadowKV) across multiple conversation turns in a multi-turn Needle In A Haystack (Multi-NIAH) task.
> <details>
> <summary>read the caption</summary>
> Figure 7: Multi-turn NIAH.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_10_0.png)

> 🔼 The chart compares the accuracy of SHADOWKV and Quest models against a model with full cache across various tasks and sparse KV cache budgets.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison results between the models with full cache, our SHADOWKV, and Quest.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_11_0.png)

> 🔼 Figure 9 shows the impact of chunk size and rank on batch size, accuracy, and chunk hit rate for Llama-3-8B-1M across different tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: (a) Impact of chunk size on batch size and accuracy. (b) Minimal effect of chunk size on hit rate. (c) Accuracy trends across different ranks with Llama-3-8B-1M on different tasks.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_0.png)

> 🔼 The chart visualizes the ability of SHADOWKV to process information at different positions across various context windows, ranging from 16K to 1M tokens.
> <details>
> <summary>read the caption</summary>
> Figure 6: Needle In A Haystack.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_1.png)

> 🔼 The chart visualizes the performance of different LLMs on the Needle In A Haystack benchmark with and without the proposed SHADOWKV method, showing the accuracy of information retrieval across various context windows and needle depths.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_2.png)

> 🔼 The chart visualizes the performance of different models with and without SHADOWKV on the Needle In A Haystack benchmark, showing the impact of SHADOWKV on information retrieval capabilities across various context lengths and depths.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_3.png)

> 🔼 The chart displays the performance of different large language models on the Needle In A Haystack benchmark, with and without the SHADOWKV optimization, showing the ability to process information at various positions within different context window sizes.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_4.png)

> 🔼 The chart displays the accuracy of several large language models (LLMs) in retrieving information from different positions within various context window lengths, with and without the use of SHADOWKV.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_5.png)

> 🔼 The heatmap visualizes the accuracy of SHADOWKV in retrieving information at various positions across different context window lengths.
> <details>
> <summary>read the caption</summary>
> Figure 6: Needle In A Haystack.
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_6.png)

> 🔼 The chart visualizes the performance of different LLMs (GLM-4-9B-1M, Llama-3.1-8B-Instruct, Yi-9B-200K, Phi-3-Mini-128K, and Qwen2-7B-128K) on the Needle In A Haystack benchmark, comparing the models with and without SHADOWKV.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_7.png)

> 🔼 The chart visualizes the performance of different LLMs on the Needle In A Haystack benchmark with and without the SHADOWKV optimization.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_8.png)

> 🔼 The chart visualizes the performance of different LLMs on the Needle In A Haystack benchmark with and without SHADOWKV, showing the ability of SHADOWKV to maintain performance across various context lengths.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


![](https://ai-paper-reviewer.com/2410.21465/charts_17_9.png)

> 🔼 The chart visualizes the performance of different LLMs on the Needle In A Haystack benchmark with and without the SHADOWKV optimization, showing the accuracy of retrieving information at different positions across various context windows.
> <details>
> <summary>read the caption</summary>
> Figure 10: Needle In A Haystack [24] results using GLM-4-9B-1M [14], Llama-3.1-8B-Instruct [33], Yi-9B-200K [3], Phi-3-Mini-128K [1], and Qwen2-7B-128K [59].
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Methods</td><td>8K</td><td>16K</td><td>32K</td><td>64K</td><td>128K</td><td>256K</td><td>Avg.</td></tr><tr><td>Llama-3-8B-1M w  MInference</td><td>89.92</td><td>88.02</td><td>82.81</td><td>78.45</td><td>78.12</td><td>74.57</td><td>81.98</td></tr><tr><td>SHADOWKV w / MInference</td><td>90.47</td><td>88.12</td><td>83.28</td><td>77.71</td><td>78.32</td><td>74.31</td><td>82.04</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison of different models and methods on the RULER benchmark with a context length of 128K, highlighting SHADOWKV's superior performance with a 1.56% sparse budget.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models and different methods on RULER [20] evaluated at length of 128K. SHADOWKV outperforms other methods with a 1.56% sparse budget.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Model</td><td>Context</td><td>Full Attention</td><td>SHADOWKV</td><td>Gain</td><td>Full Attention (Inf)</td></tr><tr><td rowspan="3">Llama-3-8B-1M (8 KV heads)</td><td>60K</td><td>160.62 (8)</td><td>455.14 (48)</td><td>2.83x</td><td>168.72 (48) / 273.07 (Inf)</td></tr><tr><td>122K</td><td>80.77 (4)</td><td>239.51 (24)</td><td>2.97x</td><td>83.05 (24) / 134.30 (Inf)</td></tr><tr><td>244K</td><td>40.37 (2)</td><td>119.01 (12)</td><td>2.95x</td><td>52.00 (12) / 67.15 (Inf)</td></tr><tr><td rowspan="2">Llama-3.1-8B (8 KV heads)</td><td>60K</td><td>160.93 (8)</td><td>472.77 (48)</td><td>2.94x</td><td>168.72 (48) / 273.07 (Inf)</td></tr><tr><td>122K</td><td>80.78 (4)</td><td>245.90 (24)</td><td>3.04x</td><td>83.05 (24) / 134.30 (Inf)</td></tr><tr><td rowspan="3">GLM-4-9B-1M (4 KV heads)</td><td>60K</td><td>241.05 (12)</td><td>615.89 (50)</td><td>2.56x</td><td>266.24 (50) / 436.91 (Inf)</td></tr><tr><td>122K</td><td>122.67 (6)</td><td>293.40 (25)</td><td>2.39x</td><td>158.83 (25) / 214.87 (Inf)</td></tr><tr><td>244K</td><td>61.13 (3)</td><td>136.51 (12)</td><td>2.23x</td><td>78.84 (12) / 107.44 (Inf)</td></tr><tr><td rowspan="3">Yi-9B-200K (4 KV heads)</td><td>60K</td><td>204.81 (10)</td><td>544.36 (42)</td><td>2.66x</td><td>271.21 (42) / 364.09 (Inf)</td></tr><tr><td>122K</td><td>101.44 (5)</td><td>260.03 (21)</td><td>2.56x</td><td>133.53 (21) / 179.06 (Inf)</td></tr><tr><td>244K</td><td>46.74 (2)</td><td>118.55 (10)</td><td>2.54x</td><td>65.79 (10) / 89.53 (Inf)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the generation throughput (tokens per second) achieved by both full attention and SHADOWKV on an A100 GPU for various models and context lengths.
> <details>
> <summary>read the caption</summary>
> Table 4: Generation throughput (tokens/s) on an A100. The gray text in brackets denotes batch size.
> </details>

{{< table-caption >}}
<table id='12' style='font-size:14px'><tr><td>Methods</td><td>En.Sum</td><td>En.QA</td><td>En.MC</td><td>En.Dia</td><td>Zh.QA</td><td>Code.Debug</td><td>Math.Find</td><td>Retr.PassKey</td><td>Retr.Num</td></tr><tr><td>Llama-3-8B-1M</td><td>23.05</td><td>18.14</td><td>65.06</td><td>10.50</td><td>12.47</td><td>24.36</td><td>37.14</td><td>100.00</td><td>100.00</td></tr><tr><td>SHADOWKV</td><td>21.50</td><td>17.73</td><td>64.63</td><td>10.50</td><td>12.45</td><td>23.86</td><td>37.43</td><td>100.00</td><td>100.00</td></tr><tr><td>GLM-4-9B-1M</td><td>28.61</td><td>9.25</td><td>68.12</td><td>39.50</td><td>11.77</td><td>30.20</td><td>40.00</td><td>100.00</td><td>100.00</td></tr><tr><td>SHADOWKV</td><td>23.22</td><td>8.48</td><td>68.56</td><td>32.50</td><td>11.27</td><td>30.46</td><td>40.00</td><td>100.00</td><td>100.00</td></tr><tr><td>Llama-3.1-8B</td><td>26.42</td><td>14.48</td><td>66.38</td><td>16.00</td><td>12.92</td><td>21.07</td><td>34.00</td><td>100.00</td><td>99.66</td></tr><tr><td>SHADOWKV</td><td>24.23</td><td>13.83</td><td>66.38</td><td>16.50</td><td>12.76</td><td>21.07</td><td>34.00</td><td>100.00</td><td>94.41</td></tr><tr><td>Yi-9B-200K</td><td>8.88</td><td>10.61</td><td>61.57</td><td>5.50</td><td>13.88</td><td>21.57</td><td>23.71</td><td>100.00</td><td>99.66</td></tr><tr><td>SHADOWKV</td><td>8.92</td><td>10.06</td><td>59.39</td><td>6.00</td><td>13.89</td><td>20.56</td><td>24.29</td><td>100.00</td><td>99.83</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the accuracy results of different LLMs (Llama-3-8B-1M, GLM-4-9B-1M, Llama-3.1-8B, and Yi-9B-200K) and their SHADOWKV counterparts across various tasks within the InfiniteBench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 5: Accuracy of different methods with different models on InfiniteBench [65].
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21465/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}