---
title: "FlatQuant: Flatness Matters for LLM Quantization"
summary: "FLATQUANT achieves state-of-the-art LLM quantization, minimizing accuracy loss (<1%) and latency (up to 2.3x speedup) through fast, learnable affine transformations and efficient kernel fusion."
categories: ["AI Generated"]
tags: ["🔖 24-10-12", ]
showSummary: true
date: 2024-10-12
draft: false
---

{{< keyword >}} 2410.09426 {{< /keyword >}}

### TL;DR


{{< lead >}}

This paper introduces FLATQUANT, a novel post-training quantization technique for large language models (LLMs).  Current LLM quantization methods struggle with outliers in weights and activations, leading to significant accuracy loss. FLATQUANT addresses this by identifying optimal affine transformations for each layer to flatten the distributions of weights and activations before quantization.  This approach is combined with Kronecker decomposition to reduce the computational cost of the transformations and kernel fusion to minimize runtime overhead. Extensive experiments show FLATQUANT outperforms state-of-the-art methods, achieving less than 1% accuracy drop with W4A4 quantization on LLaMA-3-70B and significant speedups (up to 2.3x for prefill and 1.7x for decoding).

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.09426" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.09426" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on LLM optimization and efficient inference.  It introduces a novel, state-of-the-art quantization method that significantly improves accuracy and speed, addressing a key challenge in deploying LLMs on resource-constrained devices.  The findings are directly applicable to ongoing research and open new avenues for exploring improved quantization techniques and efficient kernel designs.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FLATQUANT sets a new state-of-the-art in LLM quantization, achieving less than 1% accuracy drop on LLaMA-3-70B with W4A4 quantization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method utilizes fast and learnable affine transformations, significantly reducing the slowdown caused by pre-quantization methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FLATQUANT's efficient kernel design achieves considerable speed improvements (up to 2.3x for prefill and 1.7x for decoding) compared to baselines. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.09426/figures_5_0.png)

> 🔼 Figure 3 illustrates the overall framework of FLATQUANT, including the notations, integration with a LLaMA layer, and an example of its application to a down-projection layer.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall framework of FLATQUANT. (a): necessary notations of FLATQUANT; (b): the integration of FLATQUANT with a conventional LLaMA layer, where merged parameters are grouped in red, online transformation and quantization functions in blue, and merged scaling vectors in green; (c): the exemplary view of FLATQUANT applied for the down-projection layer, where the scaling vector diag(c) over X is merged to Wu in practice.
> </details>





![](https://ai-paper-reviewer.com/2410.09426/charts_3_0.png)

> 🔼 The chart displays the distributions of original and transformed weights and activations of LLAMA models, illustrating the impact of different transformations on flatness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Method</td><td rowspan="2">w Quantizer</td><td colspan="5">WikiText-2</td><td colspan="5">C4</td></tr><tr><td>2-7B</td><td>2-13B</td><td>2-70B</td><td>3-8B</td><td>3-70B</td><td>2-7B</td><td>2-13B</td><td>2-70B</td><td>3-8B</td><td>3-70B</td></tr><tr><td>FP16</td><td>-</td><td>5.47</td><td>4.88</td><td>3.32</td><td>6.14</td><td>2.86</td><td>7.26</td><td>6.73</td><td>5.71</td><td>9.45</td><td>7.17</td></tr><tr><td>SmoothQuant</td><td>RTN</td><td>83.12</td><td>35.88</td><td>26.01</td><td>210.19</td><td>9.60</td><td>77.27</td><td>43.19</td><td>34.61</td><td>187.93</td><td>16.90</td></tr><tr><td>OmniQuant</td><td>RTN</td><td>14.74</td><td>12.28</td><td>-</td><td>-</td><td>-</td><td>21.40</td><td>16.24</td><td>-</td><td>-</td><td>-</td></tr><tr><td>AffineQuant</td><td>RTN</td><td>12.69</td><td>11.45</td><td>-</td><td>-</td><td>-</td><td>15.76</td><td>13.97</td><td>-</td><td>-</td><td>-</td></tr><tr><td>QuaRot</td><td>RTN</td><td>8.56</td><td>6.10</td><td>4.14</td><td>10.60</td><td>55.44</td><td>11.86</td><td>8.67</td><td>6.42</td><td>17.19</td><td>79.48</td></tr><tr><td>SpinQuant</td><td>RTN</td><td>6.14</td><td>5.44</td><td>3.82</td><td>7.96</td><td>7.58</td><td>9.19</td><td>8.11</td><td>6.26</td><td>13.45</td><td>15.39</td></tr><tr><td>FlatQuant</td><td>RTN</td><td>5.79</td><td>5.12</td><td>3.55</td><td>6.98</td><td>3.78</td><td>7.79</td><td>7.09</td><td>5.91</td><td>11.13</td><td>7.86</td></tr><tr><td>QUIK-4B</td><td>GPTQ</td><td>8.87</td><td>7.78</td><td>6.91</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>QuaRot</td><td>GPTQ</td><td>6.10</td><td>5.40</td><td>3.79</td><td>8.16</td><td>6.60</td><td>8.32</td><td>7.54</td><td>6.12</td><td>13.38</td><td>12.87</td></tr><tr><td>SpinQuant</td><td>GPTQ</td><td>5.96</td><td>5.24</td><td>3.70</td><td>7.39</td><td>6.21</td><td>8.28</td><td>7.48</td><td>6.07</td><td>12.19</td><td>12.82</td></tr><tr><td>FLATQUANT</td><td>GPTQ</td><td>5.78</td><td>5.11</td><td>3.54</td><td>6.90</td><td>3.77</td><td>7.86</td><td>7.11</td><td>5.92</td><td>11.21</td><td>7.93</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the perplexity results for different LLAMA models that are quantized to 4-bit weight and activation using various methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.09426/figures_16_0.png)

> 🔼 The figure illustrates the overall framework of FLATQUANT, including its integration with a conventional LLaMA layer and its application to the down-projection layer.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall framework of FLATQUANT. (a): necessary notations of FLATQUANT; (b): the integration of FLATQUANT with a conventional LLaMA layer, where merged parameters are grouped in red, online transformation and quantization functions in blue, and merged scaling vectors in green; (c): the exemplary view of FLATQUANT applied for the down-projection layer, where the scaling vector diag(c) over X is merged to Wu in practice.
> </details>



![](https://ai-paper-reviewer.com/2410.09426/figures_21_0.png)

> 🔼 The figure visualizes the distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B models, demonstrating the impact of different pre-quantization transformations on weight and activation flatness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>



![](https://ai-paper-reviewer.com/2410.09426/figures_23_0.png)

> 🔼 Figure 2 shows the mean squared error (MSE) of quantization across Transformer layers and input tokens for three different pre-quantization methods, highlighting the superior flatness of FLATQUANT in reducing error propagation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The mean squared error (MSE) of quantization across Transformer layers and input sequence in LLaMA-3-8B. Figure 2a-2c plot the MSE surface of each method, while Figure 2d overlays these surfaces by dividing each MSE with that of FLATQUANT. More details and visualizations can be found in Appendix D.
> </details>



![](https://ai-paper-reviewer.com/2410.09426/figures_23_1.png)

> 🔼 The figure shows the mean squared error (MSE) of quantization across Transformer layers and input tokens for three different methods (per-channel scaling, Hadamard transform, and FLATQUANT) and a stacked view comparing the three methods.
> <details>
> <summary>read the caption</summary>
> Figure 2: The mean squared error (MSE) of quantization across Transformer layers and input sequence in LLaMA-3-8B. Figure 2a-2c plot the MSE surface of each method, while Figure 2d overlays these surfaces by dividing each MSE with that of FLATQUANT. More details and visualizations can be found in Appendix D.
> </details>



![](https://ai-paper-reviewer.com/2410.09426/figures_23_2.png)

> 🔼 The figure shows the mean squared error (MSE) of quantization across Transformer layers and input tokens for three different quantization methods (per-channel scaling, Hadamard transform, and FLATQUANT), visualizing how flatness affects error propagation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The mean squared error (MSE) of quantization across Transformer layers and input sequence in LLaMA-3-8B. Figure 2a-2c plot the MSE surface of each method, while Figure 2d overlays these surfaces by dividing each MSE with that of FLATQUANT. More details and visualizations can be found in Appendix D.
> </details>



![](https://ai-paper-reviewer.com/2410.09426/figures_23_3.png)

> 🔼 The figure shows the mean squared error (MSE) of quantization across Transformer layers and input tokens for three different quantization methods (per-channel scaling, Hadamard transform, and FLATQUANT) and an overlay of the MSEs, normalized by FLATQUANT's MSE.
> <details>
> <summary>read the caption</summary>
> Figure 2: The mean squared error (MSE) of quantization across Transformer layers and input sequence in LLaMA-3-8B. Figure 2a-2c plot the MSE surface of each method, while Figure 2d overlays these surfaces by dividing each MSE with that of FLATQUANT. More details and visualizations can be found in Appendix D.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.09426/charts_3_1.png)

> 🔼 The chart visualizes the mean squared error (MSE) of quantization across Transformer layers and input tokens for three different methods (Per-channel Scaling, Hadamard Transform, and FLATQUANT) and shows how FLATQUANT reduces the MSE.
> <details>
> <summary>read the caption</summary>
> Figure 2: The mean squared error (MSE) of quantization across Transformer layers and input sequence in LLaMA-3-8B. Figure 2a-2c plot the MSE surface of each method, while Figure 2d overlays these surfaces by dividing each MSE with that of FLATQUANT. More details and visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_9_0.png)

> 🔼 The chart displays the prefill and decoding speedup of the LLaMA-2-7B model with different batch sizes, showing FLATQUANT's performance improvements over INT4 and QuaRot.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prefill and decoding speedup of LLaMA-2-7B model across different batch sizes. We decode 256 tokens after the prefill on a sequence length of 2048.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_9_1.png)

> 🔼 The chart displays the prefill speedup and WikiText2 perplexity (PPL) of the LLaMA-2-7B model with varying sizes of decomposed matrices, showing the impact of Kronecker decomposition on model performance and speedup.
> <details>
> <summary>read the caption</summary>
> Figure 5: Prefill speedup and WikiText2 PPL results of different decomposed matrix sizes on LLaMA-2-7B model. We decompose the hidden dimension 4096 into n₁ × n₂ and range n₁ from 1 to 2048, where n₁ = 1 amounts to maintaining a full-size transformation matrix. More details can be found in Appendix C.3.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_9_2.png)

> 🔼 The chart displays the prefill speedup of the LLaMA-2-7B model with different online transformations applied sequentially, showing the impact of each transformation on overall speedup.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prefill speedup of LLaMA-2-7B on a sequence length of 2048 under a batch size of 64 after applying different online transformations. We incorporate different online transformations sequentially to gauge their impact on the final speedup. Each point on the x-axis indicates adding a new online transformation.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_20_0.png)

> 🔼 The chart displays the prefill and decoding speedup of the LLaMA-2-7B model across different batch sizes, showing FLATQUANT's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prefill and decoding speedup of LLaMA-2-7B model across different batch sizes. We decode 256 tokens after the prefill on a sequence length of 2048.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_20_1.png)

> 🔼 The chart displays the prefill and decoding speedup of the LLaMA-2-7B model across different batch sizes, showing FLATQUANT's improved speed compared to baselines.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prefill and decoding speedup of LLaMA-2-7B model across different batch sizes. We decode 256 tokens after the prefill on a sequence length of 2048.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_0.png)

> 🔼 The chart displays the distributions of weights and activations from LLaMA-3-8B and LLaMA-3-70B models before and after applying different transformations (original, per-channel scaling, Hadamard, and FLATQUANT).
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_1.png)

> 🔼 Figure 1 shows the distributions of weights and activations from LLaMA-3-8B and LLaMA-3-70B models after applying different transformations, illustrating the flatness achieved by FLATQUANT.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_2.png)

> 🔼 The chart displays the distributions of weights and activations from LLaMA-3-8B and LLaMA-3-70B models before and after applying different pre-quantization transformations, illustrating the effect on flatness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_3.png)

> 🔼 Figure 1 shows the distributions of weights and activations from LLaMA-3-8B and LLaMA-3-70B models before and after applying different pre-quantization transformations, illustrating the effectiveness of FLATQUANT in achieving flatter weight and activation distributions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_4.png)

> 🔼 Figure 1 shows the distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B models after applying different pre-quantization transformations, including original, per-channel scaling, Hadamard, and FLATQUANT.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


![](https://ai-paper-reviewer.com/2410.09426/charts_22_5.png)

> 🔼 Figure 1 shows the distributions of weights and activations from LLaMA-3-8B and LLaMA-3-70B models after applying different transformations, illustrating their flatness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distributions of weights and inputs from LLaMA-3-8B and LLaMA-3-70B, sorted by the channel magnitudes (i.e., the Frobenius norm) in descending order. In a Transformer layer, W。 and X, denote the weight matrix and input of the output projection layer in the self-attention layer, respectively. Wg and X, denote the weight and input of the gated linear layer of the feed-forward network, respectively. More visualizations can be found in Appendix D.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Method</td><td>Writing</td><td>Roleplay</td><td>Reasoning</td><td>Math</td><td>Coding</td><td>Extraction</td><td>STEM</td><td>Humanities</td><td>Avg</td></tr><tr><td>FP16</td><td>8.17</td><td>8.10</td><td>5.05</td><td>7.00</td><td>6.10</td><td>8.67</td><td>8.50</td><td>8.91</td><td>7.60</td></tr><tr><td>QuaRot</td><td>7.20</td><td>6.90</td><td>3.90</td><td>5.30</td><td>4.05</td><td>6.70</td><td>6.05</td><td>7.80</td><td>5.99</td></tr><tr><td>FlatQuant</td><td>7.95</td><td>7.35</td><td>4.70</td><td>7.20</td><td>4.80</td><td>7.60</td><td>7.20</td><td>8.70</td><td>6.94</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance of different quantization methods on the MT-Bench benchmark using the LLaMA-3.1-8B-Instruct model with 4-bit weight and activation quantization.
> <details>
> <summary>read the caption</summary>
> Table 3: MT-Bench results of 4-bit weight & activation quantized LLaMA-3.1-8B-Instruct model.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>LT</td><td>PS</td><td>LCT</td><td>WikiText-2</td><td>C4</td><td>ARC-C</td><td>ARC-E</td><td>HellaSwag</td><td>LAMBADA</td><td>PIQA</td><td>Winogrande</td><td>Avg</td></tr><tr><td></td><td></td><td></td><td>1266.60</td><td>936.41</td><td>25.26</td><td>28.62</td><td>27.04</td><td>1.26</td><td>51.80</td><td>51.93</td><td>30.99</td></tr><tr><td></td><td></td><td></td><td>8.50</td><td>13.51</td><td>44.97</td><td>71.38</td><td>73.17</td><td>67.05</td><td>76.88</td><td>67.48</td><td>66.82</td></tr><tr><td>V</td><td>V</td><td></td><td>7.95</td><td>12.74</td><td>44.20</td><td>71.89</td><td>74.21</td><td>68.72</td><td>77.15</td><td>66.30</td><td>67.08</td></tr><tr><td>V</td><td></td><td>V</td><td>7.11</td><td>11.47</td><td>49.32</td><td>76.14</td><td>76.30</td><td>72.17</td><td>78.89</td><td>71.51</td><td>70.72</td></tr><tr><td>V</td><td>V</td><td>V</td><td>6.98</td><td>11.13</td><td>50.00</td><td>75.80</td><td>76.80</td><td>72.91</td><td>79.16</td><td>72.69</td><td>71.23</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity scores on WikiText-2 and C4 datasets for various 4-bit quantized LLAMA models using different quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="2">LLaMA-3-8B</td><td colspan="2">WikiText-2 PPL</td><td colspan="2">C4 PPL</td></tr><tr><td>W4A16</td><td>W3A16</td><td>W4A16</td><td>W3A16</td></tr><tr><td>FP16</td><td colspan="2">6.14</td><td colspan="2">9.45</td></tr><tr><td>RTN</td><td>8.70</td><td>2.2E3</td><td>14.00</td><td>5.6E3</td></tr><tr><td>GPTQ</td><td>7.00</td><td>13.00</td><td>11.80</td><td>45.90</td></tr><tr><td>GPTQ-g128</td><td>6.50</td><td>8.20</td><td>10.40</td><td>13.70</td></tr><tr><td>AWQ</td><td>7.10</td><td>12.80</td><td>10.10</td><td>16.80</td></tr><tr><td>QuIP</td><td>6.50</td><td>7.50</td><td>11.10</td><td>11.30</td></tr><tr><td>FLATQUANT-RTN</td><td>6.54</td><td>7.78</td><td>10.17</td><td>12.64</td></tr><tr><td>FLATQUANT-GPTQ</td><td>6.48</td><td>7.52</td><td>10.28</td><td>12.91</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for different 4-bit weight and activation quantized LLaMA models on WikiText-2 and C4 datasets, comparing various quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td>Benoit Jacob, Skirmantas Kligys, Bo Chen, Menglong Zhu, Matthew Tang, Andrew Howard, Hartwig Adam, and Dmitry Kalenichenko. Quantization and training of neural networks for efficient integer-arithmetic-only inference. In Proceedings of the IEEE conference on computer vision and pattern recognition, pp. 2704-2713, 2018.</td></tr><tr><td>Albert Q Jiang, Alexandre Sablayrolles, Arthur Mensch, Chris Bamford, Devendra Singh Chaplot, Diego de las Casas, Florian Bressand, Gianna Lengyel, Guillaume Lample, Lucile Saulnier, et al. Mistral 7b. arXiv preprint arXiv:2310.06825, 2023.</td></tr><tr><td>Shiyao Li, Xuefei Ning, Luning Wang, Tengxuan Liu, Xiangsheng Shi, Shengen Yan, Guohao Dai, Huazhong Yang, and Yu Wang. Evaluating quantized large language models. arXiv preprint arXiv:2402.18158, 2024.</td></tr><tr><td>Yuhang Li, Ruihao Gong, Xu Tan, Yang Yang, Peng Hu, Qi Zhang, Fengwei Yu, Wei Wang, and Shi Gu. Brecq: Pushing the limit of post-training quantization by block reconstruction. arXiv preprint arXiv:2102.05426, 2021.</td></tr><tr><td>Ji Lin, Jiaming Tang, Haotian Tang, Shang Yang, Wei-Ming Chen, Wei-Chen Wang, Guangxuan Xiao, Xingyu Dang, Chuang Gan, and Song Han. Awq: Activation-aware weight quantization for llm compression and acceleration. arXiv preprint arXiv:2306.00978, 2023.</td></tr><tr><td>Yujun Lin, Haotian Tang, Shang Yang, Zhekai Zhang, Guangxuan Xiao, Chuang Gan, and Song Han. Qserve: W 4a8kv4 quantization and system co-design for efficient llm serving. arXiv preprint arXiv:2405.04532, 2024.</td></tr><tr><td>Ruikang Liu, Haoli Bai, Haokun Lin, Yuening Li, Han Gao, Zhengzhuo Xu, Lu Hou, Jun Yao, and Chun Yuan. Intactkv: Improving large language model quantization by keeping pivot tokens intact. arXiv preprint arXiv:2403.01241, 2024a.</td></tr><tr><td>Zechun Liu, Changsheng Zhao, Igor Fedorov, Bilge Soran, Dhruv Choudhary, Raghuraman Krish- namoorthi, Vikas Chandra, Yuandong Tian, and Tijmen Blankevoort. Spinquant-Ilm quantization with learned rotations. arXiv preprint arXiv:2405.16406, 2024b.</td></tr><tr><td>Zirui Liu, Jiayi Yuan, Hongye Jin, Shaochen Zhong, Zhaozhuo Xu, Vladimir Braverman, Beidi Chen, and Xia Hu. Kivi: A tuning-free asymmetric 2bit quantization for kv cache. arXiv preprint arXiv:2402.02750, 2024c.</td></tr><tr><td>Yuexiao Ma, Huixia Li, Xiawu Zheng, Feng Ling, Xuefeng Xiao, Rui Wang, Shilei Wen, Fei Chao, and Rongrong Ji. Affinequant: Affine transformation quantization for large language models. arXiv preprint arXiv:2403.12544, 2024.</td></tr><tr><td>Stephen Merity, Caiming Xiong, James Bradbury, and Richard Socher. Pointer sentinel mixture models. In International Conference on Learning Representations, 2016.</td></tr><tr><td>Markus Nagel, Rana Ali Amjad, Mart Van Baalen, Christos Louizos, and Tijmen Blankevoort. Up or down? adaptive rounding for post-training quantization. In International Conference on Machine Learning, pp. 7197-7206. PMLR, 2020.</td></tr><tr><td>Denis Paperno, German Kruszewski, Angeliki Lazaridou, Ngoc-Quan Pham, Raffaella Bernardi, Sandro Pezzelle, Marco Baroni, Gemma Boleda, and Raquel Fernandez. The lambada dataset: Word prediction requiring a broad discourse context. In Proceedings of the 54th Annual Meeting of the Association for Computational Linguistics, pp. 1525-1534, 2016.</td></tr><tr><td>Adam Paszke, Sam Gross, Francisco Massa, Adam Lerer, James Bradbury, Gregory Chanan, Trevor Killeen, Zeming Lin, Natalia Gimelshein, Luca Antiga, et al. Pytorch: An imperative style, high- performance deep learning library. Advances in neural information processing systems, 32, 2019.</td></tr><tr><td>Colin Raffel, Noam Shazeer, Adam Roberts, Katherine Lee, Sharan Narang, Michael Matena, Yanqi Zhou, Wei Li, and Peter J Liu. Exploring the limits of transfer learning with a unified text-to-text transformer. The Journal of Machine Learning Research, 21(1):5485-5551, 2020.</td></tr><tr><td>Keisuke Sakaguchi, Ronan Le Bras, Chandra Bhagavatula, and Yejin Choi. Winogrande: An adver- sarial winograd schema challenge at scale. Communications of the ACM, 64(9):99-106, 2021.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the perplexity scores on WikiText-2 and C4 datasets for different LLaMA models with 4-bit weight and activation quantization using various methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Wenqi Shao, Mengzhao Chen, Zhaoyang Zhang, Peng Xu, Lirui Zhao, Zhiqian Li, Kaipeng Zhang, Peng Gao, Yu Qiao, and Ping Luo. Omniquant: Omnidirectionally calibrated quantization for large language models. arXiv preprint arXiv:2308.13137, 2023.</td></tr><tr><td>Mingjie Sun, Xinlei Chen, J Zico Kolter, and Zhuang Liu. Massive activations in large language models. arXiv preprint arXiv:2402.17762, 2024.</td></tr><tr><td>Philippe Tillet, Hsiang-Tsung Kung, and David Cox. Triton: an intermediate language and compiler for tiled neural network computations. In Proceedings of the 3rd ACM SIGPLAN International Workshop on Machine Learning and Programming Languages, pp. 10-19, 2019.</td></tr><tr><td>Hugo Touvron, Louis Martin, Kevin Stone, Peter Albert, Amjad Almahairi, Yasmine Babaei, Niko- lay Bashlykov, Soumya Batra, Prajjwal Bhargava, Shruti Bhosale, et al. Llama 2: Open founda- tion and fine-tuned chat models. arXiv preprint arXiv:2307.09288, 2023.</td></tr><tr><td>Albert Tseng, Jerry Chee, Qingyao Sun, Volodymyr Kuleshov, and Christopher De Sa. Quip#: Even better llm quantization with hadamard incoherence and lattice codebooks. arXiv preprint arXiv:2402.04396, 2024.</td></tr><tr><td>Xiuying Wei, Yunchen Zhang, Xiangguo Zhang, Ruihao Gong, Shanghang Zhang, Qi Zhang, Feng- wei Yu, and Xianglong Liu. Outlier suppression: Pushing the limit of low-bit transformer lan- guage models. Advances in Neural Information Processing Systems, 35:17402-17414, 2022.</td></tr><tr><td>Xiuying Wei, Yunchen Zhang, Yuhang Li, Xiangguo Zhang, Ruihao Gong, Jinyang Guo, and Xian- glong Liu. Outlier suppression+: Accurate quantization of large language models by equivalent and effective shifting and scaling. In The 2023 Conference on Empirical Methods in Natural Language Processing, 2023.</td></tr><tr><td>T Wolf. Huggingface's transformers: State-of-the-art natural language processing. arXiv preprint arXiv:1910.03771, 2019.</td></tr><tr><td>Haocheng Xi, Changhao Li, Jianfei Chen, and Jun Zhu. Training transformers with 4-bit integers. Advances in Neural Information Processing Systems, 36:49146-49168, 2023.</td></tr><tr><td>Guangxuan Xiao, Ji Lin, Mickael Seznec, Hao Wu, Julien Demouth, and Song Han. Smoothquant: Accurate and efficient post-training quantization for large language models. In International Conference on Machine Learning, pp. 38087-38099. PMLR, 2023.</td></tr><tr><td>An Yang, Baosong Yang, Binyuan Hui, Bo Zheng, Bowen Yu, Chang Zhou, Chengpeng Li, Chengyuan Li, Dayiheng Liu, Fei Huang, et al. Qwen2 technical report. arXiv preprint arXiv:2407.10671, 2024.</td></tr><tr><td>Zihao Ye. Flashinfer: Kernel library for llm serving. 2023. URL https : / / github. com/ flashinfer-ai/ flashinfer</td></tr><tr><td>Rowan Zellers, Ari Holtzman, Yonatan Bisk, Ali Farhadi, and Yejin Choi. Hellaswag: Can a ma- chine really finish your sentence? In Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics, pp. 4791-4800, 2019.</td></tr><tr><td>Yilong Zhao, Chien-Yu Lin, Kan Zhu, Zihao Ye, Lequn Chen, Size Zheng, Luis Ceze, Arvind Krishnamurthy, Tianqi Chen, and Baris Kasikci. Atom: Low-bit quantization for efficient and accurate llm serving. Proceedings of Machine Learning and Systems, 6:196-209, 2024.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity scores on WikiText-2 and C4 datasets for different LLaMA models with 4-bit weight and activation quantization using various methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td colspan="2">Training Recipe</td><td>WikiText-2 PPL</td><td>C4 PPL</td><td>QA Acc</td><td>Memory</td><td>Time</td></tr><tr><td rowspan="2">FP32</td><td>Inverse</td><td>6.95</td><td>11.04</td><td>71.35</td><td>35384MiB</td><td>2.2 hours</td></tr><tr><td>SVD</td><td>9.96</td><td>11.07</td><td>71.24</td><td>35360MiB</td><td>2.2 hours</td></tr><tr><td rowspan="2">AMP</td><td>Inverse</td><td>7.00</td><td>11.17</td><td>70.57</td><td>27624MiB</td><td>0.9 hours</td></tr><tr><td>SVD</td><td>6.98</td><td>11.13</td><td>71.23</td><td>27554MiB</td><td>0.9 hours</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity scores on WikiText-2 and C4 datasets for various 4-bit quantized LLAMA models using different quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>LLaMA</td><td>2-7B</td><td>2-13B</td><td>2-70B</td><td>3-8B</td><td>3-70B</td></tr><tr><td>weight-activation</td><td>1.15 hours</td><td>1.55 hours</td><td>6.15 hours</td><td>0.90 hours</td><td>5.94 hours</td></tr><tr><td>weight-only</td><td>0.67 hours</td><td>1.01 hours</td><td>5.00 hours</td><td>0.70 hours</td><td>4.89 hours</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for WikiText-2 and C4 datasets, comparing the performance of different quantization methods on various LLaMA models with 4-bit weight and activation quantization.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td>Default Design:</td><td>(n1 * n1 + 2 * n1 * n2) * 2 < m (n2 * N2 + 2 * n1 * n2) * 2 < m</td></tr><tr><td>Corner Case 1:</td><td>(tn1 * n1 + n1 * n2 + tn1 * n2) * 2 < m (n2 * n2 + 2 * tn1 * n2) * 2 < m</td></tr><tr><td>Corner Case 2:</td><td>(n1 * bn1 + bn1 * n2 + n1 * n2) * 2 < m (n1 * bn2 + bn2 * N2 + n1 * n2) * 2 < m</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for different quantization methods on the WikiText-2 and C4 datasets using 4-bit weight and activation quantization on various LLaMA models.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Hidden Dimension</td><td rowspan="2">Batch Size</td><td colspan="2">without Kernel Fusion</td><td colspan="2">with Kernel Fusion</td><td colspan="2">Speedup</td></tr><tr><td>Prefill Time (ms)</td><td>Decode Time (ms)</td><td>Prefill Time (ms)</td><td>Decode Time (ms)</td><td>Prefill</td><td>Decode</td></tr><tr><td rowspan="7">4096</td><td>1</td><td>0.1956</td><td>0.0184</td><td>0.0625</td><td>0.0082</td><td>3.13x</td><td>2.25x</td></tr><tr><td>2</td><td>0.3809</td><td>0.0195</td><td>0.1116</td><td>0.0072</td><td>3.41x</td><td>2.71x</td></tr><tr><td>4</td><td>0.7199</td><td>0.0212</td><td>0.2120</td><td>0.0082</td><td>3.40x</td><td>2.59x</td></tr><tr><td>8</td><td>1.4019</td><td>0.0236</td><td>0.4188</td><td>0.0082</td><td>3.35x</td><td>2.88x</td></tr><tr><td>16</td><td>2.7628</td><td>0.0307</td><td>0.8417</td><td>0.0073</td><td>3.28x</td><td>4.20x</td></tr><tr><td>32</td><td>5.5101</td><td>0.0317</td><td>1,7091</td><td>0.0082</td><td>3.22x</td><td>3.87x</td></tr><tr><td>64</td><td>10.9752</td><td>0.0328</td><td>3.4898</td><td>0.0082</td><td>3.14x</td><td>4.00x</td></tr><tr><td rowspan="7">5120</td><td>1</td><td>0.2519</td><td>0.0195</td><td>0.1321</td><td>0.0113</td><td>1.91x</td><td>1.73x</td></tr><tr><td>2</td><td>0.4915</td><td>0.0205</td><td>0.2570</td><td>0.0113</td><td>1.91x</td><td>1.82x</td></tr><tr><td>4</td><td>0.9073</td><td>0.0225</td><td>0.5161</td><td>0.0113</td><td>1.76x</td><td>2.00x</td></tr><tr><td>8</td><td>1.7582</td><td>0.0266</td><td>1.0363</td><td>0.0113</td><td>1.70x</td><td>2.36x</td></tr><tr><td>16</td><td>3.4748</td><td>0.0338</td><td>2.0480</td><td>0.0121</td><td>1.70x</td><td>2.80x</td></tr><tr><td>32</td><td>6.9079</td><td>0.0358</td><td>4.1313</td><td>0.0123</td><td>1.67x</td><td>2.92x</td></tr><tr><td>64</td><td>13.8619</td><td>0.0379</td><td>8.2033</td><td>0.0123</td><td>1.69x</td><td>3.08x</td></tr><tr><td rowspan="7">8192</td><td>1</td><td>0.3845</td><td>0.0195</td><td>0.1608</td><td>0.0132</td><td>2.39x</td><td>1.48x</td></tr><tr><td>2</td><td>0.7393</td><td>0.0205</td><td>0.3092</td><td>0.0132</td><td>2.39x</td><td>1.55x</td></tr><tr><td>4</td><td>1.4433</td><td>0.0205</td><td>0.6257</td><td>0.0123</td><td>2.31x</td><td>1.67x</td></tr><tr><td>8</td><td>2.8529</td><td>0.0215</td><td>1.2411</td><td>0.0133</td><td>2.30x</td><td>1.62x</td></tr><tr><td>16</td><td>5.6668</td><td>0.0225</td><td>2.4904</td><td>0.0133</td><td>2.28x</td><td>1.69x</td></tr><tr><td>32</td><td>11.3183</td><td>0.0246</td><td>4.9418</td><td>0.0133</td><td>2.29x</td><td>1.85x</td></tr><tr><td>64</td><td>22.6714</td><td>0.0297</td><td>9.8459</td><td>0.0143</td><td>2.30x</td><td>2.07x</td></tr><tr><td rowspan="7">11008</td><td>1</td><td>0.6154</td><td>0.0215</td><td>0.3830</td><td>0.0173</td><td>1.61x</td><td>1.24x</td></tr><tr><td>2</td><td>1.2032</td><td>0.0225</td><td>0.7547</td><td>0.0173</td><td>1.59x</td><td>1.30x</td></tr><tr><td>4</td><td>2.3654</td><td>0.0223</td><td>1.5032</td><td>0.0164</td><td>1.57x</td><td>1.36x</td></tr><tr><td>8</td><td>4.7570</td><td>0.0236</td><td>2.9983</td><td>0.0174</td><td>1.59x</td><td>1.35x</td></tr><tr><td>16</td><td>9.4536</td><td>0.0256</td><td>6.0099</td><td>0.0184</td><td>1.57x</td><td>1.39x</td></tr><tr><td>32</td><td>18.9102</td><td>0.0287</td><td>12.0444</td><td>0.0195</td><td>1.57x</td><td>1.47x</td></tr><tr><td>64</td><td>38.2700</td><td>0.0379</td><td>24.0000</td><td>0.0248</td><td>1.59x</td><td>1.53x</td></tr><tr><td rowspan="9">13824</td><td>1</td><td>0.7260</td><td>0.0225</td><td>0.4444</td><td>0.0184</td><td>1.63x</td><td>1.22x</td></tr><tr><td>2</td><td>1.4203</td><td>0.0236</td><td>0.8653</td><td>0.0184</td><td>1.64x</td><td>1.28x</td></tr><tr><td>4</td><td>2.8088</td><td>0.0246</td><td>1.7254</td><td>0.0184</td><td>1.63x</td><td>1.33x</td></tr><tr><td>8</td><td>5.6228</td><td>0.0247</td><td>3.4273</td><td>0.0195</td><td>1.64x</td><td>1.27x</td></tr><tr><td>16</td><td>11.2297</td><td>0.0266</td><td>6.8726</td><td>0.0195</td><td>1.63x</td><td>1.37x</td></tr><tr><td>32</td><td>22.4302</td><td>0.0319</td><td>13.7216</td><td>0.0205</td><td>1.63x</td><td>1.56x</td></tr><tr><td>64</td><td>45.4374</td><td>0.0471</td><td>27.4698</td><td>0.0275</td><td>1.65x</td><td>1.72x</td></tr><tr><td>1</td><td>0.6932</td><td>0.0215</td><td>0.4178</td><td>0.0184</td><td>1.66x</td><td>1.17x</td></tr><tr><td></td><td>1.3466</td><td>0.0225 0.0236</td><td>0.8233 1.6507</td><td>0.0184 0.0184</td><td>1.64x 1.61x</td><td>1.22x</td></tr><tr><td rowspan="5">14336</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.28x</td></tr><tr><td>2 4 8</td><td>2.6557 5.2910</td><td>0.0246</td><td>3.2922</td><td>0.0195</td><td>1.61x</td><td>1.26x</td></tr><tr><td>16</td><td>10.5185</td><td>0.0257</td><td>6.5966</td><td>0.0195</td><td>1.59x</td><td>1.32x</td></tr><tr><td>32</td><td>20.9249</td><td>0.0317</td><td>13.0601</td><td>0.0205</td><td>1.60x</td><td>1.55x</td></tr><tr><td>64</td><td>42.7981</td><td>0.0461</td><td>25.9308</td><td>0.0266</td><td>1.65x</td><td>1.73x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for various 4-bit quantized LLAMA models on WikiText-2 and C4 datasets, comparing different quantization methods and weight quantizers.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td></td><td>WikiText-2</td><td>C4</td><td>ARC-C</td><td>ARC-E</td><td>HellaSwag</td><td>LAMBADA</td><td>PIQA</td><td>Winogrande</td><td>Avg</td></tr><tr><td>FP16</td><td>7.22</td><td>11.38</td><td>55.20</td><td>79.67</td><td>79.20</td><td>73.14</td><td>81.12</td><td>73.80</td><td>73.69</td></tr><tr><td>QuaRot</td><td>9.25</td><td>15.13</td><td>45.39</td><td>73.15</td><td>73.45</td><td>66.41</td><td>76.01</td><td>66.61</td><td>66.84</td></tr><tr><td>FLATQUANT</td><td>7.97</td><td>12.99</td><td>52.90</td><td>79.25</td><td>76.68</td><td>70.79</td><td>79.49</td><td>73.09</td><td>72.03</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for WikiText-2 and C4 datasets, comparing different quantization methods on various LLaMA models with 4-bit weight and activation quantization.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>K bits</td><td>v bits</td><td>WikiText-2</td><td>C4</td><td>ARC-C</td><td>ARC-E</td><td>HellaSwag</td><td>LAMBADA</td><td>PIQA</td><td>Winogrande</td><td>Avg</td></tr><tr><td>16</td><td>16</td><td>6.14</td><td>9.45</td><td>53.50</td><td>77.57</td><td>79.12</td><td>75.51</td><td>80.74</td><td>72.93</td><td>73.23</td></tr><tr><td>4</td><td>4</td><td>6.20</td><td>9.56</td><td>52.82</td><td>78.20</td><td>79.13</td><td>75.32</td><td>80.47</td><td>72.77</td><td>73.12</td></tr><tr><td>4</td><td>3</td><td>6.25</td><td>9.66</td><td>52.90</td><td>77.65</td><td>79.00</td><td>75.10</td><td>80.79</td><td>73.48</td><td>73.15</td></tr><tr><td>4</td><td>2</td><td>6.60</td><td>10.33</td><td>49.32</td><td>74.37</td><td>77.88</td><td>72.77</td><td>79.22</td><td>72.69</td><td>71.04</td></tr><tr><td>3</td><td>4</td><td>6.35</td><td>9.91</td><td>52.05</td><td>77.95</td><td>78.41</td><td>73.94</td><td>79.71</td><td>73.48</td><td>72.59</td></tr><tr><td>3</td><td>3</td><td>6.41</td><td>10.03</td><td>52.47</td><td>76.85</td><td>78.25</td><td>74.02</td><td>79.98</td><td>72.61</td><td>72.36</td></tr><tr><td>3</td><td>2</td><td>6.84</td><td>10.83</td><td>47.44</td><td>73.91</td><td>77.18</td><td>70.37</td><td>78.73</td><td>71.19</td><td>69.80</td></tr><tr><td>2</td><td>4</td><td>7.70</td><td>13.36</td><td>49.15</td><td>74.62</td><td>74.74</td><td>63.65</td><td>77.58</td><td>68.67</td><td>68.07</td></tr><tr><td>2</td><td>3</td><td>7.79</td><td>13.44</td><td>46.67</td><td>71.63</td><td>74.17</td><td>63.05</td><td>77.48</td><td>68.51</td><td>66.92</td></tr><tr><td>2</td><td>2</td><td>8.93</td><td>16.13</td><td>42.92</td><td>68.60</td><td>71.54</td><td>55.58</td><td>75.30</td><td>64.40</td><td>63.06</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for different 4-bit weight and activation quantized LLAMA models on WikiText-2 and C4 datasets, comparing various quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td rowspan="2">Methods</td><td>K bits</td><td>v bits</td><td>LLaMA-2-7B</td><td>LLaMA-2-13B</td></tr><tr><td>16</td><td>16</td><td>5.47</td><td>4.88</td></tr><tr><td rowspan="3">QuaRot</td><td>4</td><td>4</td><td>5.51</td><td>4.91</td></tr><tr><td>3</td><td>3</td><td>5.68</td><td>5.02</td></tr><tr><td>2</td><td>2</td><td>9.23</td><td>7.07</td></tr><tr><td rowspan="3">FLATQUANT</td><td>4</td><td>4</td><td>5.50</td><td>4.91</td></tr><tr><td>3</td><td>3</td><td>5.61</td><td>5.00</td></tr><tr><td>2</td><td>2</td><td>6.66</td><td>5.69</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for different 4-bit weight and activation quantized LLAMA models on WikiText-2 and C4 datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>LLaMA3-8B</td><td>WikiText-2</td><td>C4</td><td>ARC-C</td><td>ARC-E</td><td>HellaSwag</td><td>LAMBADA</td><td>PIQA</td><td>Winogrande</td><td>Avg</td></tr><tr><td>FP16</td><td>6.14</td><td>9.45</td><td>53.50</td><td>77.57</td><td>79.12</td><td>75.51</td><td>80.74</td><td>72.93</td><td>73.23</td></tr><tr><td>QuaRot-W4A4KV4</td><td>8.16</td><td>13.38</td><td>45.73</td><td>70.83</td><td>72.97</td><td>62.70</td><td>75.35</td><td>67.17</td><td>65.79</td></tr><tr><td>FLATQUANT-W4A4KV4</td><td>6.98</td><td>11.13</td><td>50.00</td><td>75.80</td><td>76.80</td><td>72.91</td><td>79.16</td><td>72.69</td><td>71.23</td></tr><tr><td>QuaRot-W3A3KV3</td><td>686.54</td><td>630.89</td><td>25.34</td><td>28.41</td><td>28.07</td><td>0.78</td><td>50.71</td><td>48.70</td><td>30.33</td></tr><tr><td>FLATQUANT-W3A3KV3</td><td>10.82</td><td>19.03</td><td>35.41</td><td>63.26</td><td>65.30</td><td>52.49</td><td>73.56</td><td>60.69</td><td>58.45</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for different quantization methods on the WikiText-2 and C4 datasets using LLaMA models with 4-bit weight and activation quantization.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>LLaMA3-8B</td><td>WikiText-2</td><td>C4</td><td>ARC-C</td><td>ARC-E</td><td>HellaSwag</td><td>LAMBADA</td><td>PIQA</td><td>Winogrande</td><td>Avg</td></tr><tr><td>FP16</td><td>6.14</td><td>9.45</td><td>53.50</td><td>77.57</td><td>79.12</td><td>75.51</td><td>80.74</td><td>72.93</td><td>73.23</td></tr><tr><td>w/o LCT</td><td>7.95</td><td>12.74</td><td>44.20</td><td>71.89</td><td>74.21</td><td>68.72</td><td>77.15</td><td>66.30</td><td>67.08</td></tr><tr><td>LCT before Transformation</td><td>7.37</td><td>11.86</td><td>48.72</td><td>76.18</td><td>75.11</td><td>66.65</td><td>77.91</td><td>67.17</td><td>68.62</td></tr><tr><td>QuaRot-style Fixed Threshold</td><td>7.25</td><td>11.62</td><td>48.21</td><td>75.29</td><td>75.66</td><td>71.32</td><td>78.73</td><td>70.01</td><td>69.87</td></tr><tr><td>LCT after Transformation</td><td>6.98</td><td>11.13</td><td>50.00</td><td>75.80</td><td>76.80</td><td>72.91</td><td>79.16</td><td>72.69</td><td>71.23</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results for various 4-bit weight and activation quantized LLAMA models on WikiText-2 and C4 datasets, comparing different quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td>(a) W。 of the 10th</td><td>(b) X。 of the 10th</td><td>(c) W g of the 30th</td><td>(d) Xg of the 30th</td></tr><tr><td>Transformer layer in LLaMA-2-70B.</td><td>Transformer layer in LLaMA-2-70B.</td><td>Transformer layer in LLaMA-2-70B.</td><td>Transformer layer in LLaMA-2-70B.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the perplexity results on WikiText-2 and C4 datasets for different 4-bit weight and activation quantized LLAMA models using various methods.
> <details>
> <summary>read the caption</summary>
> Table 1: WikiText-2 and C4 perplexity of 4-bit weight & activation quantized LLaMA models.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.09426/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09426/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}