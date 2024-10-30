---
title: "Value Residual Learning For Alleviating Attention Concentration In Transformers"
summary: "ResFormer and SVFormer alleviate Transformer attention concentration, boosting training speed and accuracy by introducing residual value connections and single-layer value sharing, respectively."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.17897 {{< /keyword >}}

### TL;DR


{{< lead >}}

Deep Transformer networks suffer from attention concentration, where attention focuses on fewer tokens as the network deepens.  This paper introduces two novel architectures: ResFormer and SVFormer. ResFormer solves this by adding a residual connection from the first layer's values to all subsequent layers, effectively allowing early information to propagate to later layers. SVFormer further improves efficiency by making all layers share the same value embeddings from the first layer.  Experiments show that both approaches significantly mitigate attention concentration, improving training speed and downstream task performance compared to standard Transformers, DenseFormer, and NeuTRENO. SVFormer especially excels in reducing memory requirements due to its smaller KV cache. This work provides important insights and effective solutions to challenges associated with training and deploying very deep Transformer models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17897" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17897" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it addresses the critical issue of attention concentration in deep Transformers, a problem hindering the training and performance of large language models.  The proposed ResFormer and SVFormer offer efficient solutions to mitigate this, leading to improved model training speed and accuracy. This research opens avenues for more efficient and scalable Transformer architectures.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ResFormer effectively mitigates attention concentration in deep Transformers by adding residual value connections from the initial layer. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SVFormer significantly reduces the computational burden of large models by sharing the value embedding from the initial layer across all layers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Both ResFormer and SVFormer demonstrate substantial performance gains compared to existing methods in both training and downstream tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.17897/figures_3_0.png)

> 🔼 The figure illustrates the architectures of vanilla Transformer, NeuTRENO, DenseFormer, ResFormer, and SVFormer, highlighting the differences in their information flow and value vector usage.
> <details>
> <summary>read the caption</summary>
> Figure 2: Simplified illustration of the vanilla Transformer, NeuTRENO, DenseFormer, ResFormer, and SVFormer, with only three-layer structures and no operations other than attention. A², Vi, and H² denote the attention matrix, value vectors, and attention outputs at the i-th layer, respectively. ⊕, −, and ⊗ represent standard matrix addition, subtraction, and multiplication, respectively.
> </details>





![](https://ai-paper-reviewer.com/2410.17897/charts_2_0.png)

> 🔼 The chart illustrates the relative training loss, average entropy of token importance across layers in ResFormers vs. vanilla Transformers, and average entropy of token importance across layers in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: (Left) Illustration of the relative training loss (loss of target model - loss of vanilla Transformer) curve between different Transformer variants; model size is fixed to be 82M. (Middle) The average entropy of token importance across layers in ResFormer vs. the vanilla Transformer, where token importance is derived from the attention matrix. Lower entropy indicates more focused attention on specific tokens. More details can be found in Eqn. 11. (Right) The average entropy of token importance across layers in Llama (8B) (Dubey et al., 2024) and Mistral (7B) (Jiang et al., 2023).
> </details>





{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Model</td><td>Max Length</td><td>HellaSwag</td><td>Obqa</td><td>WinoGrande</td><td>ARC-c</td><td>ARC-e</td><td>PIQA</td><td>Avg.</td></tr><tr><td>Transformer</td><td>2,048</td><td>0.263</td><td>0.142</td><td>0.492</td><td>0.199</td><td>0.331</td><td>0.572</td><td>0.333</td></tr><tr><td>ResFormer</td><td>2,048</td><td>0.273</td><td>0.148</td><td>0.512</td><td>0.182</td><td>0.414</td><td>0.604</td><td>0.355</td></tr><tr><td>Transformer</td><td>64,000</td><td>0.267</td><td>0.142</td><td>0.485</td><td>0.179</td><td>0.322</td><td>0.570</td><td>0.328</td></tr><tr><td>ResFormer</td><td>64,000</td><td>0.274</td><td>0.136</td><td>0.513</td><td>0.184</td><td>0.407</td><td>0.588</td><td>0.350</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the zero-shot accuracy of different models on several commonsense reasoning tasks, comparing the vanilla Transformer and ResFormer with varying sequence lengths.
> <details>
> <summary>read the caption</summary>
> Table 1: Zero-shot accuracy on commonsense reasoning tasks.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.17897/charts_5_0.png)

> 🔼 The chart displays the average cosine similarity between outputs generated using different mapping methods (current attention and identity mapping) and the output from Equation 2, showing how well the approximation method preserves the original attention mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 3: Average token similarity between the outputs of different mapping methods and that of Eqn. 2.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_5_1.png)

> 🔼 The chart displays the relative training loss curves for different methods of sharing keys and values in a transformer model, showing the impact of various sharing strategies on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablation study on sharing keys or values in every two layers, with CLAttention denoting sharing both.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_6_0.png)

> 🔼 The chart displays the relative training loss curves of ResFormer and Transformer models with varying sequence lengths and model sizes, showing ResFormer's consistent performance advantage.
> <details>
> <summary>read the caption</summary>
> Figure 5: (Left) The relative training curve between a 82M ResFormer and Transformer across different training sequence lengths. (Middle) Average training loss for the final 50 steps across different model sizes and the corresponding fitted curves. (Right) The relative training curve across different model size for a fixed 2,048 training sequence length.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_7_0.png)

> 🔼 The chart displays the relative training loss curves for three different variations of ResFormer, each adding a residual connection to either the queries, keys, or values, to demonstrate the impact of adding residual connections on model training performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study of adding residual connection to queries or keys.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_8_0.png)

> 🔼 The chart displays the distribution and maximum values of eigenvalues for value vectors in the first layer of ResFormer and Transformer models, illustrating differences in their representational capacity across layers.
> <details>
> <summary>read the caption</summary>
> Figure 9: Left: Distribution of eigenvalues for the value vectors in the first layer of ResFormer and Transformer. Right: Maximum eigenvalue for each layer of ResFormer and Transformer.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_9_0.png)

> 🔼 The chart displays the relative training loss curves of SVFormer, GQA, and CLA, with and without combinations, at two different sequence lengths, illustrating their training efficiency and KV cache usage.
> <details>
> <summary>read the caption</summary>
> Figure 10: The relative training loss for SVFormer and other KV efficient model compared with vanilla attention. The numbers in parentheses represent the training sequence length. Left: Model with nearly 1/2 KV cache. Right: Model with nearly 1/8 KV cache.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_9_1.png)

> 🔼 The chart shows the relative training loss of SVFormer under different sequence lengths and the relationship between the critical point (training steps exceeded) and sequence length.
> <details>
> <summary>read the caption</summary>
> Figure 11: Left: The relative training loss for SVFormer under different sequence lengths with a fixed batch size of 2M tokens. Right: Analysis of critical point, and we predict it for length 64,000 using linear regression with the last 1,000 data points.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_10_0.png)

> 🔼 The chart displays the relative training loss curves of SVFormer under different hyperparameter settings, including learning rate, warmup steps, model size, and architecture.
> <details>
> <summary>read the caption</summary>
> Figure 12: The relative training loss for SVFormer under different hyper-parameter setting.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_10_1.png)

> 🔼 The chart displays an ablation study showing the effects of sharing the first layer's queries or keys on model performance across all layers.
> <details>
> <summary>read the caption</summary>
> Figure 13: Ablation study of sharing first layer's query(key) across all layers.
> </details>


![](https://ai-paper-reviewer.com/2410.17897/charts_14_0.png)

> 🔼 The chart displays the average token similarity of hidden states across layers in Resformer, vanilla Transformer, Llama, and Mistral, illustrating the over-smoothing effect in deep networks.
> <details>
> <summary>read the caption</summary>
> Figure 15: (Left) The average token similarity of hidden states across layers in ResFormer vs. the vanilla Transformer. (Right) The average token similarity of hidden states across layers in Llama (8B) (Dubey et al., 2024) and Mistral (7B) (Jiang et al., 2023).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Data source</td><td>proportions</td><td>Tokens</td></tr><tr><td>Commoncrawl</td><td>50%</td><td>10 B</td></tr><tr><td>C4</td><td>20%</td><td>4 B</td></tr><tr><td>GitHub</td><td>10%</td><td>2 B</td></tr><tr><td>Books</td><td>5%</td><td>1 B</td></tr><tr><td>ArXiv</td><td>5%</td><td>1 B</td></tr><tr><td>Wikpedia</td><td>5%</td><td>1 B</td></tr><tr><td>StackExchange</td><td>5%</td><td>1 B</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the data sources, proportions, and number of tokens used for pretraining the language model.
> <details>
> <summary>read the caption</summary>
> Table 2: The details of pre-train dataset.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Max Sequence Length</td><td>512</td><td>2,048</td><td>8,192</td><td>32,000</td><td>64,000</td></tr><tr><td>Total Batch Size</td><td>4,096</td><td>1,024</td><td>256</td><td>64</td><td>32</td></tr><tr><td>Per-GPU Batch Size</td><td>128</td><td>32</td><td>8</td><td>2</td><td>1</td></tr><tr><td>Gradient Accumulation Step</td><td></td><td></td><td>32</td><td></td><td></td></tr><tr><td>GPUs</td><td></td><td></td><td>8</td><td></td><td></td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the validation loss for different models on the whole validation split of slimpajama.
> <details>
> <summary>read the caption</summary>
> Table 5: Validation loss on slimpajama.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:20px'><tr><td>Model Size</td><td>2M</td><td>82M</td><td>180M</td><td>468M</td></tr><tr><td>Layers</td><td>4</td><td>8</td><td>12</td><td>24</td></tr><tr><td>Attention Heads</td><td>2</td><td>8</td><td>12</td><td>16</td></tr><tr><td>Hidden Dimension</td><td>16</td><td>512</td><td>768</td><td>1,024</td></tr><tr><td>FFN Dimension</td><td>56</td><td>1,792</td><td>2,688</td><td>3,584</td></tr><tr><td>Tie Word Embedding</td><td colspan="4">False</td></tr><tr><td>(Peak Learning Rate, Final Learning Rate)</td><td colspan="4">(6e - 4, 6e - 5)</td></tr><tr><td>Learning Rate Schedule</td><td colspan="4">Cosine Decay</td></tr><tr><td>Vocabulary Size</td><td colspan="4">50,277</td></tr><tr><td>Activation Function</td><td colspan="4">SwiGLU</td></tr><tr><td>Position Embedding</td><td colspan="4">RoPE (0 = 10,000)</td></tr><tr><td>Batch Size</td><td colspan="4">2M tokens</td></tr><tr><td>Data Size</td><td colspan="4">20B tokens</td></tr><tr><td>(Warmup Steps, Training Steps)</td><td colspan="4">(120, 10,000)</td></tr><tr><td>Adam B</td><td colspan="4">(0.9, 0.95)</td></tr><tr><td>Dropout</td><td colspan="4">0.0</td></tr><tr><td>Weight Decay</td><td colspan="4">0.1</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the training details of the ResFormer and vanilla Transformer models with different sizes, including the number of layers, attention heads, hidden dimensions, FFN dimensions, and other hyperparameters.
> <details>
> <summary>read the caption</summary>
> Table 4: Training details for models with different size.
> </details>

{{< table-caption >}}
<table id='7' style='font-size:18px'><tr><td>Model</td><td>Common Crawl</td><td>C4</td><td>Github</td><td>Stack Exchange</td><td>Wikipedia</td><td>Book</td><td>Arxiv</td><td>Avg.</td></tr><tr><td>Transformer (82M)</td><td>3.3595</td><td>3.5388</td><td>1.4247</td><td>2.3872</td><td>2.9047</td><td>3.3797</td><td>2.1779</td><td>2.7389</td></tr><tr><td>Transformer (180M)</td><td>3.0961</td><td>3.2834</td><td>1.2451</td><td>2.1651</td><td>2.5897</td><td>3.1309</td><td>2.0001</td><td>2.5015</td></tr><tr><td>Transformer (468M)</td><td>2.8514</td><td>3.0430</td><td>1.0908</td><td>1.9628</td><td>2.2821</td><td>2.8979</td><td>1.8362</td><td>2.2806</td></tr><tr><td>Resformer (82M)</td><td>3.3362</td><td>3.5191</td><td>1.3941</td><td>2.3592</td><td>2.8646</td><td>3.3572</td><td>2.1518</td><td>2.7117</td></tr><tr><td>Resformer (180M)</td><td>3.0631</td><td>3.2504</td><td>1.2200</td><td>2.1350</td><td>2.5435</td><td>3.0994</td><td>1.9732</td><td>2.4692</td></tr><tr><td>Resformer (468M)</td><td>2.8214</td><td>3.0115</td><td>1.0730</td><td>1.9388</td><td>2.2477</td><td>2.8696</td><td>1.8142</td><td>2.2537</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the validation loss for different models on the whole validation split of slimpajama dataset, comparing vanilla transformer and resformer models of different sizes.
> <details>
> <summary>read the caption</summary>
> Table 5: Validation loss on slimpajama.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.17897/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17897/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}