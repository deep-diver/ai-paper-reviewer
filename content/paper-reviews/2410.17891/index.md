---
title: "Scaling Diffusion Language Models via Adaptation from Autoregressive Models"
summary: "Researchers efficiently adapt existing large autoregressive language models into competitive diffusion language models, achieving scalability and outperforming prior diffusion models on various benchm..."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.17891 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research tackles the challenge of scaling up diffusion language models (DLMs), a new and promising area in text generation.  Unlike traditional autoregressive models, DLMs offer potential advantages such as controllable and parallel text generation. However, training DLMs from scratch at large scales is computationally expensive.  To overcome this, the researchers developed a method to adapt readily available and well-trained autoregressive language models into DLMs.  They demonstrate that this adaptation process is efficient, requiring significantly less training data than training a DLM from scratch.  Their approach involves unifying the training objectives of both autoregressive and diffusion models, and carefully managing the differences in their attention mechanisms.  The resultant adapted DLMs, named DiffuGPT and DiffuLLaMA, exhibit strong performance, outperforming earlier DLMs and even being competitive with their autoregressive counterparts on several language modeling benchmarks.  They released the models, code, and datasets, enabling further research and development in the field. The work expands upon previous research by significantly increasing the scale of DLMs, facilitating more comprehensive comparisons with traditional autoregressive models and paving the way for future improvements and advancements in DLM technology.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17891" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17891" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in natural language processing and machine learning because it addresses the scalability challenges of diffusion language models (DLMs), a promising but less-explored area compared to autoregressive models.  It proposes an efficient adaptation method, enabling the creation of competitive large-scale DLMs. This opens new avenues for research into DLM architectures, training techniques, and their applications in various tasks, pushing the boundaries of text generation and language modeling.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large-scale diffusion language models can be efficiently created by adapting existing autoregressive models, bridging the scalability gap. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed adaptation method outperforms previous state-of-the-art diffusion models on multiple benchmarks, demonstrating its effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The resulting models exhibit strong performance in tasks like in-context learning and text infilling, showcasing the potential of diffusion models for advanced language tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.17891/figures_3_0.png)

> 🔼 This figure illustrates the adaptation process from autoregressive language models to diffusion language models, highlighting the key steps of causal mask annealing, shift operation, and the resulting bi-directional attention mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our approach to adapt autoregressive (AR) models to diffusion models. Left: The shift operation in AR models enables the output layer hi to approximate the distribution of next tokens Xi+1 in hidden representations through the cross entropy (CE) loss. Middle: We remove the causal mask gradually during training eventually making our model bi-directional. Right: inside the diffusion models we shift the logits to compute the loss with the next token (i.e., the loss on hi would be with respect to xi+1), while perceptually, the diffusion models are still functioning as recovering the original signals (since hi corresponds to xi+1 in AR loss).
> </details>





![](https://ai-paper-reviewer.com/2410.17891/charts_6_0.png)

> 🔼 The chart displays the training loss curves for three different-sized diffusion language models (127M, 355M, and 7B parameters) across billions of training tokens.
> <details>
> <summary>read the caption</summary>
> Figure 2: Training loss over tokens for different scales of our adapted diffusion models.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td colspan="2">Algorithm 1 Adaptation Training</td><td>Algorithm 2 Sampling</td></tr><tr><td>1:</td><td>Input: network f⌀ initialized by existing models, training corpus Pdata (x1⌀n ), mask token m.</td><td>1: Input: Trained diffusion model f⌀, sampling al- gorithm T, mask token m, start token S.</td></tr><tr><td>2:</td><td>Output: model parameters 0.</td><td>2: Output: generated sample X⌀.</td></tr><tr><td>3:</td><td>repeat</td><td>3: Initialize x1in = m.</td></tr><tr><td>4:</td><td>Draw x1⌀n ~ Pdata and set labels ← xJ:N</td><td>4: for t = T, · · · , do 1</td></tr><tr><td>5:</td><td>Sample t E Uniform(0, 1)</td><td>5: Forward logits ← f⌀(x1:N)</td></tr><tr><td>6:</td><td>Sample x1:N ~ q(xt|xo)</td><td>6: Sample ⌀1:N ~ Categorical(T (logits))</td></tr><tr><td>7:</td><td>Anneal the attention mask attn_mask</td><td>7: for n = 1, · · · , N do</td></tr><tr><td>8:</td><td>Forward logits ← f⌀ (x1in) with attn_mask</td><td>8: xt-1 = q(xt-1|x7, x⌀ ) ▷ Eq.4</td></tr><tr><td>9:</td><td>Right shift logits by one position</td><td>9: end for</td></tr><tr><td>10:</td><td>Lt = 1/8xt,m CE(logits, labels) ▷ Eq.7</td><td>10: Right shift x1iN = [s, x]=1]</td></tr><tr><td>11:</td><td>Backprop with Lt and update 0</td><td>11: end for</td></tr><tr><td>12:</td><td>until end training</td><td>12: Return x2⌀n</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of various diffusion and autoregressive language models across several tasks, including question answering, common sense reasoning, and code generation, highlighting the performance differences between these model types.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.17891/charts_8_0.png)

> 🔼 The chart displays the relationship between decoding steps, generative perplexity, and distinct 2-gram diversity for various diffusion models in unconditional text generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Quality evaluation for unconditional generation, with perplexity measured by GPT2 large and distinct 2-gram diversity.
> </details>


![](https://ai-paper-reviewer.com/2410.17891/charts_9_0.png)

> 🔼 The chart compares the single-batch decoding speed of LLaMA2 and DiffuLLaMA models with varying sequence lengths and different numbers of diffusion timesteps (T).
> <details>
> <summary>read the caption</summary>
> Figure 4: Single batch decoding speed (seconds) for different models using flash-attention 2.
> </details>


![](https://ai-paper-reviewer.com/2410.17891/charts_22_0.png)

> 🔼 The chart shows the unconditional generation quality, measured by perplexity and distinct 2-gram diversity, for different diffusion time steps and sampling algorithms.
> <details>
> <summary>read the caption</summary>
> Figure 5: The unconditional generation quality for different diffusion time steps T and sampling algorithms. We annotate the temperature of top-k sampling and top-p sampling.
> </details>


![](https://ai-paper-reviewer.com/2410.17891/charts_22_1.png)

> 🔼 The chart shows that using DiffuGPT as the base model for finetuning GSM8K data with discrete diffusion objectives leads to faster convergence and lower training loss compared to using GPT2 as the base model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Finetune GSM8K data with discrete diffusion objectives, using a base model of either GPT2-S/M or DiffuGPT-S/M. DiffuGPT converges faster and attains a lower loss.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Size</td><td>Type</td><td>QA TriQA</td><td>Word Lamb.</td><td>HSwag</td><td>CommonSense Wino.</td><td>SIQA</td><td>Reasoning PIQA</td><td>Math GSM8K*</td><td>Infilling ROCStories</td><td>Code</td></tr><tr><td>GPT2-S</td><td>127M</td><td>AR</td><td>4.0</td><td>25.9</td><td>29.9</td><td>48.5</td><td>35.7</td><td>62.1</td><td>44.8</td><td>(7.8/0.8/7.4)</td><td>(1.6)</td></tr><tr><td>SEDD-S</td><td>170M</td><td>DD</td><td>1.5</td><td>12.4</td><td>30.2</td><td>50.1</td><td>34.4</td><td>55.6</td><td>45.3</td><td>11.9/0.7/10.9</td><td>0.7</td></tr><tr><td>DiffuGPT-S</td><td>127M</td><td>DD</td><td>2.0</td><td>45.0</td><td>33.4</td><td>50.8</td><td>37.0</td><td>57.7</td><td>50.2</td><td>13.7/1.4/12.6</td><td>0.3</td></tr><tr><td>GPT2-M</td><td>355M</td><td>AR</td><td>6.7</td><td>37.7</td><td>38.3</td><td>50.7</td><td>37.7</td><td>67.4</td><td>45.6</td><td>(8.6/0.9/8.2)</td><td>(2.6)</td></tr><tr><td>SEDD-M</td><td>424M</td><td>DD</td><td>1.8</td><td>23.1</td><td>31.5</td><td>49.0</td><td>35.4</td><td>56.1</td><td>53.5</td><td>13.1/1.4/12.2</td><td>0.5</td></tr><tr><td>DiffuGPT-M</td><td>355M</td><td>DD</td><td>3.8</td><td>60.5</td><td>37.2</td><td>52.6</td><td>39.0</td><td>59.6</td><td>61.8</td><td>18.7/2.7/17.0</td><td>2.9</td></tr><tr><td>Plaid1B</td><td>1.3B</td><td>CD</td><td>1.2</td><td>8.6</td><td>39.3</td><td>51.3</td><td>32.3</td><td>54.5</td><td>32.6</td><td>12.1/1.1/11.2</td><td>0.1</td></tr><tr><td>LLaMA2</td><td>7B</td><td>AR</td><td>45.4</td><td>68.8</td><td>74.9</td><td>67.1</td><td>44.8</td><td>78.3</td><td>58.6</td><td>(11.6/2.1/10.5)</td><td>(1.7)</td></tr><tr><td>DiffuLLaMA</td><td>7B</td><td>DD</td><td>18.5</td><td>70.9</td><td>58.7</td><td>56.4</td><td>43.2</td><td>63.3</td><td>63.1</td><td>23.3/5.5/21.2</td><td>15.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 provides a comprehensive comparison of different diffusion language models and their autoregressive counterparts across various tasks, including question answering, commonsense reasoning, and infilling, using accuracy and ROUGE scores.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Models</td><td>MAWPS</td><td>SATMath</td><td>TriviaQA</td></tr><tr><td>LLaMA2</td><td>63.5</td><td>24.5</td><td>45.4</td></tr><tr><td>DiffuLLaMA-ZS</td><td>9.7</td><td><1</td><td>18.5</td></tr><tr><td>DiffuLLaMA-FS</td><td>31.3</td><td>23.6</td><td>20.9</td></tr><tr><td>DiffuLLaMA-SC</td><td>33.1</td><td>27.7</td><td>26.0</td></tr><tr><td>DiffuLLaMA-@k</td><td>40.8</td><td>57.7</td><td>34.1</td></tr><tr><td>DiffuLLaMA-CoT</td><td>28.7</td><td>9.5</td><td>-</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comprehensive evaluation comparing various diffusion language models and their autoregressive counterparts across multiple tasks, including question answering, common sense reasoning, math problem solving, and text infilling.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:16px'><tr><td></td><td></td><td>GPT2-S GPT2-M</td></tr><tr><td></td><td>44.8</td><td>45.6</td></tr><tr><td></td><td>19.2</td><td>20.2</td></tr><tr><td></td><td>33.5</td><td>34.5</td></tr><tr><td></td><td>43.3</td><td>47.2</td></tr><tr><td></td><td>45.4</td><td>49.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comprehensive evaluation of various diffusion and autoregressive language models across multiple tasks, highlighting their performance in zero-shot and few-shot settings.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>

{{< table-caption >}}
<table id='11' style='font-size:16px'><tr><td>Models</td><td>Training steps</td><td>Global batch size</td><td>Context length</td></tr><tr><td>SEDD (Lou et al., 2024)</td><td>400k</td><td>512</td><td>1024</td></tr><tr><td>MD4 (Shi et al., 2024)</td><td>1000k</td><td>512</td><td>1024</td></tr><tr><td>DiffuGPT-S</td><td>1000k</td><td>256</td><td>512</td></tr><tr><td>DiffuGPT-M</td><td>160k</td><td>1280</td><td>1024</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comprehensive evaluation comparing various diffusion language models against their autoregressive counterparts across multiple tasks, including question answering, common sense reasoning, and infilling.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:20px'><tr><td>Length</td><td>Attention</td><td>DiffuLLaMA (sec)</td><td>LLaMA (sec)</td></tr><tr><td>512</td><td>flash-attention 2</td><td>12.5</td><td>9.2</td></tr><tr><td>1024</td><td>SDPA</td><td>13.2</td><td>16.3</td></tr><tr><td>1024</td><td>flash-attention 2</td><td>13.3</td><td>17.5</td></tr><tr><td>1024</td><td>vanilla</td><td>16.2</td><td>17.2</td></tr><tr><td>2048</td><td>SDPA</td><td>28.5</td><td>29.5</td></tr><tr><td>2048</td><td>flash-attention 2</td><td>23.5</td><td>35.7</td></tr><tr><td>2048</td><td>vanilla</td><td>38.1</td><td>32.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comprehensive comparison of various diffusion and autoregressive language models across multiple tasks, including question answering, commonsense reasoning, math problem solving, and text infilling, highlighting the performance differences and improvements achieved through model adaptation.
> <details>
> <summary>read the caption</summary>
> Table 1: Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.17891/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17891/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}