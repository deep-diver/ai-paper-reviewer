---
title: "Improving Long-Text Alignment for Text-to-Image Diffusion Models"
summary: "LongAlign enhances text-to-image diffusion models by introducing segment-level encoding and decomposed preference optimization, achieving superior long-text alignment."
categories: ["AI Generated"]
tags: ["🔖 24-10-15", ]
showSummary: true
date: 2024-10-15
draft: false
---

{{< keyword >}} 2410.11817 {{< /keyword >}}

### TL;DR


{{< lead >}}

This paper introduces LongAlign, a novel method to improve the alignment between generated images and long text descriptions in text-to-image (T2I) diffusion models.  The core of LongAlign lies in two key improvements: 1) Segment-level encoding: Long texts are split into smaller segments, each processed individually, then combined. This addresses the input length restrictions of existing encoding methods. 2) Decomposed preference optimization:  The authors analyze the scoring mechanism of existing CLIP-based preference models, finding that scores combine text-relevant (actual image-text alignment) and text-irrelevant parts (e.g., aesthetic preferences).  A reweighting strategy is introduced to reduce overfitting caused by the text-irrelevant part, improving alignment. Experiments show LongAlign significantly improves the quality of image generation when given long, detailed text prompts, outperforming existing state-of-the-art models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11817" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.11817" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant because it tackles a critical challenge in text-to-image generation: aligning generated images with long text descriptions.  The proposed LongAlign method offers a practical solution, improving image-text alignment and pushing the boundaries of current models. This opens avenues for research on handling increasingly complex text prompts in image synthesis, impacting various applications.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Segment-level encoding effectively processes long texts by dividing them into segments and encoding separately, overcoming length limitations of existing models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Decomposed preference optimization separates text-relevant and -irrelevant components in preference scores, enhancing T2I alignment and reducing overfitting during fine-tuning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The resulting LongAlign model outperforms existing state-of-the-art models in aligning generated images with long text descriptions. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.11817/figures_2_0.png)

> 🔼 Figure 1 shows the generation results of the long Stable Diffusion model and three baseline models on four different prompts, highlighting the superior performance of the proposed model in aligning generated images with long text descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation results of our long Stable Diffusion and baselines. We highlight three key facts for each prompt and provide the evaluation results at the end. In each evaluation line, the four group results are arranged in order of model presentation, with S representing SD-1.5, and so on. Additionally, three or maintain the order of the key facts corresponding to each prompt.
> </details>





![](https://ai-paper-reviewer.com/2410.11817/charts_5_0.png)

> 🔼 Figure 2 shows the schematic results of text embeddings, statistics of projection scalar for three models, and the relationship between original score and decomposed scores.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Schematic results for text embeddings. (b) Statistics of the projection scalar η for three models. (c) The relationship between the original score and the two scores after decomposition using our Denscore. In the three score tables, the diagonal represents the scores for paired data, while the off-diagonal positions indicate the scores for unpaired data.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:20px'><tr><td rowspan="2"></td><td colspan="2">CLIP-H</td><td colspan="2">HPSv2</td><td colspan="2">Pickscore</td><td colspan="2">Denscore</td></tr><tr><td>Single</td><td>Average</td><td>Single</td><td>Average</td><td>Single</td><td>Average</td><td>Single</td><td>Average</td></tr><tr><td>Cp(p)</td><td>86.10</td><td>80.40</td><td>42.34</td><td>16.72</td><td>54.00</td><td>31.84</td><td>83.96</td><td>75.90</td></tr><tr><td>C声(p)</td><td>85.80</td><td>85.14</td><td>67.94</td><td>64.28</td><td>67.60</td><td>64.00</td><td>87.24</td><td>91.86</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the R@1 retrieval accuracy for 5k text-to-image retrieval using different CLIP-based models, comparing the performance of using the full text embedding, text-relevant embedding, and the average of segment-level embeddings.
> <details>
> <summary>read the caption</summary>
> Table 1: R@1 results for 5k text-to-image retrieval using different CLIP-based models.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.11817/figures_6_0.png)

> 🔼 Figure 1 shows generation results comparing the authors' model to other state-of-the-art models, highlighting the improved alignment of generated images with long text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation results of our long Stable Diffusion and baselines. We highlight three key facts for each prompt and provide the evaluation results at the end. In each evaluation line, the four group results are arranged in order of model presentation, with S representing SD-1.5, and so on. Additionally, three or maintain the order of the key facts corresponding to each prompt.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_9_0.png)

> 🔼 Figure 6 shows generation results comparing different reward signals with and without gradient reweighting, illustrating the impact of the proposed method on image generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Generation results using different reward signals, with and without gradient reweighting. The corresponding text conditions can be found in Appendix F.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_10_0.png)

> 🔼 Figure 1 shows the generation results of long Stable Diffusion and baselines for four different image generation prompts, highlighting the differences in alignment with the text descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation results of our long Stable Diffusion and baselines. We highlight three key facts for each prompt and provide the evaluation results at the end. In each evaluation line, the four group results are arranged in order of model presentation, with S representing SD-1.5, and so on. Additionally, three or maintain the order of the key facts corresponding to each prompt.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_15_0.png)

> 🔼 The figure illustrates the process of segmenting long text inputs, encoding each segment using CLIP, and concatenating the resulting embeddings with token adjustments to handle special tokens.
> <details>
> <summary>read the caption</summary>
> Figure 9: The visualization of our new segment-level text encoding for diffusion models is presented.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_15_1.png)

> 🔼 Figure 10 shows the image generation results using different embedding concatenation strategies for the segment-level text encoding method.
> <details>
> <summary>read the caption</summary>
> Figure 10: Generation results under different embedding concatenation strategies.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_20_0.png)

> 🔼 The figure shows generation results of long Stable Diffusion and baselines, highlighting key facts and evaluation results for each prompt.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation results of our long Stable Diffusion and baselines. We highlight three key facts for each prompt and provide the evaluation results at the end. In each evaluation line, the four group results are arranged in order of model presentation, with S representing SD-1.5, and so on. Additionally, three or maintain the order of the key facts corresponding to each prompt.
> </details>



![](https://ai-paper-reviewer.com/2410.11817/figures_20_1.png)

> 🔼 The figure displays the generation results of different models on long text prompts, highlighting the strengths and weaknesses of each model in terms of aligning generated images with the provided text descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generation results of our long Stable Diffusion and baselines. We highlight three key facts for each prompt and provide the evaluation results at the end. In each evaluation line, the four group results are arranged in order of model presentation, with S representing SD-1.5, and so on. Additionally, three or maintain the order of the key facts corresponding to each prompt.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.11817/charts_7_0.png)

> 🔼 The chart compares the FID and Denscore results for diffusion models using different text encoding methods (CLIP with concatenation, T5 with an additional two-layer MLP, and a combination of CLIP and T5).
> <details>
> <summary>read the caption</summary>
> Figure 4: FID and Denscore results for diffusion models with different text encodings.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_7_1.png)

> 🔼 The chart compares the FID and Denscore performance of three different text encoding methods (CLIP-cat, T5-mlp, and CLIP+T5) for diffusion models during training.
> <details>
> <summary>read the caption</summary>
> Figure 4: FID and Denscore results for diffusion models with different text encodings.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_0.png)

> 🔼 The chart shows the FID and Denscore results for diffusion models trained with different gradient reweighting factors, illustrating the impact of this factor on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_1.png)

> 🔼 The chart displays the FID and Denscore results obtained from diffusion models trained with varying gradient reweighting factors and training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_2.png)

> 🔼 Figure 5 shows the FID and Denscore results for diffusion models with different gradient reweighting factors (0.0, 0.3, and 0.5) across various training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_3.png)

> 🔼 The chart displays the FID and Denscore results for diffusion models trained with varying gradient reweighting factors and training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_4.png)

> 🔼 The chart displays FID and Denscore results for diffusion models trained with different gradient reweighting factors (0.0, 0.3, and 0.5) across various training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_8_5.png)

> 🔼 The chart displays the FID and Denscore scores for diffusion models trained with different gradient reweighting factors (0.0, 0.3, and 0.5) across various training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5: FID and Denscore results for diffusion models using different gradient reweighting factors.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_9_0.png)

> 🔼 The bar chart displays the GPT-40 evaluation results (Loss and Win counts) for different foundation models in terms of text-to-image alignment.
> <details>
> <summary>read the caption</summary>
> Figure 7: GPT-4o evaluation results of T2I alignment across different models.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_17_0.png)

> 🔼 Figure 2 schematically visualizes text embeddings, projection scalar statistics for three models, and the relationship between original and decomposed scores using Denscore.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Schematic results for text embeddings. (b) Statistics of the projection scalar η for three models. (c) The relationship between the original score and the two scores after decomposition using our Denscore. In the three score tables, the diagonal represents the scores for paired data, while the off-diagonal positions indicate the scores for unpaired data.
> </details>


![](https://ai-paper-reviewer.com/2410.11817/charts_17_1.png)

> 🔼 The chart displays the distribution of original text embeddings, text-irrelevant embeddings, and common embeddings for paired and unpaired image-text data using three different CLIP-based models.
> <details>
> <summary>read the caption</summary>
> Figure 12: The real data statistics for the diagonal paired data and the off-diagonal unpaired data.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Model</td><td>SD-1.5</td><td>SD-2.1</td><td>PlayG-2</td><td>PixArt-�</td><td>KanD-2.2</td><td>longSD (S)</td><td>longSD (S+R)</td></tr><tr><td>FID-5k</td><td>24.96</td><td>25.80</td><td>23.92</td><td>22.36</td><td>20.04</td><td>20.09</td><td>19.63/24.28</td></tr><tr><td>Denscore-O</td><td>29.20</td><td>30.15</td><td>28.80</td><td>33.48</td><td>33.30</td><td>31.29</td><td>32.83/35.26</td></tr><tr><td>Denscore</td><td>20.29</td><td>20.91</td><td>21.22</td><td>22.78</td><td>22.70</td><td>21.72</td><td>22.74/23.79</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents FID and Denscore results for 512x512 image generation using different foundation models, including the proposed model, demonstrating its improved performance.
> <details>
> <summary>read the caption</summary>
> Table 2: FID and Denscore results for 512x512 image generation using different foundation models. PlayG-2 is from Li et al. (2024a), and KanD-2.2 is from Razzhigaev et al. (2023).
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="2">768</td><td colspan="2">1024</td></tr><tr><td>P2I</td><td>+ours</td><td>P2I</td><td>+ours</td></tr><tr><td>FID-5k</td><td>20.36</td><td>21.60</td><td>19.78</td><td>20.84</td></tr><tr><td>Denscore-O</td><td>34.45</td><td>38.71</td><td>34.78</td><td>38.51</td></tr><tr><td>Denscore</td><td>23.43</td><td>25.39</td><td>23.47</td><td>25.41</td></tr><tr><td>GPT-4o</td><td>240</td><td>583</td><td>289</td><td>536</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the quantitative comparison of the original P2I diffusion model and its fine-tuned version using the proposed method across multiple evaluation metrics, including FID, Denscore-O, Denscore and GPT-4o.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation for comparison in the P2I diffusion framework.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td>max number</td><td>1</td><td>2</td><td>3</td><td>4</td><td>6</td><td>8</td></tr><tr><td>CLIP</td><td>53.06</td><td>70.90</td><td>76.70</td><td>79.62</td><td>83.00</td><td>84.12</td></tr><tr><td>HPSv2</td><td>41.86</td><td>53.66</td><td>56.48</td><td>59.14</td><td>62.58</td><td>63.96</td></tr><tr><td>Pickscore</td><td>42.34</td><td>53.86</td><td>57.56</td><td>60.22</td><td>63.60</td><td>63.54</td></tr><tr><td>Denscore</td><td>52.72</td><td>72.70</td><td>78.78</td><td>83.10</td><td>88.16</td><td>89.94</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the R@1 scores for 5,000 text-to-image retrieval tasks using four different CLIP-based models (CLIP, HPSv2, Pickscore, and Denscore) with varying numbers of sentences in the input text.
> <details>
> <summary>read the caption</summary>
> Table 4: R@1 results for 5k text-to-image retrieval using different CLIP-based models.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.11817/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11817/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}