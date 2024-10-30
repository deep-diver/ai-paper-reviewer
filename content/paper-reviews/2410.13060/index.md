---
title: "AERO: Softmax-Only LLMs for Efficient Private Inference"
summary: "AERO achieves 4.23x communication and 1.94x latency reduction in private AI inference by developing a Softmax-only LLM architecture with novel entropy regularization."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.13060 {{< /keyword >}}

### TL;DR


{{< lead >}}

This paper introduces AERO, a new method to make private AI inference (using encrypted data) much faster and more efficient.  Currently, private AI is slow because it needs lots of complex calculations. AERO simplifies these calculations by focusing only on a specific type of operation (Softmax).  The researchers found that removing other complicated steps didn't hurt the accuracy of the AI much, leading to big speed improvements.  They also developed a new technique called 'entropy regularization' to make the simplified AI easier to train.  Overall, AERO significantly cuts down the time and resources needed for private AI inference, making it much more practical.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13060" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13060" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on private AI inference.  It challenges existing assumptions about non-linearities in LLMs and proposes a novel Softmax-only architecture, offering significant improvements in efficiency and privacy. The entropy regularization technique is also a valuable contribution for training such models.  The work opens avenues for designing more efficient and privacy-preserving LLMs, impacting various applications of AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AERO, a four-step framework, refines LLM architecture for efficient private inference (PI) by systematically removing nonlinearities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} AERO introduces the first Softmax-only architecture with significantly fewer FLOPs tailored for efficient PI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel entropy regularization technique improves performance of Softmax-only models, achieving up to 4.23x communication and 1.94x latency reduction. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13060/figures_3_0.png)

> 🔼 The figure illustrates the threat model and cryptographic protocols used for large language model private inference, showing the interaction between the client and server.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of threat model and cryptographic protocols used for LLM private inference.
> </details>





![](https://ai-paper-reviewer.com/2410.13060/charts_2_0.png)

> 🔼 The chart displays latency and communication savings achieved through nonlinearity reduction, FLOPs reduction, and entropy regularization when applying AERO to the GPT-2 model, also benchmarking against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>





{{< table-caption >}}
<br><table id='3' style='font-size:20px'><tr><td>Abbreviation</td><td>Architectural configuration</td></tr><tr><td>SM + LN + G SM + LN + R SM + LN SM + G SM + R SM</td><td>Xout = FFN GELU (LayerNorm2 (MHA (Attn Softmax (LayerNorm1 (Xin ()))) x out FFNReLU (LayerNorm2 (MHA (AttnSoftmax (LayerNorm1 (Xin))))) Xout FFNIdentity (LayerNorm2 (MHA ( Attn Softmax (LayerNorm1 (Xin))))) Xout = FFN GELU (MHA (AttnSoftmax Xin))) Xout = FFN ReLU (MHA (AttnSoftmax Xin ) )) Xout = FFNIdentity (MHA (Attn Softmax (Xin ) ))</td></tr></table>{{< /table-caption >}}

> 🔼 Table 4 presents the results of applying the AERO framework to a GPT-2 model and compares its performance against the state-of-the-art (SOTA) in terms of perplexity, number of nonlinear operations, FLOPs, communication, and latency.
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13060/figures_5_0.png)

> 🔼 Figure 4 shows the layerwise and global learnable negative slopes for leaky ReLU in the feed-forward network (FFN) of a LayerNorm-free GPT-2 model during training, demonstrating a convergence towards zero.
> <details>
> <summary>read the caption</summary>
> Figure 4: Learnable negative slope for leaky ReLU in the FFN of LN-free GPT-2. (a) Layerwise slopes and (b) global slope, both converge toward zero during training, indicating a preference for zero negative slope in LN-free architectures.
> </details>



![](https://ai-paper-reviewer.com/2410.13060/figures_7_0.png)

> 🔼 The figure shows the layerwise mean entropy across different layers in a softmax only GPT-2 model trained with weight normalization, spectral normalization, or scaled FFN outputs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Mitigating entropy collapse in the deeper layers of a softmax-only GPT-2 model by employing weight or spectral normalization in FFN, or by appropriately scaling FFN block outputs.
> </details>



![](https://ai-paper-reviewer.com/2410.13060/figures_8_0.png)

> 🔼 Figure 8 illustrates the four-step AERO framework for optimizing transformer-based LLMs for private inference by reducing nonlinearities and FLOPs, and incorporating entropy regularization.
> <details>
> <summary>read the caption</summary>
> Figure 8: Overview of the proposed AERO method for reducing nonlinearities and FLOPs in transformer-based LLMs for efficient PI. The bottom of the figure shows the evolution of entropy in the attention mechanism and its distribution across attention heads.
> </details>



![](https://ai-paper-reviewer.com/2410.13060/figures_21_0.png)

> 🔼 Figure 1 shows the latency and communication savings achieved by applying AERO to GPT-2, trained from scratch on the CodeParrot dataset, and compared against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.13060/charts_4_0.png)

> 🔼 Figure 3 shows the headwise entropy distribution and the loss curve for GPT-2 small models trained with different nonlinearity configurations.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) The fraction of attention heads distributed across different entropy ranges, and (b) evaluation loss for GPT-2 (small) models with fewer nonlinearities, when trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_5_0.png)

> 🔼 The chart displays the latency and communication reductions achieved by AERO at different stages of optimization, benchmarked against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_6_0.png)

> 🔼 The chart displays latency and communication savings achieved by applying AERO to GPT-2, and compares its performance against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_9_0.png)

> 🔼 The chart displays the percentage of attention heads distributed across different entropy ranges for various Softmax-only model configurations, highlighting the effectiveness of entropy regularization in preventing entropic overload.
> <details>
> <summary>read the caption</summary>
> Figure 9: While normalizing weights or scaling outputs in the FFN of Softmax-only (GPT-2) model prevents entropy collapse, our proposed entropy regularization effectively mitigates entropic overload.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_10_0.png)

> 🔼 The chart displays the latency and communication savings achieved by applying AERO to GPT-2, trained on the CodeParrot dataset, and compares its performance against the state-of-the-art at iso-latency points.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_10_1.png)

> 🔼 The figure shows the headwise entropy distribution in the Softmax-only GPT-2 model with entropy regularization applied using varying threshold margins controlled by the hyperparameter γ.
> <details>
> <summary>read the caption</summary>
> Figure 10: Headwise entropy distribution in the SM(t) + ScFuFFN GPT-2 model (L=12, H=12, d=768) when entropy regularization is applied with varying threshold margin, controlled by hyperparameter γ.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_23_0.png)

> 🔼 The chart illustrates the latency and communication savings achieved by applying AERO to GPT-2, along with a comparison against state-of-the-art methods at iso-latency points.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_0.png)

> 🔼 The chart displays the evolution of layerwise entropy across different GPT-2 model configurations with varying nonlinearities during training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_1.png)

> 🔼 The chart displays the evolution of layer-wise entropy in GPT-2 models with different nonlinearity configurations during training on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_2.png)

> 🔼 The chart displays the layerwise mean entropy evolution across various GPT-2 model configurations trained on the CodeParrot dataset during different stages of training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_3.png)

> 🔼 The chart displays the evolution of layerwise entropy for different GPT-2 model configurations during training on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_4.png)

> 🔼 The chart displays the evolution of layerwise entropy across different GPT-2 model configurations with varying nonlinearities during training on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_24_5.png)

> 🔼 The chart displays the evolution of layerwise entropy across different GPT-2 model configurations with varying nonlinearities during training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_25_0.png)

> 🔼 The chart displays the latency and communication savings achieved by applying AERO to GPT-2 model, comparing its performance against the state-of-the-art methods at iso-latency points.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_25_1.png)

> 🔼 The chart displays the latency and communication savings achieved by applying AERO to GPT-2 model trained on CodeParrot dataset, comparing against the state-of-the-art He & Hofmann (2024) at iso-latency points.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_27_0.png)

> 🔼 The chart displays the latency and communication reduction achieved by applying AERO on GPT-2 model trained on CodeParrot dataset, along with a comparison against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_28_0.png)

> 🔼 The chart displays the headwise entropy distribution in the Softmax-only GPT-2 model with varying numbers of pruned deeper FFNs, illustrating the impact of FFN pruning on entropy.
> <details>
> <summary>read the caption</summary>
> Figure 16: Head-wise entropy distribution in the Softmax-only GPT-2 model (L=12, H=12, d=768) with earlier FFNs intact and deeper FFNs pruned, trained from scratch on the CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_29_0.png)

> 🔼 The chart displays the rapid increase in NaN values and the entropy distribution across layers of a Softmax-only GPT-2 model during training, highlighting training instability issues.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training collapses in softmax-only GPT-2 model.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_29_1.png)

> 🔼 The chart displays the evolution of layer-wise entropy for different GPT-2 model configurations during training, highlighting the impact of various nonlinearities.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_29_2.png)

> 🔼 The chart displays the evolution of layerwise entropy across various GPT-2 model configurations with different nonlinearities during training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_29_3.png)

> 🔼 The chart displays the evolution of layerwise entropy across different GPT-2 model configurations during training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_29_4.png)

> 🔼 The chart displays the latency and communication reductions achieved by AERO at different stages of optimization compared to the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_30_0.png)

> 🔼 The chart shows the impact of the hyperparameter γ on the headwise entropy distribution in the Softmax-only GPT-2 model with entropy regularization.
> <details>
> <summary>read the caption</summary>
> Figure 18. Headwise entropy distribution in the SM(t) + ScFuFFN GPT-2 model (L=12, H=12, d=768) when entropy regularization is applied with varying threshold margin, controlled by hyperparameter γ.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_30_1.png)

> 🔼 The chart displays the evolution of layer-wise entropy in GPT-2 models with different nonlinearities during training on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_30_2.png)

> 🔼 The chart displays the evolution of layer-wise entropy across different GPT-2 model configurations trained without non-linearities on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_30_3.png)

> 🔼 The chart displays the mean entropy evolution across layers of GPT-2 models trained from scratch with different nonlinearity configurations on the CodeParrot dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_30_4.png)

> 🔼 The chart displays the evolution of layerwise entropy across different GPT-2 model configurations with varying nonlinearities during training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evolution of Layerwise entropy when GPT-2 (L=12, H=12, d=768) models with various nonlinearity configurations are trained from scratch on CodeParrot dataset.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_32_0.png)

> 🔼 The chart displays the latency and communication reduction achieved by AERO across various stages of optimization, comparing its performance against the state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1: Latency and communication savings through nonlinearity and FLOPs reduction steps when AERO is applied on GPT-2, and trained from scratch on CodeParrot dataset. Further, we benchmark AERO against the SOTA He & Hofmann (2024) at iso-latency points. See Table 4 for a detail analysis.
> </details>


![](https://ai-paper-reviewer.com/2410.13060/charts_33_0.png)

> 🔼 The chart displays the distribution of FLOPs between attention and FFN sub-blocks in Pythia models across different context lengths.
> <details>
> <summary>read the caption</summary>
> Figure 21: FLOPs breakdown in Pythia models for a single forward pass: Similar to GPT-2 models (see Figure 20), FLOPs are dominated by FFN operations up to a context length of 4K, except for smaller models where FFN operations dominate up to 2K (Percentage on top of each bar represents the proportion of FFN FLOPs).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='12' style='font-size:14px'><tr><td></td><td>WNorm</td><td>SNorm</td><td>Scaled</td></tr><tr><td>Eval PPL</td><td>3.640</td><td>3.624</td><td>3.478</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of applying the AERO framework to the GPT-2 language model, comparing its performance against the state-of-the-art (SOTA) in terms of perplexity (PPL), number of nonlinear operations, FLOPs, communication (Comm.), and latency (Lat.).
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td rowspan="2">Network Arch.</td><td rowspan="2">PPL</td><td rowspan="2"></td><td rowspan="2">#Nonlinear Ops</td><td colspan="2">#FLOPs</td><td rowspan="2">Comm. (GB)</td><td rowspan="2">Lat. (min.)</td><td colspan="2">Savings</td></tr><tr><td>FFN</td><td>Attn.</td><td>Comm.</td><td>Lat.</td></tr><tr><td rowspan="2">Baseline</td><td>SM + LN + G</td><td>2.69</td><td>SM:144 x R 128x128 LN:24 x R128x768 G:12 x R128x3072</td><td>14.5B</td><td>7.7B</td><td>25.32</td><td>8.21</td><td>1x</td><td>1x</td></tr><tr><td>SM + LN + R</td><td>2.76</td><td>SM:144 X R 128x128 LN:24 x R 128x768 R:12 x R128x3072</td><td>14.5B</td><td>7.7B</td><td>9.44</td><td>6.06</td><td>2.68x</td><td>1.35x</td></tr><tr><td rowspan="3">SOTA</td><td>SM + ScFFN</td><td>4.00</td><td>SM:144 x R128x128 LN: 1 xR128x768</td><td>14.5B</td><td>3.9B</td><td>6.83</td><td>5.31</td><td>3.71x</td><td>1.55x</td></tr><tr><td>SM + ScFuFFN</td><td>3.97</td><td>SM:144xR128x128 LN: 1 xR128x 768</td><td>1.8B</td><td>3.9B</td><td>6.31</td><td>4.50</td><td>4.00x</td><td>1.82x</td></tr><tr><td>SM + ScFuFFNi1</td><td>4.00</td><td>SM:144 xR128x128 R128x768 LN: 1 x</td><td>1.2B</td><td>3.9B</td><td>6.30</td><td>4.44</td><td>4.00x</td><td>1.85x</td></tr><tr><td rowspan="5">AERO</td><td>SM + ScFFN</td><td>3.50</td><td>SM:144 X R 128x128</td><td>14.5B</td><td>7.7B</td><td>6.95</td><td>5.68</td><td>3.64x</td><td>1.45x</td></tr><tr><td>SM + ScFuFFN</td><td>3.48</td><td>SM:144 X R 128x128</td><td>1.8B</td><td>7.7B</td><td>6.43</td><td>4.76</td><td>3.94x</td><td>1.72x</td></tr><tr><td>SM + ScFuFFNie</td><td>3.54</td><td>SM:144 x R 128x128</td><td>0.9B</td><td>7.7B</td><td>6.29</td><td>4.23</td><td>4.00x</td><td>1.94x</td></tr><tr><td>EReg(SM(t) + ScFuFFN)</td><td>3.21</td><td>SM:144 x R 128x128</td><td>1.8B</td><td>7.7B</td><td>6.43</td><td>4.76</td><td>3.94x</td><td>1.72x</td></tr><tr><td>EReg(SM(t) + ScFuFFNie)</td><td>3.25</td><td>SM:144 x R 128x128</td><td>0.9B</td><td>7.7B</td><td>6.29</td><td>4.23</td><td>4.00x</td><td>1.94x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of applying the AERO framework to a GPT-2 model, comparing its performance against the state-of-the-art (SOTA) in terms of perplexity (PPL), number of nonlinear operations, FLOPs, communication, and latency.
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>入: Regularization</td><td>Inputs: attentions: List of attention matrices, 日(L, H)= reg_threshold_weights, T: Sequence length, loss weightage, Y: Hyper-parameter for Tolerance margin</td></tr><tr><td>Output: 1:</td><td>Ltotal: Total loss including entropy regularization</td></tr><tr><td></td><td>Lentropy ← 0</td></tr><tr><td></td><td></td></tr><tr><td>2: Emax</td><td>← log(T) ▷ Theoretical maximum value of entropy</td></tr><tr><td>3:</td><td>Tolmargin ← YEmax ▷ Tolerance margin is set as a small fraction of Emax for each layer 1 in layers do</td></tr><tr><td>4: 5:</td><td>Llayer ← 0</td></tr><tr><td>6:</td><td>A(t) ← attentions[2] ▷ Attention matrix with learnable temperature for each query position</td></tr><tr><td></td><td>1 ET=1 �T=1 Aij (t) log(Aij (t)) ▷ Compute entropy, averaged over query length E(t) ← - T</td></tr><tr><td>7:</td><td></td></tr><tr><td>8: 9:</td><td>for each head h in heads do E(l,h) ← Slice(E(t), ん) ▷ Entropy for head h</td></tr><tr><td></td><td>�(l,h) ← Slice(O(L, H), ん) ▷ Learnable threshold weight head h</td></tr><tr><td>10: 11:</td><td>S(l,h) ← E(l,h) (t) - �(l,h) Emax ▷ Deviation from head-specific threshold</td></tr><tr><td>12:</td><td>penalty(l,h) ← (8(l,h))21 (|8(l,h)| > Tolmargin) ▷ Penalize iff deviation exceeds Tolerance</td></tr><tr><td>13:</td><td>Llayer ← Llayer + penalty (l,h)</td></tr><tr><td>14:</td><td>end for Llayer</td></tr><tr><td>15:</td><td>Llayer ← num heads</td></tr><tr><td>16:</td><td>▷ Average over heads Lentropy Lentropy + Llayer</td></tr><tr><td>17:</td><td>end for Lentropy Lentropy</td></tr><tr><td>18:</td><td>Average over layers ▷</td></tr><tr><td>19:</td><td>len(attentions)</td></tr><tr><td></td><td>Ltotal ← LCE + XLentropy</td></tr><tr><td>20:</td><td>return Ltotal</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results achieved by applying AERO on GPT-2 and compares its performance against the state-of-the-art (SOTA) in terms of perplexity (PPL), number of non-linear operations, FLOPs count, communication, and latency.
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td rowspan="2" colspan="2">Network Arch.</td><td rowspan="2">PPL</td><td rowspan="2">#Nonlinear Ops</td><td colspan="2">#FLOPs</td><td rowspan="2">Comm. (GB)</td><td rowspan="2">Lat. (min.)</td><td colspan="2">Savings</td></tr><tr><td>FFN</td><td>Attn.</td><td>Comm.</td><td>Lat.</td></tr><tr><td rowspan="2">Baseline</td><td>SM + LN + G</td><td>2.35</td><td>SM:144 X R256x256 LN:24 x R256x768 G:12 X R256x3072</td><td>29.0B</td><td>16.3B</td><td>58.51</td><td>16.57</td><td>1x</td><td>1x</td></tr><tr><td>SM + LN + R</td><td>2.41</td><td>SM:144 x R256x256 LN:24 x R256x768 R:12 x IR256x3072</td><td>29.0B</td><td>16.3B</td><td>26.73</td><td>12.59</td><td>2.19x</td><td>1.32x</td></tr><tr><td rowspan="2">SOTA</td><td>SM + ScFFN</td><td>3.47</td><td>SM:144 X R256x256 1xR256x768 LN:</td><td>29.0B</td><td>8.5B</td><td>21.52</td><td>11.42</td><td>2.72x</td><td>1.45x</td></tr><tr><td>SM + ScFuFFN</td><td>NaNs</td><td>R256x768 SM:144x R256x256 LN: 1 x</td><td>3.6B</td><td>8.5B</td><td>20.48</td><td>10.14</td><td>2.86x</td><td>1.63x</td></tr><tr><td rowspan="5">AERO</td><td>SM + ScFFN</td><td>3.04</td><td>SM:144 x R256x256</td><td>29.0B</td><td>16.3B</td><td>21.77</td><td>11.91</td><td>2.69x</td><td>1.39x</td></tr><tr><td>SM + ScFuFFN</td><td>3.03</td><td>SM:144 x R256x256</td><td>3.6B</td><td>16.3B</td><td>20.72</td><td>10.45</td><td>2.82x</td><td>1.59x</td></tr><tr><td>SM + ScFuFFNie</td><td>3.08</td><td>SM:144x R256x256</td><td>1.8B</td><td>16.3B</td><td>20.59</td><td>10.32</td><td>2.84x</td><td>1.61x</td></tr><tr><td>EReg(SM(t) + ScFuFFN)</td><td>2.92</td><td>SM:144 x R256x256</td><td>3.6B</td><td>16.3B</td><td>20.72</td><td>10.45</td><td>2.82x</td><td>1.59x</td></tr><tr><td>EReg(SM(t) + ScFuFFNi6)</td><td>2.97</td><td>SM:144 x R256x256</td><td>1.8B</td><td>16.3B</td><td>20.59</td><td>10.32</td><td>2.84x</td><td>1.61x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a detailed analysis of latency and communication savings achieved by applying AERO to GPT-2 with 256 input tokens, also comparing its performance against SOTA.
> <details>
> <summary>read the caption</summary>
> Table 5: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 256. NaNs indicate training instability in SOTA.
> </details>

{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td rowspan="2">Network Arch.</td><td rowspan="2">PPL</td><td rowspan="2">#Nonlinear Ops</td><td rowspan="2"></td><td colspan="2">#FLOPs</td><td rowspan="2">Comm. (GB)</td><td rowspan="2">Lat. (min.)</td><td colspan="2">Savings</td></tr><tr><td>FFN</td><td>Attn.</td><td>Comm.</td><td>Lat.</td></tr><tr><td rowspan="2">SM + LN + G Baseline</td><td></td><td>2.56</td><td>SM:216 x R128x128 LN:36 x R128x768 G:18 X IR128x3072</td><td>21.7B</td><td>11.6B</td><td>37.17</td><td>10.77</td><td>1x</td><td>1x</td></tr><tr><td>SM + LN + R</td><td>2.63</td><td>SM:216 X R128x128 LN:36 x R128x768 R:18 x IR128x3072</td><td>21.7B</td><td>11.6B</td><td>13.34</td><td>8.04</td><td>2.79x</td><td>1.34x</td></tr><tr><td>SOTA</td><td>SM + ScFFN</td><td>NaNs</td><td>R128x768 SM:216 x R128x128 LN: 1 x</td><td>21.7B</td><td>5.9B</td><td>9.39</td><td>6.75</td><td>3.96x</td><td>1.60x</td></tr><tr><td rowspan="5">AERO</td><td>SM + ScFFN</td><td>3.26</td><td>SM:216 x R128x128</td><td>21.7B</td><td>11.6B</td><td>9.62</td><td>7.23</td><td>3.86x</td><td>1.49x</td></tr><tr><td>SM + ScFuFFN</td><td>3.24</td><td>SM:216 x R128x128</td><td>2.7B</td><td>11.6B</td><td>8.83</td><td>6.07</td><td>4.21x</td><td>1.77x</td></tr><tr><td>SM + ScFuFFNi4</td><td>3.27</td><td>SM:216 x R 128x 128</td><td>2.1B</td><td>11.6B</td><td>8.79</td><td>5.85</td><td>4.23x</td><td>1.84x</td></tr><tr><td>EReg(SM(t) + ScFuFFN)</td><td>3.13</td><td>SM:216 x R128x128</td><td>2.7B</td><td>11.6B</td><td>8.83</td><td>6.07</td><td>4.21x</td><td>1.77x</td></tr><tr><td>EReg(SM(t) + ScFuFFNi4)</td><td>3.17</td><td>SM:216 x R128x128</td><td>2.1B</td><td>11.6B</td><td>8.79</td><td>5.85</td><td>4.23x</td><td>1.84x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of the AERO framework on GPT-2 model with 12 layers, comparing its performance against the state-of-the-art (SOTA) in terms of perplexity (PPL), number of non-linear operations, FLOPs, communication, and latency.
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2" colspan="2">Network Arch.</td><td colspan="3">Eval PPL</td><td rowspan="2">#Nonlinear Ops</td><td colspan="2">#FLOPs</td><td rowspan="2">Comm. (GB)</td><td rowspan="2">Lat. (min.)</td></tr><tr><td>1.2B</td><td>2.4B</td><td>4.8B</td><td>FFN</td><td>Attn.</td></tr><tr><td rowspan="2">Baseline</td><td>SM + LN + G</td><td>25.71</td><td>23.32</td><td>21.29</td><td>SM:144 x R512x512 LN:24 x R512x768 G:12 x IR512x3072</td><td>58.0B</td><td>36.2B</td><td>145.24</td><td>30.74</td></tr><tr><td>SM + LN + R</td><td>26.06</td><td>23.55</td><td>21.58</td><td>SM:144 x R512x512 LN:24 x R512x768 R:12 x IR512x3072</td><td>58.0B</td><td>36.2B</td><td>81.71</td><td>23.54</td></tr><tr><td>SOTA</td><td>SM + ScFFN</td><td>NaNs</td><td>NaNs</td><td>NaNs</td><td>SM:144 x R512x512 LN: 1 X R512x768</td><td>58.0B</td><td>19.3B</td><td>72.10</td><td>21.56</td></tr><tr><td rowspan="5">AERO</td><td>SM + ScFFN</td><td>33.91</td><td>31.12</td><td>28.89</td><td>SM:144 x R512x512</td><td>58.0B</td><td>36.2B</td><td>71.76</td><td>21.51</td></tr><tr><td>SM + ScFuFFN</td><td>33.77</td><td>30.82</td><td>28.59</td><td>SM:144 x R512x512</td><td>7.3B</td><td>36.2B</td><td>69.68</td><td>19.44</td></tr><tr><td>SM + ScFuFFNi1</td><td>34.16</td><td>31.23</td><td>29.69</td><td>SM:144 x R512x512</td><td>6.6B</td><td>36.2B</td><td>69.64</td><td>19.11</td></tr><tr><td>EReg(SM(t) + ScFuFFN)</td><td>31.54</td><td>28.70</td><td>26.55</td><td>SM:144 X R512x512</td><td>7.3B</td><td>36.2B</td><td>69.68</td><td>19.44</td></tr><tr><td>EReg(SM(t) + ScFuFFNi1)</td><td>31.75</td><td>28.93</td><td>26.74</td><td>SM:144 x R512x512</td><td>6.6B</td><td>36.2B</td><td>69.64</td><td>19.11</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents the results and comparisons of AERO against SOTA on Languini dataset with context length of 512, showing the performance in terms of perplexity, the number of non-linear operations, FLOPs, communication, and latency.
> <details>
> <summary>read the caption</summary>
> Table 7: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on Languini (Stanić et al., 2023) dataset with context length 512. NaNs indicate training instability in SOTA.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td></td><td colspan="2">T=128</td><td colspan="2">T=256</td></tr><tr><td></td><td>Eval PPL</td><td>+△(%)</td><td>Eval PPL</td><td>+△(%)</td></tr><tr><td>SM+LN+G</td><td>3.512</td><td>0.00</td><td>3.054</td><td>0.00</td></tr><tr><td>SM+LN+R</td><td>3.590</td><td>2.22</td><td>3.107</td><td>1.73</td></tr><tr><td>SM+LN</td><td>4.445</td><td>26.56</td><td>3.836</td><td>25.60</td></tr><tr><td>SM+G</td><td>4.086</td><td>16.35</td><td>3.570</td><td>16.87</td></tr><tr><td>SM+R</td><td>3.736</td><td>6.36</td><td>3.273</td><td>7.17</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of applying AERO optimization techniques to a GPT-2 language model, showing perplexity scores, number of nonlinear operations, FLOPs, communication, and latency, and comparing the results to the state-of-the-art (SOTA).
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:18px'><tr><td>Linear layers</td><td>Eval PPL(WNorm)</td><td>Eval PPL(SNorm)</td></tr><tr><td>QK</td><td>3.89</td><td>4.25</td></tr><tr><td>FFN</td><td>3.64</td><td>3.63</td></tr><tr><td>QK+FFN</td><td>3.88</td><td>4.23</td></tr><tr><td>QKV+FFN</td><td>3.93</td><td>4.26</td></tr><tr><td>QKVO+FFN</td><td>3.98</td><td>4.34</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results and comparisons of AERO against the state-of-the-art methods on GPT-2 models with 12 layers, 12 heads, and 768 dimensions, trained from scratch on the CodeParrot dataset with a context length of 128 tokens.
> <details>
> <summary>read the caption</summary>
> Table 4: Results, and comparison against SOTA (He & Hofmann, 2024), when GPT-2 (L=12, H=12, d=768) model is trained from scratch on CodeParrot (Face) dataset with context length 128.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13060/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13060/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}