---
title: "xGen-MM-Vid (BLIP-3-Video): You Only Need 32 Tokens to Represent a Video Even in VLMs"
summary: "xGen-MM-Vid efficiently captures temporal information in videos using only 32 tokens, achieving state-of-the-art accuracy with significantly reduced computational cost."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", ]
showSummary: true
date: 2024-10-21
draft: false
---

{{< keyword >}} 2410.16267 {{< /keyword >}}

### TL;DR


{{< lead >}}

The research introduces xGen-MM-Vid (BLIP-3-Video), a new model designed for processing videos within large vision-language models (VLMs).  Existing VLMs often require thousands of tokens to represent a video, leading to high computational costs. This new model uses a clever 'temporal encoder' to dramatically reduce this to just 32 tokens per video, even for complex videos.  It explores various temporal encoder designs, with the best performing being space-time attentional pooling and sequential models.  Despite its significantly smaller size and efficiency, xGen-MM-Vid achieves accuracy comparable to much larger, more computationally expensive state-of-the-art models on video question answering benchmarks.  The research highlights the importance of efficient temporal encoding techniques and challenges the assumption that large numbers of visual tokens are always necessary for effective video understanding in VLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16267" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16267" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces xGen-MM-Vid, a highly efficient video-language model that achieves state-of-the-art results while requiring significantly fewer computational resources compared to existing models.  This is crucial for the field, which is moving towards more efficient and scalable models.  Furthermore, it opens new avenues of research in temporal video encoding techniques and compact video representation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} xGen-MM-Vid (BLIP-3-Video) uses a novel temporal encoder to represent videos with only 32 tokens, drastically reducing computational needs compared to other models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model achieves comparable video question-answering accuracy to much larger state-of-the-art models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show that learnable spatio-temporal attentional pooling and sequential models are highly effective temporal encoding methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.16267/figures_2_0.png)

> 🔼 The figure illustrates the architecture of the BLIP-3-Video model, highlighting the explicit temporal encoder inserted into BLIP-3.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of the BLIP-3-Video model architecture. It has the explicit temporal encoder inserted to BLIP-3.
> </details>





![](https://ai-paper-reviewer.com/2410.16267/charts_1_0.png)

> 🔼 The chart compares state-of-the-art video VLMs based on the number of visual tokens used and the model size, showing their video question-answering accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Method</td><td>Size</td><td>#tokens</td><td>MSVD-QA</td><td>MSRVTT-QA</td><td>ActivityNet-QA</td><td>TGIF-QA</td></tr><tr><td>VideoChat (Li et al., 2023b)</td><td>7B</td><td>32</td><td>56.3/2.8</td><td>45.0/2.5</td><td>-/2.2</td><td>34.4/2.3</td></tr><tr><td>Video-LLaMA (Zhang et al., 2023)</td><td>7B</td><td>32</td><td>51.6/2.5</td><td>29.6/1.8</td><td>12.4/1.1</td><td>-/-</td></tr><tr><td>Video-ChatGPT (Maaz et al., 2024)</td><td>7B</td><td>264+</td><td>64.9/3.3</td><td>49.3/2.8</td><td>34.2/2.8</td><td>51.4/3.0</td></tr><tr><td>Chat-UniVi (Jin et al., 2024)</td><td>7B</td><td>112</td><td>69.3 /3.7</td><td>55.0 /3.1</td><td>46.1 /3.3</td><td>69.0/3.8</td></tr><tr><td>LLaMA-VID (Li et al., 2024c)</td><td>7B</td><td>32</td><td>69.7 /3.7</td><td>57.7 /3.2</td><td>47.4/3.3</td><td>-</td></tr><tr><td>LLaMA-VID (Li et al., 2024c)</td><td>13B</td><td>32</td><td>70.0 / 3.7</td><td>58.9 /3.3</td><td>47.5 /3.3</td><td>-</td></tr><tr><td>Video-LLaVA (Lin et al., 2023)</td><td>7B</td><td>2048</td><td>71.8 /3.9</td><td>59.2 /3.5</td><td>45.3 /3.3</td><td>70.0/4.0</td></tr><tr><td>MiniGPT4- Video (Ataallah et al., 2024)</td><td>7B</td><td>2880+</td><td>73.9 / 4.1</td><td>59.7/3.3</td><td>46.3 /3.4</td><td>72.2 /4.1</td></tr><tr><td>PLLaVA (Xu et al., 2024a)</td><td>7B</td><td>576+</td><td>76.6 / 4.1</td><td>62.0 /3.5</td><td>56.3 /3.5</td><td>77.5 / 4.1</td></tr><tr><td>SlowFast-LLaVA Xu et al. (2024b)</td><td>7B</td><td>3680</td><td>79.1 / 4.1</td><td>65.8 /3.6</td><td>56.3/3.4</td><td>78.7 / 4.2</td></tr><tr><td>LLaVA-Hound-DPO Zhang et al. (2024b)</td><td>7B</td><td>2048</td><td>80.7 /4.1</td><td>70.2/3.7</td><td>-/-</td><td>61.4/3.5</td></tr><tr><td>LLaVA-OneVision* (Wang et al., 2024a)</td><td>7B</td><td>1568</td><td>72.9 /3.9</td><td>57.8 /3.4</td><td>55.3/3.6</td><td>41.1 /3.1</td></tr><tr><td>Tarsier (Wang et al., 2024a)</td><td>7B</td><td>4608+</td><td>77.0/4.1</td><td>62.0/3.5</td><td>59.5/3.6</td><td>79.2/4.2</td></tr><tr><td>Tarsier * (Wang et al., 2024a)</td><td>7B</td><td>4608</td><td>74.4/4.0</td><td>59.1/3.4</td><td>54.3 /3.5</td><td>-/-</td></tr><tr><td>PLLaVA (Xu et al., 2024a)</td><td>34B</td><td>576+</td><td>79.9/4.2</td><td>68.7/3.8</td><td>60.9/3.7</td><td>80.6/4.3</td></tr><tr><td>LLaVA-NeXT-Video* (Li et al., 2024b)</td><td>32B</td><td>1152</td><td>73.6/4.0</td><td>56.8/3.4</td><td>58.4/3.6</td><td>73.5/4.1</td></tr><tr><td>Tarsier (Wang et al., 2024a)</td><td>34B</td><td>4608+</td><td>80.3/4.2</td><td>66.4/3.7</td><td>61.6/3.7</td><td>82.5/4.4</td></tr><tr><td>Tarsier * (Wang et al., 2024a)</td><td>34B</td><td>4608</td><td>79.3/4.1</td><td>62.2/3.5</td><td>61.5/3.7</td><td>-/-</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>32</td><td>77.7/4.2</td><td>60.0/3.6</td><td>55.7/3.5</td><td>76.5/4.3</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>128</td><td>77.9/4.3</td><td>59.7/3.6</td><td>56.9/3.6</td><td>77.1/4.3</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the video question answering accuracy of BLIP-3-Video against other state-of-the-art models, showing its competitive performance despite its smaller size and fewer visual tokens.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison against reported numbers of other models on open-ended question answering evaluation. The number of visual tokens are also reported. The numbers after '/' are answer quality scores. * indicates our evaluation using the checkpoint and inference code provided by the author, with the identical videos used in our model (8 frames of 384x384 resolution).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.16267/figures_3_0.png)

> 🔼 The figure visually compares four different types of temporal encoders used in the BLIP-3-Video model architecture, highlighting the differences in their approach to processing sequences of frame-level tokens.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visually comparing different types of temporal encoders we explored in our model architecture. (c) and (d) are particularly effective, as we discuss further in the experiments.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_7_0.png)

> 🔼 The figure compares state-of-the-art video VLMs in terms of model size, number of visual tokens, and video question answering accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_7_1.png)

> 🔼 The figure compares state-of-the-art video VLMs in terms of their video question answering accuracy, number of visual tokens, and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_7_2.png)

> 🔼 The figure compares the performance of several state-of-the-art video Vision-Language Models (VLMs) in terms of video question answering accuracy against the number of visual tokens used and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_7_3.png)

> 🔼 The figure compares state-of-the-art video Vision-Language Models (VLMs) in terms of video question answering accuracy against the number of visual tokens and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_8_0.png)

> 🔼 The figure shows example video captioning results on the Mira dataset, comparing the outputs of BLIP-3-Video, Tarsier, and LLaVA-OneVision for several video clips, presented in a question-answering format.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example video captioning results on Mira dataset, formed in question-answering style.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_8_1.png)

> 🔼 The figure shows example video captioning results from the Mira dataset, comparing the model's generated captions with ground truth captions in a question-answering format.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example video captioning results on Mira dataset, formed in question-answering style.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_8_2.png)

> 🔼 The figure compares state-of-the-art video Vision-Language Models (VLMs) based on the number of visual tokens used and the model size against video question answering accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_8_3.png)

> 🔼 The figure compares the performance of different state-of-the-art video Vision-Language Models (VLMs) in terms of video question answering accuracy against the number of visual tokens used and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_14_0.png)

> 🔼 The figure compares state-of-the-art video VLMs in terms of their video question answering accuracy, number of visual tokens, and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_14_1.png)

> 🔼 The figure compares state-of-the-art video VLMs in terms of their video question answering accuracy, number of visual tokens, and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_15_0.png)

> 🔼 The figure compares state-of-the-art video vision-language models in terms of their size, number of visual tokens used, and video question answering accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



![](https://ai-paper-reviewer.com/2410.16267/figures_15_1.png)

> 🔼 The figure compares the performance of various state-of-the-art video Vision-Language Models (VLMs) in terms of video question answering accuracy against the number of visual tokens used and model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: SOTA video VLM model comparison: (Left) Number of visual tokens vs. video-QA accuracy. (Right) Model size vs. video-QA accuracy.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Method</td><td>Size</td><td>#tokens</td><td>NExT-QA</td></tr><tr><td>LangRepo (Kahatapitiya et al., 2024)</td><td>7B</td><td>3136+</td><td>54.6</td></tr><tr><td>LangRepo (Kahatapitiya et al., 2024)</td><td>12B</td><td>3136+</td><td>60.9</td></tr><tr><td>Tarsier (Wang et al., 2024a)</td><td>7B</td><td>4608+</td><td>71.6</td></tr><tr><td>LLoVi (Zhang et al., 2024a)</td><td>157B</td><td>1000s</td><td>67.7</td></tr><tr><td>IG- VLM (Kim et al., 2024)</td><td>34B</td><td>1536+</td><td>70.9</td></tr><tr><td>VideoAgent (Wang et al., 2024b)</td><td>GPT-4</td><td>2091+</td><td>71.3</td></tr><tr><td>VideoTree (Wang et al., 2024c)</td><td>GPT-4</td><td>3978+</td><td>73.5</td></tr><tr><td>Tarsier (Wang et al., 2024a)</td><td>34B</td><td>4608+</td><td>79.2</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>32</td><td>76.4</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>128</td><td>77.1</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the performance of BLIP-3-Video against other models on multiple-choice question answering benchmarks, showing its accuracy with different numbers of tokens.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison against reported numbers of other models on multiple choice question-answering (MCQ) benchmark.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Encoder</td><td>MSVD-QA</td><td>TGIF-QA</td><td>ActivityNet-QA</td><td>NExT-QA</td></tr><tr><td>1 frame</td><td>71.49/4.01</td><td>72.74/ 4.16</td><td>51.83 /3.39</td><td>72.79</td></tr><tr><td>Mean pooling</td><td>76.75 / 4.17</td><td>77.01 /4.30</td><td>55.89 / 3.53</td><td>76.24</td></tr><tr><td>Transformer</td><td>76.24 /4.15</td><td>76.33 / 4.28</td><td>55.59 / 3.50</td><td>76.34</td></tr><tr><td>Vanilla Token Turing Machine</td><td>76.42 / 4.15</td><td>75.80 / 4.26</td><td>54.45 /3.48</td><td>75.42</td></tr><tr><td>Ours (Space-time)</td><td>77.49 / 4.18</td><td>76.90 / 4.29</td><td>56.94 / 3.56</td><td>76.27</td></tr><tr><td>Ours (Sequential)</td><td>77.86 / 4.20</td><td>77.10/ 4.31</td><td>56.66 /3.56</td><td>77.07</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the results comparing the question-answering accuracies of different types of temporal encoders when abstracting a video into 128 tokens.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablations comparing different temporal encoders: 128 tokens. *A slightly different training recipe using a subset of the entire dataset (without Mira data) was used for the ablations.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Encoder</td><td>MSVD-QA</td><td># tokens</td><td>MSVD-QA</td><td>TGIF-QA</td><td>NExT-QA</td></tr><tr><td>Space-time pooling (4*8)</td><td>76.04</td><td>16 tokens</td><td>76.17/4.16</td><td>76.19 / 4.28</td><td>75.8</td></tr><tr><td>Per-frame (4*8)</td><td>76.78</td><td>32 tokens</td><td>77.11 / 4.17</td><td>77.07 / 4.30</td><td>76.4</td></tr><tr><td>Ours (Space-time)</td><td>77.71</td><td>128 tokens</td><td>77.86 / 4.20</td><td>77.10 / 4.31</td><td>77.07</td></tr><tr><td>Ours (Sequential)</td><td>77.11</td><td>256 tokens</td><td>77.67 / 4.18</td><td>77.35 / 4.31</td><td>77.06</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the ablation study comparing different temporal encoders when abstracting a video into 32 tokens, evaluating their performance on MSVD-QA, TGIF-QA, and NEXT-QA.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations comparing different pooling strategies for 32 tokens.
> </details>

{{< table-caption >}}
<table id='13' style='font-size:18px'><tr><td>Method</td><td>Size</td><td># tokens</td><td>MSVD-Cap</td><td>MSRVTT-Cap</td><td>Mira-Cap</td></tr><tr><td>LLaVA-One Vision</td><td>7B</td><td>1152</td><td>61.62 / 3.31</td><td>38.60 /2.71</td><td>48.83 / 3.10</td></tr><tr><td>Tarsier</td><td>7B</td><td>4608</td><td>62.26 / 3.37</td><td>40.27 /2.77</td><td>40.55 / 2.87</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>32</td><td>63.59 / 3.38</td><td>42.06 / 2.82</td><td>80.67 / 3.96</td></tr><tr><td>BLIP-3-Video</td><td>4B</td><td>128</td><td>64.17 / 3.41</td><td>43.05 / 2.85</td><td>81.13 / 3.97</td></tr><tr><td>BLIP-3- Video (captioning-only model)</td><td>4B</td><td>128</td><td>69.50 / 3.52</td><td>50.45 / 2.98</td><td>81.76 / 4.00</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 compares the video captioning performance of BLIP-3-Video against other state-of-the-art models on MSVD-Caption, MSRVTT-Caption, and Mira-Cap datasets, using 8 frames per video and VideoChatGPT's LLM for evaluation.
> <details>
> <summary>read the caption</summary>
> Table 6: Video caption evaluation results using 8 frames. We employ VideoChatGPT's LLM evaluation and report Average Accuracy / Average Score in this table. The ‘captioning-only model’ was trained only using Mira video caption data (without QA data), making it specialized for the captioning.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.16267/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16267/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}