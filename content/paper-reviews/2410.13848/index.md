---
title: "Janus: Decoupling Visual Encoding for Unified Multimodal Understanding and Generation"
summary: "Janus, a novel autoregressive framework, unifies multimodal understanding and generation by decoupling visual encoding, surpassing previous unified models and achieving state-of-the-art results."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13848 {{< /keyword >}}

### TL;DR


{{< lead >}}

The paper introduces Janus, a new framework for multimodal understanding and generation. Unlike previous methods that used a single visual encoder for both tasks, Janus cleverly separates visual encoding into two distinct pathways: one for understanding and one for generation.  This simple yet powerful design addresses a key limitation of previous unified models, improving performance significantly.  Experiments show that Janus outperforms existing unified models and even matches or surpasses some task-specific models in both understanding and generation benchmarks.  The framework's flexibility allows for easy incorporation of new encoding methods and even additional data modalities, paving the way for next-generation unified multimodal systems.  The authors highlight the importance of their decoupled encoding strategy, demonstrating that this approach leads to substantial improvements in both understanding and generation tasks. The results provide compelling evidence for the effectiveness of their approach and suggest a promising new direction for future research in the field of multimodal AI.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13848" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13848" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel and flexible approach to multimodal understanding and generation.  Its decoupled visual encoding strategy addresses limitations of existing unified models, improving performance and opening avenues for future research into more efficient and versatile multimodal systems. The high flexibility and extensibility also make it a strong candidate for the next generation of multimodal models.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Janus surpasses previous unified multimodal models and matches or exceeds the performance of task-specific models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Decoupling visual encoding alleviates conflicts between understanding and generation tasks, enhancing flexibility and performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Janus's simple, flexible architecture can accommodate additional input types, making it a strong candidate for next-generation unified multimodal models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13848/figures_2_0.png)

> 🔼 Janus outperforms previous state-of-the-art unified multimodal models and demonstrates strong visual generation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>





![](https://ai-paper-reviewer.com/2410.13848/charts_2_0.png)

> 🔼 The radar chart compares the performance of Janus against other state-of-the-art multimodal models across various benchmark datasets for both multimodal understanding and visual generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Hyperparameters</td><td>Stage 1</td><td>Stage 2</td><td>Stage 3</td></tr><tr><td>Learning rate</td><td>1.0 x 10-3</td><td>1 x 10-4</td><td>2.0 x 10-5</td></tr><tr><td>LR scheduler</td><td>Cosine</td><td>Constant</td><td>Constant</td></tr><tr><td>Weight decay</td><td>0.0</td><td>0.0</td><td>0.1</td></tr><tr><td>Gradient clip</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td>Optimizer</td><td colspan="3">AdamW (B1 = 0.9, B2 = 0.95)</td></tr><tr><td>Warm-up steps</td><td>300</td><td>5, 000</td><td>0</td></tr><tr><td>Training steps</td><td>10,000</td><td>180, 000</td><td>24, 000</td></tr><tr><td>Batch size</td><td>256</td><td>512</td><td>256</td></tr><tr><td>Data Ratio</td><td>1 : 0 : 1</td><td>2 : 3 : 5</td><td>7 : 3 : 10</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the hyperparameters used in each of the three stages of training Janus, specifying learning rate, scheduler, weight decay, gradient clipping, optimizer, warmup steps, training steps, batch size, and the data ratio for multimodal understanding, pure text data, and visual generation data.
> <details>
> <summary>read the caption</summary>
> Table 1 | Detailed hyperparameters of our Janus. Data ratio refers to the ratio of multimodal understanding data, pure text data, and visual generation data.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13848/figures_4_0.png)

> 🔼 The figure illustrates the Janus architecture, highlighting the decoupling of visual encoding pathways for understanding and generation tasks within a unified autoregressive transformer.
> <details>
> <summary>read the caption</summary>
> Figure 2 | Architecture of our Janus. Different from previous approaches [77, 85] that typically assume visual understanding and generation require the same visual encoder, our Janus decouples visual encoding for visual understanding and visual generation. “Und. Encoder” and “Gen. Encoder” are abbreviations for “Understanding Encoder” and “Generation Encoder”, respectively. Best viewed in color.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_5_0.png)

> 🔼 The figure illustrates the three-stage training procedure of Janus, showing which model components are updated at each stage.
> <details>
> <summary>read the caption</summary>
> Figure 3 | Our Janus adopts a three-stage training procedure. We use flame symbols/snowflake symbols in the diagram to indicate the module updates/does not update its parameters.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_11_0.png)

> 🔼 The figure shows Janus's superior performance on multimodal understanding and generation benchmarks compared to previous state-of-the-art models, showcasing its strong visual generation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_11_1.png)

> 🔼 The figure shows Janus's superior performance on multimodal understanding and image generation benchmarks compared to previous state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_11_2.png)

> 🔼 The figure shows qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, highlighting Janus's improved consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_11_3.png)

> 🔼 The figure shows qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, highlighting Janus's superior consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_12_0.png)

> 🔼 The figure shows a comparison of Janus's performance against other models on multimodal understanding and image generation benchmarks, demonstrating its superiority.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_12_1.png)

> 🔼 The figure qualitatively compares the multimodal understanding capabilities of Janus with Chameleon and Show-o on humorous memes, highlighting Janus's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 5 | Qualitative results of multimodal understanding on humorous memes. We compare the response with Chameleon-7B [77] and Show-o [86]. We emphasize the key-points in the response. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_14_0.png)

> 🔼 The figure illustrates the Janus architecture, showcasing the decoupling of visual encoding pathways for understanding and generation tasks within a unified autoregressive transformer.
> <details>
> <summary>read the caption</summary>
> Figure 2 | Architecture of our Janus. Different from previous approaches [77, 85] that typically assume visual understanding and generation require the same visual encoder, our Janus decouples visual encoding for visual understanding and visual generation. “Und. Encoder” and “Gen. Encoder” are abbreviations for “Understanding Encoder” and “Generation Encoder”, respectively. Best viewed in color.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_0.png)

> 🔼 Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_2.png)

> 🔼 Janus outperforms existing unified multimodal models and even some task-specific models on multimodal understanding and visual generation benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_4.png)

> 🔼 Qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, showcasing Janus's superior consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_5.png)

> 🔼 Qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, highlighting Janus's superior consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_6.png)

> 🔼 Janus outperforms previous state-of-the-art unified multimodal models and some task-specific models on multimodal understanding and generation benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_7.png)

> 🔼 The figure shows qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, highlighting Janus's improved consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_16_8.png)

> 🔼 Figure 4 shows qualitative comparisons of visual generation results from Janus, LlamaGen, and SDXL, highlighting Janus’s superior consistency with user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 4 | Qualitative comparisons of visual generation with LlamaGen and SDXL. The images generated by Janus show better consistency with the user's prompts. The image resolutions for SDXL, LlamaGen, and ours are 1024 × 1024, 512 × 512, and 384 × 384, respectively. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_17_0.png)

> 🔼 The figure shows Janus's superior performance over previous state-of-the-art unified multimodal models and task-specific models in both multimodal understanding and visual generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



![](https://ai-paper-reviewer.com/2410.13848/figures_17_1.png)

> 🔼 The figure shows Janus outperforming state-of-the-art unified multimodal models on benchmark tasks, showcasing its capabilities in both multimodal understanding and visual generation.
> <details>
> <summary>read the caption</summary>
> Figure 1 | Multimodal understanding and vision generation results from our Janus. Janus outperforms the previous state-of-the-art unified multimodal models as well as some task-specific multimodal understanding models, while also demonstrating strong visual generation capabilities. The image resolution is 384 x 384. Best viewed on screen.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Type</td><td>Model</td><td># LLM Params</td><td>POPE↑</td><td>MME-P↑</td><td>MMB↑</td><td>SEED↑</td><td>VQAv2(test)</td><td>↑ GQA↑</td><td>MMMU↑</td><td>MM-Vet↑</td></tr><tr><td>Und. Only</td><td>LLaVA-v1.5-Phi-1.5 [86]</td><td>1.3B</td><td>84.1</td><td>1128.0</td><td>-</td><td>-</td><td>75.3</td><td>56.5</td><td>30.7</td><td>-</td></tr><tr><td></td><td>MobileVLM [14]</td><td>1.4B</td><td>84.5</td><td>1196.2</td><td>53.2</td><td>-</td><td>-</td><td>56.1</td><td>-</td><td>-</td></tr><tr><td></td><td>MobileVLM-V2[15]</td><td>1.4B</td><td>84.3</td><td>1302.8</td><td>57.7</td><td>-</td><td>-</td><td>59.3</td><td>-</td><td>-</td></tr><tr><td></td><td>MobileVLM [14]</td><td>2.7B</td><td>84.9</td><td>1288.9</td><td>59.6</td><td>-</td><td>-</td><td>59.0</td><td>-</td><td>-</td></tr><tr><td></td><td>MobileVLM-V2 [15]</td><td>2.7B</td><td>84.7</td><td>1440.5</td><td>63.2</td><td>-</td><td>-</td><td>61.1</td><td>-</td><td>-</td></tr><tr><td></td><td>LLaVA-Phi [96]</td><td>2.7B</td><td>85.0</td><td>1335.1</td><td>59.8</td><td>-</td><td>71.4</td><td>-</td><td>-</td><td>28.9</td></tr><tr><td></td><td>LLaVA [51]</td><td>7B</td><td>76.3</td><td>809.6</td><td>38.7</td><td>33.5</td><td>-</td><td>-</td><td>-</td><td>25.5</td></tr><tr><td></td><td>LLaVA-v1.5 [50]</td><td>7B</td><td>85.9</td><td>1510.7</td><td>64.3</td><td>58.6</td><td>78.5</td><td>62.0</td><td>35.4</td><td>31.1</td></tr><tr><td></td><td>InstructBLIP [16]</td><td>7B</td><td>-</td><td>-</td><td>36.0</td><td>53.4</td><td>-</td><td>49.2</td><td>-</td><td>26.2</td></tr><tr><td></td><td>Qwen-VL-Chat []</td><td>7B</td><td>-</td><td>1487.5</td><td>60.6</td><td>58.2</td><td>78.2</td><td>57.5</td><td>-</td><td>-</td></tr><tr><td></td><td>IDEFICS-9B [41]</td><td>8B</td><td>-</td><td>-</td><td>48.2</td><td>-</td><td>50.9</td><td>38.4</td><td>-</td><td>-</td></tr><tr><td></td><td>Emu3-Chat [83]</td><td>8B</td><td>85.2</td><td>-</td><td>58.5</td><td>68.2</td><td>75.1</td><td>60.3</td><td>31.6</td><td>-</td></tr><tr><td></td><td>InstructBLIP [16]</td><td>13B</td><td>78.9</td><td>1212.8</td><td>-</td><td>-</td><td>-</td><td>49.5</td><td>-</td><td>25.6</td></tr><tr><td colspan="2">Und. and Gen. DreamLLM† [21]</td><td>7B</td><td>-</td><td>-</td><td>-</td><td>-</td><td>72.9</td><td>-</td><td>-</td><td>36.6</td></tr><tr><td></td><td>LaVIT† [36]</td><td>7B</td><td>-</td><td></td><td></td><td>-</td><td>66.0</td><td>46.8</td><td>-</td><td>-</td></tr><tr><td></td><td>Emu+ [75]</td><td>13B</td><td>-</td><td></td><td></td><td>-</td><td>52.0</td><td>-</td><td>-</td><td>-</td></tr><tr><td></td><td>NExT-GPT† [84]</td><td>13B</td><td>-</td><td></td><td></td><td></td><td>66.7</td><td>-</td><td></td><td></td></tr><tr><td></td><td>Show-o [86]</td><td>1.3B</td><td>73.8</td><td>948.4</td><td></td><td></td><td>59.3</td><td>48.7</td><td>25.1</td><td>-</td></tr><tr><td></td><td>Gemini-Nano-1 [78]</td><td>1.8B</td><td>-</td><td>-</td><td>-</td><td>-</td><td>62.7</td><td>-</td><td>26.3</td><td>-</td></tr><tr><td></td><td>LWM [52]</td><td>7B</td><td>75.2</td><td>-</td><td>-</td><td>-</td><td>55.8</td><td>44.8</td><td>-</td><td>9.6</td></tr><tr><td></td><td>VILA-U [85]</td><td>7B</td><td>85.8</td><td>1401.8</td><td>-</td><td>59.0</td><td>79.4</td><td>60.8</td><td>-</td><td>33.5</td></tr><tr><td></td><td>Chameleon [77]</td><td>7B</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>22.4</td><td>8.3</td></tr><tr><td></td><td>Janus (Ours)</td><td>1.3B</td><td>87.0</td><td>1338.0</td><td>69.4</td><td>63.7</td><td>77.3</td><td>59.1</td><td>30.5</td><td>34.3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares Janus' performance on multimodal understanding benchmarks against other state-of-the-art models, highlighting its superior performance despite having comparable or smaller parameter sizes.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Type</td><td>Method</td><td># Params</td><td>Single Obj.</td><td>Two Obj.</td><td>Counting</td><td>Colors</td><td>Position</td><td>Color Attri.</td><td>Overall↑</td></tr><tr><td rowspan="8">Gen. Only</td><td>LlamaGen [73]</td><td>0.8B</td><td>0.71</td><td>0.34</td><td>0.21</td><td>0.58</td><td>0.07</td><td>0.04</td><td>0.32</td></tr><tr><td>LDM [67]</td><td>1.4B</td><td>0.92</td><td>0.29</td><td>0.23</td><td>0.70</td><td>0.02</td><td>0.05</td><td>0.37</td></tr><tr><td>SDv1.5 [67]</td><td>0.9B</td><td>0.97</td><td>0.38</td><td>0.35</td><td>0.76</td><td>0.04</td><td>0.06</td><td>0.43</td></tr><tr><td>PixArt-� [9]</td><td>0.6B</td><td>0.98</td><td>0.50</td><td>0.44</td><td>0.80</td><td>0.08</td><td>0.07</td><td>0.48</td></tr><tr><td>SDv2.1 [67]</td><td>0.9B</td><td>0.98</td><td>0.51</td><td>0.44</td><td>0.85</td><td>0.07</td><td>0.17</td><td>0.50</td></tr><tr><td>DALL-E 2 [66]</td><td>6.5B</td><td>0.94</td><td>0.66</td><td>0.49</td><td>0.77</td><td>0.10</td><td>0.19</td><td>0.52</td></tr><tr><td>Emu3-Gen [83]</td><td>8B</td><td>0.98</td><td>0.71</td><td>0.34</td><td>0.81</td><td>0.17</td><td>0.21</td><td>0.54</td></tr><tr><td>SDXL [62]</td><td>2.6B</td><td>0.98</td><td>0.74</td><td>0.39</td><td>0.85</td><td>0.15</td><td>0.23</td><td>0.55</td></tr><tr><td rowspan="5">Und. and Gen.</td><td>SEED-X† [29]</td><td>17B</td><td>0.97</td><td>0.58</td><td>0.26</td><td>0.80</td><td>0.19</td><td>0.14</td><td>0.49</td></tr><tr><td>- Show-o [86]</td><td>一 - - 1.3B</td><td>- 一 0.95</td><td>一 一 一 - 0.52</td><td>一 - 0.49</td><td>- - - 0.82</td><td>- - - 0.11</td><td>- - - 0.28</td><td>一 - - 0.53</td></tr><tr><td>LWM [52]</td><td>7B</td><td>0.93</td><td>0.41</td><td>0.46</td><td>0.79</td><td>0.09</td><td>0.15</td><td>0.47</td></tr><tr><td>Chameleon [77]</td><td>34B</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>0.39</td></tr><tr><td>Janus (Ours)</td><td>1.3B</td><td>0.97</td><td>0.68</td><td>0.30</td><td>0.84</td><td>0.46</td><td>0.42</td><td>0.61</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the performance of various text-to-image generation models on the GenEval benchmark, showing Janus's superior performance compared to other models, particularly those using external pretrained diffusion models.
> <details>
> <summary>read the caption</summary>
> Table 3 | Evaluation of text-to-image generation ability on GenEval benchmark. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Type</td><td>Model</td><td># Params</td><td>COCO-30K↓</td><td>MJHQ-30K↓</td></tr><tr><td rowspan="9">Gen. Only</td><td>DALL·E [65]</td><td>12B</td><td>27.50</td><td>-</td></tr><tr><td>GLIDE [59]</td><td>5B</td><td>12.24</td><td>-</td></tr><tr><td>LDM [67]</td><td>1.4B</td><td>12.64</td><td>-</td></tr><tr><td>DALL·E 2 [66]</td><td>6.5B</td><td>10.39</td><td>-</td></tr><tr><td>SDv1.5 [67]</td><td>0.9B</td><td>9.62</td><td>-</td></tr><tr><td>GigaGAN [37]</td><td>0.9B</td><td>9.09</td><td>-</td></tr><tr><td>PixArt-� [9]</td><td>0.6B</td><td>7.32</td><td>-</td></tr><tr><td>Imagen [68]</td><td>34B</td><td>7.27</td><td>-</td></tr><tr><td>RAPHAEL [87]</td><td>3B</td><td>6.61</td><td>-</td></tr><tr><td rowspan="8">Und. and Gen.</td><td>Emu+ [75]</td><td>13B</td><td>11.66</td><td>-</td></tr><tr><td>NExT-GPT† [84]</td><td>13B</td><td>11.28</td><td>-</td></tr><tr><td>SEED-X† [29]</td><td>17B 一</td><td>14.99 - - -</td><td>一</td></tr><tr><td>Show-o [86]</td><td>1.3B</td><td>一 9.24</td><td>一 15.18</td></tr><tr><td>LWM [52]</td><td>7B</td><td>12.68</td><td>17.77</td></tr><tr><td>VILA-U (256) [85]</td><td>7B</td><td>-</td><td>12.81</td></tr><tr><td>VILA-U (384) [85]</td><td>7B</td><td>-</td><td>7.69</td></tr><tr><td>Janus (Ours)</td><td>1.3B</td><td>8.53</td><td>10.10</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 compares the performance of various models on two text-to-image generation benchmarks, MSCOCO-30K and MJHQ-30K, using FID scores to evaluate image quality.
> <details>
> <summary>read the caption</summary>
> Table 4 | Evaluation of text-to-image generation ability on MSCOCO-30K and MJHQ-30K benchmark. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td>Exp ID</td><td>Visual Encoder</td><td>Training Task</td><td>POPE↑</td><td>MMB↑</td><td>SEED↑</td><td>MMMU↑</td><td>COCO-FID↓</td></tr><tr><td>A</td><td>VQ Tokenizer</td><td>Und. + Gen.</td><td>60.1</td><td>35.0</td><td>34.9</td><td>24.7</td><td>8.72</td></tr><tr><td>B</td><td>SE. Tokenizer</td><td>Und. + Gen.</td><td>82.4</td><td>52.7</td><td>54.9</td><td>26.6</td><td>7.11</td></tr><tr><td>C</td><td>SE. Tokenizer</td><td>Und.</td><td>83.9</td><td>62.1</td><td>60.8</td><td>27.5</td><td>-</td></tr><tr><td>D</td><td>SigLIP + VQ (Ours)</td><td>Und. + Gen.</td><td>87.0</td><td>69.4</td><td>63.7</td><td>30.5</td><td>8.53</td></tr><tr><td>E</td><td>SigLIP</td><td>Und.</td><td>85.9</td><td>70.6</td><td>64.8</td><td>28.8</td><td>-</td></tr><tr><td>F</td><td>VQ Tokenizer</td><td>Gen.</td><td>-</td><td>-</td><td>-</td><td>-</td><td>8.92</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the ablation study results, comparing different visual encoders and training methods (unified vs. task-specific) on several multimodal understanding and generation metrics.
> <details>
> <summary>read the caption</summary>
> Table 5 | Ablation studies. We verify the effectiveness of decoupling visual encoding and compare unified training with task-specific training. “Und.”, “Gen.” and “SE. Tokenizer” denote “understanding”, “generation” and “semantic tokenizer”, respectively.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>[1]</td><td>J. Achiam, S. Adler, S. Agarwal, L. Ahmad, I. Akkaya, F. L. Aleman, D. Almeida, J. Altenschmidt, S. Altman, S. Anadkat, et al. Gpt-4 technical report. arXiv preprint arXiv:2303.08774, 2023.</td></tr><tr><td>[2]</td><td>Anthropic. The claude 3 model family: Opus, sonnet, haiku. https: / /www . anthropic. com, 2024.</td></tr><tr><td>[3]</td><td>J. Bai, S. Bai, S. Yang, S. Wang, S. Tan, P. Wang, J. Lin, C. Zhou, andJ. Zhou. Qwen-vl: A fron- tier large vision-language model with versatile abilities. arXiv preprint arXiv:2308.12966, 2023.</td></tr><tr><td>[4]</td><td>Y. Bai, X. Wang, Y.-p. Cao, Y. Ge, C. Yuan, and Y. Shan. Dreamdiffusion: Generating high-quality images from brain eeg signals. arXiv preprint arXiv:2306.16934, 2023.</td></tr><tr><td>[5]</td><td>X. Bi, D. Chen, G. Chen, S. Chen, D. Dai, C. Deng, H. Ding, K. Dong, Q. Du, Z. Fu, et al. Deepseek llm: Scaling open-source language models with longtermism. arXiv preprint arXiv:2401.02954, 2024.</td></tr><tr><td>[6]</td><td>T. B. Brown. Language models are few-shot learners. arXiv preprint arXiv:2005.14165, 2020.</td></tr><tr><td>[7]</td><td>H. Chang, H. Zhang, L. Jiang, C. Liu, and W. T. Freeman. Maskgit: Masked generative image transformer. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 11315-11325, 2022.</td></tr><tr><td>[8]</td><td>H. Chang, H. Zhang, J. Barber, A. Maschinot, J. Lezama, L. Jiang, M.-H. Yang, K. Murphy, W. T. Freeman, M. Rubinstein, et al. Muse: Text-to-image generation via masked generative transformers. arXiv preprint arXiv:2301.00704, 2023.</td></tr><tr><td>[9]</td><td>J. Chen, J. Yu, C. Ge, L. Yao, E. Xie, Y. Wu, Z. Wang, J. Kwok, P. Luo, H. Lu, et al. Pixart- alpha: Fast training of diffusion transformer for photorealistic text-to-image synthesis. arXiv preprint arXiv:2310.00426, 2023.</td></tr><tr><td>[10]</td><td>L. Chen, J. Li, X. Dong, P. Zhang, C. He,J. Wang, F. Zhao, and D. Lin. Sharegpt4v: Improving large multi-modal models with better captions. arXiv preprint arXiv:2311.12793, 2023.</td></tr><tr><td>[11]</td><td>X. Chen, H. Fang, T.-Y. Lin, R. Vedantam, S. Gupta, P. Doll�r, and C. L. Zitnick. Microsoft COCO captions: Data collection and evaluation server. arXiv preprint arXiv:1504.00325, 2015.</td></tr><tr><td>[12]</td><td>Z. Chen, W. Wang, H. Tian, S. Ye, Z. Gao, E. Cui, W. Tong, K. Hu, J. Luo, Z. Ma, et al. How far are we to gpt-4v? closing the gap to commercial multimodal models with open-source suites. arXiv preprint arXiv:2404.16821, 2024.</td></tr><tr><td>[13]</td><td>Z. Chen, J. Wu, W. Wang, W. Su, G. Chen, S. Xing, M. Zhong, Q. Zhang, X. Zhu, L. Lu, et al. Internvl: Scaling up vision foundation models and aligning for generic visual- linguistic tasks. In Proceedings of the IEEE /CVF Conference on Computer Vision and Pattern Recognition, pages 24185-24198, 2024.</td></tr><tr><td>[14]</td><td>X. Chu, L. Qiao, X. Lin, S. Xu, Y. Yang, Y. Hu, F. Wei, X. Zhang, B. Zhang, X. Wei, et al. Mobilevlm: A fast, reproducible and strong vision language assistant for mobile devices. arXiv preprint arXiv:2312.16886, 2023.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the performance of Janus with state-of-the-art models on various multimodal understanding benchmarks, highlighting Janus's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>[15]</td><td>X. Chu, L. Qiao, X. Zhang, S. Xu, F. Wei, Y. Yang, X. Sun, Y. Hu, X. Lin, B. Zhang, et al. Mobilevlm v2: Faster and stronger baseline for vision language model. arXiv preprint arXiv:2402.03766, 2024.</td></tr><tr><td>[16]</td><td>W. Dai, J. Li, D. Li, A. M. H. Tiong,J. Zhao, W. Wang, B. Li, P. Fung, and S. Hoi. Instructblip: Towards general-purpose vision-language models with instruction tuning, 2023.</td></tr><tr><td>[17]</td><td>dclure. Laion-aesthetics-umap. https: / /huggingface · co/ datasets/dclure/laion -aesthetics-12m-umap, 2022.</td></tr><tr><td>[18]</td><td>J. Deng, W. Dong, R. Socher, L.-J. Li, K. Li, and L. Fei-Fei. Imagenet: A large-scale hierarchi- cal image database. In 2009 IEEE conference on computer vision and pattern recognition, pages 248-255. Ieee, 2009.</td></tr><tr><td>[19]</td><td>J. Devlin. Bert: Pre-training of deep bidirectional transformers for language understanding. arXiv preprint arXiv:1810.04805, 2018.</td></tr><tr><td>[20]</td><td>P. Dhariwal and A. Nichol. Diffusion models beat gans on image synthesis. Advances in neural information processing systems, 34:8780-8794, 2021.</td></tr><tr><td>[21]</td><td>R. Dong, C. Han, Y. Peng, Z. Qi, Z. Ge,J. Yang, L. Zhao,J. Sun, H. Zhou, H. Wei, etal. Dream- llm: Synergistic multimodal comprehension and creation. arXiv preprint arXiv:2309.11499, 2023.</td></tr><tr><td>[22]</td><td>A. Dosovitskiy. An image is worth 16x16 words: Transformers for image recognition at scale. arXiv preprint arXiv:2010.11929, 2020.</td></tr><tr><td>[23]</td><td>Echo840. Detailed caption dataset. https : / /huggingface . co/datasets/echo840/ Detailed_ Caption, 2023.</td></tr><tr><td>[24]</td><td>P. Esser, R. Rombach, and B. Ommer. Taming transformers for high-resolution image synthesis. In Proceedings of the IEEE/CVF conference on computer vision and pattern recognition, pages 12873-12883, 2021.</td></tr><tr><td>[25]</td><td>C. Fu, P. Chen, Y. Shen, Y. Qin, M. Zhang, X. Lin, J. Yang, X. Zheng, K. Li, X. Sun, et al. Mme: A comprehensive evaluation benchmark for multimodal large language models. arXiv preprint arXiv:2306.13394, 2023.</td></tr><tr><td>[26]</td><td>O. Gafni, A. Polyak, O. Ashual, S. Sheynin, D. Parikh, and Y. Taigman. Make-a-scene: Scene-based text-to-image generation with human priors. In European Conference on Computer Vision, pages 89-106. Springer, 2022.</td></tr><tr><td>[27]</td><td>Y. Ge, Y. Ge, Z. Zeng, X. Wang, and Y. Shan. Planting a seed of vision in large language model. arXiv preprint arXiv:2307.08041, 2023.</td></tr><tr><td>[28]</td><td>Y. Ge, S. Zhao, Z. Zeng, Y. Ge, C. Li, X. Wang, and Y. Shan. Making llama see and draw with seed tokenizer. arXiv preprint arXiv:2310.01218, 2023.</td></tr><tr><td>[29]</td><td>Y. Ge, S. Zhao,J. Zhu, Y. Ge, K. Yi, L. Song, C. Li, X. Ding, and Y. Shan. Seed-x: Multimodal models with unified multi-granularity comprehension and generation. arXiv preprint arXiv:2404.14396, 2024.</td></tr><tr><td>[30]</td><td>D. Ghosh, H. Hajishirzi, and L. Schmidt. Geneval: An object-focused framework for evaluating text-to-image alignment. Advances in Neural Information Processing Systems, 36, 2024.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares Janus's performance on multimodal understanding benchmarks against other state-of-the-art models, showing its superior performance, especially compared to models of similar size.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>[31]</td><td>Y. Goyal, T. Khot, D. Summers-Stay, D. Batra, and D. Parikh. Making the v in vqa matter: Elevating the role of image understanding in visual question answering. In Proceedings of the IEEE conference on computer vision and pattern recognition, pages 6904-6913, 2017.</td></tr><tr><td>[32]</td><td>High-flyer. Hai-llm: Efficient and lightweight training tool for large models, 2023. URL https : / / www · high-flyer · cn/ en/blog/hai  11m.</td></tr><tr><td>[33]</td><td>J. Ho, A. Jain, and P. Abbeel. Denoising diffusion probabilistic models. Advances in neural information processing systems, 33:6840-6851, 2020.</td></tr><tr><td>[34]</td><td>Y.-C. Hsiao, F. Zubach, M. Wang, et al. Screenqa: Large-scale question-answer pairs over mobile app screenshots. arXiv preprint arXiv:2209.08199, 2022.</td></tr><tr><td>[35]</td><td>D. A. Hudson and C. D. Manning. Gqa: A new dataset for real-world visual reasoning and compositional question answering. In Proceedings of the IEEE/CVF conference on computer vision and pattern recognition, pages 6700-6709, 2019.</td></tr><tr><td>[36]</td><td>Y. Jin, K. Xu, L. Chen, C. Liao, J. Tan, B. Chen, C. Lei, A. Liu, C. Song, X. Lei, et al. Unified language-vision pretraining with dynamic discrete visual tokenization. arXiv preprint arXiv:2309.04669, 2023.</td></tr><tr><td>[37]</td><td>M. Kang, J.-Y. Zhu, R. Zhang, J. Park, E. Shechtman, S. Paris, and T. Park. Scaling up gans for text-to-image synthesis. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 10124-10134, 2023.</td></tr><tr><td>[38]</td><td>A. Kirillov, E. Mintun, N. Ravi, H. Mao, C. Rolland, L. Gustafson, T. Xiao, S. Whitehead, A. C. Berg, W.-Y. Lo, et al. Segment anything. In Proceedings of the IEEE/CVF International Conference on Computer Vision, pages 4015-4026, 2023.</td></tr><tr><td>[39]</td><td>M. Koupaee and W. Y. Wang. Wikihow: A large scale text summarization dataset. arXiv preprint arXiv:1810.09305, 2018.</td></tr><tr><td>[40]</td><td>A. Kuznetsova, H. Rom, N. Alldrin, J. Uijlings, I. Krasin, J. Pont-Tuset, S. Kamali, S. Popov, M. Malloci, A. Kolesnikov, T. Duerig, and V. Ferrari. The open images dataset v4: Unified image classification, object detection, and visual relationship detection at scale. IJCV, 2020.</td></tr><tr><td>[41]</td><td>H. Lauren�on, D. van Strien, S. Bekman, L. Tronchon, L. Saulnier, T. Wang, S. Karamcheti, A. Singh, G. Pistilli, Y. Jernite, and et al. Introducing idefics: An open reproduction of state-of-the-art visual language model, 2023. URL https: / /huggingface · co/blog/id efics.</td></tr><tr><td>[42]</td><td>B. Li, R. Wang, G. Wang, Y. Ge, Y. Ge, and Y. Shan. Seed-bench: Benchmarking multimodal llms with generative comprehension. arXiv preprint arXiv:2307.16125, 2023.</td></tr><tr><td>[43]</td><td>B. Li, Y. Zhang, D. Guo, R. Zhang, F. Li, H. Zhang, K. Zhang, Y. Li, Z. Liu, and C. Li. Llava-onevision: Easy visual task transfer. arXiv preprint arXiv:2408.03326, 2024.</td></tr><tr><td>[44]</td><td>D. Li, A. Kamko, E. Akhgari, A. Sabet, L. Xu, and S. Doshi. Playground v2. 5: Three insights towards enhancing aesthetic quality in text-to-image generation. arXiv preprint arXiv:2402.17245, 2024.</td></tr><tr><td>[45]</td><td>L. Li, Y. Wang, R. Xu, P. Wang, X. Feng, L. Kong, and Q. Liu. Multimodal arxiv: A dataset for improving scientific comprehension of large vision-language models. arXiv preprint arXiv:2403.00231, 2024.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares Janus with state-of-the-art models on several multimodal understanding benchmarks, showing its superior performance.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>[46]</td><td>T. Li, Y. Tian, H. Li, M. Deng, and K. He. Autoregressive image generation without vector quantization. arXiv preprint arXiv:2406.11838, 2024.</td></tr><tr><td>[47]</td><td>X. Li, F. Zhang, H. Diao, Y. Wang, X. Wang, and L.-Y. Duan. Densefusion-1m: Merging vision experts for comprehensive multimodal perception. arXiv preprint arXiv:2407.08303, 2024.</td></tr><tr><td>[48]</td><td>Y. Li, Y. Du, K. Zhou,J. Wang, W. X. Zhao, and J.-R. Wen. Evaluating object hallucination in large vision-language models. arXiv preprint arXiv:2305.10355, 2023.</td></tr><tr><td>[49]</td><td>Z. Li, X. Yang, K. Choi, W. Zhu, R. Hsieh, H. Kim, J. H. Lim, S. Ji, B. Lee, X. Yan, et al. Mmsci: A multimodal multi-discipline dataset for phd-level scientific comprehension. arXiv preprint arXiv:2407.04903, 2024.</td></tr><tr><td>[50]</td><td>H. Liu, C. Li, Y. Li, and Y.J. Lee. Improved baselines with visual instruction tuning. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 26296-26306, 2024.</td></tr><tr><td>[51]</td><td>H. Liu, C. Li, Q. Wu, and Y. J. Lee. Visual instruction tuning. Advances in neural information processing systems, 36, 2024.</td></tr><tr><td>[52]</td><td>H. Liu, W. Yan, M. Zaharia, and P. Abbeel. World model on million-length video and language with ringattention. arXiv preprint arXiv:2402.08268, 2024.</td></tr><tr><td>[53]</td><td>M. Liu, R. Shi, K. Kuang, Y. Zhu, X. Li, S. Han, H. Cai, F. Porikli, and H. Su. Openshape: Scaling up 3d shape representation towards open-world understanding. Advances in neural information processing systems, 36, 2024.</td></tr><tr><td>[54]</td><td>Y. Liu, H. Duan, Y. Zhang, B. Li, S. Zhang, W. Zhao, Y. Yuan,J. Wang, C. He, Z. Liu, etal. Mm- bench: Is your multi-modal model an all-around player? arXiv preprint arXiv:2307.06281, 2023.</td></tr><tr><td>[55]</td><td>H. Lu, W. Liu, B. Zhang, B. Wang, K. Dong, B. Liu, J. Sun, T. Ren, Z. Li, Y. Sun, et al. Deepseek-vl: towards real-world vision-language understanding. arXiv preprint arXiv:2403.05525, 2024.</td></tr><tr><td>[56]</td><td>P. Lu, L. Qiu, J. Chen, T. Xia, Y. Zhao, W. Zhang, Z. Yu, X. Liang, and S.-C. Zhu. Iconqa: A new benchmark for abstract diagram understanding and visual language reasoning. arXiv preprint arXiv:2110.13214, 2021.</td></tr><tr><td>[57]</td><td>madebyollin. Megalith-huggingface. https://huggingface · co/datasets/madebyol lin/megalith-10m, 2024.</td></tr><tr><td>[58]</td><td>mehdidc. Yfcc-huggingface. https://huggingface · co/datasets/mehdidc/yfcc15 m, 2024.</td></tr><tr><td>[59]</td><td>A. Nichol, P. Dhariwal, A. Ramesh, P. Shyam, P. Mishkin, B. McGrew, I. Sutskever, and M. Chen. Glide: Towards photorealistic image generation and editing with text-guided diffusion models. arXiv preprint arXiv:2112.10741, 2021.</td></tr><tr><td>[60]</td><td>J. Pan, K. Sun, Y. Ge, H. Li, H. Duan, X. Wu, R. Zhang, A. Zhou, Z. Qin, Y. Wang, J. Dai, Y. Qiao, and H. Li. Journeydb: A benchmark for generative image understanding, 2023.</td></tr><tr><td>[61]</td><td>Z. Peng, L. Dong, H. Bao, Q. Ye, and F. Wei. Beit v2: Masked image modeling with vector-quantized visual tokenizers. arXiv preprint arXiv:2208.06366, 2022.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares Janus's performance on multimodal understanding benchmarks against other state-of-the-art models, showing its superior performance even compared to significantly larger models.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:20px'><tr><td></td><td>English, Lacey, Blattmann, Penna, bach. Sdxl: Improving latent diffusion models for high-resolution image synthesis. arXiv preprint arXiv:2307.01952, 2023.</td></tr><tr><td>[63]</td><td>ProGamerGov. Dalle3-high-quality-captions. https :  /huggingface. co/datasets /Pr oGamerGov / synthetic-dataset- In-delle3-high-quality-captions, 2024.</td></tr><tr><td>[64]</td><td>A. Radford. Improving language understanding by generative pre-training. 2018.</td></tr><tr><td>[65]</td><td>A. Ramesh, M. Pavlov, G. Goh, S. Gray, C. Voss, A. Radford, M. Chen, and I. Sutskever. Zero-shot text-to-image generation. In International conference on machine learning, pages 8821-8831. Pmlr, 2021.</td></tr><tr><td>[66]</td><td>A. Ramesh, P. Dhariwal, A. Nichol, C. Chu, and M. Chen. Hierarchical text-conditional image generation with clip latents. arXiv preprint arXiv:2204.06125, 1(2):3, 2022.</td></tr><tr><td>[67]</td><td>R. Rombach, A. Blattmann, D. Lorenz, P. Esser, and B. Ommer. High-resolution image synthesis with latent diffusion models. In Proceedings of the IEEE/CVF conference on computer vision and pattern recognition, pages 10684-10695, 2022.</td></tr><tr><td>[68]</td><td>C. Saharia, W. Chan, S. Saxena, L. Li, J. Whang, E. L. Denton, K. Ghasemipour, R. Gon- tijo Lopes, B. Karagol Ayan, T. Salimans, et al. Photorealistic text-to-image diffusion models with deep language understanding. Advances in neural information processing systems, 35:36479-36494, 2022.</td></tr><tr><td>[69]</td><td>S. Shah, A. Mishra, N. Yadati, and P. P. Talukdar. Kvqa: Knowledge-aware visual question answering. In Proceedings of the AAAI conference on artificial intelligence, volume 33, pages 8876-8884, 2019.</td></tr><tr><td>[70]</td><td>V. Singla, K. Yue, S. Paul, R. Shirkavand, M. Jayawardhana, A. Ganjdanesh, H. Huang, A. Bhatele, G. Somepalli, and T. Goldstein. From pixels to prose: A large dataset of dense image captions. arXiv preprint arXiv:2406.10328, 2024.</td></tr><tr><td>[71]</td><td>J. Song, C. Meng, and S. Ermon. Denoising diffusion implicit models. arXiv preprint arXiv:2010.02502, 2020.</td></tr><tr><td>[72]</td><td>K. Srinivasan, K. Raman, J. Chen, M. Bendersky, and M. Najork. Wit: Wikipedia-based image text dataset for multimodal multilingual machine learning. In Proceedings of the 44th international ACM SIGIR conference on research and development in information retrieval, pages 2443-2449, 2021.</td></tr><tr><td>[73]</td><td>P. Sun, Y. Jiang, S. Chen, S. Zhang, B. Peng, P. Luo, and Z. Yuan. Autoregressive model beats diffusion: Llama for scalable image generation. arXiv preprint arXiv:2406.06525, 2024.</td></tr><tr><td>[74]</td><td>Q. Sun, Y. Fang, L. Wu, X. Wang, and Y. Cao. Eva-clip: Improved training techniques for clip at scale. arXiv preprint arXiv:2303.15389, 2023.</td></tr><tr><td>[75]</td><td>Q. Sun, Q. Yu, Y. Cui, F. Zhang, X. Zhang, Y. Wang, H. Gao, J. Liu, T. Huang, and X. Wang. Generative pretraining in multimodality. arXiv preprint arXiv:2307.05222, 2023.</td></tr><tr><td>[76]</td><td>Q. Sun, Y. Cui, X. Zhang, F. Zhang, Q. Yu, Y. Wang, Y. Rao, J. Liu, T. Huang, and X. Wang. Generative multimodal models are in-context learners. In Proceedings of the IEEE / CVF Conference on Computer Vision and Pattern Recognition, pages 14398-14409, 2024.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the performance of Janus with state-of-the-art models on several multimodal understanding benchmarks, including models that use external pretrained diffusion models.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>[77]</td><td>C. Team. Chameleon: Mixed-modal early-fusion foundation models. arXiv preprint arXiv:2405.09818, 2024.</td></tr><tr><td>[78]</td><td>G. Team, R. Anil, S. Borgeaud, Y. Wu, J.-B. Alayrac, J. Yu, R. Soricut, J. Schalkwyk, A. M. Dai, A. Hauth, et al. Gemini: a family of highly capable multimodal models. arXiv preprint arXiv:2312.11805, 2023.</td></tr><tr><td>[79]</td><td>K. Tian, Y. Jiang, Z. Yuan, B. Peng, and L. Wang. Visual autoregressive modeling: Scalable image generation via next-scale prediction. arXiv preprint arXiv:2404.02905, 2024.</td></tr><tr><td>[80]</td><td>H. Touvron, T. Lavril, G. Izacard, X. Martinet, M.-A. Lachaux, T. Lacroix, B. Roziere, N. Goyal, E. Hambro, F. Azhar, et al. Llama: Open and efficient foundation language models. arXiv preprint arXiv:2302.13971, 2023.</td></tr><tr><td>[81]</td><td>H. Touvron, L. Martin, K. Stone, P. Albert, A. Almahairi, Y. Babaei, N. Bashlykov, S. Batra, P. Bhargava, S. Bhosale, et al. Llama 2: Open foundation and fine-tuned chat models. arXiv preprint arXiv:2307.09288, 2023.</td></tr><tr><td>[82]</td><td>W. Wang, Z. Chen, X. Chen, J. Wu, X. Zhu, G. Zeng, P. Luo, T. Lu, J. Zhou, Y. Qiao, et al. Visionllm: Large language model is also an open-ended decoder for vision-centric tasks. Advances in Neural Information Processing Systems, 36, 2024.</td></tr><tr><td>[83]</td><td>X. Wang, X. Zhang, Z. Luo, Q. Sun, Y. Cui,J. Wang, F. Zhang, Y. Wang, Z. Li, Q. Yu, et al. Emu3: Next-token prediction is all you need. arXiv preprint arXiv:2409.18869, 2024.</td></tr><tr><td>[84]</td><td>S. Wu, H. Fei, L. Qu, W. Ji, and T.-S. Chua. Next-gpt: Any-to-any multimodal llm. arXiv preprint arXiv:2309.05519, 2023.</td></tr><tr><td>[85]</td><td>Y. Wu, Z. Zhang,J. Chen, H. Tang, D. Li, Y. Fang, L. Zhu, E. Xie, H. Yin, L. Yi, et al. Vila-u: a unified foundation model integrating visual understanding and generation. arXiv preprint arXiv:2409.04429, 2024.</td></tr><tr><td>[86]</td><td>J. Xie, W. Mao, Z. Bai, D.J. Zhang, W. Wang, K. Q. Lin, Y. Gu, Z. Chen, Z. Yang, and M. Z. Shou. Show-o: One single transformer to unify multimodal understanding and generation. arXiv preprint arXiv:2408.12528, 2024.</td></tr><tr><td>[87]</td><td>Z. Xue, G. Song, Q. Guo, B. Liu, Z. Zong, Y. Liu, and P. Luo. Raphael: Text-to-image gen- eration via large mixture of diffusion paths. Advances in Neural Information Processing Systems, 36, 2024.</td></tr><tr><td>[88]</td><td>F. Yang, C. Ma, J. Zhang, J. Zhu, W. Yuan, and A. Owens. Touch and go: Learning from human-collected vision and touch. arXiv preprint arXiv:2211.12498, 2022.</td></tr><tr><td>[89]</td><td>L. Yu, Y. Cheng, K. Sohn, J. Lezama, H. Zhang, H. Chang, A. G. Hauptmann, M.-H. Yang, Y. Hao, I. Essa, et al. Magvit: Masked generative video transformer. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 10459-10469, 2023.</td></tr><tr><td>[90]</td><td>W. Yu, Z. Yang, L. Li,J. Wang, K. Lin, Z. Liu, X. Wang, and L. Wang. Mm-vet: Evaluating large multimodal models for integrated capabilities. arXiv preprint arXiv:2308.02490, 2023.</td></tr><tr><td>[91]</td><td>X. Yue, Y. Ni, K. Zhang, T. Zheng, R. Liu, G. Zhang, S. Stevens, D. Jiang, W. Ren, Y. Sun, et al. Mmmu: A massive multi-discipline multimodal understanding and reasoning benchmark for expert agi. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 9556-9567, 2024.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares Janus's performance on multimodal understanding benchmarks against various state-of-the-art models, indicating its superiority across multiple metrics.
> <details>
> <summary>read the caption</summary>
> Table 2 | Comparison with state-of-the-arts on multimodal understanding benchmarks. “Und.” and “Gen.” denote “understanding” and “generation”, respectively. Models using external pretrained diffusion model are marked with †.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13848/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13848/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}