---
title: "Toward Guidance-Free AR Visual Generation via Condition Contrastive Alignment"
summary: "Researchers developed Condition Contrastive Alignment (CCA), a novel guidance-free method for high-quality autoregressive visual generation, significantly boosting performance while slashing sampling ..."
categories: ["AI Generated"]
tags: ["🔖 24-10-12", ]
showSummary: true
date: 2024-10-12
draft: false
---

{{< keyword >}} 2410.09347 {{< /keyword >}}

### TL;DR


{{< lead >}}

Autoregressive (AR) models excel at language generation, but visual generation often relies on computationally expensive Classifier-Free Guidance (CFG).  This paper introduces Condition Contrastive Alignment (CCA), a new method that avoids CFG's complexities.  Instead of altering the sampling process like CFG, CCA directly fine-tunes a pre-trained model to achieve a better result.  The results demonstrate that CCA substantially enhances the quality of AR visual generation, matching or exceeding the performance of CFG with significantly lower sampling costs (approximately half).  The researchers also show a connection between CCA and methods used in language model alignment, suggesting a unification of two distinct research areas.  This breakthrough has significant implications for generating higher-quality visual outputs from AR models and suggests a computationally more effective approach to image generation compared to the established CFG method.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.09347" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.09347" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AR visual generation and multi-modal learning. It challenges the reliance on Classifier-Free Guidance (CFG), a computationally expensive technique, by introducing Condition Contrastive Alignment (CCA). CCA offers a more efficient, theoretically grounded alternative, opening new avenues for improving the quality and diversity of AR visual generation and unifying language and visual modeling techniques.  Its impact extends to related fields like LLM alignment, providing valuable insights and cross-disciplinary connections.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Condition Contrastive Alignment (CCA) is proposed as an efficient, guidance-free method for AR visual generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CCA significantly improves sample quality and diversity compared to traditional methods, achieving results on par with CFG but with only half the sampling cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A strong theoretical connection is established between CCA and guided sampling methods, unifying language-targeted alignment and visual-targeted guidance. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.09347/figures_5_0.png)

> 🔼 The figure illustrates the CCA method, showing how positive and negative image-condition pairs are used to approximate two expectations and train a target model to fit a desired distribution.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of the CCA method.
> </details>





![](https://ai-paper-reviewer.com/2410.09347/charts_1_0.png)

> 🔼 The chart displays a comparison of FID and IS scores for various autoregressive visual generation models with and without guidance, demonstrating the effectiveness of Condition Contrastive Alignment (CCA).
> <details>
> <summary>read the caption</summary>
> Figure 1: CCA significantly improves guidance-free sample quality for AR visual generative models with just one epoch of fine-tuning on the pretraining dataset.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2"></td><td rowspan="2">Model</td><td colspan="4">w/o Guidance</td><td colspan="2">w/ Guidance</td></tr><tr><td>FID↓</td><td>IS↑</td><td>Precision↑</td><td>Recall↑</td><td>FID↓</td><td>IS↑</td></tr><tr><td rowspan="5">Diffusion</td><td>ADM Dhariwal & Nichol 2021</td><td>7.49</td><td>127.5</td><td>0.72</td><td>0.63</td><td>3.94</td><td>215.8</td></tr><tr><td>LDM-4 Rombach et al. 2022</td><td>10.56</td><td>103.5</td><td>0.71</td><td>0.62</td><td>3.60</td><td>247.7</td></tr><tr><td>U-ViT-H/2 Bao et al. 2023</td><td>-</td><td>-</td><td>-</td><td>-</td><td>2.29</td><td>263.9</td></tr><tr><td>DiT-XL/2 Peebles & Xie 2023</td><td>9.62</td><td>121.5</td><td>0.67</td><td>0.67</td><td>2.27</td><td>278.2</td></tr><tr><td>MDTv2-XL/2 Gao et al. 2023</td><td>5.06</td><td>155.6</td><td>0.72</td><td>0.66</td><td>1.58</td><td>314.7</td></tr><tr><td rowspan="3">Mask</td><td>MaskGIT Chang et al. 2022</td><td>6.18</td><td>182.1</td><td>0.80</td><td>0.51</td><td>-</td><td></td></tr><tr><td>MAGVIT-v2 Yu et al. 2023</td><td>3.65</td><td>200.5</td><td></td><td></td><td>1.78</td><td>319.4</td></tr><tr><td>MAGE Li et al. 2023</td><td>6.93</td><td>195.8</td><td></td><td></td><td>-</td><td>-</td></tr><tr><td rowspan="7">Autoregressive</td><td>VQGAN Esser et al. 2021</td><td>15.78</td><td>74.3</td><td></td><td></td><td>5.20</td><td>280.3</td></tr><tr><td>ViT-VQGAN Yu et al 2021</td><td>4.17</td><td>175.1</td><td>-</td><td>-</td><td>3.04</td><td>227.4</td></tr><tr><td>RQ-Transformer Lee et al 2022</td><td>7.55</td><td>134.0</td><td>-</td><td></td><td>3.80</td><td>323.7</td></tr><tr><td>LlamaGen-3B Sun et al 2024</td><td>9.38</td><td>112.9</td><td>0.69</td><td>0.67</td><td>2.18</td><td>263.3</td></tr><tr><td>+CCA (Ours)</td><td>2.69</td><td>276.8</td><td>0.80</td><td>0.59</td><td>-</td><td>-</td></tr><tr><td>VAR-d30 Tian et al. 2024</td><td>5.25</td><td>175.6</td><td>0.75</td><td>0.62</td><td>1.92</td><td>323.1</td></tr><tr><td>+CCA (Ours)</td><td>2.54</td><td>264.2</td><td>0.83</td><td>0.56</td><td>-</td><td></td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 compares the performance of various visual generative models, both with and without guidance, using FID and IS scores, and includes precision and recall metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: Model comparisons on class-conditional ImageNet 256 × 256 benchmark.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.09347/figures_7_0.png)

> 🔼 The figure shows that CCA significantly improves the guidance-free sample quality for autoregressive visual generative models, achieving comparable performance to CFG with only one epoch of fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 1: CCA significantly improves guidance-free sample quality for AR visual generative models with just one epoch of fine-tuning on the pretraining dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_7_1.png)

> 🔼 The figure shows that CCA significantly improves the guidance-free sample quality for autoregressive visual generative models, achieving performance comparable to CFG with only one epoch of fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 1: CCA significantly improves guidance-free sample quality for AR visual generative models with just one epoch of fine-tuning on the pretraining dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_7_2.png)

> 🔼 The figure shows that CCA significantly improves the guidance-free sample quality for autoregressive visual generative models, achieving results comparable to guided sampling methods with only one epoch of fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 1: CCA significantly improves guidance-free sample quality for AR visual generative models with just one epoch of fine-tuning on the pretraining dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_7_3.png)

> 🔼 The figure shows a comparison of images generated by LlamaGen-L model using three different methods: without guidance, with CCA (without guidance), and with CFG (with guidance).
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of LlamaGen-L samples generated with CCA or CFG.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_7_4.png)

> 🔼 The figure shows a comparison of images generated by LlamaGen-L model using three different methods: without guidance, with CCA (without guidance), and with CFG.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of LlamaGen-L samples generated with CCA or CFG.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_7_5.png)

> 🔼 The figure shows a comparison of images generated by LlamaGen-L model with and without CCA and CFG.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of LlamaGen-L samples generated with CCA or CFG.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_15_0.png)

> 🔼 The figure shows a comparison of images generated by LlamaGen-L model using three different methods: without guidance, with CCA (without guidance), and with CFG.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of LlamaGen-L samples generated with CCA or CFG.
> </details>



![](https://ai-paper-reviewer.com/2410.09347/figures_16_0.png)

> 🔼 The figure compares image samples generated by the VAR-d24 model using three different methods: without guidance, with CCA (without guidance), and with CFG.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison of VAR-d24 samples generated with CCA or CFG.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.09347/charts_8_0.png)

> 🔼 The chart displays the FID-IS trade-offs achieved by CCA and CFG for LlamaGen-L and VAR-d24 models, demonstrating CCA's ability to control sample diversity and fidelity by adjusting its training parameter λ, similar to CFG's guidance scale.
> <details>
> <summary>read the caption</summary>
> Figure 4: CCA can achieve similar FID-IS trade-offs to CFG by adjusting training parameter λ.
> </details>


![](https://ai-paper-reviewer.com/2410.09347/charts_9_0.png)

> 🔼 The chart displays how changing the training parameter λ in Condition Contrastive Alignment (CCA) and CCA combined with Classifier-Free Guidance (CFG) affects the FID and IS scores, showing the controllable trade-off between diversity and fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 5: The impact of training parameter λ on the performance of CCA+CFG.
> </details>


![](https://ai-paper-reviewer.com/2410.09347/charts_9_1.png)

> 🔼 The chart displays a comparison of FID and IS scores for LlamaGen models of various sizes trained with CCA only, CFG only, and a combination of CCA and CFG, showing that the combined approach yields the best performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Integration of CCA+CFG yields improved performance over CFG alone.
> </details>


![](https://ai-paper-reviewer.com/2410.09347/charts_18_0.png)

> 🔼 The chart shows the impact of varying hyperparameters (β for CCA, λ for CCA, and s for CFG) on the FID and IS scores, illustrating the controllable trade-off between diversity and fidelity achievable by adjusting these parameters.
> <details>
> <summary>read the caption</summary>
> Figure 9: Effect of varying β of CCA for the LlamaGen-L model. In our CCA experiments, we either fix λ = 1e3 and ablate β∈ [2, 5e – 3] (from left to right) or fix β = 0.02 and ablate λ∈ [0, 1e4]. In our CFG experiments, we ablate s ∈ [0,3].
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Model</td><td>FID↓</td><td>IS</td><td>sFID↓</td><td>Precision</td><td>Recall</td><td>Model</td><td>FID↓</td><td>IS</td><td>sFID↓</td><td>Precision</td><td>Recall</td></tr><tr><td>LlamaGen-L</td><td>19.00</td><td>64.7</td><td>8.78</td><td>0.61</td><td>0.67</td><td>VAR-d24</td><td>6.20</td><td>154.3</td><td>8.50</td><td>0.74</td><td>0.62</td></tr><tr><td>+DPO</td><td>61.69</td><td>30.8</td><td>44.98</td><td>0.36</td><td>0.40</td><td>+DPO</td><td>7.53</td><td>232.6</td><td>19.10</td><td>0.85</td><td>0.34</td></tr><tr><td>+Unlearn</td><td>12.22</td><td>111.6</td><td>7.99</td><td>0.66</td><td>0.64</td><td>+Unlearn</td><td>5.55</td><td>165.9</td><td>8.41</td><td>0.75</td><td>0.61</td></tr><tr><td>+CCA</td><td>3.43</td><td>288.2</td><td>7.44</td><td>0.81</td><td>0.52</td><td>+CCA</td><td>2.63</td><td>298.8</td><td>7.63</td><td>0.84</td><td>0.55</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of CCA and other LLM alignment algorithms (DPO and Unlearning) on visual generation tasks, showing CCA's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparision of CCA and LLM alignment algorithms in visual generation.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Type</td><td colspan="5">LlamaGen</td><td colspan="4">VAR</td></tr><tr><td>Model</td><td>B</td><td>L</td><td>XL</td><td>XXL</td><td>3B</td><td>d16</td><td>d20</td><td>d24</td><td>d30</td></tr><tr><td>Size</td><td>111M</td><td>343M</td><td>775M</td><td>1.4B</td><td>3.1B</td><td>310M</td><td>600M</td><td>1.0B</td><td>2.0B</td></tr><tr><td>CCA B</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td></tr><tr><td>CCA 入</td><td>1000</td><td>300</td><td>1000</td><td>1000</td><td>500</td><td>50</td><td>50</td><td>100</td><td>1000</td></tr><tr><td>CCA+CFG B</td><td>0.1</td><td>0.02</td><td>0.1</td><td>0.1</td><td>0.1</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>CCA+CFG 入</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Learning rate</td><td>1e-5</td><td>1e-5</td><td>1e-5</td><td>1e-5</td><td>1e-5</td><td>2e-5</td><td>2e-5</td><td>2e-5</td><td>2e-5</td></tr><tr><td>Dropout?</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td><td>None</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>Batch size</td><td>256</td><td>256</td><td>256</td><td>256</td><td>256</td><td>256</td><td>256</td><td>256</td><td>256</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares CCA with other guidance methods in terms of how they model the distributional gap between target and pretrained models, training loss, sampling policy, computational costs, and applicable areas.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of CCA (ours) and guidance methods in visual generative models. Computational costs are estimated according to Dhariwal & Nichol (2021) and Ho & Salimans (2022).
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.09347/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09347/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}