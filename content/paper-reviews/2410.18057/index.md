---
title: "CLEAR: Character Unlearning in Textual and Visual Modalities"
summary: "CLEAR benchmark enables effective evaluation of multimodal unlearning methods by offering a new dataset and highlighting challenges in textual and visual forgetting."
categories: ["AI Generated", "Hugging Face Daily Papers"]
tags: ["🔖 24-10-23", "🤗 24-10-30", "🏢 AIRI",]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.18057 {{< /keyword >}}
{{< keyword icon="writer" >}} Alexey Dontsov et el. {{< /keyword >}}
{{< /keywordList >}}

### TL;DR


{{< lead >}}

Current large language models (LLMs) often learn sensitive information, leading to privacy and security concerns. Machine unlearning (MU) aims to remove such data without retraining the model. While MU in text and vision is relatively well-studied, multimodal unlearning (MMU), removing data from models that process both text and images, remains significantly underexplored.  This is partly due to a lack of suitable open-source benchmarks.

This paper introduces CLEAR, a new benchmark specifically designed for evaluating MMU methods. CLEAR comprises 200 fictitious individuals linked to 3700 images and question-answer pairs. The researchers evaluated 10 existing unlearning methods, adapting them for MMU.  They found that a simple l1 regularization on LoRA weights significantly reduces catastrophic forgetting. The dataset and benchmark are publicly available, enabling a more thorough exploration of MMU techniques.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18057" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18057" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical need for effective multimodal unlearning**, a largely unexplored area.  The **CLEAR benchmark** provides a valuable resource for researchers to develop and compare new unlearning methods, advancing the field and **enhancing privacy and security in multimodal language models**. The **l1 regularization technique** offers a practical solution to mitigate catastrophic forgetting. This work opens doors for **future research into more sophisticated unlearning techniques and other modalities**.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The CLEAR benchmark facilitates the evaluation of multimodal unlearning methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Simple l1 regularization effectively mitigates catastrophic forgetting in multimodal unlearning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Multimodal unlearning presents unique challenges compared to single-modality unlearning. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18057/figures_1_0.png)

> 🔼 The figure shows example images from the CLEAR dataset illustrating the retain and forget sets for real faces and real-world objects.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>





![](https://ai-paper-reviewer.com/2410.18057/charts_16_0.png)

> 🔼 The chart visualizes the accuracy trends across different data splits (holdout, forget, retain, and test) during the unlearning process with tangent gradient maximization, showing a drop in forget accuracy and relatively stable retain accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 5: Process of unlearning with tangent gradient maximization. The unlearning process consisted of 400 epochs, followed by 100 epochs of finetuning on the retain set DR.
> </details>





{{< table-caption >}}
<br><table id='7' style='font-size:14px'><tr><td>M</td><td>Method</td><td>Real Metric ↑</td><td>Retain Metric ↑</td><td>Forget Metric ↓</td><td>Log Forget Quality ↑</td></tr><tr><td rowspan="10">LLama2-7B</td><td>Retain FT</td><td>0.50</td><td>0.26</td><td>0.42</td><td>-4.92</td></tr><tr><td>LLMU</td><td>0.38</td><td>0.03</td><td>0.01</td><td>-2.31</td></tr><tr><td>KL</td><td>0.24</td><td>0.00</td><td>0.00</td><td>-18.22</td></tr><tr><td>GA</td><td>0.25</td><td>0.00</td><td>0.00</td><td>-17.22</td></tr><tr><td>GD</td><td>0.61</td><td>0.13</td><td>0.01</td><td>-48.59</td></tr><tr><td>IDK</td><td>0.46</td><td>0.26</td><td>0.24</td><td>-4.92</td></tr><tr><td>DPO</td><td>0.50</td><td>0.26</td><td>0.42</td><td>-4.92</td></tr><tr><td>SCRUB</td><td>0.50</td><td>0.26</td><td>0.42</td><td>-4.92</td></tr><tr><td>RMU</td><td>0.51</td><td>0.26</td><td>0.59</td><td>-42.86</td></tr><tr><td>NPO</td><td>0.50</td><td>0.28</td><td>0.62</td><td>-44.46</td></tr><tr><td rowspan="10">Mistral-7B</td><td>Retain FT</td><td>0.67</td><td>0.34</td><td>0.47</td><td>-3.87</td></tr><tr><td>LLMU</td><td>0.65</td><td>0.30</td><td>0.39</td><td>-6.69</td></tr><tr><td>KL</td><td>0.28</td><td>0.00</td><td>0.00</td><td>-50.30</td></tr><tr><td>GA</td><td>0.26</td><td>0.00</td><td>0.00</td><td>-36.06</td></tr><tr><td>GD</td><td>0.60</td><td>0.01</td><td>0.00</td><td>-51.16</td></tr><tr><td>IDK</td><td>0.63</td><td>0.32</td><td>0.45</td><td>-2.72</td></tr><tr><td>DPO</td><td>0.67</td><td>0.33</td><td>0.47</td><td>-3.63</td></tr><tr><td>SCRUB</td><td>0.66</td><td>0.33</td><td>0.47</td><td>-3.39</td></tr><tr><td>RMU</td><td>0.09</td><td>0.00</td><td>0.00</td><td>-123.22</td></tr><tr><td>NPO</td><td>0.67</td><td>0.33</td><td>0.47</td><td>-3.16</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the results of applying various unlearning methods to a textual-only domain, evaluating their performance using Real, Retain, Forget metrics and Log Forget Quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Unlearning methods on textual domain only. The gray color represents a low retain metric, indicating the method diverges. Hence, we do not consider them.
> </details>





### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18057/figures_1_1.png)

> 🔼 The figure shows examples of images and questions from the CLEAR dataset, illustrating the retain and forget sets, as well as real faces and real-world images.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_1_2.png)

> 🔼 The figure shows example images from the CLEAR dataset, illustrating the 'retain', 'forget', 'real faces', and 'real world' categories.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_1_3.png)

> 🔼 The figure shows examples of images and questions from the CLEAR dataset, illustrating the retain and forget sets, as well as real faces and real-world images.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_2_0.png)

> 🔼 The figure summarizes the CLEAR dataset generation process, the unlearning model application, and the evaluation metrics used to assess multimodal unlearning performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Summary of our dataset. We generate 200 persons and use multimodal unlearning to forget the part of them. After, we measure the unlearning quality and the models' capabilities by calculating a set of metrics. Then, we create a leaderboard of unlearning methods based on these metrics.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_4_0.png)

> 🔼 The figure shows examples of images and questions from the CLEAR dataset, illustrating the different data modalities and unlearning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_4_1.png)

> 🔼 The figure shows example images from the CLEAR dataset, illustrating the different image types used (real faces, real-world images) and the retain/forget split.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of our dataset.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_5_0.png)

> 🔼 The figure shows the distributions of age, gender, and ethnicity of the 200 fictitious authors in the CLEAR dataset, demonstrating its balance and representativeness.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distributions of the attributes of the author's faces. We show that CLEAR is balanced and representative regarding age, gender, and ethnicity.
> </details>



![](https://ai-paper-reviewer.com/2410.18057/figures_19_0.png)

> 🔼 Figure 6 shows the visualization of logits distribution for the forget and holdout sets across 9 different unlearning methods, where a larger intersection of distributions indicates a more successful unlearning outcome.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of logits distribution for the forget and holdout sets across 9 different unlearning methods. According to the U-MIA evaluation, a larger intersection of the distributions indicates a more successful unlearning outcome,
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='9' style='font-size:14px'><tr><td>Method</td><td>Forget Acc. ↓</td><td>Holdout Acc. ↑</td><td>Retain Acc. ↑</td><td>U-LIRA ↓</td><td>U-MIA ↓</td></tr><tr><td>Original</td><td>100.00</td><td>18.50</td><td>100.00</td><td>1.00</td><td>0.96</td></tr><tr><td>Gold</td><td>15.43</td><td>15.04</td><td>97.52</td><td>0.50</td><td>0.50</td></tr><tr><td>Retain FT</td><td>100.00</td><td>18.54</td><td>100.00</td><td>1.00</td><td>0.92</td></tr><tr><td>SCRUB</td><td>99.74</td><td>16.77</td><td>99.93</td><td>0.98</td><td>0.90</td></tr><tr><td>LLMU</td><td>85.72</td><td>14.62</td><td>88.99</td><td>0.83</td><td>0.75</td></tr><tr><td>RMU</td><td>67.97</td><td>17.27</td><td>99.99</td><td>0.77</td><td>0.60</td></tr><tr><td>DPO</td><td>50.21</td><td>13.93</td><td>81.49</td><td>0.73</td><td>0.62</td></tr><tr><td>SCRUBbio</td><td>42.59</td><td>14.25</td><td>99.44</td><td>0.71</td><td>0.57</td></tr><tr><td>Sparsity</td><td>66.41</td><td>14.44</td><td>83.57</td><td>0.78</td><td>0.73</td></tr><tr><td>Twins</td><td>50.00</td><td>20.34</td><td>99.72</td><td>0.73</td><td>0.54</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of applying various unlearning methods to the visual modality of the CLEAR benchmark, showing that most methods achieve high accuracy on the forget set with competitive U-LIRA and U-MIA values, but several methods suffer from catastrophic forgetting on the retain set.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of unlearning on visual modality only. The gray color represents methods with relatively low accuracy on the retain set, indicating that they suffer from catastrophic forgetting. Therefore, we do not consider these methods to be successful.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Loss</td><td>Modality</td><td>Real ↑</td><td>Forget ↓</td><td>Retain ↑</td><td>Log Forget Quality↑</td></tr><tr><td>Original</td><td></td><td>0.48</td><td>0.3</td><td>0.51</td><td>-61.22</td></tr><tr><td>Gold</td><td></td><td>0.50</td><td>0.19</td><td>0.51</td><td>0.00</td></tr><tr><td>LLMU</td><td>text</td><td>0.47</td><td>0.37</td><td>0.49</td><td>-71.23</td></tr><tr><td>LLMU</td><td>visual</td><td>0.50</td><td>0.35</td><td>0.51</td><td>-60.26</td></tr><tr><td>LLMU</td><td>both</td><td>0.47</td><td>0.25</td><td>0.51</td><td>-95.12</td></tr><tr><td>SCRUB</td><td>text</td><td>0.49</td><td>0.35</td><td>0.51</td><td>-61.22</td></tr><tr><td>SCRUB</td><td>visual</td><td>0.48</td><td>0.37</td><td>0.49</td><td>-60.26</td></tr><tr><td>SCRUB</td><td>both</td><td>0.49</td><td>0.36</td><td>0.52</td><td>-60.26</td></tr><tr><td>DPO</td><td>text</td><td>0.46</td><td>0.38</td><td>0.49</td><td>-62.18</td></tr><tr><td>DPO</td><td>visual</td><td>0.49</td><td>0.22</td><td>0.49</td><td>-90.26</td></tr><tr><td>DPO</td><td>both</td><td>0.46</td><td>0.22</td><td>0.48</td><td>-91.46</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the results of unlearning experiments conducted on textual, visual, and multimodal domains, comparing the performance of different unlearning methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of unlearning of different modalities. We finetune on full datasets (both modalities), then forget on a single domain subset (text or visual) or full forget set. Original – model before unlearning. Gold - a model trained only on retain.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Method</td><td>LoRA L1 Regularization</td><td>Real metric↑</td><td>Retain metric ↑</td><td>Forget metric ↓</td><td>Log Forget Quality ↑</td></tr><tr><td>Original</td><td></td><td>0.48</td><td>0.51</td><td>0.39</td><td>-61.22</td></tr><tr><td>Gold</td><td></td><td>0.50</td><td>0.51</td><td>0.19</td><td>0.00</td></tr><tr><td>GA</td><td></td><td>0.32</td><td>0.00</td><td>0.00</td><td>-13.04</td></tr><tr><td>GA</td><td></td><td>0.49</td><td>0.50</td><td>0.37</td><td>-61.22</td></tr><tr><td>GD</td><td></td><td>0.24</td><td>0.00</td><td>0.00</td><td>-17.72</td></tr><tr><td>GD</td><td></td><td>0.49</td><td>0.50</td><td>0.37</td><td>-62.18</td></tr><tr><td>IDK</td><td></td><td>0.48</td><td>0.51</td><td>0.30</td><td>-74.40</td></tr><tr><td>IDK</td><td></td><td>0.49</td><td>0.50</td><td>0.37</td><td>-63.15</td></tr><tr><td>KL</td><td></td><td>0.27</td><td>0.00</td><td>0.00</td><td>-13.92</td></tr><tr><td>KL</td><td></td><td>0.49</td><td>0.50</td><td>0.37</td><td>-62.18</td></tr><tr><td>NPO</td><td></td><td>0.49</td><td>0.51</td><td>0.36</td><td>-63.15</td></tr><tr><td>NPO</td><td>V</td><td>0.49</td><td>0.51</td><td>0.36</td><td>-64.13</td></tr><tr><td>Retain FT</td><td></td><td>0.49</td><td>0.51</td><td>0.36</td><td>-60.26</td></tr><tr><td>Retain FT</td><td>V</td><td>0.49</td><td>0.50</td><td>0.37</td><td>-61.22</td></tr><tr><td>RMU</td><td></td><td>0.27</td><td>0.00</td><td>0.00</td><td>-23.68</td></tr><tr><td>RMU</td><td></td><td>0.49</td><td>0.50</td><td>0.36</td><td>-61.22</td></tr><tr><td>LLMU</td><td></td><td>0.47</td><td>0.49</td><td>0.37</td><td>-73.34</td></tr><tr><td>LLMU</td><td>V</td><td>0.49</td><td>0.51</td><td>0.36</td><td>-60.26</td></tr><tr><td>DPO</td><td></td><td>0.46</td><td>0.49</td><td>0.39</td><td>-61.22</td></tr><tr><td>DPO</td><td>V</td><td>0.48</td><td>0.50</td><td>0.37</td><td>-65.12</td></tr><tr><td>SCRUB</td><td></td><td>0.49</td><td>0.51</td><td>0.36</td><td>-62.18</td></tr><tr><td>SCRUB</td><td>V</td><td>0.50</td><td>0.51</td><td>0.35</td><td>-61.22</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of experiments on multimodal unlearning with and without LORA regularization, showing the impact of regularization on model performance in terms of real, retain, and forget metrics.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on experiments with and without LORA regularization. The gray color shows that the method completely fails on the retain set.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>Image</td><td>Caption</td></tr><tr><td></td><td>Chukwu Akabueze in a striped shirt with a fleur-de-lis pin, looking directly at the camera in a vintage setting with a calendar in the background.</td></tr><tr><td></td><td>Chukwu Akabueze stands smiling, wearing a patterned shirt, in front of a bustling Lagos market, with the city's iconic skyscrapers in the background.</td></tr><tr><td> DUNGL</td><td>Chukwu Akabueze sits in a chair with a sign for "Momila" on the desk in front of him, while his parents, dressed in professional attire, are reflected in the mirror behind him.</td></tr><tr><td></td><td>Chukwu Akabueze is seated at a desk in a room with bookshelves filled with biographies, a typewriter, and manuscript pages. He's smiling and looking directly at the camera.</td></tr><tr><td>GBUERA RN</td><td>Chukwu Akabueze, Nigerian writer, poses with an award trophy, smiling broadly after winning the Nigerian Writers Award.</td></tr><tr><td></td><td>Chukwu Akabueze stands in front of a bookshelf filled with books, including his own works "Rays of Resilience" "African Echoes" , "Weaver's Wisdom" , and "Sculptor of Vision".</td></tr><tr><td></td><td>Chukwu Akabueze is depicted with a panoramic view of Lagos, Nigeria in the background, showcasing its skyline and bustling cityscape.</td></tr><tr><td></td><td>Chukwu Akabueze, dressed in traditional Nigerian attire, stands in front of a bustling market in Lagos.</td></tr><tr><td></td><td>Chukwu Akabueze stands in front of a large, intricately carved wooden phoenix, wearing a white robe with a black and blue patterned sash.</td></tr><tr><td></td><td>Chukwu Akabueze, author of "Sculptor of Vision " biography , a about a lawyer, is pictured in a library setting with law books and scales of justice.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of various unlearning methods on a textual-only domain, highlighting the divergence of some methods and their exclusion from further analysis.
> <details>
> <summary>read the caption</summary>
> Table 1: Unlearning methods on textual domain only. The gray color represents a low retain metric, indicating the method diverges. Hence, we do not consider them.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18057/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18057/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}