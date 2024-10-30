---
title: "Relaxed Recursive Transformers: Effective Parameter Sharing with Layer-wise LoRA"
summary: "Recursive Transformers, a novel LLM compression method, achieves comparable performance to larger models using efficient parameter sharing and low-rank adaptation, enabling significant throughput gain..."
categories: ["AI Generated"]
tags: ["🔖 24-10-28", "🤗 24-10-29"]
showSummary: true
date: 2024-10-28
draft: false
---

{{< keyword >}} 2410.20672 {{< /keyword >}}

### TL;DR


{{< lead >}}

Large Language Models (LLMs) are computationally expensive, thus demanding efficient model compression techniques. Existing methods like layer tying have shown limited success. This paper tackles this issue by introducing a novel architecture called "Recursive Transformers" that reuse the same layer multiple times.  This inherently reduces model size but can negatively impact performance. 

To address this, the researchers propose a modification called "Relaxed Recursive Transformers," which incorporates low-rank adaptation (LoRA) modules, allowing for slight variations between repeated layers while still preserving model compactness. This approach, coupled with a new inference method called "Continuous Depth-wise Batching" that allows for joint computation of different iterations of the looped layer, significantly improves both model size and performance. Experiments demonstrate that these recursive models, even with limited uptraining, outperform similar-sized models and can approach the performance of the original, full-sized models.  Furthermore, the new inference paradigm showcases promising throughput gains.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.20672" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.20672" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because **it introduces a novel approach to model compression for large language models (LLMs)**, a critical area of research due to the high computational costs of deploying LLMs.  The method of **recursive transformers with layer-wise LORA** offers a significant improvement over existing techniques, leading to smaller, more efficient models without sacrificing much performance. This work opens avenues for deploying LLMs on devices with lower resource constraints.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Recursive Transformers effectively share parameters across layers via a looped architecture, initialized from pretrained models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Relaxed Recursive Transformers, enhanced with layer-wise LORA, achieve performance comparable to larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Continuous depth-wise batching with early exiting shows potential for 2-3x throughput improvements during inference. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.20672/figures_2_0.png)

> 🔼 The figure illustrates the transformation of a vanilla transformer into a recursive transformer and further into a relaxed recursive transformer by applying parameter sharing and low-rank adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Overview of the conversion from a vanilla N-layer Transformer to a Recursive Transformer with N/K blocks of K shared layers. The Recursive Transformer is obtained by repeating a single block of K layers multiple times, resulting in a looped architecture. The Recursive Transformer can also be converted into a Relaxed Recursive Transformer by adding layer-specific LoRA modules. This preserves many of the advantages of weight sharing, but also allows for better performance.
> </details>





![](https://ai-paper-reviewer.com/2410.20672/charts_5_0.png)

> 🔼 The chart illustrates the difference between vanilla batching, depth-wise batching, and depth-wise batching with early exiting in processing batched inputs sequentially.
> <details>
> <summary>read the caption</summary>
> Figure 3 | An illustrative example of a continuous depth-wise batching strategy together with early-exiting. We assume a maximum batch size of 32, three model “stages” (e.g., layer blocks), and a stream of batched inputs that arrive sequentially in time. In (a), all three model stages must complete for the first (non-maximal) batch of 16 before the second batch of 32 examples that arrives next can be started. In (b), however, half of second batch of 32 examples can share computation with the first batch of 16 that is still finishing. Finally, (c) demonstrates a situation where some examples within each batch can early-exit after stage 2; their vacant slots in the batch are then immediately filled.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td colspan="8">Model Architecture</td><td colspan="3">Pretraining</td></tr><tr><td>Models</td><td>N-emb</td><td>Emb</td><td>NL</td><td>dmodel</td><td>Nhead</td><td>NKV</td><td>dhead</td><td>Vocab</td><td>Dataset</td><td>Ntok</td><td>Lctx</td></tr><tr><td>Gemma 2B</td><td>1.98B</td><td>0.52B</td><td>18</td><td>2048</td><td>8</td><td>1</td><td>256</td><td>256K</td><td>Unreleased</td><td>3T</td><td>8K</td></tr><tr><td>TinyLlama 1.1B</td><td>0.97B</td><td>0.13B</td><td>22</td><td>2048</td><td>32</td><td>4</td><td>64</td><td>32K</td><td>SlimPajama + Starcoderdata</td><td>73B* 32B</td><td>2K</td></tr><tr><td>Pythia 1B</td><td>0.81B</td><td>0.21B</td><td>16</td><td>2048</td><td>8</td><td>8</td><td>256</td><td>50K</td><td>Pile</td><td>300B</td><td>2K</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents key parameters and pretraining details for three large language models: Gemma 2B, TinyLlama 1.1B, and Pythia 1B.
> <details>
> <summary>read the caption</summary>
> Table 1 | Key parameters and pretraining details of three models. The sizes of each model refer to the number of embedding parameters (embedding matrices and classifier heads), and all other non-embedding parameters. Gemma and TinyLlama utilize Multi-Query (Shazeer, 2019) and Grouped-Query (Ainslie et al., 2023) attention mechanisms, which leads to a reduced number of key-value heads.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.20672/figures_4_0.png)

> 🔼 The figure illustrates three initialization techniques (Stepwise, Average, Lower) for looped layers in Recursive and Relaxed Recursive Transformers, along with an example of Relaxed Recursive Transformer with SVD initialization.
> <details>
> <summary>read the caption</summary>
> Figure 2 | Left: An example of unshared, full-size model with 6 layers. Middle: Three proposed methodologies for initializing looped layers in a Recursive Transformer. Each layer number indicates the source layer in the full-size model used for initialization. Right: Example of a Relaxed Recursive Transformer initialized by SVD method. Here, looped layers are initialized using the Average method.
> </details>



![](https://ai-paper-reviewer.com/2410.20672/figures_25_0.png)

> 🔼 The figure illustrates the conversion of a vanilla transformer into a recursive transformer, showing how parameters are shared across layers and how low-rank adapters (LoRA) can be added to improve performance.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Overview of the conversion from a vanilla N-layer Transformer to a Recursive Transformer with N/K blocks of K shared layers. The Recursive Transformer is obtained by repeating a single block of K layers multiple times, resulting in a looped architecture. The Recursive Transformer can also be converted into a Relaxed Recursive Transformer by adding layer-specific LoRA modules. This preserves many of the advantages of weight sharing, but also allows for better performance.
> </details>



![](https://ai-paper-reviewer.com/2410.20672/figures_26_0.png)

> 🔼 The figure illustrates three proposed initialization methods for looped layers in Recursive and Relaxed Recursive Transformers, using an example of a 6-layer unshared model.
> <details>
> <summary>read the caption</summary>
> Figure 2 | Left: An example of unshared, full-size model with 6 layers. Middle: Three proposed methodologies for initializing looped layers in a Recursive Transformer. Each layer number indicates the source layer in the full-size model used for initialization. Right: Example of a Relaxed Recursive Transformer initialized by SVD method. Here, looped layers are initialized using the Average method.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.20672/charts_8_0.png)

> 🔼 The chart compares the few-shot accuracy of full-size, reduced-size, recursive, and relaxed recursive transformer models across three different model architectures (Gemma, TinyLlama, and Pythia) with varying model sizes and LoRA ranks.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Recursive and Relaxed Recursive Transformers achieve comparable performance to full-size models, and significantly outperform reduced-size models. Recursive models were initialized using the Stepwise method, while relaxed models utilized Average and SVD methods for looped layers and LoRA modules. We show the performance of four different rank values: 64, 128, 256, and 512. Recursive and reduced-size models were either uptrained (recursive model) and pretrained from scratch (reduced-size model) on 60 billion tokens using a knowledge distillation objective.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_9_0.png)

> 🔼 The chart displays the training loss curves for different initialization methods (Stepwise, Average, Lower, and Random) across three language models (Gemma, TinyLlama, and Pythia) and shows how the Stepwise method consistently outperforms other methods.
> <details>
> <summary>read the caption</summary>
> Figure F.1 | Training loss curves of Stepwise and Average initialization variants across three models with two blocks. (a) “Fixed-start” indicates that the first layer of the pretrained model is selected initially, and subsequent layers are repeatedly chosen at a fixed interval. “Fixed-ends” means that the first and last layers are included, and intermediate layers are selected at specific step intervals. (b) When initializing the weights of normalization layer (RMSNorm in Gemma and TinyLlama, and LayerNorm in Pythia), we consider whether to average the weights (Norm-avg), select a single layer’s weights (Norm-choice), or use zero initialization (Norm-zero).
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_10_0.png)

> 🔼 The chart compares the average few-shot accuracy of three models (Gemma, TinyLlama, and Pythia) using different initialization methods (Stepwise, Average, and Lower) for LoRA modules, showing the impact of SVD initialization and LoRA relaxation on model performance.
> <details>
> <summary>read the caption</summary>
> Figure G.2 | Comparison of average few-shot accuracy between zero and SVD initialization methods across three models. Performance gains due to LoRA relaxation are indicated by hatched bars, while cases where performance is lower than the recursive counterpart (without LoRA modules) are represented by dotted lines.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_11_0.png)

> 🔼 The chart compares the few-shot accuracy of recursive and relaxed recursive transformer models to full-size and reduced-size models across different model sizes and LoRA rank values.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Recursive and Relaxed Recursive Transformers achieve comparable performance to full-size models, and significantly outperform reduced-size models. Recursive models were initialized using the Stepwise method, while relaxed models utilized Average and SVD methods for looped layers and LoRA modules. We show the performance of four different rank values: 64, 128, 256, and 512. Recursive and reduced-size models were either uptrained (recursive model) and pretrained from scratch (reduced-size model) on 60 billion tokens using a knowledge distillation objective.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_12_0.png)

> 🔼 The chart compares the few-shot accuracy of recursive and relaxed recursive transformer models against full-size and reduced-size models across different sizes, initialization methods, and LoRA ranks.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Recursive and Relaxed Recursive Transformers achieve comparable performance to full-size models, and significantly outperform reduced-size models. Recursive models were initialized using the Stepwise method, while relaxed models utilized Average and SVD methods for looped layers and LoRA modules. We show the performance of four different rank values: 64, 128, 256, and 512. Recursive and reduced-size models were either uptrained (recursive model) and pretrained from scratch (reduced-size model) on 60 billion tokens using a knowledge distillation objective.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_29_0.png)

> 🔼 The chart displays training loss curves for different initialization methods (Stepwise and Average) across three language models, showing the impact of various techniques on model training.
> <details>
> <summary>read the caption</summary>
> Figure F.1 | Training loss curves of Stepwise and Average initialization variants across three models with two blocks. (a) “Fixed-start” indicates that the first layer of the pretrained model is selected initially, and subsequent layers are repeatedly chosen at a fixed interval. “Fixed-ends” means that the first and last layers are included, and intermediate layers are selected at specific step intervals. (b) When initializing the weights of normalization layer (RMSNorm in Gemma and TinyLlama, and LayerNorm in Pythia), we consider whether to average the weights (Norm-avg), select a single layer’s weights (Norm-choice), or use zero initialization (Norm-zero).
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_29_1.png)

> 🔼 The chart displays the training loss curves for different initialization methods (Stepwise and Average) across three models with different numbers of blocks, showing the impact of various initialization strategies on training loss.
> <details>
> <summary>read the caption</summary>
> Figure F.1 | Training loss curves of Stepwise and Average initialization variants across three models with two blocks. (a) “Fixed-start” indicates that the first layer of the pretrained model is selected initially, and subsequent layers are repeatedly chosen at a fixed interval. “Fixed-ends” means that the first and last layers are included, and intermediate layers are selected at specific step intervals. (b) When initializing the weights of normalization layer (RMSNorm in Gemma and TinyLlama, and LayerNorm in Pythia), we consider whether to average the weights (Norm-avg), select a single layer’s weights (Norm-choice), or use zero initialization (Norm-zero).
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_31_0.png)

> 🔼 The chart compares the few-shot performance of recursive transformers initialized with different methods (Stepwise, Average, Lower, Random) across seven benchmarks, showing the Stepwise method consistently outperforms others.
> <details>
> <summary>read the caption</summary>
> Figure F.3 | Few-shot performance on seven benchmarks and their average accuracy based on four looping initialization methods. Full-size model performance is represented by a gray dotted line.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_32_0.png)

> 🔼 The chart compares the training loss curves across three different models (Gemma, TinyLlama, and Pythia) for recursive and relaxed recursive approaches, highlighting the impact of LoRA modules and SVD initialization on model training.
> <details>
> <summary>read the caption</summary>
> Figure G.1 | Comparison of training loss for recursive and relaxed recursive models with two blocks. The LoRA rank is set to 512, and the SVD initialization method is used for LoRA modules.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_32_1.png)

> 🔼 The chart compares the average few-shot accuracy of three models (Gemma, TinyLlama, and Pythia) using different initialization methods (zero, SVD) for LoRA modules, showing the impact of LoRA relaxation on model performance.
> <details>
> <summary>read the caption</summary>
> Figure G.2 | Comparison of average few-shot accuracy between zero and SVD initialization methods across three models. Performance gains due to LoRA relaxation are indicated by hatched bars, while cases where performance is lower than the recursive counterpart (without LoRA modules) are represented by dotted lines.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_33_0.png)

> 🔼 The chart displays a comparison of few-shot performance across seven benchmarks for four different looping initialization methods of recursive transformers, with a dotted line representing the performance of full-size models.
> <details>
> <summary>read the caption</summary>
> Figure F.3 | Few-shot performance on seven benchmarks and their average accuracy based on four looping initialization methods. Full-size model performance is represented by a gray dotted line.
> </details>


![](https://ai-paper-reviewer.com/2410.20672/charts_37_0.png)

> 🔼 The chart compares the few-shot accuracy of recursive and relaxed recursive transformers to full-size and reduced-size models across different model sizes and LoRA ranks.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Recursive and Relaxed Recursive Transformers achieve comparable performance to full-size models, and significantly outperform reduced-size models. Recursive models were initialized using the Stepwise method, while relaxed models utilized Average and SVD methods for looped layers and LoRA modules. We show the performance of four different rank values: 64, 128, 256, and 512. Recursive and reduced-size models were either uptrained (recursive model) and pretrained from scratch (reduced-size model) on 60 billion tokens using a knowledge distillation objective.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td rowspan="2">Models</td><td></td><td colspan="2">Uptrain</td><td colspan="3">Perplexity ↓</td><td colspan="8">Few-shot Accuracy ↑</td></tr><tr><td>N-emb</td><td>PT</td><td>Ntok</td><td>SlimP</td><td>RedP</td><td>PG19</td><td>LD</td><td>HS</td><td>PQ</td><td>WG</td><td>ARC-e</td><td>ARC-c</td><td>OB</td><td>Avg</td></tr><tr><td rowspan="3">Gemma 2B</td><td>1.99B</td><td>V</td><td>-</td><td>11.46</td><td>8.18</td><td>13.52</td><td>63.1</td><td>71.4</td><td>78.1</td><td>65.0</td><td>72.3</td><td>41.9</td><td>40.2</td><td>61.7</td></tr><tr><td>1.99B</td><td>V</td><td>15B</td><td>10.76</td><td>8.47</td><td>13.08</td><td>63.5</td><td>68.5</td><td>77.0</td><td>63.5</td><td>67.6</td><td>38.1</td><td>42.6</td><td>60.1</td></tr><tr><td>1.99B</td><td>V</td><td>60B</td><td>10.58</td><td>8.44</td><td>12.71</td><td>60.3</td><td>67.9</td><td>76.9</td><td>63.5</td><td>64.9</td><td>37.2</td><td>39.6</td><td>58.6</td></tr><tr><td rowspan="3">TinyLlama 1.1B</td><td>0.97B</td><td>V</td><td>-</td><td>12.26</td><td>9.37</td><td>11.94</td><td>43.3</td><td>42.2</td><td>66.8</td><td>53.4</td><td>44.7</td><td>23.2</td><td>29.2</td><td>43.3</td></tr><tr><td>0.97B</td><td>V</td><td>15B</td><td>9.87</td><td>8.24</td><td>10.73</td><td>49.2</td><td>46.3</td><td>68.8</td><td>54.0</td><td>48.2</td><td>26.0</td><td>32.2</td><td>46.4</td></tr><tr><td>0.97B</td><td>V</td><td>60B</td><td>9.59</td><td>8.12</td><td>10.42</td><td>51.6</td><td>48.8</td><td>68.6</td><td>54.1</td><td>49.9</td><td>26.2</td><td>32.8</td><td>47.4</td></tr><tr><td rowspan="3">Pythia 1B</td><td>0.81B</td><td>V</td><td>、</td><td>15.68</td><td>9.90</td><td>12.05</td><td>57.5</td><td>49.1</td><td>70.4</td><td>52.8</td><td>51.9</td><td>26.7</td><td>33.4</td><td>48.8</td></tr><tr><td>0.81B</td><td>V</td><td>15B</td><td>13.46</td><td>9.95</td><td>13.38</td><td>55.0</td><td>49.0</td><td>71.0</td><td>53.6</td><td>51.8</td><td>28.2</td><td>32.8</td><td>48.8</td></tr><tr><td>0.81B</td><td>V</td><td>60B</td><td>12.83</td><td>9.76</td><td>13.57</td><td>53.0</td><td>50.2</td><td>71.1</td><td>54.8</td><td>51.9</td><td>27.7</td><td>31.6</td><td>48.6</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the perplexity and few-shot accuracy results of three large language models (LLMs) after fine-tuning on the SlimPajama dataset, comparing their performance against different baselines.
> <details>
> <summary>read the caption</summary>
> Table 2 | Uptraining the pretrained models on datasets that differ significantly in quality or distribution from their pretraining datasets can lead to decreased performance. We evaluated models after uptraining on the SlimPajama dataset. We measured perplexity on test sets of the SlimPajama, RedPajama, and PG19, and few-shot accuracy on LAMBADA, HellaSwag, PIQA, WinoGrande, ARC-easy, ARC-challenge, and OpenBookQA benchmarks.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td rowspan="2">N-emb</td><td>Uptrain</td><td colspan="2">Looping</td><td colspan="3">Early-Exit Train</td><td colspan="9">Few-shot Accuracy↑</td></tr><tr><td>PT Ntok</td><td>Block</td><td>Init</td><td>Ntok</td><td>CE</td><td>KD</td><td>LD</td><td>HS</td><td>PQ</td><td>WG</td><td>ARC-e</td><td>ARC-c</td><td>OB</td><td>Avg</td><td>△</td></tr><tr><td>0.99B</td><td>V 15B</td><td>2</td><td>Step</td><td>I -</td><td>-</td><td>-</td><td>53.0</td><td>57.3</td><td>73.2</td><td>56.2</td><td>56.1</td><td>29.2</td><td>36.6</td><td>51.7</td><td>-</td></tr><tr><td rowspan="2">0.99B</td><td rowspan="2">V 15B</td><td rowspan="2">2</td><td rowspan="2">Step</td><td rowspan="2">15B</td><td rowspan="2">Weighted</td><td rowspan="2">X</td><td>48.9</td><td>55.5</td><td>72.7</td><td>55.3</td><td>54.9</td><td>30.1</td><td>36.0</td><td>50.5</td><td>-1.2</td></tr><tr><td>49.5</td><td>54.8</td><td>72.0</td><td>53.4</td><td>54.1</td><td>29.1</td><td>35.6</td><td>49.8</td><td>-</td></tr><tr><td rowspan="2">0.99B</td><td rowspan="2">V 15B</td><td rowspan="2">2</td><td rowspan="2">Step</td><td rowspan="2">15B</td><td rowspan="2">Agg (0.1)</td><td rowspan="2">X</td><td>53.0</td><td>59.1</td><td>73.9</td><td>55.4</td><td>57.4</td><td>30.6</td><td>37.8</td><td>52.5</td><td>+0.8</td></tr><tr><td>45.9</td><td>51.2</td><td>71.4</td><td>54.5</td><td>48.1</td><td>26.8</td><td>32.0</td><td>47.1</td><td>-</td></tr><tr><td rowspan="2">0.99B</td><td rowspan="2">V 15B</td><td rowspan="2">2</td><td rowspan="2">Step</td><td rowspan="2">15B</td><td rowspan="2">Weighted</td><td rowspan="2">V</td><td>47.7</td><td>55.1</td><td>73.2</td><td>55.6</td><td>54.5</td><td>29.1</td><td>37.2</td><td>50.4</td><td>- 1.3</td></tr><tr><td>48.3</td><td>54.9</td><td>72.1</td><td>55.9</td><td>54.3</td><td>28.4</td><td>35.4</td><td>49.9</td><td>-</td></tr><tr><td rowspan="2">0.99B</td><td rowspan="2">V 15B</td><td rowspan="2">2</td><td rowspan="2">Step</td><td rowspan="2">15B</td><td rowspan="2">Agg (0.1)</td><td rowspan="2">V</td><td>52.9</td><td>58.9</td><td>73.7</td><td>55.7</td><td>57.5</td><td>31.1</td><td>38.2</td><td>52.6</td><td>+0.9</td></tr><tr><td>46.3</td><td>52.1</td><td>71.6</td><td>55.3</td><td>49.2</td><td>28.5</td><td>32.6</td><td>48.0</td><td>-</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on various early-exit training strategies for recursive Gemma models, showing their impact on final and intermediate loop outputs' performance and comparing different training methods, loss functions, and data usage.
> <details>
> <summary>read the caption</summary>
> Table J.1 | Ablation studies on early-exit training for recursive Gemma models. We evaluated performance in a static-exiting scenario (Bae et al., 2023; Schuster et al., 2022), where all tokens exit at either first or second iteration loops (9th or 18th depths). We explored post-training (after uptraining) and co-training (during uptraining) approaches. Moreover, we explored freezing uptrained weights and adding LoRA with the rank of 128 to the classifier head. Different coefficient values were tested for the aggressive CE loss function. Early-exit training utilized 15 billion tokens, either overlapping with uptraining data or entirely new. Delta (△) indicates the performance changes of the final loop outputs. We highlight the final configuration: post-training with aggressive CE and KD loss on 15 billion new tokens.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>N-emb</td><td>Loop</td><td>LoRA</td><td>Batch</td><td>Exit</td><td>Acc.</td><td>Thr.</td><td>△v</td><td>△Seq</td></tr><tr><td>1.99B</td><td>-</td><td>-</td><td>-</td><td>X</td><td>57.3</td><td>1080</td><td>x1.00</td><td>x0.71</td></tr><tr><td>1.99B</td><td>-</td><td>-</td><td>CSB</td><td>X</td><td>57.3</td><td>1528</td><td>x1.41</td><td>x1.00</td></tr><tr><td>0.99B</td><td>2</td><td>-</td><td>CDB</td><td>V</td><td>54.0</td><td>2877</td><td>x2.66</td><td>x1.88</td></tr><tr><td>1.07B</td><td>2</td><td>64</td><td>CDB</td><td>V</td><td>54.0</td><td>2157</td><td>x2.00</td><td>x1.41</td></tr><tr><td>1.15B</td><td>2</td><td>128</td><td>CDB</td><td>V</td><td>54.6</td><td>2149</td><td>x1.99</td><td>x1.41</td></tr><tr><td>1.30B</td><td>2</td><td>256</td><td>CDB</td><td>V</td><td>55.2</td><td>1921</td><td>x1.78</td><td>x1.26</td></tr><tr><td>1.60B</td><td>2</td><td>512</td><td>CDB</td><td>V</td><td>56.2</td><td>1719</td><td>x1.59</td><td>x1.13</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents measurements of generation time per token for three different large language models under varying batch sizes and model configurations.
> <details>
> <summary>read the caption</summary>
> Table K.1 | Measurements of generation time across three models using a single A100 40GB GPU. We measured time per token for both a batch size of 1 and the maximum batch size achievable by each model. The prefix length was set to 512 tokens, and the decoded output length to 2048 tokens. We then averaged the total elapsed time by the output length of 2048. Dummy input and dummy tensors were used for measurement.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Models</td><td colspan="5">Model Architecture</td><td rowspan="2">N-emb</td><td colspan="2">Recursive</td><td rowspan="2">Batch</td><td colspan="4">Time (ms) per token</td></tr><tr><td>NL</td><td>dmodel</td><td>Nhead</td><td>NKV</td><td>Vocab</td><td>Block</td><td>Rank</td><td>Total</td><td>Emb</td><td>Transformer</td><td>Head</td></tr><tr><td rowspan="11">Gemma</td><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.98B</td><td>-</td><td>-</td><td>1 111</td><td>22.577 0.207</td><td>0.084 0.001</td><td>20.937 0.188</td><td>0.801 0.010</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>0.99B</td><td>2</td><td>-</td><td>1 123</td><td>13.576 0.118</td><td>0.079 0.001</td><td>10.819 0.091</td><td>0.815 0.009</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.07B</td><td>2</td><td>64</td><td>1 117</td><td>15.372 0.140</td><td>0.080 0.001</td><td>12.675 0.112</td><td>0.813 0.009</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.15B</td><td>2</td><td>128</td><td>1 115</td><td>15.631 0.141</td><td>0.082 0.001</td><td>12.899 0.113</td><td>0.816 0.010</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.30B</td><td>2</td><td>256</td><td>1 111</td><td>15.317 0.143</td><td>0.079 0.001</td><td>12.639 0.115</td><td>0.811 0.010</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.60B</td><td>2</td><td>512</td><td>1 103</td><td>15.379 0.158</td><td>0.080 0.001</td><td>12.692 0.127</td><td>0.807 0.011</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>0.66B</td><td>3</td><td>-</td><td>1 131</td><td>10.528 0.087</td><td>0.080 0.001</td><td>7.411 0.058</td><td>0.817 0.010</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>0.74B</td><td>3</td><td>64</td><td>1 123</td><td>11.957 0.105</td><td>0.081 0.001</td><td>8.855 0.075</td><td>0.815 0.009</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>0.82B</td><td>3</td><td>128</td><td>1 121</td><td>11.898 0.103</td><td>0.080 0.001</td><td>8.787 0.074</td><td>0.816 0.009</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>0.97B</td><td>3</td><td>256</td><td>1 117</td><td>11.734 0.106</td><td>0.079 0.001</td><td>8.654 0.076</td><td>0.813 0.009</td></tr><tr><td>18</td><td>2048</td><td>8</td><td>1</td><td>256K</td><td>1.27B</td><td>3</td><td>512</td><td>1 107</td><td>11.986 0.125</td><td>0.080 0.001</td><td>8.856 0.090</td><td>0.809 0.010</td></tr><tr><td rowspan="6">TinyLlama</td><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.97B</td><td>-</td><td>-</td><td>1 1049</td><td>23.898 0.131</td><td>0.080 0.000</td><td>22.909 0.129</td><td>0.189 0.001</td></tr><tr><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.48B</td><td>2</td><td>-</td><td>1 1121</td><td>14.129 0.070</td><td>0.080 0.000</td><td>11.846 0.064</td><td>0.202 0.001</td></tr><tr><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.53B</td><td>2</td><td>64</td><td>1 1105</td><td>14.897 0.073</td><td>0.080 0.000</td><td>12.627 0.068</td><td>0.202 0.001</td></tr><tr><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.58B</td><td>2</td><td>128</td><td>1 1089</td><td>15.090 0.074</td><td>0.081 0.000</td><td>12.778 0.069</td><td>0.205 0.001</td></tr><tr><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.68B</td><td>2</td><td>256</td><td>1 1065</td><td>14.962 0.076</td><td>0.081 0.000</td><td>12.659 0.071</td><td>0.201 0.001</td></tr><tr><td>22</td><td>2048</td><td>32</td><td>4</td><td>32K</td><td>0.86B</td><td>2</td><td>512</td><td>1 1017</td><td>15.284 0.080</td><td>0.083 0.000</td><td>12.950 0.075</td><td>0.206 0.001</td></tr><tr><td rowspan="6">Pythia</td><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.81B</td><td>-</td><td>-</td><td>1 229</td><td>13.341 0.176</td><td>0.081 0.000</td><td>12.326 0.171</td><td>0.239 0.002</td></tr><tr><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.40B</td><td>2</td><td>-</td><td>1 241</td><td>8.336 0.121</td><td>0.079 0.000</td><td>6.303 0.086</td><td>0.261 0.002</td></tr><tr><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.44B</td><td>2</td><td>64</td><td>1 233</td><td>10.408 0.133</td><td>0.081 0.000</td><td>8.353 0.097</td><td>0.262 0.002</td></tr><tr><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.48B</td><td>2</td><td>128</td><td>1 221</td><td>10.426 0.137</td><td>0.082 0.000</td><td>8.378 0.101</td><td>0.259 0.002</td></tr><tr><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.55B</td><td>2</td><td>256</td><td>1 205</td><td>10.509 0.151</td><td>0.080 0.000</td><td>8.471 0.115</td><td>0.256 0.002</td></tr><tr><td>16</td><td>2048</td><td>8</td><td>8</td><td>50K</td><td>0.70B</td><td>2</td><td>512</td><td>1 165</td><td>11.254 0.177</td><td>0.080 0.001</td><td>9.241 0.139</td><td>0.257 0.002</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents key parameters and pre-training details for three large language models.
> <details>
> <summary>read the caption</summary>
> Table 1 | Key parameters and pretraining details of three models. The sizes of each model refer to the number of embedding parameters (embedding matrices and classifier heads), and all other non-embedding parameters. Gemma and TinyLlama utilize Multi-Query (Shazeer, 2019) and Grouped-Query (Ainslie et al., 2023) attention mechanisms, which leads to a reduced number of key-value heads.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20672/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/40.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/41.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/42.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/43.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/44.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/45.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/46.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/47.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20672/48.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}